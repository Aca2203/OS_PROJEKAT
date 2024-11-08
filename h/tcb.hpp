#ifndef TCB_H
#define TCB_H

#include "riscv.hpp"
#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/mySemaphore.hpp"

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool finished) { this->finished = finished; }

    bool isBlocked() const { return blocked; }

    void setBlocked(bool blocked) { this->blocked = blocked; }

    uint64 getSepc() const { return this->context.sepc; }

    void setSepc(uint64 value) { this->context.sepc = value; }

    uint64 getSstatus() const { return this->context.sstatus; }

    void setSstatus(uint64 value) { this->context.sstatus = value; }

    bool isMain() const { return this->main; }

    uint64 getTimeSlice() const { return time_slice; }

    using Body = void (*)(void *);

    static TCB* createThread(Body body, void* arg);

    static TCB* createThreadWithoutStarting(Body body, void* arg);

    static void startThread(TCB* tcb);

    int getId();

    static void yield();

    static TCB* running;

private:
    explicit TCB(Body body, void* arg) :
        body(body),
        arg(arg),
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
        context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0,
            Riscv::r_sepc(),
            Riscv::r_sstatus()
        }),
        time_slice(DEFAULT_TIME_SLICE),
        main(body == nullptr),
        finished(false),
        blocked(false) {}

    struct Context {
        uint64 pc;
        uint64 sp;
        uint64 sepc;
        uint64 sstatus;
    };
    Body body;
    void* arg;
    uint64* stack; // Mozda mora da bude char*
    Context context;
    uint64 time_slice;
    bool main;
    bool finished;
    bool blocked;
    static int lastId;
    int id = lastId++;

    friend class Riscv;
    friend class MySemaphore;

    static void threadWrapper();

    static void contextSwitch(Context* oldContext, Context* newContext);

    static void dispatch();

    static uint64 timeSliceCounter;
};

#endif