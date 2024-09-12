#include "../lib/hw.h"

struct Segment{
    Segment* next;
    size_t size;
};

class MemoryAllocator {
public:
  static void* mem_alloc(size_t size);
  static int mem_free(void*);

protected:
  MemoryAllocator() {};
  static void tryToJoin(Segment* segment);

private:
  static Segment* head_free_segment;
  static Segment* head_data_segment;
};