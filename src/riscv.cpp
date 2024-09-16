#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();
    if(scause == 0x8000000000000001UL) {
        // Dogodio se prekid, razlog: prekid od supervizora (tajmer)
        if(++TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
        // Dogodio se prekid, razlog: spoljasni prekid (konzola)
        console_handler();
    } else {
        // Neocekivani razlog prekida
        // print(scause)
        // print(sepc)
        // print(stval)
    }
}
