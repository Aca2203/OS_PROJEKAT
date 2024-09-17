#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body, void* arg) {
    TCB* tcb = new TCB(body, arg);
    if(body != nullptr) Scheduler::put(tcb);
    else TCB::running = tcb;
    return tcb;
}

TCB* TCB::createThreadWithoutStarting(Body body, void* arg) {
    return new TCB(body, arg);
}

void TCB::startThread(TCB* tcb) {
    Scheduler::put(tcb);
}

void TCB::yield() {
    Riscv::w_a0(0);
    __asm__ volatile("ecall");
}

void TCB::dispatch() {
    TCB* old = running;
    if(!old->isFinished()){ Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}