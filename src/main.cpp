#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"
#include "../h/riscv.hpp"

int main() {
    MemoryAllocator::initFreeSegment();

    TCB* threads[3];

    threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];

    threads[1] = TCB::createThread(workerBodyC);
    printString("Thread C created\n");
    threads[2] = TCB::createThread(workerBodyD);
    printString("Thread D created\n");
    // threads[3] = TCB::createThread(workerBodyC);
    // printString("Thread C created\n");
    // threads[4] = TCB::createThread(workerBodyD);
    // printString("Thread D created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    int rez = mem_free(stack);
    printInt(rez);

    while(!(threads[1]->isFinished() && threads[2]->isFinished() /*&& threads[3]->isFinished() && threads[4]->isFinished()*/)) TCB::yield();

    for(auto &thread : threads) {
        delete thread;
    }

    Scheduler::deleteThreadQueue();

    printString("Finished\n");

    return 0;
}