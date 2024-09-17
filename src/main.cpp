#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"
#include "../h/riscv.hpp"

int main() {
    MemoryAllocator::initFreeSegment();

    TCB* threads[5];

    threads[0] = TCB::createThread(nullptr, nullptr);
    TCB::running = threads[0];

    threads[1] = TCB::createThread(workerBodyA, nullptr);
    printString("Thread A created\n");
    threads[2] = TCB::createThread(workerBodyB, nullptr);
    printString("Thread B created\n");
    threads[3] = TCB::createThread(workerBodyC, nullptr);
    printString("Thread C created\n");
    threads[4] = TCB::createThread(workerBodyD, nullptr);
    printString("Thread D created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished())) TCB::yield();

    for(auto &thread : threads) {
        delete thread;
    }

    Scheduler::deleteThreadQueue();

    printString("Finished\n");

    return 0;
}