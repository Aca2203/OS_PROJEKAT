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

    using Body = void (*)();

    static TCB* createThread(Body body);

    static void yield();

    static TCB* running;

private:
    explicit TCB(Body body) :
        body(body),
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
        context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
        }),
        time_slice(DEFAULT_TIME_SLICE),
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
    uint64 time_slice;
    bool finished;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context* oldContext, Context* newContext);

    static void dispatch();

    static uint64 timeSliceCounter;
};

#endif