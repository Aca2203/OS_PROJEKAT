#ifndef MEMORYALLOCATOR_H
#define MEMORYALLOCATOR_H

#include "../lib/hw.h"

// Struktura u kojoj se cuvaju podaci o slobodnom ili zauzetom segmentu
struct Segment{
    Segment* next; // Pokazivac na sledeci segment (sortirano od nizih ka visim adresama)
    size_t size; // Velicina segmenta u jedinicama MEM_BLOCK_SIZE
};

class MemoryAllocator {
public:
  static void* mem_alloc(size_t size);
  static int mem_free(void*);

protected:
  MemoryAllocator() {};
  static void tryToJoin(Segment* segment); // Spajanje dva slobodna segmenta
  static void insert_free_segment(Segment* segment, Segment* prev);
  static void remove_free_segment(Segment* segment, Segment* prev);

private:
  static Segment* head_free_segment; // Pokazivac na prvi slobodan segment
  static Segment* head_data_segment; // Pokazivac na prvi zauzet segment
};

#endif