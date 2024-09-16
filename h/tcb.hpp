#ifndef TCB_H
#define TCB_H

#include "../lib/hw.h"
#include "../h/scheduler.hpp"

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool finished) { this->finished = finished; }

    using Body = void (*)();

    static TCB* createThread(Body body);

    static void yield();

    static TCB* running;

private:
    TCB(Body body) :
        body(body),
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
        context({
            body != nullptr ? (uint64) body : 0,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
        }),
        finished(false) {
        if(body != nullptr) Scheduler::put(this);
    }

    struct Context {
        uint64 pc;
        uint64 sp;
    };
    Body body;
    uint64* stack; // Mozda mora da bude char*
    Context context;
    bool finished;

    friend class Riscv;

    static void contextSwitch(Context* oldContext, Context* newContext);

    static void dispatch();
};

#endif