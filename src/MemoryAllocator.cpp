#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"

Segment* MemoryAllocator::head_free_segment = nullptr;
Segment* MemoryAllocator::head_data_segment = nullptr;

void* MemoryAllocator::mem_alloc(size_t size) {
    size_t new_size =
}
