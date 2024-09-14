#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

int main() {
    MemoryAllocator::initFreeSegment();

    int velicinaZaglavlja = sizeof(Segment); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE - 1)*MEM_BLOCK_SIZE ;
    char* niz = (char*)MemoryAllocator::mem_alloc(maxMemorija); // celokupan prostor
    if(niz == nullptr) {
        __putc('?');
    }

    int n = 200;
    char* niz2 = (char*)MemoryAllocator::mem_alloc(n*sizeof(char));
    if(niz2 == nullptr) {
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    if(status) {
        __putc('?');
    }
    niz2 = (char*)MemoryAllocator::mem_alloc(n*sizeof(char));
    if(niz2 == nullptr) {
        __putc('?');
    }

    return 0;
}