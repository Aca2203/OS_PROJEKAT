#include "../h/riscv.hpp"

#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
}

using Body = void (*)(void *);

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        // Nije se dogodio prekid, sistemski poziv iz korisnickog ili sistemskog rezima rezima
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        TCB::timeSliceCounter = 0;

        uint64 code = r_a0();
        void* ptr;
        int ret;
        char chr;
        thread_t* handle;
        Body body;
        void* arg;

        // Semaphore
        switch (code) {
            // void* mem_alloc(size_t size)
            case 0x01:
                size_t size;

                __asm__ volatile("mv %0, a1" : "=r" (size));

                ptr = MemoryAllocator::mem_alloc(size);

                __asm__ volatile("mv a0, %0" : : "r" (ptr));
                __asm__ volatile("sw a0, 80(x8)");

                break;

            // int mem_free(void*)
            case 0x02:
                __asm__ volatile("mv %0, a1" : "=r" (ptr));

                ret = MemoryAllocator::mem_free(ptr);

                __asm__ volatile("mv a0, %0" : : "r" (ret));
                __asm__ volatile("sw a0, 80(x8)");

                break;

            case 0x09:
                TCB* tcb;
                __asm__ volatile("mv %0, a1" : "=r" (tcb));

                TCB::startThread(tcb);

                break;

            case 0x10:
                __asm__ volatile("mv %0, a1" : "=r" (handle));
                __asm__ volatile("mv %0, a2" : "=r" (body));
                __asm__ volatile("mv %0, a7" : "=r" (arg));
                *handle = TCB::createThreadWithoutStarting(body, arg);

                if(*handle != nullptr) {
                    __asm__ volatile("li a0, 0");
                    __asm__ volatile("sw a0, 80(x8)");
                } else {
                    __asm__ volatile("li a0, -1");
                    __asm__ volatile("sw a0, 80(x8)");
                }

                break;

            case 0x11:


                __asm__ volatile("mv %0, a1" : "=r" (handle));
                __asm__ volatile("mv %0, a2" : "=r" (body));
                __asm__ volatile("mv %0, a7" : "=r" (arg));

                *handle = TCB::createThread(body, arg);

                if(*handle != nullptr) {
                    __asm__ volatile("li a0, 0");
                    __asm__ volatile("sw a0, 80(x8)");
                } else {
                    __asm__ volatile("li a0, -1");
                    __asm__ volatile("sw a0, 80(x8)");
                }

                break;

            case 0x12:
                TCB::running->setFinished(true);
                __asm__ volatile("li a0, 0");
                __asm__ volatile("sw a0, 80(x8)");

                break;

            case 0x41:
                chr = __getc();
                __asm__ volatile("mv a0, %0" : : "r" (chr));
                __asm__ volatile("sw a0, 80(x8)");

            break;

            case 0x42:
                __asm__ volatile("mv %0, a1" : "=r" (chr));
                __putc(chr);
                break;

            default:
                break;
        }

        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x8000000000000001UL) {
        // Dogodio se prekid, razlog: prekid od supervizora (tajmer)
        mc_sip(SIP_SSIP);
        // if(++TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
        //     uint64 volatile sepc = r_sepc();
        //     uint64 volatile sstatus = r_sstatus();
        //     TCB::timeSliceCounter = 0;
        //     TCB::dispatch();
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
    } else if (scause == 0x8000000000000009UL) {
        // Dogodio se prekid, razlog: spoljasni prekid (konzola)
        console_handler();
        //mc_sip(SIP_SEIP);
    } else {
        // Neocekivani razlog prekida
        uint64 sepc = r_sepc();
        printString("Vrednost sepc:");
        printInt(sepc);
        printString(" ");
        uint64 stvec = r_stvec();
        printString("Vrednost stvec:");
        printInt(stvec);
        printString(" ");
        uint64 sstatus = r_sstatus();
        printString("Vrednost sstatus:");
        printInt(sstatus);
        printString(" ");
        uint64 scause = r_scause();
        printString("Vrednost scause: ");
        printInt(scause);
        printString("\n");
    }
}
