#ifndef TCB_H
#define TCB_H

#include "../lib/hw.h"
#include "../h/scheduler.hpp"

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool finished) { this->finished = finished; }

    uint64 getTimeSlice() const { return time_slice; }

    using Body = void (*)(void *);

    static TCB* createThread(Body body, void* arg);

    static void yield();

    static TCB* running;

private:
    explicit TCB(Body body, void* arg) :
        body(body),
        arg(arg),
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
        context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
        }),
        time_slice(DEFAULT_TIME_SLICE),
        finished(false) {
        if(body != nullptr) Scheduler::put(this);
        else TCB::running = this;
    }

    struct Context {
        uint64 pc;
        uint64 sp;
    };
    Body body;
    void* arg;
    uint64* stack; // Mozda mora da bude char*
    Context context;
    uint64 time_slice;
    bool finished;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context* oldContext, Context* newContext);

    static void dispatch();

    static uint64 timeSliceCounter;
};

#endif