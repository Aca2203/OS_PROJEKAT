#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_cpp.hpp"

Semaphore* semaphore;

class Worker: public Thread {
    void workerBody(void* arg);
public:
    Worker():Thread() {}

    void run() override {
        workerBody(nullptr);
    }
};

void Worker::workerBody(void *arg) {
    int id = this->getId();
    for(int i = 0; i < 5; i++) {
        printString("Hello! ");
        printInt(id);
        printString("\n");
    }
    printString("Thread with id ");
    printInt(id);
    printString(" finished!\n");
    semaphore->signal();
}

Thread* threads[5];
const int numThreads = 5;

extern void userMain();

int main() {
    MemoryAllocator::initFreeSegment();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    thread_t main = TCB::createThread(nullptr, nullptr);
    TCB::running = main;

    Thread::SetMaximumThreads(10);

    semaphore = new Semaphore(0);

    for(int i = 0; i < numThreads; i++) {
        threads[i] = new Worker();
    }

    for(int i = 0; i < numThreads; i++){
        threads[i]->start();
    }

    for(int i = 0; i < numThreads; i++) semaphore->wait();

    for(int i = 0; i < numThreads; i++) delete threads[i];
    delete semaphore;

    Scheduler::deleteThreadQueue();

    printString("Proces zavrsen\n");

    delete main;

    Riscv::exitEmulator();

    return 0;
}