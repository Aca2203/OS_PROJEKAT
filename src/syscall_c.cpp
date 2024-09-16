#include "../h/syscall_c.hpp"

class _sem{
    int id;
};

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}