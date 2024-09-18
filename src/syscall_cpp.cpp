#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void *operator new (size_t size){
    return MemoryAllocator::mem_alloc(size);
}

void *operator new[] (size_t size){
    return MemoryAllocator::mem_alloc(size);
}

void operator delete (void *ptr) noexcept {
    MemoryAllocator::mem_free(ptr);
}

void operator delete[] (void *ptr) noexcept {
    MemoryAllocator::mem_free(ptr);
}

Thread::Thread(void (*body)(void*), void* arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    //thread_exit();
    delete this->myHandle;
}

int Thread::start() {
    thread_start(this->myHandle);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return 0;
}

Thread::Thread() {
    thread_create_without_start(&this->myHandle, runWrapper, this);
}

