#include "../h/syscall_c.hpp"

class _thread{
  int id;
  struct _thread *next;
};

class _sem{
  int id;
};