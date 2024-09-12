#include "../h/syscall_c.hpp"

typedef struct thread{
  int id;
  struct _thread *next;
} _thread;

typedef struct sem{
  int id;
} _sem;