#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/scheduler.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();

Thread* threads[2];

class WorkerA : public Thread {
public:
    WorkerA() : Thread() {}

    void run() {
        for (uint64 i = 0; i < 10; i++) {
            printString("A: i="); printInt(i); printString("\n");
            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
            }
        }
        threads[1]->join();
        printString("A finished!\n");
    }
};

class WorkerB : public Thread {
public:
    WorkerB() : Thread() {}

    void run() {
        for (uint64 i = 0; i < 16; i++) {
            printString("B: i="); printInt(i); printString("\n");
            for (uint64 j = 0; j < 10000; j++) {
                for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
                thread_dispatch();
            }
        }
        printString("B finished!\n");
    }
};

int main() {
    MemoryAllocator::initFreeSegment();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t main = TCB::createThread(nullptr, nullptr);
    TCB::running = main;
    printString("Main napravljen!\n");

    threads[0] = new WorkerA();
    printString("WorkerA napravljen!\n");

    threads[1] = new WorkerB();
    printString("WorkerB napravljen!\n");

    for (int i = 0; i < 2; i++) {
        threads[i]->start();
    }

    //while(!threads[0]->getMyHandle()->isFinished() || !threads[1]->getMyHandle()->isFinished()) thread_dispatch();

    for (int i = 0; i < 2; i++) {
        threads[i]->join();
    }

    for(auto &thread : threads) {
        delete thread;
    }
    delete main;

    Scheduler::deleteThreadQueue();

    printString("Proces zavrsen\n");

    Riscv::exitEmulator();

    return 0;
}