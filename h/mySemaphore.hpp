#ifndef MYSEMAPHORE_H
#define MYSEMAPHORE_H

#include "list.hpp"
#include "tcb.hpp"

class MySemaphore {
public:
    explicit MySemaphore(unsigned init = 1) {
        this->value = init;
        this->closed = false;
    }

    int wait();
    int signal();
    static MySemaphore* createSemaphore(unsigned init = 1);
    unsigned getValue() const { return value; }
    int close();

    int trywait();

protected:
    void block();
    void unblock();

private:
    bool closed;
    unsigned value;
    List<TCB> blocked;
};

#endif