#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;

TCB* TCB::createThread(Body body) {
    return new TCB(body);
}

void TCB::yield() {
    Riscv::pushRegisters();

    TCB::dispatch();

    Riscv::popRegisters();
}

void TCB::dispatch() {
    TCB* old = running;
    if(!old->isFinished()){ Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}