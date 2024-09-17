#include "../h/syscall_c.hpp"
#include "../lib/hw.h"
#include "../h/riscv.hpp"

class _sem{
    int id;
};

void* mem_alloc(size_t size) {

    __asm__ volatile("mv a1, %0" : : "r"(size));
    Riscv::w_a0(0x01);
    __asm__ volatile("ecall");

    void* ret;
    ret = (void*) Riscv::r_a0();
    return ret;
}

int mem_free(void* ptr) {
    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    Riscv::w_a0(0x02);
    __asm__ volatile("ecall");

    int ret = (int) Riscv::r_a0();
    return ret;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    __asm__ volatile("mv a7, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    Riscv::w_a0(0x11);

    __asm__ volatile("ecall");

    int ret = (int) Riscv::r_a0();
    return ret;
}

int thread_exit() {
    Riscv::w_a0(0x12);
    __asm__ volatile("ecall");

    int ret = (int) Riscv::r_a0();
    return ret;
}


void thread_dispatch() {
    Riscv::w_a0(0x13);
    __asm__ volatile("ecall");
}