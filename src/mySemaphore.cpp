#include "../h/mySemaphore.hpp"
#include "../h/syscall_c.hpp"

int MySemaphore::wait() {
    if(this->closed) return -1;
    if((int)--this->value < 0) {
        block();
        thread_dispatch();
        if(this->closed) return -1;
    }

    return 0;
}

int MySemaphore::signal() {
    if(this->closed) return -1;
    if((int)++this->value <= 0) {
        unblock();
    }

    return 0;
}

MySemaphore * MySemaphore::createSemaphore(unsigned init) {
    return new MySemaphore(init);
}

int MySemaphore::close() {
    if(closed) return -1;
    closed = true;

    while(TCB* tcb = this->blocked.removeFirst()) {
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
    return 0;
}

int MySemaphore::trywait() {
    if(this->closed) return -1;
    if((int)--this->value < 0) {
        block();
        return 0;
    }
    return 1;
}

void MySemaphore::block() {
    this->blocked.addLast(TCB::running);
    TCB::running->setBlocked(true);
}

void MySemaphore::unblock() {
    TCB* tcb = blocked.removeFirst();
    tcb->setBlocked(false);
    Scheduler::put(tcb);
}
