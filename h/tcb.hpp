#ifndef TCB_H
#define TCB_H

#include "../lib/hw.h"
#include "../h/scheduler.hpp"

class TCB {
public:
    bool isFinished() const { return finished; }

    void setFinished(bool finished) { this->finished = finished; }

    using Body = void (*)();

    static TCB* createThread(Body body);

    static void yield();

    static TCB* running;

private:
    TCB(Body body) :
        body(body),
        stack(new uint64[STACK_SIZE]),
        context({
            (uint64) body,
            (uint64)&stack[STACK_SIZE]
        }),
        finished(false) {
        Scheduler::put(this);
    }

    struct Context {
        uint64 pc;
        uint64 sp;
    };
    Body body;
    uint64* stack; // Mozda mora da bude char*
    Context context;
    bool finished;

    static void contextSwitch(Context* oldContext, Context* newContext);

    static void dispatch();

    static uint64 constexpr STACK_SIZE = 1024;
};

#endif