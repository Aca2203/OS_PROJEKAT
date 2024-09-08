#include "../lib/hw.h"

class _thread;
typedef _thread* thread_t;

class _sem;
typedef _sem* sem_t;

typedef unsigned long time_t;

const int EOF = -1;

// Upravljanje memorijom
void* mem_alloc(size_t size);
int mem_free(void*);

// Upravljanje procesima
// Niti
int thread_create(
    thread_t* handle,
    void (*start_routine)(void*),
    void* arg
);
int thread_exit();
void thread_dispatch();

// Semafori
int sem_open(
    sem_t* handle,
    unsigned init
);
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);
int sem_timedwait(
    sem_t id,
    time_t timeout
);
int sem_trywait(sem_t id);
int time_sleep(time_t);

char getc();
void putc(char);