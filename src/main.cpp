#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"

int main() {
    TCB* threads[3];

    threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];

    threads[1] = TCB::createThread(workerBodyA);
    printString("Coroutine A created\n");
    threads[2] = TCB::createThread(workerBodyB);
    printString("Coroutine B created\n");

    while(!(threads[1]->isFinished() && threads[2]->isFinished())) TCB::yield();

    for(auto &thread : threads) {
        delete thread;
    }
    printString("Finished\n");

    return 0;
}