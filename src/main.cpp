#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"
#include "../h/riscv.hpp"

int main() {
    MemoryAllocator::initFreeSegment();

    thread_t threads[5];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_create(&threads[0], nullptr, nullptr);

    thread_dispatch();

    thread_create(&threads[1], workerBodyA, nullptr);
    printString("Thread A created\n");
    thread_create(&threads[2], workerBodyB, nullptr);
    printString("Thread B created\n");
    thread_create(&threads[3], workerBodyC, nullptr);
    printString("Thread C created\n");
    thread_create(&threads[4], workerBodyD, nullptr);
    printString("Thread D created\n");

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished())) TCB::yield();

    for(auto &thread : threads) {
        delete thread;
    }

    Scheduler::deleteThreadQueue();

    printString("Finished\n");

    return 0;
}