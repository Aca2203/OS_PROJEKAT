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


void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}