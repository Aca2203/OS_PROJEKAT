#include "../h/syscall_cpp.hpp"

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
