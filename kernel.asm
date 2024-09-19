
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	cc013103          	ld	sp,-832(sp) # 80008cc0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	601040ef          	jal	ra,80004e1c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function

_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function

_ZN5Riscv12popRegistersEv:
    .irp index 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret

00000000800010f8 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800010f8:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800010fc:	00b29a63          	bne	t0,a1,80001110 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001100:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001104:	fe029ae3          	bnez	t0,800010f8 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001108:	00000513          	li	a0,0
    jr ra                  # Return.
    8000110c:	00008067          	ret

0000000080001110 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001110:	00100513          	li	a0,1
    80001114:	00008067          	ret
	...

0000000080001120 <_ZN5Riscv14supervisorTrapEv>:
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
.align 4

_ZN5Riscv14supervisorTrapEv:
     addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
     .irp index 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
     sd x\index, \index * 8(sp)
    .endr
    80001124:	00013023          	sd	zero,0(sp)
    80001128:	00113423          	sd	ra,8(sp)
    8000112c:	00213823          	sd	sp,16(sp)
    80001130:	00313c23          	sd	gp,24(sp)
    80001134:	02413023          	sd	tp,32(sp)
    80001138:	02513423          	sd	t0,40(sp)
    8000113c:	02613823          	sd	t1,48(sp)
    80001140:	02713c23          	sd	t2,56(sp)
    80001144:	04813023          	sd	s0,64(sp)
    80001148:	04913423          	sd	s1,72(sp)
    8000114c:	04a13823          	sd	a0,80(sp)
    80001150:	04b13c23          	sd	a1,88(sp)
    80001154:	06c13023          	sd	a2,96(sp)
    80001158:	06d13423          	sd	a3,104(sp)
    8000115c:	06e13823          	sd	a4,112(sp)
    80001160:	06f13c23          	sd	a5,120(sp)
    80001164:	09013023          	sd	a6,128(sp)
    80001168:	09113423          	sd	a7,136(sp)
    8000116c:	09213823          	sd	s2,144(sp)
    80001170:	09313c23          	sd	s3,152(sp)
    80001174:	0b413023          	sd	s4,160(sp)
    80001178:	0b513423          	sd	s5,168(sp)
    8000117c:	0b613823          	sd	s6,176(sp)
    80001180:	0b713c23          	sd	s7,184(sp)
    80001184:	0d813023          	sd	s8,192(sp)
    80001188:	0d913423          	sd	s9,200(sp)
    8000118c:	0da13823          	sd	s10,208(sp)
    80001190:	0db13c23          	sd	s11,216(sp)
    80001194:	0fc13023          	sd	t3,224(sp)
    80001198:	0fd13423          	sd	t4,232(sp)
    8000119c:	0fe13823          	sd	t5,240(sp)
    800011a0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    800011a4:	5b0010ef          	jal	ra,80002754 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    800011a8:	00013003          	ld	zero,0(sp)
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001228:	10010113          	addi	sp,sp,256

    8000122c:	10200073          	sret

0000000080001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # a0 = &old->context
    # a1 = &new->context
    sd ra, 0 * 8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"
#include "../h/riscv.hpp"

void* mem_alloc(size_t size) {
    80001244:	fe010113          	addi	sp,sp,-32
    80001248:	00813c23          	sd	s0,24(sp)
    8000124c:	02010413          	addi	s0,sp,32

    __asm__ volatile("mv a1, %0" : : "r"(size));
    80001250:	00050593          	mv	a1,a0
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

inline void Riscv::w_a0(uint64 value) {
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001254:	00100793          	li	a5,1
    80001258:	00078513          	mv	a0,a5
    Riscv::w_a0(0x01);
    __asm__ volatile("ecall");
    8000125c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001260:	00050793          	mv	a5,a0
    80001264:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001268:	fe843503          	ld	a0,-24(s0)

    void* ret;
    ret = (void*) Riscv::r_a0();
    return ret;
}
    8000126c:	01813403          	ld	s0,24(sp)
    80001270:	02010113          	addi	sp,sp,32
    80001274:	00008067          	ret

0000000080001278 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001278:	fe010113          	addi	sp,sp,-32
    8000127c:	00813c23          	sd	s0,24(sp)
    80001280:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    80001284:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001288:	00200793          	li	a5,2
    8000128c:	00078513          	mv	a0,a5
    Riscv::w_a0(0x02);
    __asm__ volatile("ecall");
    80001290:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001294:	00050793          	mv	a5,a0
    80001298:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000129c:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    800012a0:	0005051b          	sext.w	a0,a0
    800012a4:	01813403          	ld	s0,24(sp)
    800012a8:	02010113          	addi	sp,sp,32
    800012ac:	00008067          	ret

00000000800012b0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800012b0:	fe010113          	addi	sp,sp,-32
    800012b4:	00813c23          	sd	s0,24(sp)
    800012b8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a7, %0" : : "r"(arg));
    800012bc:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    800012c0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800012c4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    800012c8:	01100793          	li	a5,17
    800012cc:	00078513          	mv	a0,a5
    Riscv::w_a0(0x11);

    __asm__ volatile("ecall");
    800012d0:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800012d4:	00050793          	mv	a5,a0
    800012d8:	fef43423          	sd	a5,-24(s0)
    return a0;
    800012dc:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    800012e0:	0005051b          	sext.w	a0,a0
    800012e4:	01813403          	ld	s0,24(sp)
    800012e8:	02010113          	addi	sp,sp,32
    800012ec:	00008067          	ret

00000000800012f0 <_Z11thread_exitv>:

int thread_exit() {
    800012f0:	fe010113          	addi	sp,sp,-32
    800012f4:	00813c23          	sd	s0,24(sp)
    800012f8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0" : : "r"(value));
    800012fc:	01200793          	li	a5,18
    80001300:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile("ecall");
    80001304:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001308:	00050793          	mv	a5,a0
    8000130c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001310:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    80001314:	0005051b          	sext.w	a0,a0
    80001318:	01813403          	ld	s0,24(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret

0000000080001324 <_Z15thread_dispatchv>:


void thread_dispatch() {
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001330:	01300793          	li	a5,19
    80001334:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile("ecall");
    80001338:	00000073          	ecall
}
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_Z27thread_create_without_startPP3TCBPFvPvES2_>:

int thread_create_without_start(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001348:	fe010113          	addi	sp,sp,-32
    8000134c:	00813c23          	sd	s0,24(sp)
    80001350:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a7, %0" : : "r"(arg));
    80001354:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    80001358:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    8000135c:	00050593          	mv	a1,a0
    80001360:	01000793          	li	a5,16
    80001364:	00078513          	mv	a0,a5
    Riscv::w_a0(0x10);
    __asm__ volatile("ecall");
    80001368:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    8000136c:	00050793          	mv	a5,a0
    80001370:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001374:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;

}
    80001378:	0005051b          	sext.w	a0,a0
    8000137c:	01813403          	ld	s0,24(sp)
    80001380:	02010113          	addi	sp,sp,32
    80001384:	00008067          	ret

0000000080001388 <_Z12thread_startP3TCB>:

void thread_start(TCB* tcb) {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00813423          	sd	s0,8(sp)
    80001390:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(tcb));
    80001394:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001398:	00900793          	li	a5,9
    8000139c:	00078513          	mv	a0,a5
    Riscv::w_a0(0x09);
    __asm__ volatile("ecall");
    800013a0:	00000073          	ecall
}
    800013a4:	00813403          	ld	s0,8(sp)
    800013a8:	01010113          	addi	sp,sp,16
    800013ac:	00008067          	ret

00000000800013b0 <_Z8sem_openPP11MySemaphorej>:

int sem_open(sem_t* handle, unsigned init) {
    800013b0:	fe010113          	addi	sp,sp,-32
    800013b4:	00813c23          	sd	s0,24(sp)
    800013b8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a2, %0" : : "r"(init));
    800013bc:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800013c0:	00050593          	mv	a1,a0
    800013c4:	02100793          	li	a5,33
    800013c8:	00078513          	mv	a0,a5
    Riscv::w_a0(0x21);
    __asm__ volatile("ecall");
    800013cc:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800013d0:	00050793          	mv	a5,a0
    800013d4:	fef43423          	sd	a5,-24(s0)
    return a0;
    800013d8:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    800013dc:	0005051b          	sext.w	a0,a0
    800013e0:	01813403          	ld	s0,24(sp)
    800013e4:	02010113          	addi	sp,sp,32
    800013e8:	00008067          	ret

00000000800013ec <_Z9sem_closeP11MySemaphore>:

int sem_close(sem_t handle) {
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00813c23          	sd	s0,24(sp)
    800013f4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800013f8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    800013fc:	02200793          	li	a5,34
    80001400:	00078513          	mv	a0,a5
    Riscv::w_a0(0x22);
    __asm__ volatile("ecall");
    80001404:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001408:	00050793          	mv	a5,a0
    8000140c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001410:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    80001414:	0005051b          	sext.w	a0,a0
    80001418:	01813403          	ld	s0,24(sp)
    8000141c:	02010113          	addi	sp,sp,32
    80001420:	00008067          	ret

0000000080001424 <_Z8sem_waitP11MySemaphore>:

int sem_wait(sem_t id) {
    80001424:	fe010113          	addi	sp,sp,-32
    80001428:	00813c23          	sd	s0,24(sp)
    8000142c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0" : : "r"(id));
    80001430:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001434:	02300793          	li	a5,35
    80001438:	00078513          	mv	a0,a5
    Riscv::w_a0(0x23);
    __asm__ volatile("ecall");
    8000143c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001440:	00050793          	mv	a5,a0
    80001444:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001448:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    8000144c:	0005051b          	sext.w	a0,a0
    80001450:	01813403          	ld	s0,24(sp)
    80001454:	02010113          	addi	sp,sp,32
    80001458:	00008067          	ret

000000008000145c <_Z10sem_signalP11MySemaphore>:

int sem_signal(sem_t id) {
    8000145c:	fe010113          	addi	sp,sp,-32
    80001460:	00813c23          	sd	s0,24(sp)
    80001464:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0" : : "r"(id));
    80001468:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    8000146c:	02400793          	li	a5,36
    80001470:	00078513          	mv	a0,a5
    Riscv::w_a0(0x24);
    __asm__ volatile("ecall");
    80001474:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001478:	00050793          	mv	a5,a0
    8000147c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001480:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    80001484:	0005051b          	sext.w	a0,a0
    80001488:	01813403          	ld	s0,24(sp)
    8000148c:	02010113          	addi	sp,sp,32
    80001490:	00008067          	ret

0000000080001494 <_Z13sem_timedwaitP11MySemaphorem>:

int sem_timedwait(sem_t id, time_t timeout) {
    80001494:	fe010113          	addi	sp,sp,-32
    80001498:	00813c23          	sd	s0,24(sp)
    8000149c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a2, %0" : : "r"(timeout));
    800014a0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(id));
    800014a4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    800014a8:	02500793          	li	a5,37
    800014ac:	00078513          	mv	a0,a5
    Riscv::w_a0(0x25);
    __asm__ volatile("ecall");
    800014b0:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800014b4:	00050793          	mv	a5,a0
    800014b8:	fef43423          	sd	a5,-24(s0)
    return a0;
    800014bc:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    800014c0:	0005051b          	sext.w	a0,a0
    800014c4:	01813403          	ld	s0,24(sp)
    800014c8:	02010113          	addi	sp,sp,32
    800014cc:	00008067          	ret

00000000800014d0 <_Z11sem_trywaitP11MySemaphore>:

int sem_trywait(sem_t id) {
    800014d0:	fe010113          	addi	sp,sp,-32
    800014d4:	00813c23          	sd	s0,24(sp)
    800014d8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0" : : "r"(id));
    800014dc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    800014e0:	02600793          	li	a5,38
    800014e4:	00078513          	mv	a0,a5
    Riscv::w_a0(0x26);
    __asm__ volatile("ecall");
    800014e8:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800014ec:	00050793          	mv	a5,a0
    800014f0:	fef43423          	sd	a5,-24(s0)
    return a0;
    800014f4:	fe843503          	ld	a0,-24(s0)

    int ret = (int) Riscv::r_a0();
    return ret;
}
    800014f8:	0005051b          	sext.w	a0,a0
    800014fc:	01813403          	ld	s0,24(sp)
    80001500:	02010113          	addi	sp,sp,32
    80001504:	00008067          	ret

0000000080001508 <_Z4getcv>:


char getc() {
    80001508:	fe010113          	addi	sp,sp,-32
    8000150c:	00813c23          	sd	s0,24(sp)
    80001510:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001514:	04100793          	li	a5,65
    80001518:	00078513          	mv	a0,a5
    Riscv::w_a0(0x41);
    __asm__ volatile("ecall");
    8000151c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001520:	00050793          	mv	a5,a0
    80001524:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001528:	fe843503          	ld	a0,-24(s0)

    char ret = (char) Riscv::r_a0();
    return ret;
}
    8000152c:	0ff57513          	andi	a0,a0,255
    80001530:	01813403          	ld	s0,24(sp)
    80001534:	02010113          	addi	sp,sp,32
    80001538:	00008067          	ret

000000008000153c <_Z4putcc>:

void putc(char ch) {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(ch));
    80001548:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    8000154c:	04200793          	li	a5,66
    80001550:	00078513          	mv	a0,a5
    Riscv::w_a0(0x42);
    __asm__ volatile("ecall");
    80001554:	00000073          	ecall
    80001558:	00813403          	ld	s0,8(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_ZN11MySemaphore15createSemaphoreEi>:
    }

    return 0;
}

MySemaphore * MySemaphore::createSemaphore(int init) {
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00113c23          	sd	ra,24(sp)
    8000156c:	00813823          	sd	s0,16(sp)
    80001570:	00913423          	sd	s1,8(sp)
    80001574:	02010413          	addi	s0,sp,32
    80001578:	00050493          	mv	s1,a0
    return new MySemaphore(init);
    8000157c:	01800513          	li	a0,24
    80001580:	00001097          	auipc	ra,0x1
    80001584:	f40080e7          	jalr	-192(ra) # 800024c0 <_Znwm>

#include "MemoryAllocator.hpp"

template <typename T> class List {
public:
    List() : head(0), tail(0) {}
    80001588:	00053423          	sd	zero,8(a0)
    8000158c:	00053823          	sd	zero,16(a0)
#include "tcb.hpp"

class MySemaphore {
public:
    explicit MySemaphore(int init = 1) {
        this->value = init;
    80001590:	00952223          	sw	s1,4(a0)
        this->closed = false;
    80001594:	00050023          	sb	zero,0(a0)
}
    80001598:	01813083          	ld	ra,24(sp)
    8000159c:	01013403          	ld	s0,16(sp)
    800015a0:	00813483          	ld	s1,8(sp)
    800015a4:	02010113          	addi	sp,sp,32
    800015a8:	00008067          	ret

00000000800015ac <_ZN11MySemaphore5closeEv>:

int MySemaphore::close() {
    if(closed) return -1;
    800015ac:	00054783          	lbu	a5,0(a0)
    800015b0:	06079463          	bnez	a5,80001618 <_ZN11MySemaphore5closeEv+0x6c>
int MySemaphore::close() {
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	01213023          	sd	s2,0(sp)
    800015c8:	02010413          	addi	s0,sp,32
    800015cc:	00050913          	mv	s2,a0
    closed = true;
    800015d0:	00100793          	li	a5,1
    800015d4:	00f50023          	sb	a5,0(a0)
    800015d8:	0280006f          	j	80001600 <_ZN11MySemaphore5closeEv+0x54>

    T* removeFirst() {
        if(!head) return nullptr;
        Element* element = head;
        head = head->next;
        if(!head) tail = nullptr;
    800015dc:	00093823          	sd	zero,16(s2)

        T* result = element->item;
    800015e0:	00053483          	ld	s1,0(a0)
        void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void* ptr){
            MemoryAllocator::mem_free(ptr);
    800015e4:	00002097          	auipc	ra,0x2
    800015e8:	90c080e7          	jalr	-1780(ra) # 80002ef0 <_ZN15MemoryAllocator8mem_freeEPv>

    while(TCB* tcb = this->blocked.removeFirst()) {
    800015ec:	04048863          	beqz	s1,8000163c <_ZN11MySemaphore5closeEv+0x90>

    void setFinished(bool finished) { this->finished = finished; }

    bool isBlocked() const { return blocked; }

    void setBlocked(bool blocked) { this->blocked = blocked; }
    800015f0:	04048123          	sb	zero,66(s1)
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800015f4:	00048513          	mv	a0,s1
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	61c080e7          	jalr	1564(ra) # 80002c14 <_ZN9Scheduler3putEP3TCB>
        if(!head) return nullptr;
    80001600:	00893503          	ld	a0,8(s2)
    80001604:	00050e63          	beqz	a0,80001620 <_ZN11MySemaphore5closeEv+0x74>
        head = head->next;
    80001608:	00853783          	ld	a5,8(a0)
    8000160c:	00f93423          	sd	a5,8(s2)
        if(!head) tail = nullptr;
    80001610:	fc0798e3          	bnez	a5,800015e0 <_ZN11MySemaphore5closeEv+0x34>
    80001614:	fc9ff06f          	j	800015dc <_ZN11MySemaphore5closeEv+0x30>
    if(closed) return -1;
    80001618:	fff00513          	li	a0,-1
    }
    return 0;
}
    8000161c:	00008067          	ret
    return 0;
    80001620:	00000513          	li	a0,0
}
    80001624:	01813083          	ld	ra,24(sp)
    80001628:	01013403          	ld	s0,16(sp)
    8000162c:	00813483          	ld	s1,8(sp)
    80001630:	00013903          	ld	s2,0(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret
    return 0;
    8000163c:	00000513          	li	a0,0
    80001640:	fe5ff06f          	j	80001624 <_ZN11MySemaphore5closeEv+0x78>

0000000080001644 <_ZN11MySemaphore7trywaitEv>:

int MySemaphore::trywait() {
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00813423          	sd	s0,8(sp)
    8000164c:	01010413          	addi	s0,sp,16
    if(this->closed) return -1;
    80001650:	00054783          	lbu	a5,0(a0)
    80001654:	00079e63          	bnez	a5,80001670 <_ZN11MySemaphore7trywaitEv+0x2c>
    if((int)this->value - 1 < 0) {
    80001658:	00452783          	lw	a5,4(a0)
    8000165c:	00f05e63          	blez	a5,80001678 <_ZN11MySemaphore7trywaitEv+0x34>
        return 0;
    }
    return 1;
    80001660:	00100513          	li	a0,1
}
    80001664:	00813403          	ld	s0,8(sp)
    80001668:	01010113          	addi	sp,sp,16
    8000166c:	00008067          	ret
    if(this->closed) return -1;
    80001670:	fff00513          	li	a0,-1
    80001674:	ff1ff06f          	j	80001664 <_ZN11MySemaphore7trywaitEv+0x20>
        return 0;
    80001678:	00000513          	li	a0,0
    8000167c:	fe9ff06f          	j	80001664 <_ZN11MySemaphore7trywaitEv+0x20>

0000000080001680 <_ZN11MySemaphore5blockEv>:

void MySemaphore::block() {
    80001680:	fe010113          	addi	sp,sp,-32
    80001684:	00113c23          	sd	ra,24(sp)
    80001688:	00813823          	sd	s0,16(sp)
    8000168c:	00913423          	sd	s1,8(sp)
    80001690:	01213023          	sd	s2,0(sp)
    80001694:	02010413          	addi	s0,sp,32
    80001698:	00050493          	mv	s1,a0
    this->blocked.addLast(TCB::running);
    8000169c:	00007797          	auipc	a5,0x7
    800016a0:	62c7b783          	ld	a5,1580(a5) # 80008cc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800016a4:	0007b903          	ld	s2,0(a5)
            return MemoryAllocator::mem_alloc(size);
    800016a8:	01000513          	li	a0,16
    800016ac:	00001097          	auipc	ra,0x1
    800016b0:	74c080e7          	jalr	1868(ra) # 80002df8 <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    800016b4:	01253023          	sd	s2,0(a0)
    800016b8:	00053423          	sd	zero,8(a0)
        if(tail) {
    800016bc:	0104b783          	ld	a5,16(s1)
    800016c0:	02078c63          	beqz	a5,800016f8 <_ZN11MySemaphore5blockEv+0x78>
            tail->next = element;
    800016c4:	00a7b423          	sd	a0,8(a5)
            tail = element;
    800016c8:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    800016cc:	00007797          	auipc	a5,0x7
    800016d0:	5fc7b783          	ld	a5,1532(a5) # 80008cc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800016d4:	0007b783          	ld	a5,0(a5)
    800016d8:	00100713          	li	a4,1
    800016dc:	04e78123          	sb	a4,66(a5)
}
    800016e0:	01813083          	ld	ra,24(sp)
    800016e4:	01013403          	ld	s0,16(sp)
    800016e8:	00813483          	ld	s1,8(sp)
    800016ec:	00013903          	ld	s2,0(sp)
    800016f0:	02010113          	addi	sp,sp,32
    800016f4:	00008067          	ret
        } else head = tail = element;
    800016f8:	00a4b823          	sd	a0,16(s1)
    800016fc:	00a4b423          	sd	a0,8(s1)
    80001700:	fcdff06f          	j	800016cc <_ZN11MySemaphore5blockEv+0x4c>

0000000080001704 <_ZN11MySemaphore4waitEv>:
    if(this->closed) return -1;
    80001704:	00054783          	lbu	a5,0(a0)
    80001708:	06079463          	bnez	a5,80001770 <_ZN11MySemaphore4waitEv+0x6c>
int MySemaphore::wait() {
    8000170c:	fe010113          	addi	sp,sp,-32
    80001710:	00113c23          	sd	ra,24(sp)
    80001714:	00813823          	sd	s0,16(sp)
    80001718:	00913423          	sd	s1,8(sp)
    8000171c:	02010413          	addi	s0,sp,32
    80001720:	00050493          	mv	s1,a0
    if(--this->value < 0) {
    80001724:	00452783          	lw	a5,4(a0)
    80001728:	fff7879b          	addiw	a5,a5,-1
    8000172c:	00f52223          	sw	a5,4(a0)
    80001730:	02079713          	slli	a4,a5,0x20
    80001734:	00074e63          	bltz	a4,80001750 <_ZN11MySemaphore4waitEv+0x4c>
    return 0;
    80001738:	00000513          	li	a0,0
}
    8000173c:	01813083          	ld	ra,24(sp)
    80001740:	01013403          	ld	s0,16(sp)
    80001744:	00813483          	ld	s1,8(sp)
    80001748:	02010113          	addi	sp,sp,32
    8000174c:	00008067          	ret
        block();
    80001750:	00000097          	auipc	ra,0x0
    80001754:	f30080e7          	jalr	-208(ra) # 80001680 <_ZN11MySemaphore5blockEv>
        TCB::dispatch();
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	cdc080e7          	jalr	-804(ra) # 80002434 <_ZN3TCB8dispatchEv>
        if(this->closed) return -1;
    80001760:	0004c783          	lbu	a5,0(s1)
    80001764:	00079a63          	bnez	a5,80001778 <_ZN11MySemaphore4waitEv+0x74>
    return 0;
    80001768:	00000513          	li	a0,0
    8000176c:	fd1ff06f          	j	8000173c <_ZN11MySemaphore4waitEv+0x38>
    if(this->closed) return -1;
    80001770:	fff00513          	li	a0,-1
}
    80001774:	00008067          	ret
        if(this->closed) return -1;
    80001778:	fff00513          	li	a0,-1
    8000177c:	fc1ff06f          	j	8000173c <_ZN11MySemaphore4waitEv+0x38>

0000000080001780 <_ZN11MySemaphore7unblockEv>:

void MySemaphore::unblock() {
    80001780:	00050793          	mv	a5,a0
        if(!head) return nullptr;
    80001784:	00853503          	ld	a0,8(a0)
    80001788:	06050263          	beqz	a0,800017ec <_ZN11MySemaphore7unblockEv+0x6c>
        return head->item;
    8000178c:	00053703          	ld	a4,0(a0)
    if(this->blocked.peekFirst() == nullptr) return;
    80001790:	04070e63          	beqz	a4,800017ec <_ZN11MySemaphore7unblockEv+0x6c>
void MySemaphore::unblock() {
    80001794:	fe010113          	addi	sp,sp,-32
    80001798:	00113c23          	sd	ra,24(sp)
    8000179c:	00813823          	sd	s0,16(sp)
    800017a0:	00913423          	sd	s1,8(sp)
    800017a4:	02010413          	addi	s0,sp,32
        head = head->next;
    800017a8:	00853703          	ld	a4,8(a0)
    800017ac:	00e7b423          	sd	a4,8(a5)
        if(!head) tail = nullptr;
    800017b0:	02070a63          	beqz	a4,800017e4 <_ZN11MySemaphore7unblockEv+0x64>
        T* result = element->item;
    800017b4:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	738080e7          	jalr	1848(ra) # 80002ef0 <_ZN15MemoryAllocator8mem_freeEPv>
    800017c0:	04048123          	sb	zero,66(s1)
    TCB* tcb = this->blocked.removeFirst();
    tcb->setBlocked(false);
    Scheduler::put(tcb);
    800017c4:	00048513          	mv	a0,s1
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	44c080e7          	jalr	1100(ra) # 80002c14 <_ZN9Scheduler3putEP3TCB>
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	02010113          	addi	sp,sp,32
    800017e0:	00008067          	ret
        if(!head) tail = nullptr;
    800017e4:	0007b823          	sd	zero,16(a5)
    800017e8:	fcdff06f          	j	800017b4 <_ZN11MySemaphore7unblockEv+0x34>
    800017ec:	00008067          	ret

00000000800017f0 <_ZN11MySemaphore6signalEv>:
    if(this->closed) return -1;
    800017f0:	00054783          	lbu	a5,0(a0)
    800017f4:	04079663          	bnez	a5,80001840 <_ZN11MySemaphore6signalEv+0x50>
    if(++this->value <= 0) {
    800017f8:	00452783          	lw	a5,4(a0)
    800017fc:	0017879b          	addiw	a5,a5,1
    80001800:	0007871b          	sext.w	a4,a5
    80001804:	00f52223          	sw	a5,4(a0)
    80001808:	00e05663          	blez	a4,80001814 <_ZN11MySemaphore6signalEv+0x24>
    return 0;
    8000180c:	00000513          	li	a0,0
}
    80001810:	00008067          	ret
int MySemaphore::signal() {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
        unblock();
    80001824:	00000097          	auipc	ra,0x0
    80001828:	f5c080e7          	jalr	-164(ra) # 80001780 <_ZN11MySemaphore7unblockEv>
    return 0;
    8000182c:	00000513          	li	a0,0
}
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret
    if(this->closed) return -1;
    80001840:	fff00513          	li	a0,-1
    80001844:	00008067          	ret

0000000080001848 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001848:	fe010113          	addi	sp,sp,-32
    8000184c:	00113c23          	sd	ra,24(sp)
    80001850:	00813823          	sd	s0,16(sp)
    80001854:	00913423          	sd	s1,8(sp)
    80001858:	01213023          	sd	s2,0(sp)
    8000185c:	02010413          	addi	s0,sp,32
    80001860:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001864:	00100793          	li	a5,1
    80001868:	02a7f663          	bgeu	a5,a0,80001894 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) { TCB::yield(); }
    8000186c:	00357793          	andi	a5,a0,3
    80001870:	02078e63          	beqz	a5,800018ac <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001874:	fff48513          	addi	a0,s1,-1
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	fd0080e7          	jalr	-48(ra) # 80001848 <_ZL9fibonaccim>
    80001880:	00050913          	mv	s2,a0
    80001884:	ffe48513          	addi	a0,s1,-2
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	fc0080e7          	jalr	-64(ra) # 80001848 <_ZL9fibonaccim>
    80001890:	00a90533          	add	a0,s2,a0
}
    80001894:	01813083          	ld	ra,24(sp)
    80001898:	01013403          	ld	s0,16(sp)
    8000189c:	00813483          	ld	s1,8(sp)
    800018a0:	00013903          	ld	s2,0(sp)
    800018a4:	02010113          	addi	sp,sp,32
    800018a8:	00008067          	ret
    if (n % 4 == 0) { TCB::yield(); }
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	b08080e7          	jalr	-1272(ra) # 800023b4 <_ZN3TCB5yieldEv>
    800018b4:	fc1ff06f          	j	80001874 <_ZL9fibonaccim+0x2c>

00000000800018b8 <_Z11workerBodyAPv>:
{
    800018b8:	fe010113          	addi	sp,sp,-32
    800018bc:	00113c23          	sd	ra,24(sp)
    800018c0:	00813823          	sd	s0,16(sp)
    800018c4:	00913423          	sd	s1,8(sp)
    800018c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800018cc:	00000493          	li	s1,0
    800018d0:	0300006f          	j	80001900 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800018d4:	00168693          	addi	a3,a3,1
    800018d8:	000027b7          	lui	a5,0x2
    800018dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800018e0:	00d7ee63          	bltu	a5,a3,800018fc <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800018e4:	00000713          	li	a4,0
    800018e8:	000077b7          	lui	a5,0x7
    800018ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800018f0:	fee7e2e3          	bltu	a5,a4,800018d4 <_Z11workerBodyAPv+0x1c>
    800018f4:	00170713          	addi	a4,a4,1
    800018f8:	ff1ff06f          	j	800018e8 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800018fc:	00148493          	addi	s1,s1,1
    80001900:	00900793          	li	a5,9
    80001904:	0497e463          	bltu	a5,s1,8000194c <_Z11workerBodyAPv+0x94>
        printString("A: i=");
    80001908:	00005517          	auipc	a0,0x5
    8000190c:	71850513          	addi	a0,a0,1816 # 80007020 <CONSOLE_STATUS+0x10>
    80001910:	00000097          	auipc	ra,0x0
    80001914:	370080e7          	jalr	880(ra) # 80001c80 <_Z11printStringPKc>
        printInt(i);
    80001918:	00000613          	li	a2,0
    8000191c:	00a00593          	li	a1,10
    80001920:	0004851b          	sext.w	a0,s1
    80001924:	00000097          	auipc	ra,0x0
    80001928:	50c080e7          	jalr	1292(ra) # 80001e30 <_Z8printIntiii>
        printString("\n");
    8000192c:	00006517          	auipc	a0,0x6
    80001930:	8cc50513          	addi	a0,a0,-1844 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001934:	00000097          	auipc	ra,0x0
    80001938:	34c080e7          	jalr	844(ra) # 80001c80 <_Z11printStringPKc>
        thread_exit();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	9b4080e7          	jalr	-1612(ra) # 800012f0 <_Z11thread_exitv>
        for (uint64 j = 0; j < 10000; j++)
    80001944:	00000693          	li	a3,0
    80001948:	f91ff06f          	j	800018d8 <_Z11workerBodyAPv+0x20>
}
    8000194c:	01813083          	ld	ra,24(sp)
    80001950:	01013403          	ld	s0,16(sp)
    80001954:	00813483          	ld	s1,8(sp)
    80001958:	02010113          	addi	sp,sp,32
    8000195c:	00008067          	ret

0000000080001960 <_Z11workerBodyBPv>:
{
    80001960:	fe010113          	addi	sp,sp,-32
    80001964:	00113c23          	sd	ra,24(sp)
    80001968:	00813823          	sd	s0,16(sp)
    8000196c:	00913423          	sd	s1,8(sp)
    80001970:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001974:	00000493          	li	s1,0
    80001978:	0300006f          	j	800019a8 <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000197c:	00168693          	addi	a3,a3,1
    80001980:	000027b7          	lui	a5,0x2
    80001984:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001988:	00d7ee63          	bltu	a5,a3,800019a4 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000198c:	00000713          	li	a4,0
    80001990:	000077b7          	lui	a5,0x7
    80001994:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001998:	fee7e2e3          	bltu	a5,a4,8000197c <_Z11workerBodyBPv+0x1c>
    8000199c:	00170713          	addi	a4,a4,1
    800019a0:	ff1ff06f          	j	80001990 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800019a4:	00148493          	addi	s1,s1,1
    800019a8:	00f00793          	li	a5,15
    800019ac:	0497e063          	bltu	a5,s1,800019ec <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    800019b0:	00005517          	auipc	a0,0x5
    800019b4:	67850513          	addi	a0,a0,1656 # 80007028 <CONSOLE_STATUS+0x18>
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	2c8080e7          	jalr	712(ra) # 80001c80 <_Z11printStringPKc>
        printInt(i);
    800019c0:	00000613          	li	a2,0
    800019c4:	00a00593          	li	a1,10
    800019c8:	0004851b          	sext.w	a0,s1
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	464080e7          	jalr	1124(ra) # 80001e30 <_Z8printIntiii>
        printString("\n");
    800019d4:	00006517          	auipc	a0,0x6
    800019d8:	82450513          	addi	a0,a0,-2012 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	2a4080e7          	jalr	676(ra) # 80001c80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800019e4:	00000693          	li	a3,0
    800019e8:	f99ff06f          	j	80001980 <_Z11workerBodyBPv+0x20>
}
    800019ec:	01813083          	ld	ra,24(sp)
    800019f0:	01013403          	ld	s0,16(sp)
    800019f4:	00813483          	ld	s1,8(sp)
    800019f8:	02010113          	addi	sp,sp,32
    800019fc:	00008067          	ret

0000000080001a00 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    80001a00:	fe010113          	addi	sp,sp,-32
    80001a04:	00113c23          	sd	ra,24(sp)
    80001a08:	00813823          	sd	s0,16(sp)
    80001a0c:	00913423          	sd	s1,8(sp)
    80001a10:	01213023          	sd	s2,0(sp)
    80001a14:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001a18:	00000493          	li	s1,0
    80001a1c:	0400006f          	j	80001a5c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001a20:	00005517          	auipc	a0,0x5
    80001a24:	61050513          	addi	a0,a0,1552 # 80007030 <CONSOLE_STATUS+0x20>
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	258080e7          	jalr	600(ra) # 80001c80 <_Z11printStringPKc>
        printInt(i);
    80001a30:	00000613          	li	a2,0
    80001a34:	00a00593          	li	a1,10
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	3f4080e7          	jalr	1012(ra) # 80001e30 <_Z8printIntiii>
        printString("\n");
    80001a44:	00005517          	auipc	a0,0x5
    80001a48:	7b450513          	addi	a0,a0,1972 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	234080e7          	jalr	564(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001a54:	0014849b          	addiw	s1,s1,1
    80001a58:	0ff4f493          	andi	s1,s1,255
    80001a5c:	00200793          	li	a5,2
    80001a60:	fc97f0e3          	bgeu	a5,s1,80001a20 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001a64:	00005517          	auipc	a0,0x5
    80001a68:	5d450513          	addi	a0,a0,1492 # 80007038 <CONSOLE_STATUS+0x28>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	214080e7          	jalr	532(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001a74:	00700313          	li	t1,7
    TCB::yield();
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	93c080e7          	jalr	-1732(ra) # 800023b4 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001a80:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001a84:	00005517          	auipc	a0,0x5
    80001a88:	5c450513          	addi	a0,a0,1476 # 80007048 <CONSOLE_STATUS+0x38>
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	1f4080e7          	jalr	500(ra) # 80001c80 <_Z11printStringPKc>
    printInt(t1);
    80001a94:	00000613          	li	a2,0
    80001a98:	00a00593          	li	a1,10
    80001a9c:	0009051b          	sext.w	a0,s2
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	390080e7          	jalr	912(ra) # 80001e30 <_Z8printIntiii>
    printString("\n");
    80001aa8:	00005517          	auipc	a0,0x5
    80001aac:	75050513          	addi	a0,a0,1872 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	1d0080e7          	jalr	464(ra) # 80001c80 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001ab8:	00c00513          	li	a0,12
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	d8c080e7          	jalr	-628(ra) # 80001848 <_ZL9fibonaccim>
    80001ac4:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001ac8:	00005517          	auipc	a0,0x5
    80001acc:	58850513          	addi	a0,a0,1416 # 80007050 <CONSOLE_STATUS+0x40>
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	1b0080e7          	jalr	432(ra) # 80001c80 <_Z11printStringPKc>
    printInt(result);
    80001ad8:	00000613          	li	a2,0
    80001adc:	00a00593          	li	a1,10
    80001ae0:	0009051b          	sext.w	a0,s2
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	34c080e7          	jalr	844(ra) # 80001e30 <_Z8printIntiii>
    printString("\n");
    80001aec:	00005517          	auipc	a0,0x5
    80001af0:	70c50513          	addi	a0,a0,1804 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	18c080e7          	jalr	396(ra) # 80001c80 <_Z11printStringPKc>
    80001afc:	0400006f          	j	80001b3c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001b00:	00005517          	auipc	a0,0x5
    80001b04:	53050513          	addi	a0,a0,1328 # 80007030 <CONSOLE_STATUS+0x20>
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	178080e7          	jalr	376(ra) # 80001c80 <_Z11printStringPKc>
        printInt(i);
    80001b10:	00000613          	li	a2,0
    80001b14:	00a00593          	li	a1,10
    80001b18:	00048513          	mv	a0,s1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	314080e7          	jalr	788(ra) # 80001e30 <_Z8printIntiii>
        printString("\n");
    80001b24:	00005517          	auipc	a0,0x5
    80001b28:	6d450513          	addi	a0,a0,1748 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	154080e7          	jalr	340(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001b34:	0014849b          	addiw	s1,s1,1
    80001b38:	0ff4f493          	andi	s1,s1,255
    80001b3c:	00500793          	li	a5,5
    80001b40:	fc97f0e3          	bgeu	a5,s1,80001b00 <_Z11workerBodyCPv+0x100>
    }
    //TCB::running->setFinished(true);
    //TCB::yield();
}
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	01013403          	ld	s0,16(sp)
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	00013903          	ld	s2,0(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret

0000000080001b5c <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80001b5c:	fe010113          	addi	sp,sp,-32
    80001b60:	00113c23          	sd	ra,24(sp)
    80001b64:	00813823          	sd	s0,16(sp)
    80001b68:	00913423          	sd	s1,8(sp)
    80001b6c:	01213023          	sd	s2,0(sp)
    80001b70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001b74:	00a00493          	li	s1,10
    80001b78:	0400006f          	j	80001bb8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001b7c:	00005517          	auipc	a0,0x5
    80001b80:	4e450513          	addi	a0,a0,1252 # 80007060 <CONSOLE_STATUS+0x50>
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	0fc080e7          	jalr	252(ra) # 80001c80 <_Z11printStringPKc>
        printInt(i);
    80001b8c:	00000613          	li	a2,0
    80001b90:	00a00593          	li	a1,10
    80001b94:	00048513          	mv	a0,s1
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	298080e7          	jalr	664(ra) # 80001e30 <_Z8printIntiii>
        printString("\n");
    80001ba0:	00005517          	auipc	a0,0x5
    80001ba4:	65850513          	addi	a0,a0,1624 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	0d8080e7          	jalr	216(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001bb0:	0014849b          	addiw	s1,s1,1
    80001bb4:	0ff4f493          	andi	s1,s1,255
    80001bb8:	00c00793          	li	a5,12
    80001bbc:	fc97f0e3          	bgeu	a5,s1,80001b7c <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001bc0:	00005517          	auipc	a0,0x5
    80001bc4:	4a850513          	addi	a0,a0,1192 # 80007068 <CONSOLE_STATUS+0x58>
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	0b8080e7          	jalr	184(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001bd0:	00500313          	li	t1,5
    TCB::yield();
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	7e0080e7          	jalr	2016(ra) # 800023b4 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(23);
    80001bdc:	01700513          	li	a0,23
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	c68080e7          	jalr	-920(ra) # 80001848 <_ZL9fibonaccim>
    80001be8:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001bec:	00005517          	auipc	a0,0x5
    80001bf0:	48c50513          	addi	a0,a0,1164 # 80007078 <CONSOLE_STATUS+0x68>
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	08c080e7          	jalr	140(ra) # 80001c80 <_Z11printStringPKc>
    printInt(result);
    80001bfc:	00000613          	li	a2,0
    80001c00:	00a00593          	li	a1,10
    80001c04:	0009051b          	sext.w	a0,s2
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	228080e7          	jalr	552(ra) # 80001e30 <_Z8printIntiii>
    printString("\n");
    80001c10:	00005517          	auipc	a0,0x5
    80001c14:	5e850513          	addi	a0,a0,1512 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	068080e7          	jalr	104(ra) # 80001c80 <_Z11printStringPKc>
    80001c20:	0400006f          	j	80001c60 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001c24:	00005517          	auipc	a0,0x5
    80001c28:	43c50513          	addi	a0,a0,1084 # 80007060 <CONSOLE_STATUS+0x50>
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	054080e7          	jalr	84(ra) # 80001c80 <_Z11printStringPKc>
        printInt(i);
    80001c34:	00000613          	li	a2,0
    80001c38:	00a00593          	li	a1,10
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	1f0080e7          	jalr	496(ra) # 80001e30 <_Z8printIntiii>
        printString("\n");
    80001c48:	00005517          	auipc	a0,0x5
    80001c4c:	5b050513          	addi	a0,a0,1456 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	030080e7          	jalr	48(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001c58:	0014849b          	addiw	s1,s1,1
    80001c5c:	0ff4f493          	andi	s1,s1,255
    80001c60:	00f00793          	li	a5,15
    80001c64:	fc97f0e3          	bgeu	a5,s1,80001c24 <_Z11workerBodyDPv+0xc8>
    }
    // TCB::running->setFinished(true);
    // TCB::yield();
    80001c68:	01813083          	ld	ra,24(sp)
    80001c6c:	01013403          	ld	s0,16(sp)
    80001c70:	00813483          	ld	s1,8(sp)
    80001c74:	00013903          	ld	s2,0(sp)
    80001c78:	02010113          	addi	sp,sp,32
    80001c7c:	00008067          	ret

0000000080001c80 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001c80:	fe010113          	addi	sp,sp,-32
    80001c84:	00113c23          	sd	ra,24(sp)
    80001c88:	00813823          	sd	s0,16(sp)
    80001c8c:	00913423          	sd	s1,8(sp)
    80001c90:	02010413          	addi	s0,sp,32
    80001c94:	00050493          	mv	s1,a0
    LOCK();
    80001c98:	00100613          	li	a2,1
    80001c9c:	00000593          	li	a1,0
    80001ca0:	00007517          	auipc	a0,0x7
    80001ca4:	08050513          	addi	a0,a0,128 # 80008d20 <lockPrint>
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	450080e7          	jalr	1104(ra) # 800010f8 <copy_and_swap>
    80001cb0:	00050863          	beqz	a0,80001cc0 <_Z11printStringPKc+0x40>
    80001cb4:	fffff097          	auipc	ra,0xfffff
    80001cb8:	670080e7          	jalr	1648(ra) # 80001324 <_Z15thread_dispatchv>
    80001cbc:	fddff06f          	j	80001c98 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001cc0:	0004c503          	lbu	a0,0(s1)
    80001cc4:	00050a63          	beqz	a0,80001cd8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	874080e7          	jalr	-1932(ra) # 8000153c <_Z4putcc>
        string++;
    80001cd0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001cd4:	fedff06f          	j	80001cc0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80001cd8:	00000613          	li	a2,0
    80001cdc:	00100593          	li	a1,1
    80001ce0:	00007517          	auipc	a0,0x7
    80001ce4:	04050513          	addi	a0,a0,64 # 80008d20 <lockPrint>
    80001ce8:	fffff097          	auipc	ra,0xfffff
    80001cec:	410080e7          	jalr	1040(ra) # 800010f8 <copy_and_swap>
    80001cf0:	fe0514e3          	bnez	a0,80001cd8 <_Z11printStringPKc+0x58>
}
    80001cf4:	01813083          	ld	ra,24(sp)
    80001cf8:	01013403          	ld	s0,16(sp)
    80001cfc:	00813483          	ld	s1,8(sp)
    80001d00:	02010113          	addi	sp,sp,32
    80001d04:	00008067          	ret

0000000080001d08 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001d08:	fd010113          	addi	sp,sp,-48
    80001d0c:	02113423          	sd	ra,40(sp)
    80001d10:	02813023          	sd	s0,32(sp)
    80001d14:	00913c23          	sd	s1,24(sp)
    80001d18:	01213823          	sd	s2,16(sp)
    80001d1c:	01313423          	sd	s3,8(sp)
    80001d20:	01413023          	sd	s4,0(sp)
    80001d24:	03010413          	addi	s0,sp,48
    80001d28:	00050993          	mv	s3,a0
    80001d2c:	00058a13          	mv	s4,a1
    LOCK();
    80001d30:	00100613          	li	a2,1
    80001d34:	00000593          	li	a1,0
    80001d38:	00007517          	auipc	a0,0x7
    80001d3c:	fe850513          	addi	a0,a0,-24 # 80008d20 <lockPrint>
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	3b8080e7          	jalr	952(ra) # 800010f8 <copy_and_swap>
    80001d48:	00050863          	beqz	a0,80001d58 <_Z9getStringPci+0x50>
    80001d4c:	fffff097          	auipc	ra,0xfffff
    80001d50:	5d8080e7          	jalr	1496(ra) # 80001324 <_Z15thread_dispatchv>
    80001d54:	fddff06f          	j	80001d30 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001d58:	00000913          	li	s2,0
    80001d5c:	00090493          	mv	s1,s2
    80001d60:	0019091b          	addiw	s2,s2,1
    80001d64:	03495a63          	bge	s2,s4,80001d98 <_Z9getStringPci+0x90>
        cc = getc();
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	7a0080e7          	jalr	1952(ra) # 80001508 <_Z4getcv>
        if(cc < 1)
    80001d70:	02050463          	beqz	a0,80001d98 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80001d74:	009984b3          	add	s1,s3,s1
    80001d78:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001d7c:	00a00793          	li	a5,10
    80001d80:	00f50a63          	beq	a0,a5,80001d94 <_Z9getStringPci+0x8c>
    80001d84:	00d00793          	li	a5,13
    80001d88:	fcf51ae3          	bne	a0,a5,80001d5c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80001d8c:	00090493          	mv	s1,s2
    80001d90:	0080006f          	j	80001d98 <_Z9getStringPci+0x90>
    80001d94:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001d98:	009984b3          	add	s1,s3,s1
    80001d9c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001da0:	00000613          	li	a2,0
    80001da4:	00100593          	li	a1,1
    80001da8:	00007517          	auipc	a0,0x7
    80001dac:	f7850513          	addi	a0,a0,-136 # 80008d20 <lockPrint>
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	348080e7          	jalr	840(ra) # 800010f8 <copy_and_swap>
    80001db8:	fe0514e3          	bnez	a0,80001da0 <_Z9getStringPci+0x98>
    return buf;
}
    80001dbc:	00098513          	mv	a0,s3
    80001dc0:	02813083          	ld	ra,40(sp)
    80001dc4:	02013403          	ld	s0,32(sp)
    80001dc8:	01813483          	ld	s1,24(sp)
    80001dcc:	01013903          	ld	s2,16(sp)
    80001dd0:	00813983          	ld	s3,8(sp)
    80001dd4:	00013a03          	ld	s4,0(sp)
    80001dd8:	03010113          	addi	sp,sp,48
    80001ddc:	00008067          	ret

0000000080001de0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00813423          	sd	s0,8(sp)
    80001de8:	01010413          	addi	s0,sp,16
    80001dec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001df0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001df4:	0006c603          	lbu	a2,0(a3)
    80001df8:	fd06071b          	addiw	a4,a2,-48
    80001dfc:	0ff77713          	andi	a4,a4,255
    80001e00:	00900793          	li	a5,9
    80001e04:	02e7e063          	bltu	a5,a4,80001e24 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001e08:	0025179b          	slliw	a5,a0,0x2
    80001e0c:	00a787bb          	addw	a5,a5,a0
    80001e10:	0017979b          	slliw	a5,a5,0x1
    80001e14:	00168693          	addi	a3,a3,1
    80001e18:	00c787bb          	addw	a5,a5,a2
    80001e1c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001e20:	fd5ff06f          	j	80001df4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001e24:	00813403          	ld	s0,8(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001e30:	fc010113          	addi	sp,sp,-64
    80001e34:	02113c23          	sd	ra,56(sp)
    80001e38:	02813823          	sd	s0,48(sp)
    80001e3c:	02913423          	sd	s1,40(sp)
    80001e40:	03213023          	sd	s2,32(sp)
    80001e44:	01313c23          	sd	s3,24(sp)
    80001e48:	04010413          	addi	s0,sp,64
    80001e4c:	00050493          	mv	s1,a0
    80001e50:	00058913          	mv	s2,a1
    80001e54:	00060993          	mv	s3,a2
    LOCK();
    80001e58:	00100613          	li	a2,1
    80001e5c:	00000593          	li	a1,0
    80001e60:	00007517          	auipc	a0,0x7
    80001e64:	ec050513          	addi	a0,a0,-320 # 80008d20 <lockPrint>
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	290080e7          	jalr	656(ra) # 800010f8 <copy_and_swap>
    80001e70:	00050863          	beqz	a0,80001e80 <_Z8printIntiii+0x50>
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	4b0080e7          	jalr	1200(ra) # 80001324 <_Z15thread_dispatchv>
    80001e7c:	fddff06f          	j	80001e58 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001e80:	00098463          	beqz	s3,80001e88 <_Z8printIntiii+0x58>
    80001e84:	0804c463          	bltz	s1,80001f0c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001e88:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001e8c:	00000593          	li	a1,0
    }

    i = 0;
    80001e90:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001e94:	0009079b          	sext.w	a5,s2
    80001e98:	0325773b          	remuw	a4,a0,s2
    80001e9c:	00048613          	mv	a2,s1
    80001ea0:	0014849b          	addiw	s1,s1,1
    80001ea4:	02071693          	slli	a3,a4,0x20
    80001ea8:	0206d693          	srli	a3,a3,0x20
    80001eac:	00007717          	auipc	a4,0x7
    80001eb0:	d0470713          	addi	a4,a4,-764 # 80008bb0 <digits>
    80001eb4:	00d70733          	add	a4,a4,a3
    80001eb8:	00074683          	lbu	a3,0(a4)
    80001ebc:	fd040713          	addi	a4,s0,-48
    80001ec0:	00c70733          	add	a4,a4,a2
    80001ec4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001ec8:	0005071b          	sext.w	a4,a0
    80001ecc:	0325553b          	divuw	a0,a0,s2
    80001ed0:	fcf772e3          	bgeu	a4,a5,80001e94 <_Z8printIntiii+0x64>
    if(neg)
    80001ed4:	00058c63          	beqz	a1,80001eec <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80001ed8:	fd040793          	addi	a5,s0,-48
    80001edc:	009784b3          	add	s1,a5,s1
    80001ee0:	02d00793          	li	a5,45
    80001ee4:	fef48823          	sb	a5,-16(s1)
    80001ee8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001eec:	fff4849b          	addiw	s1,s1,-1
    80001ef0:	0204c463          	bltz	s1,80001f18 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80001ef4:	fd040793          	addi	a5,s0,-48
    80001ef8:	009787b3          	add	a5,a5,s1
    80001efc:	ff07c503          	lbu	a0,-16(a5)
    80001f00:	fffff097          	auipc	ra,0xfffff
    80001f04:	63c080e7          	jalr	1596(ra) # 8000153c <_Z4putcc>
    80001f08:	fe5ff06f          	j	80001eec <_Z8printIntiii+0xbc>
        x = -xx;
    80001f0c:	4090053b          	negw	a0,s1
        neg = 1;
    80001f10:	00100593          	li	a1,1
        x = -xx;
    80001f14:	f7dff06f          	j	80001e90 <_Z8printIntiii+0x60>

    UNLOCK();
    80001f18:	00000613          	li	a2,0
    80001f1c:	00100593          	li	a1,1
    80001f20:	00007517          	auipc	a0,0x7
    80001f24:	e0050513          	addi	a0,a0,-512 # 80008d20 <lockPrint>
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	1d0080e7          	jalr	464(ra) # 800010f8 <copy_and_swap>
    80001f30:	fe0514e3          	bnez	a0,80001f18 <_Z8printIntiii+0xe8>
    80001f34:	03813083          	ld	ra,56(sp)
    80001f38:	03013403          	ld	s0,48(sp)
    80001f3c:	02813483          	ld	s1,40(sp)
    80001f40:	02013903          	ld	s2,32(sp)
    80001f44:	01813983          	ld	s3,24(sp)
    80001f48:	04010113          	addi	sp,sp,64
    80001f4c:	00008067          	ret

0000000080001f50 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80001f50:	fe010113          	addi	sp,sp,-32
    80001f54:	00113c23          	sd	ra,24(sp)
    80001f58:	00813823          	sd	s0,16(sp)
    80001f5c:	00913423          	sd	s1,8(sp)
    80001f60:	01213023          	sd	s2,0(sp)
    80001f64:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80001f68:	00005517          	auipc	a0,0x5
    80001f6c:	12050513          	addi	a0,a0,288 # 80007088 <CONSOLE_STATUS+0x78>
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	d10080e7          	jalr	-752(ra) # 80001c80 <_Z11printStringPKc>
    int test = getc() - '0';
    80001f78:	fffff097          	auipc	ra,0xfffff
    80001f7c:	590080e7          	jalr	1424(ra) # 80001508 <_Z4getcv>
    80001f80:	00050913          	mv	s2,a0
    80001f84:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80001f88:	fffff097          	auipc	ra,0xfffff
    80001f8c:	580080e7          	jalr	1408(ra) # 80001508 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80001f90:	fcb9091b          	addiw	s2,s2,-53
    80001f94:	00100793          	li	a5,1
    80001f98:	0327f463          	bgeu	a5,s2,80001fc0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001f9c:	00700793          	li	a5,7
    80001fa0:	0c97ee63          	bltu	a5,s1,8000207c <_Z8userMainv+0x12c>
    80001fa4:	00249493          	slli	s1,s1,0x2
    80001fa8:	00005717          	auipc	a4,0x5
    80001fac:	2f870713          	addi	a4,a4,760 # 800072a0 <CONSOLE_STATUS+0x290>
    80001fb0:	00e484b3          	add	s1,s1,a4
    80001fb4:	0004a783          	lw	a5,0(s1)
    80001fb8:	00e787b3          	add	a5,a5,a4
    80001fbc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80001fc0:	00005517          	auipc	a0,0x5
    80001fc4:	0e850513          	addi	a0,a0,232 # 800070a8 <CONSOLE_STATUS+0x98>
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	cb8080e7          	jalr	-840(ra) # 80001c80 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001fd0:	01813083          	ld	ra,24(sp)
    80001fd4:	01013403          	ld	s0,16(sp)
    80001fd8:	00813483          	ld	s1,8(sp)
    80001fdc:	00013903          	ld	s2,0(sp)
    80001fe0:	02010113          	addi	sp,sp,32
    80001fe4:	00008067          	ret
            Threads_C_API_test();
    80001fe8:	00002097          	auipc	ra,0x2
    80001fec:	6f8080e7          	jalr	1784(ra) # 800046e0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001ff0:	00005517          	auipc	a0,0x5
    80001ff4:	0e850513          	addi	a0,a0,232 # 800070d8 <CONSOLE_STATUS+0xc8>
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	c88080e7          	jalr	-888(ra) # 80001c80 <_Z11printStringPKc>
            break;
    80002000:	fd1ff06f          	j	80001fd0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002004:	00002097          	auipc	ra,0x2
    80002008:	d40080e7          	jalr	-704(ra) # 80003d44 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000200c:	00005517          	auipc	a0,0x5
    80002010:	10c50513          	addi	a0,a0,268 # 80007118 <CONSOLE_STATUS+0x108>
    80002014:	00000097          	auipc	ra,0x0
    80002018:	c6c080e7          	jalr	-916(ra) # 80001c80 <_Z11printStringPKc>
            break;
    8000201c:	fb5ff06f          	j	80001fd0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80002020:	00001097          	auipc	ra,0x1
    80002024:	578080e7          	jalr	1400(ra) # 80003598 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002028:	00005517          	auipc	a0,0x5
    8000202c:	13050513          	addi	a0,a0,304 # 80007158 <CONSOLE_STATUS+0x148>
    80002030:	00000097          	auipc	ra,0x0
    80002034:	c50080e7          	jalr	-944(ra) # 80001c80 <_Z11printStringPKc>
            break;
    80002038:	f99ff06f          	j	80001fd0 <_Z8userMainv+0x80>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000203c:	00005517          	auipc	a0,0x5
    80002040:	16c50513          	addi	a0,a0,364 # 800071a8 <CONSOLE_STATUS+0x198>
    80002044:	00000097          	auipc	ra,0x0
    80002048:	c3c080e7          	jalr	-964(ra) # 80001c80 <_Z11printStringPKc>
            break;
    8000204c:	f85ff06f          	j	80001fd0 <_Z8userMainv+0x80>
            System_Mode_test();
    80002050:	00003097          	auipc	ra,0x3
    80002054:	cd0080e7          	jalr	-816(ra) # 80004d20 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002058:	00005517          	auipc	a0,0x5
    8000205c:	1a850513          	addi	a0,a0,424 # 80007200 <CONSOLE_STATUS+0x1f0>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	c20080e7          	jalr	-992(ra) # 80001c80 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002068:	00005517          	auipc	a0,0x5
    8000206c:	1b850513          	addi	a0,a0,440 # 80007220 <CONSOLE_STATUS+0x210>
    80002070:	00000097          	auipc	ra,0x0
    80002074:	c10080e7          	jalr	-1008(ra) # 80001c80 <_Z11printStringPKc>
            break;
    80002078:	f59ff06f          	j	80001fd0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000207c:	00005517          	auipc	a0,0x5
    80002080:	1fc50513          	addi	a0,a0,508 # 80007278 <CONSOLE_STATUS+0x268>
    80002084:	00000097          	auipc	ra,0x0
    80002088:	bfc080e7          	jalr	-1028(ra) # 80001c80 <_Z11printStringPKc>
    8000208c:	f45ff06f          	j	80001fd0 <_Z8userMainv+0x80>

0000000080002090 <main>:
#include "../h/riscv.hpp"
#include "../lib/console.h"

extern void userMain();

int main() {
    80002090:	fd010113          	addi	sp,sp,-48
    80002094:	02113423          	sd	ra,40(sp)
    80002098:	02813023          	sd	s0,32(sp)
    8000209c:	00913c23          	sd	s1,24(sp)
    800020a0:	01213823          	sd	s2,16(sp)
    800020a4:	03010413          	addi	s0,sp,48
    MemoryAllocator::initFreeSegment();
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	f54080e7          	jalr	-172(ra) # 80002ffc <_ZN15MemoryAllocator15initFreeSegmentEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800020b0:	00007797          	auipc	a5,0x7
    800020b4:	c007b783          	ld	a5,-1024(a5) # 80008cb0 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile("csrw stvec, %0" : : "r"(stvec));
    800020b8:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    800020bc:	00200793          	li	a5,2
    800020c0:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t threads[2];
    threads[0] = TCB::createThread(nullptr, nullptr);
    800020c4:	00000593          	li	a1,0
    800020c8:	00000513          	li	a0,0
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	0c8080e7          	jalr	200(ra) # 80002194 <_ZN3TCB12createThreadEPFvPvES0_>
    800020d4:	fca43823          	sd	a0,-48(s0)
    TCB::running = threads[0];
    800020d8:	00007797          	auipc	a5,0x7
    800020dc:	bf07b783          	ld	a5,-1040(a5) # 80008cc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020e0:	00a7b023          	sd	a0,0(a5)
    thread_create(&threads[1], reinterpret_cast<void (*) (void *)>(userMain), nullptr);
    800020e4:	00000613          	li	a2,0
    800020e8:	00007597          	auipc	a1,0x7
    800020ec:	bb85b583          	ld	a1,-1096(a1) # 80008ca0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800020f0:	fd840513          	addi	a0,s0,-40
    800020f4:	fffff097          	auipc	ra,0xfffff
    800020f8:	1bc080e7          	jalr	444(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!(threads[1]->isFinished())) thread_dispatch();
    800020fc:	fd843783          	ld	a5,-40(s0)
    bool isFinished() const { return finished; }
    80002100:	0417c783          	lbu	a5,65(a5)
    80002104:	00079863          	bnez	a5,80002114 <main+0x84>
    80002108:	fffff097          	auipc	ra,0xfffff
    8000210c:	21c080e7          	jalr	540(ra) # 80001324 <_Z15thread_dispatchv>
    80002110:	fedff06f          	j	800020fc <main+0x6c>

    for(auto &thread : threads) {
    80002114:	fd040493          	addi	s1,s0,-48
    80002118:	0140006f          	j	8000212c <main+0x9c>
        delete thread;
    8000211c:	00090513          	mv	a0,s2
    80002120:	00000097          	auipc	ra,0x0
    80002124:	3f0080e7          	jalr	1008(ra) # 80002510 <_ZdlPv>
    for(auto &thread : threads) {
    80002128:	00848493          	addi	s1,s1,8
    8000212c:	fe040793          	addi	a5,s0,-32
    80002130:	02f48063          	beq	s1,a5,80002150 <main+0xc0>
        delete thread;
    80002134:	0004b903          	ld	s2,0(s1)
    80002138:	fe0908e3          	beqz	s2,80002128 <main+0x98>
    ~TCB(){ delete[] stack; }
    8000213c:	01093503          	ld	a0,16(s2)
    80002140:	fc050ee3          	beqz	a0,8000211c <main+0x8c>
    80002144:	00000097          	auipc	ra,0x0
    80002148:	3f4080e7          	jalr	1012(ra) # 80002538 <_ZdaPv>
    8000214c:	fd1ff06f          	j	8000211c <main+0x8c>
    }

    Scheduler::deleteThreadQueue();
    80002150:	00001097          	auipc	ra,0x1
    80002154:	b30080e7          	jalr	-1232(ra) # 80002c80 <_ZN9Scheduler17deleteThreadQueueEv>

    printString("Proces zavrsen\n");
    80002158:	00005517          	auipc	a0,0x5
    8000215c:	16850513          	addi	a0,a0,360 # 800072c0 <CONSOLE_STATUS+0x2b0>
    80002160:	00000097          	auipc	ra,0x0
    80002164:	b20080e7          	jalr	-1248(ra) # 80001c80 <_Z11printStringPKc>
}

inline void Riscv::exitEmulator() {
    __asm__ volatile("li t0, 0x5555");
    80002168:	000052b7          	lui	t0,0x5
    8000216c:	5552829b          	addiw	t0,t0,1365
    __asm__ volatile("li t1, 0x100000");
    80002170:	00100337          	lui	t1,0x100
    __asm__ volatile("sw t0, 0(t1)");
    80002174:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>

    Riscv::exitEmulator();

    return 0;
    80002178:	00000513          	li	a0,0
    8000217c:	02813083          	ld	ra,40(sp)
    80002180:	02013403          	ld	s0,32(sp)
    80002184:	01813483          	ld	s1,24(sp)
    80002188:	01013903          	ld	s2,16(sp)
    8000218c:	03010113          	addi	sp,sp,48
    80002190:	00008067          	ret

0000000080002194 <_ZN3TCB12createThreadEPFvPvES0_>:
#include "../h/syscall_c.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body, void* arg) {
    80002194:	fc010113          	addi	sp,sp,-64
    80002198:	02113c23          	sd	ra,56(sp)
    8000219c:	02813823          	sd	s0,48(sp)
    800021a0:	02913423          	sd	s1,40(sp)
    800021a4:	03213023          	sd	s2,32(sp)
    800021a8:	01313c23          	sd	s3,24(sp)
    800021ac:	04010413          	addi	s0,sp,64
    800021b0:	00050913          	mv	s2,a0
    800021b4:	00058993          	mv	s3,a1
    TCB* tcb = new TCB(body, arg);
    800021b8:	04800513          	li	a0,72
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	304080e7          	jalr	772(ra) # 800024c0 <_Znwm>
    800021c4:	00050493          	mv	s1,a0
            Riscv::r_sstatus()
        }),
        time_slice(DEFAULT_TIME_SLICE),
        main(body == nullptr),
        finished(false),
        blocked(false) {}
    800021c8:	01253023          	sd	s2,0(a0)
    800021cc:	01353423          	sd	s3,8(a0)
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    800021d0:	00090a63          	beqz	s2,800021e4 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    800021d4:	00008537          	lui	a0,0x8
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	310080e7          	jalr	784(ra) # 800024e8 <_Znam>
    800021e0:	0080006f          	j	800021e8 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    800021e4:	00000513          	li	a0,0
        blocked(false) {}
    800021e8:	00a4b823          	sd	a0,16(s1)
    800021ec:	00000797          	auipc	a5,0x0
    800021f0:	1ec78793          	addi	a5,a5,492 # 800023d8 <_ZN3TCB13threadWrapperEv>
    800021f4:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0,
    800021f8:	06050863          	beqz	a0,80002268 <_ZN3TCB12createThreadEPFvPvES0_+0xd4>
    800021fc:	000087b7          	lui	a5,0x8
    80002200:	00f50533          	add	a0,a0,a5
        blocked(false) {}
    80002204:	02a4b023          	sd	a0,32(s1)
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002208:	141027f3          	csrr	a5,sepc
    8000220c:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80002210:	fc043783          	ld	a5,-64(s0)
    80002214:	02f4b423          	sd	a5,40(s1)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002218:	100027f3          	csrr	a5,sstatus
    8000221c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002220:	fc843783          	ld	a5,-56(s0)
    80002224:	02f4b823          	sd	a5,48(s1)
    80002228:	00200793          	li	a5,2
    8000222c:	02f4bc23          	sd	a5,56(s1)
        main(body == nullptr),
    80002230:	00193913          	seqz	s2,s2
        blocked(false) {}
    80002234:	05248023          	sb	s2,64(s1)
    80002238:	040480a3          	sb	zero,65(s1)
    8000223c:	04048123          	sb	zero,66(s1)
    bool isMain() const { return this->main; }
    80002240:	00197913          	andi	s2,s2,1
    if(!tcb->isMain()) Scheduler::put(tcb);
    80002244:	02090663          	beqz	s2,80002270 <_ZN3TCB12createThreadEPFvPvES0_+0xdc>
    return tcb;
}
    80002248:	00048513          	mv	a0,s1
    8000224c:	03813083          	ld	ra,56(sp)
    80002250:	03013403          	ld	s0,48(sp)
    80002254:	02813483          	ld	s1,40(sp)
    80002258:	02013903          	ld	s2,32(sp)
    8000225c:	01813983          	ld	s3,24(sp)
    80002260:	04010113          	addi	sp,sp,64
    80002264:	00008067          	ret
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0,
    80002268:	00000513          	li	a0,0
    8000226c:	f99ff06f          	j	80002204 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    if(!tcb->isMain()) Scheduler::put(tcb);
    80002270:	00048513          	mv	a0,s1
    80002274:	00001097          	auipc	ra,0x1
    80002278:	9a0080e7          	jalr	-1632(ra) # 80002c14 <_ZN9Scheduler3putEP3TCB>
    return tcb;
    8000227c:	fcdff06f          	j	80002248 <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
    80002280:	00050913          	mv	s2,a0
    TCB* tcb = new TCB(body, arg);
    80002284:	00048513          	mv	a0,s1
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	288080e7          	jalr	648(ra) # 80002510 <_ZdlPv>
    80002290:	00090513          	mv	a0,s2
    80002294:	00008097          	auipc	ra,0x8
    80002298:	bb4080e7          	jalr	-1100(ra) # 80009e48 <_Unwind_Resume>

000000008000229c <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>:

TCB* TCB::createThreadWithoutStarting(Body body, void* arg) {
    8000229c:	fc010113          	addi	sp,sp,-64
    800022a0:	02113c23          	sd	ra,56(sp)
    800022a4:	02813823          	sd	s0,48(sp)
    800022a8:	02913423          	sd	s1,40(sp)
    800022ac:	03213023          	sd	s2,32(sp)
    800022b0:	01313c23          	sd	s3,24(sp)
    800022b4:	04010413          	addi	s0,sp,64
    800022b8:	00050913          	mv	s2,a0
    800022bc:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    800022c0:	04800513          	li	a0,72
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	1fc080e7          	jalr	508(ra) # 800024c0 <_Znwm>
    800022cc:	00050493          	mv	s1,a0
        blocked(false) {}
    800022d0:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
    800022d4:	01353423          	sd	s3,8(a0)
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    800022d8:	00090a63          	beqz	s2,800022ec <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x50>
    800022dc:	00008537          	lui	a0,0x8
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	208080e7          	jalr	520(ra) # 800024e8 <_Znam>
    800022e8:	0080006f          	j	800022f0 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x54>
    800022ec:	00000513          	li	a0,0
        blocked(false) {}
    800022f0:	00a4b823          	sd	a0,16(s1)
    800022f4:	00000797          	auipc	a5,0x0
    800022f8:	0e478793          	addi	a5,a5,228 # 800023d8 <_ZN3TCB13threadWrapperEv>
    800022fc:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0,
    80002300:	06050463          	beqz	a0,80002368 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0xcc>
    80002304:	000087b7          	lui	a5,0x8
    80002308:	00f50533          	add	a0,a0,a5
        blocked(false) {}
    8000230c:	02a4b023          	sd	a0,32(s1)
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002310:	141027f3          	csrr	a5,sepc
    80002314:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80002318:	fc043783          	ld	a5,-64(s0)
    8000231c:	02f4b423          	sd	a5,40(s1)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002320:	100027f3          	csrr	a5,sstatus
    80002324:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002328:	fc843783          	ld	a5,-56(s0)
    8000232c:	02f4b823          	sd	a5,48(s1)
    80002330:	00200793          	li	a5,2
    80002334:	02f4bc23          	sd	a5,56(s1)
        main(body == nullptr),
    80002338:	00193913          	seqz	s2,s2
        blocked(false) {}
    8000233c:	05248023          	sb	s2,64(s1)
    80002340:	040480a3          	sb	zero,65(s1)
    80002344:	04048123          	sb	zero,66(s1)
}
    80002348:	00048513          	mv	a0,s1
    8000234c:	03813083          	ld	ra,56(sp)
    80002350:	03013403          	ld	s0,48(sp)
    80002354:	02813483          	ld	s1,40(sp)
    80002358:	02013903          	ld	s2,32(sp)
    8000235c:	01813983          	ld	s3,24(sp)
    80002360:	04010113          	addi	sp,sp,64
    80002364:	00008067          	ret
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0,
    80002368:	00000513          	li	a0,0
    8000236c:	fa1ff06f          	j	8000230c <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x70>
    80002370:	00050913          	mv	s2,a0
    return new TCB(body, arg);
    80002374:	00048513          	mv	a0,s1
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	198080e7          	jalr	408(ra) # 80002510 <_ZdlPv>
    80002380:	00090513          	mv	a0,s2
    80002384:	00008097          	auipc	ra,0x8
    80002388:	ac4080e7          	jalr	-1340(ra) # 80009e48 <_Unwind_Resume>

000000008000238c <_ZN3TCB11startThreadEPS_>:

void TCB::startThread(TCB* tcb) {
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00113423          	sd	ra,8(sp)
    80002394:	00813023          	sd	s0,0(sp)
    80002398:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	878080e7          	jalr	-1928(ra) # 80002c14 <_ZN9Scheduler3putEP3TCB>
}
    800023a4:	00813083          	ld	ra,8(sp)
    800023a8:	00013403          	ld	s0,0(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN3TCB5yieldEv>:

void TCB::yield() {
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00813423          	sd	s0,8(sp)
    800023bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(value));
    800023c0:	00000793          	li	a5,0
    800023c4:	00078513          	mv	a0,a5
    Riscv::w_a0(0);
    __asm__ volatile("ecall");
    800023c8:	00000073          	ecall
}
    800023cc:	00813403          	ld	s0,8(sp)
    800023d0:	01010113          	addi	sp,sp,16
    800023d4:	00008067          	ret

00000000800023d8 <_ZN3TCB13threadWrapperEv>:
    }

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800023d8:	fe010113          	addi	sp,sp,-32
    800023dc:	00113c23          	sd	ra,24(sp)
    800023e0:	00813823          	sd	s0,16(sp)
    800023e4:	00913423          	sd	s1,8(sp)
    800023e8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	348080e7          	jalr	840(ra) # 80002734 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800023f4:	00007497          	auipc	s1,0x7
    800023f8:	93448493          	addi	s1,s1,-1740 # 80008d28 <_ZN3TCB7runningE>
    800023fc:	0004b783          	ld	a5,0(s1)
    80002400:	0007b703          	ld	a4,0(a5) # 8000 <_entry-0x7fff8000>
    80002404:	0087b503          	ld	a0,8(a5)
    80002408:	000700e7          	jalr	a4
    running->setFinished(true);
    8000240c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished) { this->finished = finished; }
    80002410:	00100713          	li	a4,1
    80002414:	04e780a3          	sb	a4,65(a5)
    TCB::yield();
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	f9c080e7          	jalr	-100(ra) # 800023b4 <_ZN3TCB5yieldEv>
    80002420:	01813083          	ld	ra,24(sp)
    80002424:	01013403          	ld	s0,16(sp)
    80002428:	00813483          	ld	s1,8(sp)
    8000242c:	02010113          	addi	sp,sp,32
    80002430:	00008067          	ret

0000000080002434 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00113c23          	sd	ra,24(sp)
    8000243c:	00813823          	sd	s0,16(sp)
    80002440:	00913423          	sd	s1,8(sp)
    80002444:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80002448:	00007497          	auipc	s1,0x7
    8000244c:	8e04b483          	ld	s1,-1824(s1) # 80008d28 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002450:	0414c783          	lbu	a5,65(s1)
    if(!old->isFinished() && !old->isBlocked()){ Scheduler::put(old); }
    80002454:	00079663          	bnez	a5,80002460 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80002458:	0424c783          	lbu	a5,66(s1)
    8000245c:	04078463          	beqz	a5,800024a4 <_ZN3TCB8dispatchEv+0x70>
    running = Scheduler::get();
    80002460:	00000097          	auipc	ra,0x0
    80002464:	74c080e7          	jalr	1868(ra) # 80002bac <_ZN9Scheduler3getEv>
    80002468:	00007797          	auipc	a5,0x7
    8000246c:	8ca7b023          	sd	a0,-1856(a5) # 80008d28 <_ZN3TCB7runningE>
    bool isMain() const { return this->main; }
    80002470:	04054783          	lbu	a5,64(a0) # 8040 <_entry-0x7fff7fc0>
    if(running->isMain()) {
    80002474:	04078063          	beqz	a5,800024b4 <_ZN3TCB8dispatchEv+0x80>
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80002478:	10000793          	li	a5,256
    8000247c:	1007a073          	csrs	sstatus,a5
    TCB::contextSwitch(&old->context, &running->context);
    80002480:	01850593          	addi	a1,a0,24
    80002484:	01848513          	addi	a0,s1,24
    80002488:	fffff097          	auipc	ra,0xfffff
    8000248c:	da8080e7          	jalr	-600(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002490:	01813083          	ld	ra,24(sp)
    80002494:	01013403          	ld	s0,16(sp)
    80002498:	00813483          	ld	s1,8(sp)
    8000249c:	02010113          	addi	sp,sp,32
    800024a0:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked()){ Scheduler::put(old); }
    800024a4:	00048513          	mv	a0,s1
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	76c080e7          	jalr	1900(ra) # 80002c14 <_ZN9Scheduler3putEP3TCB>
    800024b0:	fb1ff06f          	j	80002460 <_ZN3TCB8dispatchEv+0x2c>
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800024b4:	10000793          	li	a5,256
    800024b8:	1007b073          	csrc	sstatus,a5
}
    800024bc:	fc5ff06f          	j	80002480 <_ZN3TCB8dispatchEv+0x4c>

00000000800024c0 <_Znwm>:
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void *operator new (size_t size){
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00113423          	sd	ra,8(sp)
    800024c8:	00813023          	sd	s0,0(sp)
    800024cc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	928080e7          	jalr	-1752(ra) # 80002df8 <_ZN15MemoryAllocator9mem_allocEm>
}
    800024d8:	00813083          	ld	ra,8(sp)
    800024dc:	00013403          	ld	s0,0(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_Znam>:

void *operator new[] (size_t size){
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00113423          	sd	ra,8(sp)
    800024f0:	00813023          	sd	s0,0(sp)
    800024f4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	900080e7          	jalr	-1792(ra) # 80002df8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002500:	00813083          	ld	ra,8(sp)
    80002504:	00013403          	ld	s0,0(sp)
    80002508:	01010113          	addi	sp,sp,16
    8000250c:	00008067          	ret

0000000080002510 <_ZdlPv>:

void operator delete (void *ptr) noexcept {
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80002520:	00001097          	auipc	ra,0x1
    80002524:	9d0080e7          	jalr	-1584(ra) # 80002ef0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	01010113          	addi	sp,sp,16
    80002534:	00008067          	ret

0000000080002538 <_ZdaPv>:

void operator delete[] (void *ptr) noexcept {
    80002538:	ff010113          	addi	sp,sp,-16
    8000253c:	00113423          	sd	ra,8(sp)
    80002540:	00813023          	sd	s0,0(sp)
    80002544:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	9a8080e7          	jalr	-1624(ra) # 80002ef0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002550:	00813083          	ld	ra,8(sp)
    80002554:	00013403          	ld	s0,0(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret

0000000080002560 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    80002560:	fe010113          	addi	sp,sp,-32
    80002564:	00113c23          	sd	ra,24(sp)
    80002568:	00813823          	sd	s0,16(sp)
    8000256c:	00913423          	sd	s1,8(sp)
    80002570:	02010413          	addi	s0,sp,32
    80002574:	00006797          	auipc	a5,0x6
    80002578:	66c78793          	addi	a5,a5,1644 # 80008be0 <_ZTV6Thread+0x10>
    8000257c:	00f53023          	sd	a5,0(a0)
    //thread_exit();
    delete this->myHandle;
    80002580:	00853483          	ld	s1,8(a0)
    80002584:	02048063          	beqz	s1,800025a4 <_ZN6ThreadD1Ev+0x44>
    ~TCB(){ delete[] stack; }
    80002588:	0104b503          	ld	a0,16(s1)
    8000258c:	00050663          	beqz	a0,80002598 <_ZN6ThreadD1Ev+0x38>
    80002590:	00000097          	auipc	ra,0x0
    80002594:	fa8080e7          	jalr	-88(ra) # 80002538 <_ZdaPv>
    80002598:	00048513          	mv	a0,s1
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	f74080e7          	jalr	-140(ra) # 80002510 <_ZdlPv>
}
    800025a4:	01813083          	ld	ra,24(sp)
    800025a8:	01013403          	ld	s0,16(sp)
    800025ac:	00813483          	ld	s1,8(sp)
    800025b0:	02010113          	addi	sp,sp,32
    800025b4:	00008067          	ret

00000000800025b8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800025b8:	fe010113          	addi	sp,sp,-32
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00913423          	sd	s1,8(sp)
    800025c8:	02010413          	addi	s0,sp,32
    800025cc:	00050493          	mv	s1,a0
}
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	f90080e7          	jalr	-112(ra) # 80002560 <_ZN6ThreadD1Ev>
    800025d8:	00048513          	mv	a0,s1
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	f34080e7          	jalr	-204(ra) # 80002510 <_ZdlPv>
    800025e4:	01813083          	ld	ra,24(sp)
    800025e8:	01013403          	ld	s0,16(sp)
    800025ec:	00813483          	ld	s1,8(sp)
    800025f0:	02010113          	addi	sp,sp,32
    800025f4:	00008067          	ret

00000000800025f8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00113423          	sd	ra,8(sp)
    80002600:	00813023          	sd	s0,0(sp)
    80002604:	01010413          	addi	s0,sp,16
    80002608:	00006797          	auipc	a5,0x6
    8000260c:	5d878793          	addi	a5,a5,1496 # 80008be0 <_ZTV6Thread+0x10>
    80002610:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    80002614:	00850513          	addi	a0,a0,8
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	c98080e7          	jalr	-872(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002620:	00813083          	ld	ra,8(sp)
    80002624:	00013403          	ld	s0,0(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN6Thread5startEv>:

int Thread::start() {
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00113423          	sd	ra,8(sp)
    80002638:	00813023          	sd	s0,0(sp)
    8000263c:	01010413          	addi	s0,sp,16
    thread_start(this->myHandle);
    80002640:	00853503          	ld	a0,8(a0)
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	d44080e7          	jalr	-700(ra) # 80001388 <_Z12thread_startP3TCB>
    return 0;
}
    8000264c:	00000513          	li	a0,0
    80002650:	00813083          	ld	ra,8(sp)
    80002654:	00013403          	ld	s0,0(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00113423          	sd	ra,8(sp)
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	cb4080e7          	jalr	-844(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002678:	00813083          	ld	ra,8(sp)
    8000267c:	00013403          	ld	s0,0(sp)
    80002680:	01010113          	addi	sp,sp,16
    80002684:	00008067          	ret

0000000080002688 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t time) {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    return 0;
}
    80002694:	00000513          	li	a0,0
    80002698:	00813403          	ld	s0,8(sp)
    8000269c:	01010113          	addi	sp,sp,16
    800026a0:	00008067          	ret

00000000800026a4 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00113423          	sd	ra,8(sp)
    800026ac:	00813023          	sd	s0,0(sp)
    800026b0:	01010413          	addi	s0,sp,16
    800026b4:	00006797          	auipc	a5,0x6
    800026b8:	52c78793          	addi	a5,a5,1324 # 80008be0 <_ZTV6Thread+0x10>
    800026bc:	00f53023          	sd	a5,0(a0)
    thread_create_without_start(&this->myHandle, runWrapper, this);
    800026c0:	00050613          	mv	a2,a0
    800026c4:	00000597          	auipc	a1,0x0
    800026c8:	03c58593          	addi	a1,a1,60 # 80002700 <_ZN6Thread10runWrapperEPv>
    800026cc:	00850513          	addi	a0,a0,8
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	c78080e7          	jalr	-904(ra) # 80001348 <_Z27thread_create_without_startPP3TCBPFvPvES2_>
}
    800026d8:	00813083          	ld	ra,8(sp)
    800026dc:	00013403          	ld	s0,0(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN6Thread3runEv>:
  static void dispatch();
  static int sleep(time_t);

protected:
  Thread();
  virtual void run() {};
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00813423          	sd	s0,8(sp)
    800026f0:	01010413          	addi	s0,sp,16
    800026f4:	00813403          	ld	s0,8(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_ZN6Thread10runWrapperEPv>:
private:
  thread_t myHandle;
  void (*body)(void*); void* arg;

  static void runWrapper(void* thread) {
    if(thread != nullptr) ((Thread*)thread)->run();
    80002700:	02050863          	beqz	a0,80002730 <_ZN6Thread10runWrapperEPv+0x30>
  static void runWrapper(void* thread) {
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    if(thread != nullptr) ((Thread*)thread)->run();
    80002714:	00053783          	ld	a5,0(a0)
    80002718:	0107b783          	ld	a5,16(a5)
    8000271c:	000780e7          	jalr	a5
  }
    80002720:	00813083          	ld	ra,8(sp)
    80002724:	00013403          	ld	s0,0(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret
    80002730:	00008067          	ret

0000000080002734 <_ZN5Riscv10popSppSpieEv>:
#include "../h/mySemaphore.hpp"
#include "../h/printing.hpp"

int Riscv::ERROR = 0;

void Riscv::popSppSpie() {
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00813423          	sd	s0,8(sp)
    8000273c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002740:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002744:	10200073          	sret
}
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void *);

void Riscv::handleSupervisorTrap() {
    80002754:	f9010113          	addi	sp,sp,-112
    80002758:	06113423          	sd	ra,104(sp)
    8000275c:	06813023          	sd	s0,96(sp)
    80002760:	04913c23          	sd	s1,88(sp)
    80002764:	05213823          	sd	s2,80(sp)
    80002768:	05313423          	sd	s3,72(sp)
    8000276c:	05413023          	sd	s4,64(sp)
    80002770:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002774:	142027f3          	csrr	a5,scause
    80002778:	f8f43823          	sd	a5,-112(s0)
    return scause;
    8000277c:	f9043703          	ld	a4,-112(s0)
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002780:	ff870693          	addi	a3,a4,-8
    80002784:	00100793          	li	a5,1
    80002788:	14d7fa63          	bgeu	a5,a3,800028dc <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        if(!ERROR) TCB::dispatch();
        if(TCB::running) {
            w_sstatus(TCB::running->getSstatus());
            w_sepc(TCB::running->getSepc());
        }
    } else if(scause == 0x8000000000000001UL) {
    8000278c:	fff00793          	li	a5,-1
    80002790:	03f79793          	slli	a5,a5,0x3f
    80002794:	00178793          	addi	a5,a5,1
    80002798:	3af70e63          	beq	a4,a5,80002b54 <_ZN5Riscv20handleSupervisorTrapEv+0x400>
        //          w_sstatus(TCB::running->getSstatus());
        //          w_sepc(TCB::running->getSepc());
        //      }
        // }
        mc_sip(Riscv::SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    8000279c:	fff00793          	li	a5,-1
    800027a0:	03f79793          	slli	a5,a5,0x3f
    800027a4:	00978793          	addi	a5,a5,9
    800027a8:	3af70c63          	beq	a4,a5,80002b60 <_ZN5Riscv20handleSupervisorTrapEv+0x40c>
        // Dogodio se prekid, razlog: spoljasni prekid (konzola)
        //mc_sip(SIP_SEIP);
        console_handler();
    } else {
        // Neocekivani razlog prekida
        Riscv::ERROR = 1;
    800027ac:	00100793          	li	a5,1
    800027b0:	00006717          	auipc	a4,0x6
    800027b4:	58f72423          	sw	a5,1416(a4) # 80008d38 <_ZN5Riscv5ERRORE>
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800027b8:	00200793          	li	a5,2
    800027bc:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    800027c0:	10000793          	li	a5,256
    800027c4:	1007a073          	csrs	sstatus,a5
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800027c8:	141027f3          	csrr	a5,sepc
    800027cc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800027d0:	fc843a03          	ld	s4,-56(s0)
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    800027d4:	105027f3          	csrr	a5,stvec
    800027d8:	fcf43023          	sd	a5,-64(s0)
    return stvec;
    800027dc:	fc043983          	ld	s3,-64(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800027e0:	100027f3          	csrr	a5,sstatus
    800027e4:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800027e8:	fb843903          	ld	s2,-72(s0)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800027ec:	142027f3          	csrr	a5,scause
    800027f0:	faf43823          	sd	a5,-80(s0)
    return scause;
    800027f4:	fb043483          	ld	s1,-80(s0)
        Riscv::ms_sstatus(SSTATUS_SPP);
        uint64 sepc = r_sepc();
        uint64 stvec = r_stvec();
        uint64 sstatus = r_sstatus();
        uint64 scause = r_scause();
        printString("Vrednost sepc:");
    800027f8:	00005517          	auipc	a0,0x5
    800027fc:	ad850513          	addi	a0,a0,-1320 # 800072d0 <CONSOLE_STATUS+0x2c0>
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	480080e7          	jalr	1152(ra) # 80001c80 <_Z11printStringPKc>
        printInt(sepc);
    80002808:	00000613          	li	a2,0
    8000280c:	00a00593          	li	a1,10
    80002810:	000a051b          	sext.w	a0,s4
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	61c080e7          	jalr	1564(ra) # 80001e30 <_Z8printIntiii>
        printString(" ");
    8000281c:	00005517          	auipc	a0,0x5
    80002820:	afc50513          	addi	a0,a0,-1284 # 80007318 <CONSOLE_STATUS+0x308>
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	45c080e7          	jalr	1116(ra) # 80001c80 <_Z11printStringPKc>
        printString("Vrednost stvec:");
    8000282c:	00005517          	auipc	a0,0x5
    80002830:	ab450513          	addi	a0,a0,-1356 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	44c080e7          	jalr	1100(ra) # 80001c80 <_Z11printStringPKc>
        printInt(stvec);
    8000283c:	00000613          	li	a2,0
    80002840:	00a00593          	li	a1,10
    80002844:	0009851b          	sext.w	a0,s3
    80002848:	fffff097          	auipc	ra,0xfffff
    8000284c:	5e8080e7          	jalr	1512(ra) # 80001e30 <_Z8printIntiii>
        printString(" ");
    80002850:	00005517          	auipc	a0,0x5
    80002854:	ac850513          	addi	a0,a0,-1336 # 80007318 <CONSOLE_STATUS+0x308>
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	428080e7          	jalr	1064(ra) # 80001c80 <_Z11printStringPKc>
        printString("Vrednost sstatus:");
    80002860:	00005517          	auipc	a0,0x5
    80002864:	a9050513          	addi	a0,a0,-1392 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	418080e7          	jalr	1048(ra) # 80001c80 <_Z11printStringPKc>
        printInt(sstatus);
    80002870:	00000613          	li	a2,0
    80002874:	00a00593          	li	a1,10
    80002878:	0009051b          	sext.w	a0,s2
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	5b4080e7          	jalr	1460(ra) # 80001e30 <_Z8printIntiii>
        printString(" ");
    80002884:	00005517          	auipc	a0,0x5
    80002888:	a9450513          	addi	a0,a0,-1388 # 80007318 <CONSOLE_STATUS+0x308>
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	3f4080e7          	jalr	1012(ra) # 80001c80 <_Z11printStringPKc>
        printString("Vrednost scause: ");
    80002894:	00005517          	auipc	a0,0x5
    80002898:	a7450513          	addi	a0,a0,-1420 # 80007308 <CONSOLE_STATUS+0x2f8>
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	3e4080e7          	jalr	996(ra) # 80001c80 <_Z11printStringPKc>
        printInt(scause);
    800028a4:	00000613          	li	a2,0
    800028a8:	00a00593          	li	a1,10
    800028ac:	0004851b          	sext.w	a0,s1
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	580080e7          	jalr	1408(ra) # 80001e30 <_Z8printIntiii>
        printString("\n");
    800028b8:	00005517          	auipc	a0,0x5
    800028bc:	94050513          	addi	a0,a0,-1728 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	3c0080e7          	jalr	960(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ volatile("li t0, 0x5555");
    800028c8:	000052b7          	lui	t0,0x5
    800028cc:	5552829b          	addiw	t0,t0,1365
    __asm__ volatile("li t1, 0x100000");
    800028d0:	00100337          	lui	t1,0x100
    __asm__ volatile("sw t0, 0(t1)");
    800028d4:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>

        Riscv::exitEmulator();
    }
}
    800028d8:	0b80006f          	j	80002990 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
        if(TCB::running) {
    800028dc:	00006797          	auipc	a5,0x6
    800028e0:	3ec7b783          	ld	a5,1004(a5) # 80008cc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800028e4:	0007b703          	ld	a4,0(a5)
    800028e8:	02070663          	beqz	a4,80002914 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800028ec:	141027f3          	csrr	a5,sepc
    800028f0:	faf43023          	sd	a5,-96(s0)
    return sepc;
    800028f4:	fa043783          	ld	a5,-96(s0)
            TCB::running->setSepc(Riscv::r_sepc() + 4);
    800028f8:	00478793          	addi	a5,a5,4
    void setSepc(uint64 value) { this->context.sepc = value; }
    800028fc:	02f73423          	sd	a5,40(a4)
            TCB::running->setSstatus(Riscv::r_sstatus());
    80002900:	00070793          	mv	a5,a4
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002904:	10002773          	csrr	a4,sstatus
    80002908:	f8e43c23          	sd	a4,-104(s0)
    return sstatus;
    8000290c:	f9843703          	ld	a4,-104(s0)
    void setSstatus(uint64 value) { this->context.sstatus = value; }
    80002910:	02e7b823          	sd	a4,48(a5)
        TCB::timeSliceCounter = 0;
    80002914:	00006797          	auipc	a5,0x6
    80002918:	3a47b783          	ld	a5,932(a5) # 80008cb8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000291c:	0007b023          	sd	zero,0(a5)
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80002920:	00050793          	mv	a5,a0
    80002924:	faf43423          	sd	a5,-88(s0)
    return a0;
    80002928:	fa843783          	ld	a5,-88(s0)
        switch (code) {
    8000292c:	04200713          	li	a4,66
    80002930:	02f76a63          	bltu	a4,a5,80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
    80002934:	00279793          	slli	a5,a5,0x2
    80002938:	00005717          	auipc	a4,0x5
    8000293c:	9e470713          	addi	a4,a4,-1564 # 8000731c <CONSOLE_STATUS+0x30c>
    80002940:	00e787b3          	add	a5,a5,a4
    80002944:	0007a783          	lw	a5,0(a5)
    80002948:	00e787b3          	add	a5,a5,a4
    8000294c:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80002950:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    80002954:	00000097          	auipc	ra,0x0
    80002958:	4a4080e7          	jalr	1188(ra) # 80002df8 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    8000295c:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80002960:	04a42823          	sw	a0,80(s0)
        if(!ERROR) TCB::dispatch();
    80002964:	00006797          	auipc	a5,0x6
    80002968:	3d47a783          	lw	a5,980(a5) # 80008d38 <_ZN5Riscv5ERRORE>
    8000296c:	1c078e63          	beqz	a5,80002b48 <_ZN5Riscv20handleSupervisorTrapEv+0x3f4>
        if(TCB::running) {
    80002970:	00006797          	auipc	a5,0x6
    80002974:	3587b783          	ld	a5,856(a5) # 80008cc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002978:	0007b783          	ld	a5,0(a5)
    8000297c:	00078a63          	beqz	a5,80002990 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
    uint64 getSstatus() const { return this->context.sstatus; }
    80002980:	0307b703          	ld	a4,48(a5)
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    80002984:	10073073          	csrc	sstatus,a4
    uint64 getSepc() const { return this->context.sepc; }
    80002988:	0287b783          	ld	a5,40(a5)
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    8000298c:	14179073          	csrw	sepc,a5
}
    80002990:	06813083          	ld	ra,104(sp)
    80002994:	06013403          	ld	s0,96(sp)
    80002998:	05813483          	ld	s1,88(sp)
    8000299c:	05013903          	ld	s2,80(sp)
    800029a0:	04813983          	ld	s3,72(sp)
    800029a4:	04013a03          	ld	s4,64(sp)
    800029a8:	07010113          	addi	sp,sp,112
    800029ac:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    800029b0:	00058513          	mv	a0,a1
                ret = MemoryAllocator::mem_free(ptr);
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	53c080e7          	jalr	1340(ra) # 80002ef0 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    800029bc:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    800029c0:	04a42823          	sw	a0,80(s0)
                break;
    800029c4:	fa1ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0, a1" : "=r" (tcb));
    800029c8:	00058513          	mv	a0,a1
                TCB::startThread(tcb);
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	9c0080e7          	jalr	-1600(ra) # 8000238c <_ZN3TCB11startThreadEPS_>
                break;
    800029d4:	f91ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    800029d8:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (body));
    800029dc:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a7" : "=r" (arg));
    800029e0:	00088593          	mv	a1,a7
                *handle = TCB::createThreadWithoutStarting(body, arg);
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	8b8080e7          	jalr	-1864(ra) # 8000229c <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>
    800029ec:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) {
    800029f0:	00050863          	beqz	a0,80002a00 <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
                    __asm__ volatile("li a0, 0");
    800029f4:	00000513          	li	a0,0
                    __asm__ volatile("sw a0, 80(x8)");
    800029f8:	04a42823          	sw	a0,80(s0)
    800029fc:	f69ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    __asm__ volatile("li a0, -1");
    80002a00:	fff00513          	li	a0,-1
                    __asm__ volatile("sw a0, 80(x8)");
    80002a04:	04a42823          	sw	a0,80(s0)
    80002a08:	f5dff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80002a0c:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (body));
    80002a10:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a7" : "=r" (arg));
    80002a14:	00088593          	mv	a1,a7
                *handle = TCB::createThread(body, arg);
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	77c080e7          	jalr	1916(ra) # 80002194 <_ZN3TCB12createThreadEPFvPvES0_>
    80002a20:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) {
    80002a24:	00050863          	beqz	a0,80002a34 <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
                    __asm__ volatile("li a0, 0");
    80002a28:	00000513          	li	a0,0
                    __asm__ volatile("sw a0, 80(x8)");
    80002a2c:	04a42823          	sw	a0,80(s0)
    80002a30:	f35ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    __asm__ volatile("li a0, -1");
    80002a34:	fff00513          	li	a0,-1
                    __asm__ volatile("sw a0, 80(x8)");
    80002a38:	04a42823          	sw	a0,80(s0)
    80002a3c:	f29ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                TCB::running->setFinished(true);
    80002a40:	00006797          	auipc	a5,0x6
    80002a44:	2887b783          	ld	a5,648(a5) # 80008cc8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a48:	0007b783          	ld	a5,0(a5)
    void setFinished(bool finished) { this->finished = finished; }
    80002a4c:	00100713          	li	a4,1
    80002a50:	04e780a3          	sb	a4,65(a5)
                __asm__ volatile("li a0, 0");
    80002a54:	00000513          	li	a0,0
                __asm__ volatile("sw a0, 80(x8)");
    80002a58:	04a42823          	sw	a0,80(s0)
                break;
    80002a5c:	f09ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0, a1" : "=r" (handleSem));
    80002a60:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (init));
    80002a64:	00060513          	mv	a0,a2
                *handleSem = MySemaphore::createSemaphore(init);
    80002a68:	0005051b          	sext.w	a0,a0
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	af8080e7          	jalr	-1288(ra) # 80001564 <_ZN11MySemaphore15createSemaphoreEi>
    80002a74:	00a4b023          	sd	a0,0(s1)
                if(*handleSem != nullptr) {
    80002a78:	00050863          	beqz	a0,80002a88 <_ZN5Riscv20handleSupervisorTrapEv+0x334>
                    __asm__ volatile("li a0, 0");
    80002a7c:	00000513          	li	a0,0
                    __asm__ volatile("sw a0, 80(x8)");
    80002a80:	04a42823          	sw	a0,80(s0)
    80002a84:	ee1ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                    __asm__ volatile("li a0, -1");
    80002a88:	fff00513          	li	a0,-1
                    __asm__ volatile("sw a0, 80(x8)");
    80002a8c:	04a42823          	sw	a0,80(s0)
    80002a90:	ed5ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0, a1" : "=r" (sem));
    80002a94:	00058513          	mv	a0,a1
                if(sem != nullptr) ret = sem->close();
    80002a98:	00050c63          	beqz	a0,80002ab0 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	b10080e7          	jalr	-1264(ra) # 800015ac <_ZN11MySemaphore5closeEv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002aa4:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80002aa8:	04a42823          	sw	a0,80(s0)
                break;
    80002aac:	eb9ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                else ret = -2;
    80002ab0:	ffe00513          	li	a0,-2
    80002ab4:	ff1ff06f          	j	80002aa4 <_ZN5Riscv20handleSupervisorTrapEv+0x350>
                __asm__ volatile("mv %0, a1" : "=r" (sem));
    80002ab8:	00058513          	mv	a0,a1
                if(sem != nullptr) ret = sem->wait();
    80002abc:	00050c63          	beqz	a0,80002ad4 <_ZN5Riscv20handleSupervisorTrapEv+0x380>
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	c44080e7          	jalr	-956(ra) # 80001704 <_ZN11MySemaphore4waitEv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002ac8:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80002acc:	04a42823          	sw	a0,80(s0)
                break;
    80002ad0:	e95ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                else ret = -2;
    80002ad4:	ffe00513          	li	a0,-2
    80002ad8:	ff1ff06f          	j	80002ac8 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
                __asm__ volatile("mv %0, a1" : "=r" (sem));
    80002adc:	00058513          	mv	a0,a1
                if(sem != nullptr) ret = sem->signal();
    80002ae0:	00050c63          	beqz	a0,80002af8 <_ZN5Riscv20handleSupervisorTrapEv+0x3a4>
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	d0c080e7          	jalr	-756(ra) # 800017f0 <_ZN11MySemaphore6signalEv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002aec:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80002af0:	04a42823          	sw	a0,80(s0)
                break;
    80002af4:	e71ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                else ret = -2;
    80002af8:	ffe00513          	li	a0,-2
    80002afc:	ff1ff06f          	j	80002aec <_ZN5Riscv20handleSupervisorTrapEv+0x398>
                __asm__ volatile("mv %0, a1" : "=r" (sem));
    80002b00:	00058513          	mv	a0,a1
                if(sem != nullptr) sem->trywait();
    80002b04:	00050663          	beqz	a0,80002b10 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	b3c080e7          	jalr	-1220(ra) # 80001644 <_ZN11MySemaphore7trywaitEv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002b10:	ffe00793          	li	a5,-2
    80002b14:	00078513          	mv	a0,a5
                __asm__ volatile("sw a0, 80(x8)");
    80002b18:	04a42823          	sw	a0,80(s0)
                break;
    80002b1c:	e49ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                chr = __getc();
    80002b20:	00004097          	auipc	ra,0x4
    80002b24:	3f8080e7          	jalr	1016(ra) # 80006f18 <__getc>
                __asm__ volatile("mv a0, %0" : : "r" (chr));
    80002b28:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80002b2c:	04a42823          	sw	a0,80(s0)
                break;
    80002b30:	e35ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
                __asm__ volatile("mv %0, a1" : "=r" (chr));
    80002b34:	00058513          	mv	a0,a1
                __putc(chr);
    80002b38:	0ff57513          	andi	a0,a0,255
    80002b3c:	00004097          	auipc	ra,0x4
    80002b40:	3a0080e7          	jalr	928(ra) # 80006edc <__putc>
                break;
    80002b44:	e21ff06f          	j	80002964 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
        if(!ERROR) TCB::dispatch();
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	8ec080e7          	jalr	-1812(ra) # 80002434 <_ZN3TCB8dispatchEv>
    80002b50:	e21ff06f          	j	80002970 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002b54:	00200793          	li	a5,2
    80002b58:	1447b073          	csrc	sip,a5
}
    80002b5c:	e35ff06f          	j	80002990 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
        console_handler();
    80002b60:	00004097          	auipc	ra,0x4
    80002b64:	3f0080e7          	jalr	1008(ra) # 80006f50 <console_handler>
    80002b68:	e29ff06f          	j	80002990 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>

0000000080002b6c <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

void Scheduler::deleteThreadQueue() {
    while(get());
}
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00813423          	sd	s0,8(sp)
    80002b74:	01010413          	addi	s0,sp,16
    80002b78:	00100793          	li	a5,1
    80002b7c:	00f50863          	beq	a0,a5,80002b8c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002b80:	00813403          	ld	s0,8(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret
    80002b8c:	000107b7          	lui	a5,0x10
    80002b90:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b94:	fef596e3          	bne	a1,a5,80002b80 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002b98:	00006797          	auipc	a5,0x6
    80002b9c:	1a878793          	addi	a5,a5,424 # 80008d40 <_ZN9Scheduler16readyThreadQueueE>
    80002ba0:	0007b023          	sd	zero,0(a5)
    80002ba4:	0007b423          	sd	zero,8(a5)
    80002ba8:	fd9ff06f          	j	80002b80 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002bac <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00113c23          	sd	ra,24(sp)
    80002bb4:	00813823          	sd	s0,16(sp)
    80002bb8:	00913423          	sd	s1,8(sp)
    80002bbc:	02010413          	addi	s0,sp,32
        if(!head) return nullptr;
    80002bc0:	00006517          	auipc	a0,0x6
    80002bc4:	18053503          	ld	a0,384(a0) # 80008d40 <_ZN9Scheduler16readyThreadQueueE>
    80002bc8:	04050263          	beqz	a0,80002c0c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002bcc:	00853783          	ld	a5,8(a0)
    80002bd0:	00006717          	auipc	a4,0x6
    80002bd4:	16f73823          	sd	a5,368(a4) # 80008d40 <_ZN9Scheduler16readyThreadQueueE>
        if(!head) tail = nullptr;
    80002bd8:	02078463          	beqz	a5,80002c00 <_ZN9Scheduler3getEv+0x54>
        T* result = element->item;
    80002bdc:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	310080e7          	jalr	784(ra) # 80002ef0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002be8:	00048513          	mv	a0,s1
    80002bec:	01813083          	ld	ra,24(sp)
    80002bf0:	01013403          	ld	s0,16(sp)
    80002bf4:	00813483          	ld	s1,8(sp)
    80002bf8:	02010113          	addi	sp,sp,32
    80002bfc:	00008067          	ret
        if(!head) tail = nullptr;
    80002c00:	00006797          	auipc	a5,0x6
    80002c04:	1407b423          	sd	zero,328(a5) # 80008d48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c08:	fd5ff06f          	j	80002bdc <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    80002c0c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002c10:	fd9ff06f          	j	80002be8 <_ZN9Scheduler3getEv+0x3c>

0000000080002c14 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002c14:	fe010113          	addi	sp,sp,-32
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	00813823          	sd	s0,16(sp)
    80002c20:	00913423          	sd	s1,8(sp)
    80002c24:	02010413          	addi	s0,sp,32
    80002c28:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80002c2c:	01000513          	li	a0,16
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	1c8080e7          	jalr	456(ra) # 80002df8 <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    80002c38:	00953023          	sd	s1,0(a0)
    80002c3c:	00053423          	sd	zero,8(a0)
        if(tail) {
    80002c40:	00006797          	auipc	a5,0x6
    80002c44:	1087b783          	ld	a5,264(a5) # 80008d48 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c48:	02078263          	beqz	a5,80002c6c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = element;
    80002c4c:	00a7b423          	sd	a0,8(a5)
            tail = element;
    80002c50:	00006797          	auipc	a5,0x6
    80002c54:	0ea7bc23          	sd	a0,248(a5) # 80008d48 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002c58:	01813083          	ld	ra,24(sp)
    80002c5c:	01013403          	ld	s0,16(sp)
    80002c60:	00813483          	ld	s1,8(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret
        } else head = tail = element;
    80002c6c:	00006797          	auipc	a5,0x6
    80002c70:	0d478793          	addi	a5,a5,212 # 80008d40 <_ZN9Scheduler16readyThreadQueueE>
    80002c74:	00a7b423          	sd	a0,8(a5)
    80002c78:	00a7b023          	sd	a0,0(a5)
    80002c7c:	fddff06f          	j	80002c58 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002c80 <_ZN9Scheduler17deleteThreadQueueEv>:
void Scheduler::deleteThreadQueue() {
    80002c80:	ff010113          	addi	sp,sp,-16
    80002c84:	00113423          	sd	ra,8(sp)
    80002c88:	00813023          	sd	s0,0(sp)
    80002c8c:	01010413          	addi	s0,sp,16
    while(get());
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	f1c080e7          	jalr	-228(ra) # 80002bac <_ZN9Scheduler3getEv>
    80002c98:	fe051ce3          	bnez	a0,80002c90 <_ZN9Scheduler17deleteThreadQueueEv+0x10>
}
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret

0000000080002cac <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002cac:	ff010113          	addi	sp,sp,-16
    80002cb0:	00113423          	sd	ra,8(sp)
    80002cb4:	00813023          	sd	s0,0(sp)
    80002cb8:	01010413          	addi	s0,sp,16
    80002cbc:	000105b7          	lui	a1,0x10
    80002cc0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002cc4:	00100513          	li	a0,1
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	ea4080e7          	jalr	-348(ra) # 80002b6c <_Z41__static_initialization_and_destruction_0ii>
    80002cd0:	00813083          	ld	ra,8(sp)
    80002cd4:	00013403          	ld	s0,0(sp)
    80002cd8:	01010113          	addi	sp,sp,16
    80002cdc:	00008067          	ret

0000000080002ce0 <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    80002ce0:	ff010113          	addi	sp,sp,-16
    80002ce4:	00813423          	sd	s0,8(sp)
    80002ce8:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    80002cec:	00050e63          	beqz	a0,80002d08 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    80002cf0:	00053783          	ld	a5,0(a0)
    80002cf4:	00078a63          	beqz	a5,80002d08 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    80002cf8:	00853683          	ld	a3,8(a0)
    80002cfc:	01068713          	addi	a4,a3,16
    80002d00:	00e50733          	add	a4,a0,a4
    80002d04:	00e78863          	beq	a5,a4,80002d14 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    80002d08:	00813403          	ld	s0,8(sp)
    80002d0c:	01010113          	addi	sp,sp,16
    80002d10:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    80002d14:	0087b703          	ld	a4,8(a5)
    80002d18:	00e686b3          	add	a3,a3,a4
    80002d1c:	01068693          	addi	a3,a3,16
    80002d20:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    80002d24:	0007b783          	ld	a5,0(a5)
    80002d28:	00f53023          	sd	a5,0(a0)
    80002d2c:	fddff06f          	j	80002d08 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

0000000080002d30 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    80002d30:	ff010113          	addi	sp,sp,-16
    80002d34:	00813423          	sd	s0,8(sp)
    80002d38:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80002d3c:	02050063          	beqz	a0,80002d5c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    80002d40:	00064e63          	bltz	a2,80002d5c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    80002d44:	00100793          	li	a5,1
    80002d48:	00c7ca63          	blt	a5,a2,80002d5c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80002d4c:	00058e63          	beqz	a1,80002d68 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    80002d50:	0005b783          	ld	a5,0(a1)
    80002d54:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    80002d58:	00a5b023          	sd	a0,0(a1)
    }
}
    80002d5c:	00813403          	ld	s0,8(sp)
    80002d60:	01010113          	addi	sp,sp,16
    80002d64:	00008067          	ret
        if(code == 0) {
    80002d68:	00061e63          	bnez	a2,80002d84 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    80002d6c:	00006797          	auipc	a5,0x6
    80002d70:	fe478793          	addi	a5,a5,-28 # 80008d50 <_ZN15MemoryAllocator17head_free_segmentE>
    80002d74:	0007b703          	ld	a4,0(a5)
    80002d78:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    80002d7c:	00a7b023          	sd	a0,0(a5)
    80002d80:	fddff06f          	j	80002d5c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    80002d84:	00006797          	auipc	a5,0x6
    80002d88:	fcc78793          	addi	a5,a5,-52 # 80008d50 <_ZN15MemoryAllocator17head_free_segmentE>
    80002d8c:	0087b703          	ld	a4,8(a5)
    80002d90:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    80002d94:	00a7b423          	sd	a0,8(a5)
    80002d98:	fc5ff06f          	j	80002d5c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

0000000080002d9c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    80002d9c:	ff010113          	addi	sp,sp,-16
    80002da0:	00813423          	sd	s0,8(sp)
    80002da4:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80002da8:	02050063          	beqz	a0,80002dc8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80002dac:	00064e63          	bltz	a2,80002dc8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80002db0:	00100793          	li	a5,1
    80002db4:	00c7ca63          	blt	a5,a2,80002dc8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80002db8:	00058e63          	beqz	a1,80002dd4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    80002dbc:	00053783          	ld	a5,0(a0)
    80002dc0:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    80002dc4:	00053023          	sd	zero,0(a0)
}
    80002dc8:	00813403          	ld	s0,8(sp)
    80002dcc:	01010113          	addi	sp,sp,16
    80002dd0:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    80002dd4:	00061a63          	bnez	a2,80002de8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    80002dd8:	00053783          	ld	a5,0(a0)
    80002ddc:	00006717          	auipc	a4,0x6
    80002de0:	f6f73a23          	sd	a5,-140(a4) # 80008d50 <_ZN15MemoryAllocator17head_free_segmentE>
    80002de4:	fe1ff06f          	j	80002dc4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    80002de8:	00053783          	ld	a5,0(a0)
    80002dec:	00006717          	auipc	a4,0x6
    80002df0:	f6f73623          	sd	a5,-148(a4) # 80008d58 <_ZN15MemoryAllocator17head_data_segmentE>
    80002df4:	fd1ff06f          	j	80002dc4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

0000000080002df8 <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    80002df8:	fd010113          	addi	sp,sp,-48
    80002dfc:	02113423          	sd	ra,40(sp)
    80002e00:	02813023          	sd	s0,32(sp)
    80002e04:	00913c23          	sd	s1,24(sp)
    80002e08:	01213823          	sd	s2,16(sp)
    80002e0c:	01313423          	sd	s3,8(sp)
    80002e10:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    80002e14:	0c050a63          	beqz	a0,80002ee8 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80002e18:	03f50513          	addi	a0,a0,63
    80002e1c:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80002e20:	00006497          	auipc	s1,0x6
    80002e24:	f304b483          	ld	s1,-208(s1) # 80008d50 <_ZN15MemoryAllocator17head_free_segmentE>
    80002e28:	00000993          	li	s3,0
    80002e2c:	08048e63          	beqz	s1,80002ec8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    80002e30:	0084b783          	ld	a5,8(s1)
    80002e34:	0127f863          	bgeu	a5,s2,80002e44 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80002e38:	00048993          	mv	s3,s1
    80002e3c:	0004b483          	ld	s1,0(s1)
    80002e40:	fedff06f          	j	80002e2c <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    80002e44:	00000613          	li	a2,0
    80002e48:	00098593          	mv	a1,s3
    80002e4c:	00048513          	mv	a0,s1
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	f4c080e7          	jalr	-180(ra) # 80002d9c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    80002e58:	0084b783          	ld	a5,8(s1)
    80002e5c:	41278733          	sub	a4,a5,s2
    80002e60:	00f00693          	li	a3,15
    80002e64:	02e6e463          	bltu	a3,a4,80002e8c <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    80002e68:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    80002e6c:	00006797          	auipc	a5,0x6
    80002e70:	eec7b783          	ld	a5,-276(a5) # 80008d58 <_ZN15MemoryAllocator17head_data_segmentE>
    80002e74:	00000593          	li	a1,0
    80002e78:	02078e63          	beqz	a5,80002eb4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80002e7c:	0297fc63          	bgeu	a5,s1,80002eb4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80002e80:	00078593          	mv	a1,a5
    80002e84:	0007b783          	ld	a5,0(a5)
    80002e88:	ff1ff06f          	j	80002e78 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    80002e8c:	01090513          	addi	a0,s2,16
    80002e90:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    80002e94:	ff070713          	addi	a4,a4,-16
    80002e98:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    80002e9c:	00000613          	li	a2,0
    80002ea0:	00098593          	mv	a1,s3
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	e8c080e7          	jalr	-372(ra) # 80002d30 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    80002eac:	00090793          	mv	a5,s2
    80002eb0:	fb9ff06f          	j	80002e68 <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    80002eb4:	00100613          	li	a2,1
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	e74080e7          	jalr	-396(ra) # 80002d30 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    80002ec4:	01048493          	addi	s1,s1,16
}
    80002ec8:	00048513          	mv	a0,s1
    80002ecc:	02813083          	ld	ra,40(sp)
    80002ed0:	02013403          	ld	s0,32(sp)
    80002ed4:	01813483          	ld	s1,24(sp)
    80002ed8:	01013903          	ld	s2,16(sp)
    80002edc:	00813983          	ld	s3,8(sp)
    80002ee0:	03010113          	addi	sp,sp,48
    80002ee4:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    80002ee8:	00000493          	li	s1,0
    80002eec:	fddff06f          	j	80002ec8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>

0000000080002ef0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002ef0:	0c050863          	beqz	a0,80002fc0 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80002ef4:	00006797          	auipc	a5,0x6
    80002ef8:	db47b783          	ld	a5,-588(a5) # 80008ca8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002efc:	0007b783          	ld	a5,0(a5)
    80002f00:	0cf56463          	bltu	a0,a5,80002fc8 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002f04:	00006797          	auipc	a5,0x6
    80002f08:	dcc7b783          	ld	a5,-564(a5) # 80008cd0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002f0c:	0007b783          	ld	a5,0(a5)
    80002f10:	0cf57063          	bgeu	a0,a5,80002fd0 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    80002f14:	fe010113          	addi	sp,sp,-32
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	00813823          	sd	s0,16(sp)
    80002f20:	00913423          	sd	s1,8(sp)
    80002f24:	01213023          	sd	s2,0(sp)
    80002f28:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80002f2c:	00006497          	auipc	s1,0x6
    80002f30:	e2c4b483          	ld	s1,-468(s1) # 80008d58 <_ZN15MemoryAllocator17head_data_segmentE>
    80002f34:	00000593          	li	a1,0
    80002f38:	0a048063          	beqz	s1,80002fd8 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    80002f3c:	01048793          	addi	a5,s1,16
    80002f40:	00a78a63          	beq	a5,a0,80002f54 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    80002f44:	0af56863          	bltu	a0,a5,80002ff4 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80002f48:	00048593          	mv	a1,s1
    80002f4c:	0004b483          	ld	s1,0(s1)
    80002f50:	fe9ff06f          	j	80002f38 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    80002f54:	00100613          	li	a2,1
    80002f58:	00048513          	mv	a0,s1
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	e40080e7          	jalr	-448(ra) # 80002d9c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    80002f64:	00006917          	auipc	s2,0x6
    80002f68:	dec93903          	ld	s2,-532(s2) # 80008d50 <_ZN15MemoryAllocator17head_free_segmentE>
    80002f6c:	0080006f          	j	80002f74 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80002f70:	00078913          	mv	s2,a5
    80002f74:	00090863          	beqz	s2,80002f84 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002f78:	00093783          	ld	a5,0(s2)
    80002f7c:	00078463          	beqz	a5,80002f84 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002f80:	fe97e8e3          	bltu	a5,s1,80002f70 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    80002f84:	0124f463          	bgeu	s1,s2,80002f8c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002f88:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    80002f8c:	00000613          	li	a2,0
    80002f90:	00090593          	mv	a1,s2
    80002f94:	00048513          	mv	a0,s1
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	d98080e7          	jalr	-616(ra) # 80002d30 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    80002fa0:	00048513          	mv	a0,s1
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	d3c080e7          	jalr	-708(ra) # 80002ce0 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    80002fac:	00090513          	mv	a0,s2
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	d30080e7          	jalr	-720(ra) # 80002ce0 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    80002fb8:	00000513          	li	a0,0
    80002fbc:	0200006f          	j	80002fdc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002fc0:	fff00513          	li	a0,-1
    80002fc4:	00008067          	ret
    80002fc8:	fff00513          	li	a0,-1
    80002fcc:	00008067          	ret
    80002fd0:	fff00513          	li	a0,-1
}
    80002fd4:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002fd8:	ffe00513          	li	a0,-2
}
    80002fdc:	01813083          	ld	ra,24(sp)
    80002fe0:	01013403          	ld	s0,16(sp)
    80002fe4:	00813483          	ld	s1,8(sp)
    80002fe8:	00013903          	ld	s2,0(sp)
    80002fec:	02010113          	addi	sp,sp,32
    80002ff0:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002ff4:	ffe00513          	li	a0,-2
    80002ff8:	fe5ff06f          	j	80002fdc <_ZN15MemoryAllocator8mem_freeEPv+0xec>

0000000080002ffc <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00813423          	sd	s0,8(sp)
    80003004:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    80003008:	00006697          	auipc	a3,0x6
    8000300c:	ca06b683          	ld	a3,-864(a3) # 80008ca8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003010:	0006b783          	ld	a5,0(a3)
    80003014:	00006717          	auipc	a4,0x6
    80003018:	d3c70713          	addi	a4,a4,-708 # 80008d50 <_ZN15MemoryAllocator17head_free_segmentE>
    8000301c:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    80003020:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    80003024:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    80003028:	00006797          	auipc	a5,0x6
    8000302c:	ca87b783          	ld	a5,-856(a5) # 80008cd0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003030:	0007b783          	ld	a5,0(a5)
    80003034:	0006b683          	ld	a3,0(a3)
    80003038:	40d787b3          	sub	a5,a5,a3
    8000303c:	00073703          	ld	a4,0(a4)
    80003040:	ff078793          	addi	a5,a5,-16
    80003044:	00f73423          	sd	a5,8(a4)
}
    80003048:	00813403          	ld	s0,8(sp)
    8000304c:	01010113          	addi	sp,sp,16
    80003050:	00008067          	ret

0000000080003054 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003054:	fe010113          	addi	sp,sp,-32
    80003058:	00113c23          	sd	ra,24(sp)
    8000305c:	00813823          	sd	s0,16(sp)
    80003060:	00913423          	sd	s1,8(sp)
    80003064:	01213023          	sd	s2,0(sp)
    80003068:	02010413          	addi	s0,sp,32
    8000306c:	00050493          	mv	s1,a0
    80003070:	00058913          	mv	s2,a1
    80003074:	0015879b          	addiw	a5,a1,1
    80003078:	0007851b          	sext.w	a0,a5
    8000307c:	00f4a023          	sw	a5,0(s1)
    80003080:	0004a823          	sw	zero,16(s1)
    80003084:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003088:	00251513          	slli	a0,a0,0x2
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	1b8080e7          	jalr	440(ra) # 80001244 <_Z9mem_allocm>
    80003094:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003098:	00000593          	li	a1,0
    8000309c:	02048513          	addi	a0,s1,32
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	310080e7          	jalr	784(ra) # 800013b0 <_Z8sem_openPP11MySemaphorej>
    sem_open(&spaceAvailable, _cap);
    800030a8:	00090593          	mv	a1,s2
    800030ac:	01848513          	addi	a0,s1,24
    800030b0:	ffffe097          	auipc	ra,0xffffe
    800030b4:	300080e7          	jalr	768(ra) # 800013b0 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexHead, 1);
    800030b8:	00100593          	li	a1,1
    800030bc:	02848513          	addi	a0,s1,40
    800030c0:	ffffe097          	auipc	ra,0xffffe
    800030c4:	2f0080e7          	jalr	752(ra) # 800013b0 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexTail, 1);
    800030c8:	00100593          	li	a1,1
    800030cc:	03048513          	addi	a0,s1,48
    800030d0:	ffffe097          	auipc	ra,0xffffe
    800030d4:	2e0080e7          	jalr	736(ra) # 800013b0 <_Z8sem_openPP11MySemaphorej>
}
    800030d8:	01813083          	ld	ra,24(sp)
    800030dc:	01013403          	ld	s0,16(sp)
    800030e0:	00813483          	ld	s1,8(sp)
    800030e4:	00013903          	ld	s2,0(sp)
    800030e8:	02010113          	addi	sp,sp,32
    800030ec:	00008067          	ret

00000000800030f0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800030f0:	fe010113          	addi	sp,sp,-32
    800030f4:	00113c23          	sd	ra,24(sp)
    800030f8:	00813823          	sd	s0,16(sp)
    800030fc:	00913423          	sd	s1,8(sp)
    80003100:	01213023          	sd	s2,0(sp)
    80003104:	02010413          	addi	s0,sp,32
    80003108:	00050493          	mv	s1,a0
    8000310c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003110:	01853503          	ld	a0,24(a0)
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	310080e7          	jalr	784(ra) # 80001424 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexTail);
    8000311c:	0304b503          	ld	a0,48(s1)
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	304080e7          	jalr	772(ra) # 80001424 <_Z8sem_waitP11MySemaphore>
    buffer[tail] = val;
    80003128:	0084b783          	ld	a5,8(s1)
    8000312c:	0144a703          	lw	a4,20(s1)
    80003130:	00271713          	slli	a4,a4,0x2
    80003134:	00e787b3          	add	a5,a5,a4
    80003138:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000313c:	0144a783          	lw	a5,20(s1)
    80003140:	0017879b          	addiw	a5,a5,1
    80003144:	0004a703          	lw	a4,0(s1)
    80003148:	02e7e7bb          	remw	a5,a5,a4
    8000314c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003150:	0304b503          	ld	a0,48(s1)
    80003154:	ffffe097          	auipc	ra,0xffffe
    80003158:	308080e7          	jalr	776(ra) # 8000145c <_Z10sem_signalP11MySemaphore>

    sem_signal(itemAvailable);
    8000315c:	0204b503          	ld	a0,32(s1)
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	2fc080e7          	jalr	764(ra) # 8000145c <_Z10sem_signalP11MySemaphore>

}
    80003168:	01813083          	ld	ra,24(sp)
    8000316c:	01013403          	ld	s0,16(sp)
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	00013903          	ld	s2,0(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret

0000000080003180 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00113c23          	sd	ra,24(sp)
    80003188:	00813823          	sd	s0,16(sp)
    8000318c:	00913423          	sd	s1,8(sp)
    80003190:	01213023          	sd	s2,0(sp)
    80003194:	02010413          	addi	s0,sp,32
    80003198:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000319c:	02053503          	ld	a0,32(a0)
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	284080e7          	jalr	644(ra) # 80001424 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexHead);
    800031a8:	0284b503          	ld	a0,40(s1)
    800031ac:	ffffe097          	auipc	ra,0xffffe
    800031b0:	278080e7          	jalr	632(ra) # 80001424 <_Z8sem_waitP11MySemaphore>

    int ret = buffer[head];
    800031b4:	0084b703          	ld	a4,8(s1)
    800031b8:	0104a783          	lw	a5,16(s1)
    800031bc:	00279693          	slli	a3,a5,0x2
    800031c0:	00d70733          	add	a4,a4,a3
    800031c4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800031c8:	0017879b          	addiw	a5,a5,1
    800031cc:	0004a703          	lw	a4,0(s1)
    800031d0:	02e7e7bb          	remw	a5,a5,a4
    800031d4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800031d8:	0284b503          	ld	a0,40(s1)
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	280080e7          	jalr	640(ra) # 8000145c <_Z10sem_signalP11MySemaphore>

    sem_signal(spaceAvailable);
    800031e4:	0184b503          	ld	a0,24(s1)
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	274080e7          	jalr	628(ra) # 8000145c <_Z10sem_signalP11MySemaphore>

    return ret;
}
    800031f0:	00090513          	mv	a0,s2
    800031f4:	01813083          	ld	ra,24(sp)
    800031f8:	01013403          	ld	s0,16(sp)
    800031fc:	00813483          	ld	s1,8(sp)
    80003200:	00013903          	ld	s2,0(sp)
    80003204:	02010113          	addi	sp,sp,32
    80003208:	00008067          	ret

000000008000320c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000320c:	fe010113          	addi	sp,sp,-32
    80003210:	00113c23          	sd	ra,24(sp)
    80003214:	00813823          	sd	s0,16(sp)
    80003218:	00913423          	sd	s1,8(sp)
    8000321c:	01213023          	sd	s2,0(sp)
    80003220:	02010413          	addi	s0,sp,32
    80003224:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003228:	02853503          	ld	a0,40(a0)
    8000322c:	ffffe097          	auipc	ra,0xffffe
    80003230:	1f8080e7          	jalr	504(ra) # 80001424 <_Z8sem_waitP11MySemaphore>
    sem_wait(mutexTail);
    80003234:	0304b503          	ld	a0,48(s1)
    80003238:	ffffe097          	auipc	ra,0xffffe
    8000323c:	1ec080e7          	jalr	492(ra) # 80001424 <_Z8sem_waitP11MySemaphore>

    if (tail >= head) {
    80003240:	0144a783          	lw	a5,20(s1)
    80003244:	0104a903          	lw	s2,16(s1)
    80003248:	0327ce63          	blt	a5,s2,80003284 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000324c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003250:	0304b503          	ld	a0,48(s1)
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	208080e7          	jalr	520(ra) # 8000145c <_Z10sem_signalP11MySemaphore>
    sem_signal(mutexHead);
    8000325c:	0284b503          	ld	a0,40(s1)
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	1fc080e7          	jalr	508(ra) # 8000145c <_Z10sem_signalP11MySemaphore>

    return ret;
}
    80003268:	00090513          	mv	a0,s2
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	00013903          	ld	s2,0(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret
        ret = cap - head + tail;
    80003284:	0004a703          	lw	a4,0(s1)
    80003288:	4127093b          	subw	s2,a4,s2
    8000328c:	00f9093b          	addw	s2,s2,a5
    80003290:	fc1ff06f          	j	80003250 <_ZN6Buffer6getCntEv+0x44>

0000000080003294 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003294:	fe010113          	addi	sp,sp,-32
    80003298:	00113c23          	sd	ra,24(sp)
    8000329c:	00813823          	sd	s0,16(sp)
    800032a0:	00913423          	sd	s1,8(sp)
    800032a4:	02010413          	addi	s0,sp,32
    800032a8:	00050493          	mv	s1,a0
    putc('\n');
    800032ac:	00a00513          	li	a0,10
    800032b0:	ffffe097          	auipc	ra,0xffffe
    800032b4:	28c080e7          	jalr	652(ra) # 8000153c <_Z4putcc>
    printString("Buffer deleted!\n");
    800032b8:	00004517          	auipc	a0,0x4
    800032bc:	17050513          	addi	a0,a0,368 # 80007428 <CONSOLE_STATUS+0x418>
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	9c0080e7          	jalr	-1600(ra) # 80001c80 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800032c8:	00048513          	mv	a0,s1
    800032cc:	00000097          	auipc	ra,0x0
    800032d0:	f40080e7          	jalr	-192(ra) # 8000320c <_ZN6Buffer6getCntEv>
    800032d4:	02a05c63          	blez	a0,8000330c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800032d8:	0084b783          	ld	a5,8(s1)
    800032dc:	0104a703          	lw	a4,16(s1)
    800032e0:	00271713          	slli	a4,a4,0x2
    800032e4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800032e8:	0007c503          	lbu	a0,0(a5)
    800032ec:	ffffe097          	auipc	ra,0xffffe
    800032f0:	250080e7          	jalr	592(ra) # 8000153c <_Z4putcc>
        head = (head + 1) % cap;
    800032f4:	0104a783          	lw	a5,16(s1)
    800032f8:	0017879b          	addiw	a5,a5,1
    800032fc:	0004a703          	lw	a4,0(s1)
    80003300:	02e7e7bb          	remw	a5,a5,a4
    80003304:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003308:	fc1ff06f          	j	800032c8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000330c:	02100513          	li	a0,33
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	22c080e7          	jalr	556(ra) # 8000153c <_Z4putcc>
    putc('\n');
    80003318:	00a00513          	li	a0,10
    8000331c:	ffffe097          	auipc	ra,0xffffe
    80003320:	220080e7          	jalr	544(ra) # 8000153c <_Z4putcc>
    mem_free(buffer);
    80003324:	0084b503          	ld	a0,8(s1)
    80003328:	ffffe097          	auipc	ra,0xffffe
    8000332c:	f50080e7          	jalr	-176(ra) # 80001278 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003330:	0204b503          	ld	a0,32(s1)
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	0b8080e7          	jalr	184(ra) # 800013ec <_Z9sem_closeP11MySemaphore>
    sem_close(spaceAvailable);
    8000333c:	0184b503          	ld	a0,24(s1)
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	0ac080e7          	jalr	172(ra) # 800013ec <_Z9sem_closeP11MySemaphore>
    sem_close(mutexTail);
    80003348:	0304b503          	ld	a0,48(s1)
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	0a0080e7          	jalr	160(ra) # 800013ec <_Z9sem_closeP11MySemaphore>
    sem_close(mutexHead);
    80003354:	0284b503          	ld	a0,40(s1)
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	094080e7          	jalr	148(ra) # 800013ec <_Z9sem_closeP11MySemaphore>
}
    80003360:	01813083          	ld	ra,24(sp)
    80003364:	01013403          	ld	s0,16(sp)
    80003368:	00813483          	ld	s1,8(sp)
    8000336c:	02010113          	addi	sp,sp,32
    80003370:	00008067          	ret

0000000080003374 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003374:	fe010113          	addi	sp,sp,-32
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	00813823          	sd	s0,16(sp)
    80003380:	00913423          	sd	s1,8(sp)
    80003384:	01213023          	sd	s2,0(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003390:	00000913          	li	s2,0
    80003394:	00c0006f          	j	800033a0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003398:	ffffe097          	auipc	ra,0xffffe
    8000339c:	f8c080e7          	jalr	-116(ra) # 80001324 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800033a0:	ffffe097          	auipc	ra,0xffffe
    800033a4:	168080e7          	jalr	360(ra) # 80001508 <_Z4getcv>
    800033a8:	0005059b          	sext.w	a1,a0
    800033ac:	01b00793          	li	a5,27
    800033b0:	02f58a63          	beq	a1,a5,800033e4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800033b4:	0084b503          	ld	a0,8(s1)
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	d38080e7          	jalr	-712(ra) # 800030f0 <_ZN6Buffer3putEi>
        i++;
    800033c0:	0019071b          	addiw	a4,s2,1
    800033c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033c8:	0004a683          	lw	a3,0(s1)
    800033cc:	0026979b          	slliw	a5,a3,0x2
    800033d0:	00d787bb          	addw	a5,a5,a3
    800033d4:	0017979b          	slliw	a5,a5,0x1
    800033d8:	02f767bb          	remw	a5,a4,a5
    800033dc:	fc0792e3          	bnez	a5,800033a0 <_ZL16producerKeyboardPv+0x2c>
    800033e0:	fb9ff06f          	j	80003398 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800033e4:	00100793          	li	a5,1
    800033e8:	00006717          	auipc	a4,0x6
    800033ec:	96f72c23          	sw	a5,-1672(a4) # 80008d60 <_ZL9threadEnd>
    data->buffer->put('!');
    800033f0:	02100593          	li	a1,33
    800033f4:	0084b503          	ld	a0,8(s1)
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	cf8080e7          	jalr	-776(ra) # 800030f0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003400:	0104b503          	ld	a0,16(s1)
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	058080e7          	jalr	88(ra) # 8000145c <_Z10sem_signalP11MySemaphore>
}
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	00013903          	ld	s2,0(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <_ZL8producerPv>:

static void producer(void *arg) {
    80003424:	fe010113          	addi	sp,sp,-32
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	00813823          	sd	s0,16(sp)
    80003430:	00913423          	sd	s1,8(sp)
    80003434:	01213023          	sd	s2,0(sp)
    80003438:	02010413          	addi	s0,sp,32
    8000343c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003440:	00000913          	li	s2,0
    80003444:	00c0006f          	j	80003450 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	edc080e7          	jalr	-292(ra) # 80001324 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003450:	00006797          	auipc	a5,0x6
    80003454:	9107a783          	lw	a5,-1776(a5) # 80008d60 <_ZL9threadEnd>
    80003458:	02079e63          	bnez	a5,80003494 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000345c:	0004a583          	lw	a1,0(s1)
    80003460:	0305859b          	addiw	a1,a1,48
    80003464:	0084b503          	ld	a0,8(s1)
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	c88080e7          	jalr	-888(ra) # 800030f0 <_ZN6Buffer3putEi>
        i++;
    80003470:	0019071b          	addiw	a4,s2,1
    80003474:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003478:	0004a683          	lw	a3,0(s1)
    8000347c:	0026979b          	slliw	a5,a3,0x2
    80003480:	00d787bb          	addw	a5,a5,a3
    80003484:	0017979b          	slliw	a5,a5,0x1
    80003488:	02f767bb          	remw	a5,a4,a5
    8000348c:	fc0792e3          	bnez	a5,80003450 <_ZL8producerPv+0x2c>
    80003490:	fb9ff06f          	j	80003448 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003494:	0104b503          	ld	a0,16(s1)
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	fc4080e7          	jalr	-60(ra) # 8000145c <_Z10sem_signalP11MySemaphore>
}
    800034a0:	01813083          	ld	ra,24(sp)
    800034a4:	01013403          	ld	s0,16(sp)
    800034a8:	00813483          	ld	s1,8(sp)
    800034ac:	00013903          	ld	s2,0(sp)
    800034b0:	02010113          	addi	sp,sp,32
    800034b4:	00008067          	ret

00000000800034b8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800034b8:	fd010113          	addi	sp,sp,-48
    800034bc:	02113423          	sd	ra,40(sp)
    800034c0:	02813023          	sd	s0,32(sp)
    800034c4:	00913c23          	sd	s1,24(sp)
    800034c8:	01213823          	sd	s2,16(sp)
    800034cc:	01313423          	sd	s3,8(sp)
    800034d0:	03010413          	addi	s0,sp,48
    800034d4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800034d8:	00000993          	li	s3,0
    800034dc:	01c0006f          	j	800034f8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	e44080e7          	jalr	-444(ra) # 80001324 <_Z15thread_dispatchv>
    800034e8:	0500006f          	j	80003538 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800034ec:	00a00513          	li	a0,10
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	04c080e7          	jalr	76(ra) # 8000153c <_Z4putcc>
    while (!threadEnd) {
    800034f8:	00006797          	auipc	a5,0x6
    800034fc:	8687a783          	lw	a5,-1944(a5) # 80008d60 <_ZL9threadEnd>
    80003500:	06079063          	bnez	a5,80003560 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003504:	00893503          	ld	a0,8(s2)
    80003508:	00000097          	auipc	ra,0x0
    8000350c:	c78080e7          	jalr	-904(ra) # 80003180 <_ZN6Buffer3getEv>
        i++;
    80003510:	0019849b          	addiw	s1,s3,1
    80003514:	0004899b          	sext.w	s3,s1
        putc(key);
    80003518:	0ff57513          	andi	a0,a0,255
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	020080e7          	jalr	32(ra) # 8000153c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003524:	00092703          	lw	a4,0(s2)
    80003528:	0027179b          	slliw	a5,a4,0x2
    8000352c:	00e787bb          	addw	a5,a5,a4
    80003530:	02f4e7bb          	remw	a5,s1,a5
    80003534:	fa0786e3          	beqz	a5,800034e0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003538:	05000793          	li	a5,80
    8000353c:	02f4e4bb          	remw	s1,s1,a5
    80003540:	fa049ce3          	bnez	s1,800034f8 <_ZL8consumerPv+0x40>
    80003544:	fa9ff06f          	j	800034ec <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003548:	00893503          	ld	a0,8(s2)
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	c34080e7          	jalr	-972(ra) # 80003180 <_ZN6Buffer3getEv>
        putc(key);
    80003554:	0ff57513          	andi	a0,a0,255
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	fe4080e7          	jalr	-28(ra) # 8000153c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003560:	00893503          	ld	a0,8(s2)
    80003564:	00000097          	auipc	ra,0x0
    80003568:	ca8080e7          	jalr	-856(ra) # 8000320c <_ZN6Buffer6getCntEv>
    8000356c:	fca04ee3          	bgtz	a0,80003548 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003570:	01093503          	ld	a0,16(s2)
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	ee8080e7          	jalr	-280(ra) # 8000145c <_Z10sem_signalP11MySemaphore>
}
    8000357c:	02813083          	ld	ra,40(sp)
    80003580:	02013403          	ld	s0,32(sp)
    80003584:	01813483          	ld	s1,24(sp)
    80003588:	01013903          	ld	s2,16(sp)
    8000358c:	00813983          	ld	s3,8(sp)
    80003590:	03010113          	addi	sp,sp,48
    80003594:	00008067          	ret

0000000080003598 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003598:	f9010113          	addi	sp,sp,-112
    8000359c:	06113423          	sd	ra,104(sp)
    800035a0:	06813023          	sd	s0,96(sp)
    800035a4:	04913c23          	sd	s1,88(sp)
    800035a8:	05213823          	sd	s2,80(sp)
    800035ac:	05313423          	sd	s3,72(sp)
    800035b0:	05413023          	sd	s4,64(sp)
    800035b4:	03513c23          	sd	s5,56(sp)
    800035b8:	03613823          	sd	s6,48(sp)
    800035bc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800035c0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800035c4:	00004517          	auipc	a0,0x4
    800035c8:	e7c50513          	addi	a0,a0,-388 # 80007440 <CONSOLE_STATUS+0x430>
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	6b4080e7          	jalr	1716(ra) # 80001c80 <_Z11printStringPKc>
    getString(input, 30);
    800035d4:	01e00593          	li	a1,30
    800035d8:	fa040493          	addi	s1,s0,-96
    800035dc:	00048513          	mv	a0,s1
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	728080e7          	jalr	1832(ra) # 80001d08 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800035e8:	00048513          	mv	a0,s1
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	7f4080e7          	jalr	2036(ra) # 80001de0 <_Z11stringToIntPKc>
    800035f4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800035f8:	00004517          	auipc	a0,0x4
    800035fc:	e6850513          	addi	a0,a0,-408 # 80007460 <CONSOLE_STATUS+0x450>
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	680080e7          	jalr	1664(ra) # 80001c80 <_Z11printStringPKc>
    getString(input, 30);
    80003608:	01e00593          	li	a1,30
    8000360c:	00048513          	mv	a0,s1
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	6f8080e7          	jalr	1784(ra) # 80001d08 <_Z9getStringPci>
    n = stringToInt(input);
    80003618:	00048513          	mv	a0,s1
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	7c4080e7          	jalr	1988(ra) # 80001de0 <_Z11stringToIntPKc>
    80003624:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003628:	00004517          	auipc	a0,0x4
    8000362c:	e5850513          	addi	a0,a0,-424 # 80007480 <CONSOLE_STATUS+0x470>
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	650080e7          	jalr	1616(ra) # 80001c80 <_Z11printStringPKc>
    80003638:	00000613          	li	a2,0
    8000363c:	00a00593          	li	a1,10
    80003640:	00090513          	mv	a0,s2
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	7ec080e7          	jalr	2028(ra) # 80001e30 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000364c:	00004517          	auipc	a0,0x4
    80003650:	e4c50513          	addi	a0,a0,-436 # 80007498 <CONSOLE_STATUS+0x488>
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	62c080e7          	jalr	1580(ra) # 80001c80 <_Z11printStringPKc>
    8000365c:	00000613          	li	a2,0
    80003660:	00a00593          	li	a1,10
    80003664:	00048513          	mv	a0,s1
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	7c8080e7          	jalr	1992(ra) # 80001e30 <_Z8printIntiii>
    printString(".\n");
    80003670:	00004517          	auipc	a0,0x4
    80003674:	e4050513          	addi	a0,a0,-448 # 800074b0 <CONSOLE_STATUS+0x4a0>
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	608080e7          	jalr	1544(ra) # 80001c80 <_Z11printStringPKc>
    if(threadNum > n) {
    80003680:	0324c463          	blt	s1,s2,800036a8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003684:	03205c63          	blez	s2,800036bc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003688:	03800513          	li	a0,56
    8000368c:	fffff097          	auipc	ra,0xfffff
    80003690:	e34080e7          	jalr	-460(ra) # 800024c0 <_Znwm>
    80003694:	00050a13          	mv	s4,a0
    80003698:	00048593          	mv	a1,s1
    8000369c:	00000097          	auipc	ra,0x0
    800036a0:	9b8080e7          	jalr	-1608(ra) # 80003054 <_ZN6BufferC1Ei>
    800036a4:	0300006f          	j	800036d4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800036a8:	00004517          	auipc	a0,0x4
    800036ac:	e1050513          	addi	a0,a0,-496 # 800074b8 <CONSOLE_STATUS+0x4a8>
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	5d0080e7          	jalr	1488(ra) # 80001c80 <_Z11printStringPKc>
        return;
    800036b8:	0140006f          	j	800036cc <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800036bc:	00004517          	auipc	a0,0x4
    800036c0:	e3c50513          	addi	a0,a0,-452 # 800074f8 <CONSOLE_STATUS+0x4e8>
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	5bc080e7          	jalr	1468(ra) # 80001c80 <_Z11printStringPKc>
        return;
    800036cc:	000b0113          	mv	sp,s6
    800036d0:	1500006f          	j	80003820 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800036d4:	00000593          	li	a1,0
    800036d8:	00005517          	auipc	a0,0x5
    800036dc:	69050513          	addi	a0,a0,1680 # 80008d68 <_ZL10waitForAll>
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	cd0080e7          	jalr	-816(ra) # 800013b0 <_Z8sem_openPP11MySemaphorej>
    thread_t threads[threadNum];
    800036e8:	00391793          	slli	a5,s2,0x3
    800036ec:	00f78793          	addi	a5,a5,15
    800036f0:	ff07f793          	andi	a5,a5,-16
    800036f4:	40f10133          	sub	sp,sp,a5
    800036f8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800036fc:	0019071b          	addiw	a4,s2,1
    80003700:	00171793          	slli	a5,a4,0x1
    80003704:	00e787b3          	add	a5,a5,a4
    80003708:	00379793          	slli	a5,a5,0x3
    8000370c:	00f78793          	addi	a5,a5,15
    80003710:	ff07f793          	andi	a5,a5,-16
    80003714:	40f10133          	sub	sp,sp,a5
    80003718:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000371c:	00191613          	slli	a2,s2,0x1
    80003720:	012607b3          	add	a5,a2,s2
    80003724:	00379793          	slli	a5,a5,0x3
    80003728:	00f987b3          	add	a5,s3,a5
    8000372c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003730:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003734:	00005717          	auipc	a4,0x5
    80003738:	63473703          	ld	a4,1588(a4) # 80008d68 <_ZL10waitForAll>
    8000373c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003740:	00078613          	mv	a2,a5
    80003744:	00000597          	auipc	a1,0x0
    80003748:	d7458593          	addi	a1,a1,-652 # 800034b8 <_ZL8consumerPv>
    8000374c:	f9840513          	addi	a0,s0,-104
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	b60080e7          	jalr	-1184(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003758:	00000493          	li	s1,0
    8000375c:	0280006f          	j	80003784 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003760:	00000597          	auipc	a1,0x0
    80003764:	c1458593          	addi	a1,a1,-1004 # 80003374 <_ZL16producerKeyboardPv>
                      data + i);
    80003768:	00179613          	slli	a2,a5,0x1
    8000376c:	00f60633          	add	a2,a2,a5
    80003770:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003774:	00c98633          	add	a2,s3,a2
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	b38080e7          	jalr	-1224(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003780:	0014849b          	addiw	s1,s1,1
    80003784:	0524d263          	bge	s1,s2,800037c8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003788:	00149793          	slli	a5,s1,0x1
    8000378c:	009787b3          	add	a5,a5,s1
    80003790:	00379793          	slli	a5,a5,0x3
    80003794:	00f987b3          	add	a5,s3,a5
    80003798:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000379c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800037a0:	00005717          	auipc	a4,0x5
    800037a4:	5c873703          	ld	a4,1480(a4) # 80008d68 <_ZL10waitForAll>
    800037a8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800037ac:	00048793          	mv	a5,s1
    800037b0:	00349513          	slli	a0,s1,0x3
    800037b4:	00aa8533          	add	a0,s5,a0
    800037b8:	fa9054e3          	blez	s1,80003760 <_Z22producerConsumer_C_APIv+0x1c8>
    800037bc:	00000597          	auipc	a1,0x0
    800037c0:	c6858593          	addi	a1,a1,-920 # 80003424 <_ZL8producerPv>
    800037c4:	fa5ff06f          	j	80003768 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	b5c080e7          	jalr	-1188(ra) # 80001324 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800037d0:	00000493          	li	s1,0
    800037d4:	00994e63          	blt	s2,s1,800037f0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800037d8:	00005517          	auipc	a0,0x5
    800037dc:	59053503          	ld	a0,1424(a0) # 80008d68 <_ZL10waitForAll>
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	c44080e7          	jalr	-956(ra) # 80001424 <_Z8sem_waitP11MySemaphore>
    for (int i = 0; i <= threadNum; i++) {
    800037e8:	0014849b          	addiw	s1,s1,1
    800037ec:	fe9ff06f          	j	800037d4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800037f0:	00005517          	auipc	a0,0x5
    800037f4:	57853503          	ld	a0,1400(a0) # 80008d68 <_ZL10waitForAll>
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	bf4080e7          	jalr	-1036(ra) # 800013ec <_Z9sem_closeP11MySemaphore>
    delete buffer;
    80003800:	000a0e63          	beqz	s4,8000381c <_Z22producerConsumer_C_APIv+0x284>
    80003804:	000a0513          	mv	a0,s4
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	a8c080e7          	jalr	-1396(ra) # 80003294 <_ZN6BufferD1Ev>
    80003810:	000a0513          	mv	a0,s4
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	cfc080e7          	jalr	-772(ra) # 80002510 <_ZdlPv>
    8000381c:	000b0113          	mv	sp,s6

}
    80003820:	f9040113          	addi	sp,s0,-112
    80003824:	06813083          	ld	ra,104(sp)
    80003828:	06013403          	ld	s0,96(sp)
    8000382c:	05813483          	ld	s1,88(sp)
    80003830:	05013903          	ld	s2,80(sp)
    80003834:	04813983          	ld	s3,72(sp)
    80003838:	04013a03          	ld	s4,64(sp)
    8000383c:	03813a83          	ld	s5,56(sp)
    80003840:	03013b03          	ld	s6,48(sp)
    80003844:	07010113          	addi	sp,sp,112
    80003848:	00008067          	ret
    8000384c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003850:	000a0513          	mv	a0,s4
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	cbc080e7          	jalr	-836(ra) # 80002510 <_ZdlPv>
    8000385c:	00048513          	mv	a0,s1
    80003860:	00006097          	auipc	ra,0x6
    80003864:	5e8080e7          	jalr	1512(ra) # 80009e48 <_Unwind_Resume>

0000000080003868 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003868:	fe010113          	addi	sp,sp,-32
    8000386c:	00113c23          	sd	ra,24(sp)
    80003870:	00813823          	sd	s0,16(sp)
    80003874:	00913423          	sd	s1,8(sp)
    80003878:	01213023          	sd	s2,0(sp)
    8000387c:	02010413          	addi	s0,sp,32
    80003880:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003884:	00100793          	li	a5,1
    80003888:	02a7f863          	bgeu	a5,a0,800038b8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000388c:	00a00793          	li	a5,10
    80003890:	02f577b3          	remu	a5,a0,a5
    80003894:	02078e63          	beqz	a5,800038d0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003898:	fff48513          	addi	a0,s1,-1
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	fcc080e7          	jalr	-52(ra) # 80003868 <_ZL9fibonaccim>
    800038a4:	00050913          	mv	s2,a0
    800038a8:	ffe48513          	addi	a0,s1,-2
    800038ac:	00000097          	auipc	ra,0x0
    800038b0:	fbc080e7          	jalr	-68(ra) # 80003868 <_ZL9fibonaccim>
    800038b4:	00a90533          	add	a0,s2,a0
}
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	00013903          	ld	s2,0(sp)
    800038c8:	02010113          	addi	sp,sp,32
    800038cc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	a54080e7          	jalr	-1452(ra) # 80001324 <_Z15thread_dispatchv>
    800038d8:	fc1ff06f          	j	80003898 <_ZL9fibonaccim+0x30>

00000000800038dc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800038dc:	fe010113          	addi	sp,sp,-32
    800038e0:	00113c23          	sd	ra,24(sp)
    800038e4:	00813823          	sd	s0,16(sp)
    800038e8:	00913423          	sd	s1,8(sp)
    800038ec:	01213023          	sd	s2,0(sp)
    800038f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800038f4:	00000913          	li	s2,0
    800038f8:	0380006f          	j	80003930 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	a28080e7          	jalr	-1496(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003904:	00148493          	addi	s1,s1,1
    80003908:	000027b7          	lui	a5,0x2
    8000390c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003910:	0097ee63          	bltu	a5,s1,8000392c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003914:	00000713          	li	a4,0
    80003918:	000077b7          	lui	a5,0x7
    8000391c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003920:	fce7eee3          	bltu	a5,a4,800038fc <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003924:	00170713          	addi	a4,a4,1
    80003928:	ff1ff06f          	j	80003918 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000392c:	00190913          	addi	s2,s2,1
    80003930:	00900793          	li	a5,9
    80003934:	0527e063          	bltu	a5,s2,80003974 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003938:	00003517          	auipc	a0,0x3
    8000393c:	6e850513          	addi	a0,a0,1768 # 80007020 <CONSOLE_STATUS+0x10>
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	340080e7          	jalr	832(ra) # 80001c80 <_Z11printStringPKc>
    80003948:	00000613          	li	a2,0
    8000394c:	00a00593          	li	a1,10
    80003950:	0009051b          	sext.w	a0,s2
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	4dc080e7          	jalr	1244(ra) # 80001e30 <_Z8printIntiii>
    8000395c:	00004517          	auipc	a0,0x4
    80003960:	89c50513          	addi	a0,a0,-1892 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	31c080e7          	jalr	796(ra) # 80001c80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000396c:	00000493          	li	s1,0
    80003970:	f99ff06f          	j	80003908 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003974:	00004517          	auipc	a0,0x4
    80003978:	bb450513          	addi	a0,a0,-1100 # 80007528 <CONSOLE_STATUS+0x518>
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	304080e7          	jalr	772(ra) # 80001c80 <_Z11printStringPKc>
    finishedA = true;
    80003984:	00100793          	li	a5,1
    80003988:	00005717          	auipc	a4,0x5
    8000398c:	3ef70423          	sb	a5,1000(a4) # 80008d70 <_ZL9finishedA>
}
    80003990:	01813083          	ld	ra,24(sp)
    80003994:	01013403          	ld	s0,16(sp)
    80003998:	00813483          	ld	s1,8(sp)
    8000399c:	00013903          	ld	s2,0(sp)
    800039a0:	02010113          	addi	sp,sp,32
    800039a4:	00008067          	ret

00000000800039a8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800039a8:	fe010113          	addi	sp,sp,-32
    800039ac:	00113c23          	sd	ra,24(sp)
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00913423          	sd	s1,8(sp)
    800039b8:	01213023          	sd	s2,0(sp)
    800039bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800039c0:	00000913          	li	s2,0
    800039c4:	0380006f          	j	800039fc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	95c080e7          	jalr	-1700(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800039d0:	00148493          	addi	s1,s1,1
    800039d4:	000027b7          	lui	a5,0x2
    800039d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039dc:	0097ee63          	bltu	a5,s1,800039f8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039e0:	00000713          	li	a4,0
    800039e4:	000077b7          	lui	a5,0x7
    800039e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039ec:	fce7eee3          	bltu	a5,a4,800039c8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800039f0:	00170713          	addi	a4,a4,1
    800039f4:	ff1ff06f          	j	800039e4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800039f8:	00190913          	addi	s2,s2,1
    800039fc:	00f00793          	li	a5,15
    80003a00:	0527e063          	bltu	a5,s2,80003a40 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003a04:	00003517          	auipc	a0,0x3
    80003a08:	62450513          	addi	a0,a0,1572 # 80007028 <CONSOLE_STATUS+0x18>
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	274080e7          	jalr	628(ra) # 80001c80 <_Z11printStringPKc>
    80003a14:	00000613          	li	a2,0
    80003a18:	00a00593          	li	a1,10
    80003a1c:	0009051b          	sext.w	a0,s2
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	410080e7          	jalr	1040(ra) # 80001e30 <_Z8printIntiii>
    80003a28:	00003517          	auipc	a0,0x3
    80003a2c:	7d050513          	addi	a0,a0,2000 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	250080e7          	jalr	592(ra) # 80001c80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a38:	00000493          	li	s1,0
    80003a3c:	f99ff06f          	j	800039d4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003a40:	00004517          	auipc	a0,0x4
    80003a44:	af850513          	addi	a0,a0,-1288 # 80007538 <CONSOLE_STATUS+0x528>
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	238080e7          	jalr	568(ra) # 80001c80 <_Z11printStringPKc>
    finishedB = true;
    80003a50:	00100793          	li	a5,1
    80003a54:	00005717          	auipc	a4,0x5
    80003a58:	30f70ea3          	sb	a5,797(a4) # 80008d71 <_ZL9finishedB>
    thread_dispatch();
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	8c8080e7          	jalr	-1848(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00813483          	ld	s1,8(sp)
    80003a70:	00013903          	ld	s2,0(sp)
    80003a74:	02010113          	addi	sp,sp,32
    80003a78:	00008067          	ret

0000000080003a7c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00813823          	sd	s0,16(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	01213023          	sd	s2,0(sp)
    80003a90:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003a94:	00000493          	li	s1,0
    80003a98:	0400006f          	j	80003ad8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a9c:	00003517          	auipc	a0,0x3
    80003aa0:	59450513          	addi	a0,a0,1428 # 80007030 <CONSOLE_STATUS+0x20>
    80003aa4:	ffffe097          	auipc	ra,0xffffe
    80003aa8:	1dc080e7          	jalr	476(ra) # 80001c80 <_Z11printStringPKc>
    80003aac:	00000613          	li	a2,0
    80003ab0:	00a00593          	li	a1,10
    80003ab4:	00048513          	mv	a0,s1
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	378080e7          	jalr	888(ra) # 80001e30 <_Z8printIntiii>
    80003ac0:	00003517          	auipc	a0,0x3
    80003ac4:	73850513          	addi	a0,a0,1848 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	1b8080e7          	jalr	440(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003ad0:	0014849b          	addiw	s1,s1,1
    80003ad4:	0ff4f493          	andi	s1,s1,255
    80003ad8:	00200793          	li	a5,2
    80003adc:	fc97f0e3          	bgeu	a5,s1,80003a9c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003ae0:	00004517          	auipc	a0,0x4
    80003ae4:	a6850513          	addi	a0,a0,-1432 # 80007548 <CONSOLE_STATUS+0x538>
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	198080e7          	jalr	408(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003af0:	00700313          	li	t1,7
    thread_dispatch();
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	830080e7          	jalr	-2000(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003afc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003b00:	00003517          	auipc	a0,0x3
    80003b04:	54850513          	addi	a0,a0,1352 # 80007048 <CONSOLE_STATUS+0x38>
    80003b08:	ffffe097          	auipc	ra,0xffffe
    80003b0c:	178080e7          	jalr	376(ra) # 80001c80 <_Z11printStringPKc>
    80003b10:	00000613          	li	a2,0
    80003b14:	00a00593          	li	a1,10
    80003b18:	0009051b          	sext.w	a0,s2
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	314080e7          	jalr	788(ra) # 80001e30 <_Z8printIntiii>
    80003b24:	00003517          	auipc	a0,0x3
    80003b28:	6d450513          	addi	a0,a0,1748 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	154080e7          	jalr	340(ra) # 80001c80 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003b34:	00c00513          	li	a0,12
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	d30080e7          	jalr	-720(ra) # 80003868 <_ZL9fibonaccim>
    80003b40:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003b44:	00003517          	auipc	a0,0x3
    80003b48:	50c50513          	addi	a0,a0,1292 # 80007050 <CONSOLE_STATUS+0x40>
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	134080e7          	jalr	308(ra) # 80001c80 <_Z11printStringPKc>
    80003b54:	00000613          	li	a2,0
    80003b58:	00a00593          	li	a1,10
    80003b5c:	0009051b          	sext.w	a0,s2
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	2d0080e7          	jalr	720(ra) # 80001e30 <_Z8printIntiii>
    80003b68:	00003517          	auipc	a0,0x3
    80003b6c:	69050513          	addi	a0,a0,1680 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	110080e7          	jalr	272(ra) # 80001c80 <_Z11printStringPKc>
    80003b78:	0400006f          	j	80003bb8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b7c:	00003517          	auipc	a0,0x3
    80003b80:	4b450513          	addi	a0,a0,1204 # 80007030 <CONSOLE_STATUS+0x20>
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	0fc080e7          	jalr	252(ra) # 80001c80 <_Z11printStringPKc>
    80003b8c:	00000613          	li	a2,0
    80003b90:	00a00593          	li	a1,10
    80003b94:	00048513          	mv	a0,s1
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	298080e7          	jalr	664(ra) # 80001e30 <_Z8printIntiii>
    80003ba0:	00003517          	auipc	a0,0x3
    80003ba4:	65850513          	addi	a0,a0,1624 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	0d8080e7          	jalr	216(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003bb0:	0014849b          	addiw	s1,s1,1
    80003bb4:	0ff4f493          	andi	s1,s1,255
    80003bb8:	00500793          	li	a5,5
    80003bbc:	fc97f0e3          	bgeu	a5,s1,80003b7c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003bc0:	00004517          	auipc	a0,0x4
    80003bc4:	99850513          	addi	a0,a0,-1640 # 80007558 <CONSOLE_STATUS+0x548>
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	0b8080e7          	jalr	184(ra) # 80001c80 <_Z11printStringPKc>
    finishedC = true;
    80003bd0:	00100793          	li	a5,1
    80003bd4:	00005717          	auipc	a4,0x5
    80003bd8:	18f70f23          	sb	a5,414(a4) # 80008d72 <_ZL9finishedC>
    thread_dispatch();
    80003bdc:	ffffd097          	auipc	ra,0xffffd
    80003be0:	748080e7          	jalr	1864(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003be4:	01813083          	ld	ra,24(sp)
    80003be8:	01013403          	ld	s0,16(sp)
    80003bec:	00813483          	ld	s1,8(sp)
    80003bf0:	00013903          	ld	s2,0(sp)
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00008067          	ret

0000000080003bfc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003bfc:	fe010113          	addi	sp,sp,-32
    80003c00:	00113c23          	sd	ra,24(sp)
    80003c04:	00813823          	sd	s0,16(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	01213023          	sd	s2,0(sp)
    80003c10:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c14:	00a00493          	li	s1,10
    80003c18:	0400006f          	j	80003c58 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c1c:	00003517          	auipc	a0,0x3
    80003c20:	44450513          	addi	a0,a0,1092 # 80007060 <CONSOLE_STATUS+0x50>
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	05c080e7          	jalr	92(ra) # 80001c80 <_Z11printStringPKc>
    80003c2c:	00000613          	li	a2,0
    80003c30:	00a00593          	li	a1,10
    80003c34:	00048513          	mv	a0,s1
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	1f8080e7          	jalr	504(ra) # 80001e30 <_Z8printIntiii>
    80003c40:	00003517          	auipc	a0,0x3
    80003c44:	5b850513          	addi	a0,a0,1464 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003c48:	ffffe097          	auipc	ra,0xffffe
    80003c4c:	038080e7          	jalr	56(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c50:	0014849b          	addiw	s1,s1,1
    80003c54:	0ff4f493          	andi	s1,s1,255
    80003c58:	00c00793          	li	a5,12
    80003c5c:	fc97f0e3          	bgeu	a5,s1,80003c1c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003c60:	00004517          	auipc	a0,0x4
    80003c64:	90850513          	addi	a0,a0,-1784 # 80007568 <CONSOLE_STATUS+0x558>
    80003c68:	ffffe097          	auipc	ra,0xffffe
    80003c6c:	018080e7          	jalr	24(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c70:	00500313          	li	t1,5
    thread_dispatch();
    80003c74:	ffffd097          	auipc	ra,0xffffd
    80003c78:	6b0080e7          	jalr	1712(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c7c:	01000513          	li	a0,16
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	be8080e7          	jalr	-1048(ra) # 80003868 <_ZL9fibonaccim>
    80003c88:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c8c:	00003517          	auipc	a0,0x3
    80003c90:	3ec50513          	addi	a0,a0,1004 # 80007078 <CONSOLE_STATUS+0x68>
    80003c94:	ffffe097          	auipc	ra,0xffffe
    80003c98:	fec080e7          	jalr	-20(ra) # 80001c80 <_Z11printStringPKc>
    80003c9c:	00000613          	li	a2,0
    80003ca0:	00a00593          	li	a1,10
    80003ca4:	0009051b          	sext.w	a0,s2
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	188080e7          	jalr	392(ra) # 80001e30 <_Z8printIntiii>
    80003cb0:	00003517          	auipc	a0,0x3
    80003cb4:	54850513          	addi	a0,a0,1352 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003cb8:	ffffe097          	auipc	ra,0xffffe
    80003cbc:	fc8080e7          	jalr	-56(ra) # 80001c80 <_Z11printStringPKc>
    80003cc0:	0400006f          	j	80003d00 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003cc4:	00003517          	auipc	a0,0x3
    80003cc8:	39c50513          	addi	a0,a0,924 # 80007060 <CONSOLE_STATUS+0x50>
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	fb4080e7          	jalr	-76(ra) # 80001c80 <_Z11printStringPKc>
    80003cd4:	00000613          	li	a2,0
    80003cd8:	00a00593          	li	a1,10
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	150080e7          	jalr	336(ra) # 80001e30 <_Z8printIntiii>
    80003ce8:	00003517          	auipc	a0,0x3
    80003cec:	51050513          	addi	a0,a0,1296 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	f90080e7          	jalr	-112(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003cf8:	0014849b          	addiw	s1,s1,1
    80003cfc:	0ff4f493          	andi	s1,s1,255
    80003d00:	00f00793          	li	a5,15
    80003d04:	fc97f0e3          	bgeu	a5,s1,80003cc4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003d08:	00004517          	auipc	a0,0x4
    80003d0c:	87050513          	addi	a0,a0,-1936 # 80007578 <CONSOLE_STATUS+0x568>
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	f70080e7          	jalr	-144(ra) # 80001c80 <_Z11printStringPKc>
    finishedD = true;
    80003d18:	00100793          	li	a5,1
    80003d1c:	00005717          	auipc	a4,0x5
    80003d20:	04f70ba3          	sb	a5,87(a4) # 80008d73 <_ZL9finishedD>
    thread_dispatch();
    80003d24:	ffffd097          	auipc	ra,0xffffd
    80003d28:	600080e7          	jalr	1536(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003d2c:	01813083          	ld	ra,24(sp)
    80003d30:	01013403          	ld	s0,16(sp)
    80003d34:	00813483          	ld	s1,8(sp)
    80003d38:	00013903          	ld	s2,0(sp)
    80003d3c:	02010113          	addi	sp,sp,32
    80003d40:	00008067          	ret

0000000080003d44 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003d44:	fc010113          	addi	sp,sp,-64
    80003d48:	02113c23          	sd	ra,56(sp)
    80003d4c:	02813823          	sd	s0,48(sp)
    80003d50:	02913423          	sd	s1,40(sp)
    80003d54:	03213023          	sd	s2,32(sp)
    80003d58:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003d5c:	02000513          	li	a0,32
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	760080e7          	jalr	1888(ra) # 800024c0 <_Znwm>
    80003d68:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003d6c:	fffff097          	auipc	ra,0xfffff
    80003d70:	938080e7          	jalr	-1736(ra) # 800026a4 <_ZN6ThreadC1Ev>
    80003d74:	00005797          	auipc	a5,0x5
    80003d78:	e9478793          	addi	a5,a5,-364 # 80008c08 <_ZTV7WorkerA+0x10>
    80003d7c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003d80:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003d84:	00004517          	auipc	a0,0x4
    80003d88:	80450513          	addi	a0,a0,-2044 # 80007588 <CONSOLE_STATUS+0x578>
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	ef4080e7          	jalr	-268(ra) # 80001c80 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003d94:	02000513          	li	a0,32
    80003d98:	ffffe097          	auipc	ra,0xffffe
    80003d9c:	728080e7          	jalr	1832(ra) # 800024c0 <_Znwm>
    80003da0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	900080e7          	jalr	-1792(ra) # 800026a4 <_ZN6ThreadC1Ev>
    80003dac:	00005797          	auipc	a5,0x5
    80003db0:	e8478793          	addi	a5,a5,-380 # 80008c30 <_ZTV7WorkerB+0x10>
    80003db4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003db8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003dbc:	00003517          	auipc	a0,0x3
    80003dc0:	7e450513          	addi	a0,a0,2020 # 800075a0 <CONSOLE_STATUS+0x590>
    80003dc4:	ffffe097          	auipc	ra,0xffffe
    80003dc8:	ebc080e7          	jalr	-324(ra) # 80001c80 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003dcc:	02000513          	li	a0,32
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	6f0080e7          	jalr	1776(ra) # 800024c0 <_Znwm>
    80003dd8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	8c8080e7          	jalr	-1848(ra) # 800026a4 <_ZN6ThreadC1Ev>
    80003de4:	00005797          	auipc	a5,0x5
    80003de8:	e7478793          	addi	a5,a5,-396 # 80008c58 <_ZTV7WorkerC+0x10>
    80003dec:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003df0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003df4:	00003517          	auipc	a0,0x3
    80003df8:	7c450513          	addi	a0,a0,1988 # 800075b8 <CONSOLE_STATUS+0x5a8>
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	e84080e7          	jalr	-380(ra) # 80001c80 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003e04:	02000513          	li	a0,32
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	6b8080e7          	jalr	1720(ra) # 800024c0 <_Znwm>
    80003e10:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	890080e7          	jalr	-1904(ra) # 800026a4 <_ZN6ThreadC1Ev>
    80003e1c:	00005797          	auipc	a5,0x5
    80003e20:	e6478793          	addi	a5,a5,-412 # 80008c80 <_ZTV7WorkerD+0x10>
    80003e24:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003e28:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003e2c:	00003517          	auipc	a0,0x3
    80003e30:	7a450513          	addi	a0,a0,1956 # 800075d0 <CONSOLE_STATUS+0x5c0>
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	e4c080e7          	jalr	-436(ra) # 80001c80 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003e3c:	00000493          	li	s1,0
    80003e40:	00300793          	li	a5,3
    80003e44:	0297c663          	blt	a5,s1,80003e70 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003e48:	00349793          	slli	a5,s1,0x3
    80003e4c:	fe040713          	addi	a4,s0,-32
    80003e50:	00f707b3          	add	a5,a4,a5
    80003e54:	fe07b503          	ld	a0,-32(a5)
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	7d8080e7          	jalr	2008(ra) # 80002630 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003e60:	0014849b          	addiw	s1,s1,1
    80003e64:	fddff06f          	j	80003e40 <_Z20Threads_CPP_API_testv+0xfc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        // printString("ThreadB finished: ");
        // printInt(threads[1]->myHandle->isFinished());
        // printString("\n");
        Thread::dispatch();
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	7f8080e7          	jalr	2040(ra) # 80002660 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e70:	00005797          	auipc	a5,0x5
    80003e74:	f007c783          	lbu	a5,-256(a5) # 80008d70 <_ZL9finishedA>
    80003e78:	fe0788e3          	beqz	a5,80003e68 <_Z20Threads_CPP_API_testv+0x124>
    80003e7c:	00005797          	auipc	a5,0x5
    80003e80:	ef57c783          	lbu	a5,-267(a5) # 80008d71 <_ZL9finishedB>
    80003e84:	fe0782e3          	beqz	a5,80003e68 <_Z20Threads_CPP_API_testv+0x124>
    80003e88:	00005797          	auipc	a5,0x5
    80003e8c:	eea7c783          	lbu	a5,-278(a5) # 80008d72 <_ZL9finishedC>
    80003e90:	fc078ce3          	beqz	a5,80003e68 <_Z20Threads_CPP_API_testv+0x124>
    80003e94:	00005797          	auipc	a5,0x5
    80003e98:	edf7c783          	lbu	a5,-289(a5) # 80008d73 <_ZL9finishedD>
    80003e9c:	fc0786e3          	beqz	a5,80003e68 <_Z20Threads_CPP_API_testv+0x124>
    80003ea0:	fc040493          	addi	s1,s0,-64
    80003ea4:	0080006f          	j	80003eac <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003ea8:	00848493          	addi	s1,s1,8
    80003eac:	fe040793          	addi	a5,s0,-32
    80003eb0:	08f48663          	beq	s1,a5,80003f3c <_Z20Threads_CPP_API_testv+0x1f8>
    80003eb4:	0004b503          	ld	a0,0(s1)
    80003eb8:	fe0508e3          	beqz	a0,80003ea8 <_Z20Threads_CPP_API_testv+0x164>
    80003ebc:	00053783          	ld	a5,0(a0)
    80003ec0:	0087b783          	ld	a5,8(a5)
    80003ec4:	000780e7          	jalr	a5
    80003ec8:	fe1ff06f          	j	80003ea8 <_Z20Threads_CPP_API_testv+0x164>
    80003ecc:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	ffffe097          	auipc	ra,0xffffe
    80003ed8:	63c080e7          	jalr	1596(ra) # 80002510 <_ZdlPv>
    80003edc:	00090513          	mv	a0,s2
    80003ee0:	00006097          	auipc	ra,0x6
    80003ee4:	f68080e7          	jalr	-152(ra) # 80009e48 <_Unwind_Resume>
    80003ee8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	620080e7          	jalr	1568(ra) # 80002510 <_ZdlPv>
    80003ef8:	00090513          	mv	a0,s2
    80003efc:	00006097          	auipc	ra,0x6
    80003f00:	f4c080e7          	jalr	-180(ra) # 80009e48 <_Unwind_Resume>
    80003f04:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	604080e7          	jalr	1540(ra) # 80002510 <_ZdlPv>
    80003f14:	00090513          	mv	a0,s2
    80003f18:	00006097          	auipc	ra,0x6
    80003f1c:	f30080e7          	jalr	-208(ra) # 80009e48 <_Unwind_Resume>
    80003f20:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003f24:	00048513          	mv	a0,s1
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	5e8080e7          	jalr	1512(ra) # 80002510 <_ZdlPv>
    80003f30:	00090513          	mv	a0,s2
    80003f34:	00006097          	auipc	ra,0x6
    80003f38:	f14080e7          	jalr	-236(ra) # 80009e48 <_Unwind_Resume>
}
    80003f3c:	03813083          	ld	ra,56(sp)
    80003f40:	03013403          	ld	s0,48(sp)
    80003f44:	02813483          	ld	s1,40(sp)
    80003f48:	02013903          	ld	s2,32(sp)
    80003f4c:	04010113          	addi	sp,sp,64
    80003f50:	00008067          	ret

0000000080003f54 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003f54:	ff010113          	addi	sp,sp,-16
    80003f58:	00113423          	sd	ra,8(sp)
    80003f5c:	00813023          	sd	s0,0(sp)
    80003f60:	01010413          	addi	s0,sp,16
    80003f64:	00005797          	auipc	a5,0x5
    80003f68:	ca478793          	addi	a5,a5,-860 # 80008c08 <_ZTV7WorkerA+0x10>
    80003f6c:	00f53023          	sd	a5,0(a0)
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	5f0080e7          	jalr	1520(ra) # 80002560 <_ZN6ThreadD1Ev>
    80003f78:	00813083          	ld	ra,8(sp)
    80003f7c:	00013403          	ld	s0,0(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <_ZN7WorkerAD0Ev>:
    80003f88:	fe010113          	addi	sp,sp,-32
    80003f8c:	00113c23          	sd	ra,24(sp)
    80003f90:	00813823          	sd	s0,16(sp)
    80003f94:	00913423          	sd	s1,8(sp)
    80003f98:	02010413          	addi	s0,sp,32
    80003f9c:	00050493          	mv	s1,a0
    80003fa0:	00005797          	auipc	a5,0x5
    80003fa4:	c6878793          	addi	a5,a5,-920 # 80008c08 <_ZTV7WorkerA+0x10>
    80003fa8:	00f53023          	sd	a5,0(a0)
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	5b4080e7          	jalr	1460(ra) # 80002560 <_ZN6ThreadD1Ev>
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	558080e7          	jalr	1368(ra) # 80002510 <_ZdlPv>
    80003fc0:	01813083          	ld	ra,24(sp)
    80003fc4:	01013403          	ld	s0,16(sp)
    80003fc8:	00813483          	ld	s1,8(sp)
    80003fcc:	02010113          	addi	sp,sp,32
    80003fd0:	00008067          	ret

0000000080003fd4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003fd4:	ff010113          	addi	sp,sp,-16
    80003fd8:	00113423          	sd	ra,8(sp)
    80003fdc:	00813023          	sd	s0,0(sp)
    80003fe0:	01010413          	addi	s0,sp,16
    80003fe4:	00005797          	auipc	a5,0x5
    80003fe8:	c4c78793          	addi	a5,a5,-948 # 80008c30 <_ZTV7WorkerB+0x10>
    80003fec:	00f53023          	sd	a5,0(a0)
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	570080e7          	jalr	1392(ra) # 80002560 <_ZN6ThreadD1Ev>
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN7WorkerBD0Ev>:
    80004008:	fe010113          	addi	sp,sp,-32
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	02010413          	addi	s0,sp,32
    8000401c:	00050493          	mv	s1,a0
    80004020:	00005797          	auipc	a5,0x5
    80004024:	c1078793          	addi	a5,a5,-1008 # 80008c30 <_ZTV7WorkerB+0x10>
    80004028:	00f53023          	sd	a5,0(a0)
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	534080e7          	jalr	1332(ra) # 80002560 <_ZN6ThreadD1Ev>
    80004034:	00048513          	mv	a0,s1
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	4d8080e7          	jalr	1240(ra) # 80002510 <_ZdlPv>
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	00813483          	ld	s1,8(sp)
    8000404c:	02010113          	addi	sp,sp,32
    80004050:	00008067          	ret

0000000080004054 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004054:	ff010113          	addi	sp,sp,-16
    80004058:	00113423          	sd	ra,8(sp)
    8000405c:	00813023          	sd	s0,0(sp)
    80004060:	01010413          	addi	s0,sp,16
    80004064:	00005797          	auipc	a5,0x5
    80004068:	bf478793          	addi	a5,a5,-1036 # 80008c58 <_ZTV7WorkerC+0x10>
    8000406c:	00f53023          	sd	a5,0(a0)
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	4f0080e7          	jalr	1264(ra) # 80002560 <_ZN6ThreadD1Ev>
    80004078:	00813083          	ld	ra,8(sp)
    8000407c:	00013403          	ld	s0,0(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <_ZN7WorkerCD0Ev>:
    80004088:	fe010113          	addi	sp,sp,-32
    8000408c:	00113c23          	sd	ra,24(sp)
    80004090:	00813823          	sd	s0,16(sp)
    80004094:	00913423          	sd	s1,8(sp)
    80004098:	02010413          	addi	s0,sp,32
    8000409c:	00050493          	mv	s1,a0
    800040a0:	00005797          	auipc	a5,0x5
    800040a4:	bb878793          	addi	a5,a5,-1096 # 80008c58 <_ZTV7WorkerC+0x10>
    800040a8:	00f53023          	sd	a5,0(a0)
    800040ac:	ffffe097          	auipc	ra,0xffffe
    800040b0:	4b4080e7          	jalr	1204(ra) # 80002560 <_ZN6ThreadD1Ev>
    800040b4:	00048513          	mv	a0,s1
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	458080e7          	jalr	1112(ra) # 80002510 <_ZdlPv>
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	00813483          	ld	s1,8(sp)
    800040cc:	02010113          	addi	sp,sp,32
    800040d0:	00008067          	ret

00000000800040d4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800040d4:	ff010113          	addi	sp,sp,-16
    800040d8:	00113423          	sd	ra,8(sp)
    800040dc:	00813023          	sd	s0,0(sp)
    800040e0:	01010413          	addi	s0,sp,16
    800040e4:	00005797          	auipc	a5,0x5
    800040e8:	b9c78793          	addi	a5,a5,-1124 # 80008c80 <_ZTV7WorkerD+0x10>
    800040ec:	00f53023          	sd	a5,0(a0)
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	470080e7          	jalr	1136(ra) # 80002560 <_ZN6ThreadD1Ev>
    800040f8:	00813083          	ld	ra,8(sp)
    800040fc:	00013403          	ld	s0,0(sp)
    80004100:	01010113          	addi	sp,sp,16
    80004104:	00008067          	ret

0000000080004108 <_ZN7WorkerDD0Ev>:
    80004108:	fe010113          	addi	sp,sp,-32
    8000410c:	00113c23          	sd	ra,24(sp)
    80004110:	00813823          	sd	s0,16(sp)
    80004114:	00913423          	sd	s1,8(sp)
    80004118:	02010413          	addi	s0,sp,32
    8000411c:	00050493          	mv	s1,a0
    80004120:	00005797          	auipc	a5,0x5
    80004124:	b6078793          	addi	a5,a5,-1184 # 80008c80 <_ZTV7WorkerD+0x10>
    80004128:	00f53023          	sd	a5,0(a0)
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	434080e7          	jalr	1076(ra) # 80002560 <_ZN6ThreadD1Ev>
    80004134:	00048513          	mv	a0,s1
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	3d8080e7          	jalr	984(ra) # 80002510 <_ZdlPv>
    80004140:	01813083          	ld	ra,24(sp)
    80004144:	01013403          	ld	s0,16(sp)
    80004148:	00813483          	ld	s1,8(sp)
    8000414c:	02010113          	addi	sp,sp,32
    80004150:	00008067          	ret

0000000080004154 <_ZN7WorkerA3runEv>:
    void run() override {
    80004154:	ff010113          	addi	sp,sp,-16
    80004158:	00113423          	sd	ra,8(sp)
    8000415c:	00813023          	sd	s0,0(sp)
    80004160:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004164:	00000593          	li	a1,0
    80004168:	fffff097          	auipc	ra,0xfffff
    8000416c:	774080e7          	jalr	1908(ra) # 800038dc <_ZN7WorkerA11workerBodyAEPv>
    }
    80004170:	00813083          	ld	ra,8(sp)
    80004174:	00013403          	ld	s0,0(sp)
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret

0000000080004180 <_ZN7WorkerB3runEv>:
    void run() override {
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00113423          	sd	ra,8(sp)
    80004188:	00813023          	sd	s0,0(sp)
    8000418c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004190:	00000593          	li	a1,0
    80004194:	00000097          	auipc	ra,0x0
    80004198:	814080e7          	jalr	-2028(ra) # 800039a8 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000419c:	00813083          	ld	ra,8(sp)
    800041a0:	00013403          	ld	s0,0(sp)
    800041a4:	01010113          	addi	sp,sp,16
    800041a8:	00008067          	ret

00000000800041ac <_ZN7WorkerC3runEv>:
    void run() override {
    800041ac:	ff010113          	addi	sp,sp,-16
    800041b0:	00113423          	sd	ra,8(sp)
    800041b4:	00813023          	sd	s0,0(sp)
    800041b8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800041bc:	00000593          	li	a1,0
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	8bc080e7          	jalr	-1860(ra) # 80003a7c <_ZN7WorkerC11workerBodyCEPv>
    }
    800041c8:	00813083          	ld	ra,8(sp)
    800041cc:	00013403          	ld	s0,0(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <_ZN7WorkerD3runEv>:
    void run() override {
    800041d8:	ff010113          	addi	sp,sp,-16
    800041dc:	00113423          	sd	ra,8(sp)
    800041e0:	00813023          	sd	s0,0(sp)
    800041e4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800041e8:	00000593          	li	a1,0
    800041ec:	00000097          	auipc	ra,0x0
    800041f0:	a10080e7          	jalr	-1520(ra) # 80003bfc <_ZN7WorkerD11workerBodyDEPv>
    }
    800041f4:	00813083          	ld	ra,8(sp)
    800041f8:	00013403          	ld	s0,0(sp)
    800041fc:	01010113          	addi	sp,sp,16
    80004200:	00008067          	ret

0000000080004204 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004204:	fe010113          	addi	sp,sp,-32
    80004208:	00113c23          	sd	ra,24(sp)
    8000420c:	00813823          	sd	s0,16(sp)
    80004210:	00913423          	sd	s1,8(sp)
    80004214:	01213023          	sd	s2,0(sp)
    80004218:	02010413          	addi	s0,sp,32
    8000421c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004220:	00100793          	li	a5,1
    80004224:	02a7f863          	bgeu	a5,a0,80004254 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004228:	00a00793          	li	a5,10
    8000422c:	02f577b3          	remu	a5,a0,a5
    80004230:	02078e63          	beqz	a5,8000426c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004234:	fff48513          	addi	a0,s1,-1
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	fcc080e7          	jalr	-52(ra) # 80004204 <_ZL9fibonaccim>
    80004240:	00050913          	mv	s2,a0
    80004244:	ffe48513          	addi	a0,s1,-2
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	fbc080e7          	jalr	-68(ra) # 80004204 <_ZL9fibonaccim>
    80004250:	00a90533          	add	a0,s2,a0
}
    80004254:	01813083          	ld	ra,24(sp)
    80004258:	01013403          	ld	s0,16(sp)
    8000425c:	00813483          	ld	s1,8(sp)
    80004260:	00013903          	ld	s2,0(sp)
    80004264:	02010113          	addi	sp,sp,32
    80004268:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000426c:	ffffd097          	auipc	ra,0xffffd
    80004270:	0b8080e7          	jalr	184(ra) # 80001324 <_Z15thread_dispatchv>
    80004274:	fc1ff06f          	j	80004234 <_ZL9fibonaccim+0x30>

0000000080004278 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004278:	fe010113          	addi	sp,sp,-32
    8000427c:	00113c23          	sd	ra,24(sp)
    80004280:	00813823          	sd	s0,16(sp)
    80004284:	00913423          	sd	s1,8(sp)
    80004288:	01213023          	sd	s2,0(sp)
    8000428c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004290:	00a00493          	li	s1,10
    80004294:	0400006f          	j	800042d4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004298:	00003517          	auipc	a0,0x3
    8000429c:	dc850513          	addi	a0,a0,-568 # 80007060 <CONSOLE_STATUS+0x50>
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	9e0080e7          	jalr	-1568(ra) # 80001c80 <_Z11printStringPKc>
    800042a8:	00000613          	li	a2,0
    800042ac:	00a00593          	li	a1,10
    800042b0:	00048513          	mv	a0,s1
    800042b4:	ffffe097          	auipc	ra,0xffffe
    800042b8:	b7c080e7          	jalr	-1156(ra) # 80001e30 <_Z8printIntiii>
    800042bc:	00003517          	auipc	a0,0x3
    800042c0:	f3c50513          	addi	a0,a0,-196 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	9bc080e7          	jalr	-1604(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800042cc:	0014849b          	addiw	s1,s1,1
    800042d0:	0ff4f493          	andi	s1,s1,255
    800042d4:	00c00793          	li	a5,12
    800042d8:	fc97f0e3          	bgeu	a5,s1,80004298 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800042dc:	00003517          	auipc	a0,0x3
    800042e0:	28c50513          	addi	a0,a0,652 # 80007568 <CONSOLE_STATUS+0x558>
    800042e4:	ffffe097          	auipc	ra,0xffffe
    800042e8:	99c080e7          	jalr	-1636(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800042ec:	00500313          	li	t1,5
    thread_dispatch();
    800042f0:	ffffd097          	auipc	ra,0xffffd
    800042f4:	034080e7          	jalr	52(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800042f8:	01000513          	li	a0,16
    800042fc:	00000097          	auipc	ra,0x0
    80004300:	f08080e7          	jalr	-248(ra) # 80004204 <_ZL9fibonaccim>
    80004304:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004308:	00003517          	auipc	a0,0x3
    8000430c:	d7050513          	addi	a0,a0,-656 # 80007078 <CONSOLE_STATUS+0x68>
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	970080e7          	jalr	-1680(ra) # 80001c80 <_Z11printStringPKc>
    80004318:	00000613          	li	a2,0
    8000431c:	00a00593          	li	a1,10
    80004320:	0009051b          	sext.w	a0,s2
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	b0c080e7          	jalr	-1268(ra) # 80001e30 <_Z8printIntiii>
    8000432c:	00003517          	auipc	a0,0x3
    80004330:	ecc50513          	addi	a0,a0,-308 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004334:	ffffe097          	auipc	ra,0xffffe
    80004338:	94c080e7          	jalr	-1716(ra) # 80001c80 <_Z11printStringPKc>
    8000433c:	0400006f          	j	8000437c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004340:	00003517          	auipc	a0,0x3
    80004344:	d2050513          	addi	a0,a0,-736 # 80007060 <CONSOLE_STATUS+0x50>
    80004348:	ffffe097          	auipc	ra,0xffffe
    8000434c:	938080e7          	jalr	-1736(ra) # 80001c80 <_Z11printStringPKc>
    80004350:	00000613          	li	a2,0
    80004354:	00a00593          	li	a1,10
    80004358:	00048513          	mv	a0,s1
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	ad4080e7          	jalr	-1324(ra) # 80001e30 <_Z8printIntiii>
    80004364:	00003517          	auipc	a0,0x3
    80004368:	e9450513          	addi	a0,a0,-364 # 800071f8 <CONSOLE_STATUS+0x1e8>
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	914080e7          	jalr	-1772(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004374:	0014849b          	addiw	s1,s1,1
    80004378:	0ff4f493          	andi	s1,s1,255
    8000437c:	00f00793          	li	a5,15
    80004380:	fc97f0e3          	bgeu	a5,s1,80004340 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004384:	00003517          	auipc	a0,0x3
    80004388:	1f450513          	addi	a0,a0,500 # 80007578 <CONSOLE_STATUS+0x568>
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	8f4080e7          	jalr	-1804(ra) # 80001c80 <_Z11printStringPKc>
    finishedD = true;
    80004394:	00100793          	li	a5,1
    80004398:	00005717          	auipc	a4,0x5
    8000439c:	9cf70e23          	sb	a5,-1572(a4) # 80008d74 <_ZL9finishedD>
    thread_dispatch();
    800043a0:	ffffd097          	auipc	ra,0xffffd
    800043a4:	f84080e7          	jalr	-124(ra) # 80001324 <_Z15thread_dispatchv>
}
    800043a8:	01813083          	ld	ra,24(sp)
    800043ac:	01013403          	ld	s0,16(sp)
    800043b0:	00813483          	ld	s1,8(sp)
    800043b4:	00013903          	ld	s2,0(sp)
    800043b8:	02010113          	addi	sp,sp,32
    800043bc:	00008067          	ret

00000000800043c0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800043c0:	fe010113          	addi	sp,sp,-32
    800043c4:	00113c23          	sd	ra,24(sp)
    800043c8:	00813823          	sd	s0,16(sp)
    800043cc:	00913423          	sd	s1,8(sp)
    800043d0:	01213023          	sd	s2,0(sp)
    800043d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800043d8:	00000493          	li	s1,0
    800043dc:	0400006f          	j	8000441c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800043e0:	00003517          	auipc	a0,0x3
    800043e4:	c5050513          	addi	a0,a0,-944 # 80007030 <CONSOLE_STATUS+0x20>
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	898080e7          	jalr	-1896(ra) # 80001c80 <_Z11printStringPKc>
    800043f0:	00000613          	li	a2,0
    800043f4:	00a00593          	li	a1,10
    800043f8:	00048513          	mv	a0,s1
    800043fc:	ffffe097          	auipc	ra,0xffffe
    80004400:	a34080e7          	jalr	-1484(ra) # 80001e30 <_Z8printIntiii>
    80004404:	00003517          	auipc	a0,0x3
    80004408:	df450513          	addi	a0,a0,-524 # 800071f8 <CONSOLE_STATUS+0x1e8>
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	874080e7          	jalr	-1932(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004414:	0014849b          	addiw	s1,s1,1
    80004418:	0ff4f493          	andi	s1,s1,255
    8000441c:	00200793          	li	a5,2
    80004420:	fc97f0e3          	bgeu	a5,s1,800043e0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004424:	00003517          	auipc	a0,0x3
    80004428:	12450513          	addi	a0,a0,292 # 80007548 <CONSOLE_STATUS+0x538>
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	854080e7          	jalr	-1964(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004434:	00700313          	li	t1,7
    thread_dispatch();
    80004438:	ffffd097          	auipc	ra,0xffffd
    8000443c:	eec080e7          	jalr	-276(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004440:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004444:	00003517          	auipc	a0,0x3
    80004448:	c0450513          	addi	a0,a0,-1020 # 80007048 <CONSOLE_STATUS+0x38>
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	834080e7          	jalr	-1996(ra) # 80001c80 <_Z11printStringPKc>
    80004454:	00000613          	li	a2,0
    80004458:	00a00593          	li	a1,10
    8000445c:	0009051b          	sext.w	a0,s2
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	9d0080e7          	jalr	-1584(ra) # 80001e30 <_Z8printIntiii>
    80004468:	00003517          	auipc	a0,0x3
    8000446c:	d9050513          	addi	a0,a0,-624 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004470:	ffffe097          	auipc	ra,0xffffe
    80004474:	810080e7          	jalr	-2032(ra) # 80001c80 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004478:	00c00513          	li	a0,12
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	d88080e7          	jalr	-632(ra) # 80004204 <_ZL9fibonaccim>
    80004484:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004488:	00003517          	auipc	a0,0x3
    8000448c:	bc850513          	addi	a0,a0,-1080 # 80007050 <CONSOLE_STATUS+0x40>
    80004490:	ffffd097          	auipc	ra,0xffffd
    80004494:	7f0080e7          	jalr	2032(ra) # 80001c80 <_Z11printStringPKc>
    80004498:	00000613          	li	a2,0
    8000449c:	00a00593          	li	a1,10
    800044a0:	0009051b          	sext.w	a0,s2
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	98c080e7          	jalr	-1652(ra) # 80001e30 <_Z8printIntiii>
    800044ac:	00003517          	auipc	a0,0x3
    800044b0:	d4c50513          	addi	a0,a0,-692 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	7cc080e7          	jalr	1996(ra) # 80001c80 <_Z11printStringPKc>
    800044bc:	0400006f          	j	800044fc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800044c0:	00003517          	auipc	a0,0x3
    800044c4:	b7050513          	addi	a0,a0,-1168 # 80007030 <CONSOLE_STATUS+0x20>
    800044c8:	ffffd097          	auipc	ra,0xffffd
    800044cc:	7b8080e7          	jalr	1976(ra) # 80001c80 <_Z11printStringPKc>
    800044d0:	00000613          	li	a2,0
    800044d4:	00a00593          	li	a1,10
    800044d8:	00048513          	mv	a0,s1
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	954080e7          	jalr	-1708(ra) # 80001e30 <_Z8printIntiii>
    800044e4:	00003517          	auipc	a0,0x3
    800044e8:	d1450513          	addi	a0,a0,-748 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800044ec:	ffffd097          	auipc	ra,0xffffd
    800044f0:	794080e7          	jalr	1940(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800044f4:	0014849b          	addiw	s1,s1,1
    800044f8:	0ff4f493          	andi	s1,s1,255
    800044fc:	00500793          	li	a5,5
    80004500:	fc97f0e3          	bgeu	a5,s1,800044c0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004504:	00003517          	auipc	a0,0x3
    80004508:	02450513          	addi	a0,a0,36 # 80007528 <CONSOLE_STATUS+0x518>
    8000450c:	ffffd097          	auipc	ra,0xffffd
    80004510:	774080e7          	jalr	1908(ra) # 80001c80 <_Z11printStringPKc>
    finishedC = true;
    80004514:	00100793          	li	a5,1
    80004518:	00005717          	auipc	a4,0x5
    8000451c:	84f70ea3          	sb	a5,-1955(a4) # 80008d75 <_ZL9finishedC>
    thread_dispatch();
    80004520:	ffffd097          	auipc	ra,0xffffd
    80004524:	e04080e7          	jalr	-508(ra) # 80001324 <_Z15thread_dispatchv>
}
    80004528:	01813083          	ld	ra,24(sp)
    8000452c:	01013403          	ld	s0,16(sp)
    80004530:	00813483          	ld	s1,8(sp)
    80004534:	00013903          	ld	s2,0(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret

0000000080004540 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	01213023          	sd	s2,0(sp)
    80004554:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004558:	00000913          	li	s2,0
    8000455c:	0380006f          	j	80004594 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004560:	ffffd097          	auipc	ra,0xffffd
    80004564:	dc4080e7          	jalr	-572(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004568:	00148493          	addi	s1,s1,1
    8000456c:	000027b7          	lui	a5,0x2
    80004570:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004574:	0097ee63          	bltu	a5,s1,80004590 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004578:	00000713          	li	a4,0
    8000457c:	000077b7          	lui	a5,0x7
    80004580:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004584:	fce7eee3          	bltu	a5,a4,80004560 <_ZL11workerBodyBPv+0x20>
    80004588:	00170713          	addi	a4,a4,1
    8000458c:	ff1ff06f          	j	8000457c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004590:	00190913          	addi	s2,s2,1
    80004594:	00f00793          	li	a5,15
    80004598:	0527e063          	bltu	a5,s2,800045d8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000459c:	00003517          	auipc	a0,0x3
    800045a0:	a8c50513          	addi	a0,a0,-1396 # 80007028 <CONSOLE_STATUS+0x18>
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	6dc080e7          	jalr	1756(ra) # 80001c80 <_Z11printStringPKc>
    800045ac:	00000613          	li	a2,0
    800045b0:	00a00593          	li	a1,10
    800045b4:	0009051b          	sext.w	a0,s2
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	878080e7          	jalr	-1928(ra) # 80001e30 <_Z8printIntiii>
    800045c0:	00003517          	auipc	a0,0x3
    800045c4:	c3850513          	addi	a0,a0,-968 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800045c8:	ffffd097          	auipc	ra,0xffffd
    800045cc:	6b8080e7          	jalr	1720(ra) # 80001c80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800045d0:	00000493          	li	s1,0
    800045d4:	f99ff06f          	j	8000456c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800045d8:	00003517          	auipc	a0,0x3
    800045dc:	f6050513          	addi	a0,a0,-160 # 80007538 <CONSOLE_STATUS+0x528>
    800045e0:	ffffd097          	auipc	ra,0xffffd
    800045e4:	6a0080e7          	jalr	1696(ra) # 80001c80 <_Z11printStringPKc>
    finishedB = true;
    800045e8:	00100793          	li	a5,1
    800045ec:	00004717          	auipc	a4,0x4
    800045f0:	78f70523          	sb	a5,1930(a4) # 80008d76 <_ZL9finishedB>
    thread_dispatch();
    800045f4:	ffffd097          	auipc	ra,0xffffd
    800045f8:	d30080e7          	jalr	-720(ra) # 80001324 <_Z15thread_dispatchv>
}
    800045fc:	01813083          	ld	ra,24(sp)
    80004600:	01013403          	ld	s0,16(sp)
    80004604:	00813483          	ld	s1,8(sp)
    80004608:	00013903          	ld	s2,0(sp)
    8000460c:	02010113          	addi	sp,sp,32
    80004610:	00008067          	ret

0000000080004614 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004614:	fe010113          	addi	sp,sp,-32
    80004618:	00113c23          	sd	ra,24(sp)
    8000461c:	00813823          	sd	s0,16(sp)
    80004620:	00913423          	sd	s1,8(sp)
    80004624:	01213023          	sd	s2,0(sp)
    80004628:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000462c:	00000913          	li	s2,0
    80004630:	0380006f          	j	80004668 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004634:	ffffd097          	auipc	ra,0xffffd
    80004638:	cf0080e7          	jalr	-784(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000463c:	00148493          	addi	s1,s1,1
    80004640:	000027b7          	lui	a5,0x2
    80004644:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004648:	0097ee63          	bltu	a5,s1,80004664 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000464c:	00000713          	li	a4,0
    80004650:	000077b7          	lui	a5,0x7
    80004654:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004658:	fce7eee3          	bltu	a5,a4,80004634 <_ZL11workerBodyAPv+0x20>
    8000465c:	00170713          	addi	a4,a4,1
    80004660:	ff1ff06f          	j	80004650 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004664:	00190913          	addi	s2,s2,1
    80004668:	00900793          	li	a5,9
    8000466c:	0527e063          	bltu	a5,s2,800046ac <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004670:	00003517          	auipc	a0,0x3
    80004674:	9b050513          	addi	a0,a0,-1616 # 80007020 <CONSOLE_STATUS+0x10>
    80004678:	ffffd097          	auipc	ra,0xffffd
    8000467c:	608080e7          	jalr	1544(ra) # 80001c80 <_Z11printStringPKc>
    80004680:	00000613          	li	a2,0
    80004684:	00a00593          	li	a1,10
    80004688:	0009051b          	sext.w	a0,s2
    8000468c:	ffffd097          	auipc	ra,0xffffd
    80004690:	7a4080e7          	jalr	1956(ra) # 80001e30 <_Z8printIntiii>
    80004694:	00003517          	auipc	a0,0x3
    80004698:	b6450513          	addi	a0,a0,-1180 # 800071f8 <CONSOLE_STATUS+0x1e8>
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	5e4080e7          	jalr	1508(ra) # 80001c80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800046a4:	00000493          	li	s1,0
    800046a8:	f99ff06f          	j	80004640 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800046ac:	00003517          	auipc	a0,0x3
    800046b0:	e7c50513          	addi	a0,a0,-388 # 80007528 <CONSOLE_STATUS+0x518>
    800046b4:	ffffd097          	auipc	ra,0xffffd
    800046b8:	5cc080e7          	jalr	1484(ra) # 80001c80 <_Z11printStringPKc>
    finishedA = true;
    800046bc:	00100793          	li	a5,1
    800046c0:	00004717          	auipc	a4,0x4
    800046c4:	6af70ba3          	sb	a5,1719(a4) # 80008d77 <_ZL9finishedA>
}
    800046c8:	01813083          	ld	ra,24(sp)
    800046cc:	01013403          	ld	s0,16(sp)
    800046d0:	00813483          	ld	s1,8(sp)
    800046d4:	00013903          	ld	s2,0(sp)
    800046d8:	02010113          	addi	sp,sp,32
    800046dc:	00008067          	ret

00000000800046e0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800046e0:	fc010113          	addi	sp,sp,-64
    800046e4:	02113c23          	sd	ra,56(sp)
    800046e8:	02813823          	sd	s0,48(sp)
    800046ec:	02913423          	sd	s1,40(sp)
    800046f0:	03213023          	sd	s2,32(sp)
    800046f4:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800046f8:	00000613          	li	a2,0
    800046fc:	00000597          	auipc	a1,0x0
    80004700:	f1858593          	addi	a1,a1,-232 # 80004614 <_ZL11workerBodyAPv>
    80004704:	fc040513          	addi	a0,s0,-64
    80004708:	ffffd097          	auipc	ra,0xffffd
    8000470c:	ba8080e7          	jalr	-1112(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004710:	00003517          	auipc	a0,0x3
    80004714:	e7850513          	addi	a0,a0,-392 # 80007588 <CONSOLE_STATUS+0x578>
    80004718:	ffffd097          	auipc	ra,0xffffd
    8000471c:	568080e7          	jalr	1384(ra) # 80001c80 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004720:	00000613          	li	a2,0
    80004724:	00000597          	auipc	a1,0x0
    80004728:	e1c58593          	addi	a1,a1,-484 # 80004540 <_ZL11workerBodyBPv>
    8000472c:	fc840513          	addi	a0,s0,-56
    80004730:	ffffd097          	auipc	ra,0xffffd
    80004734:	b80080e7          	jalr	-1152(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004738:	00003517          	auipc	a0,0x3
    8000473c:	e6850513          	addi	a0,a0,-408 # 800075a0 <CONSOLE_STATUS+0x590>
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	540080e7          	jalr	1344(ra) # 80001c80 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004748:	00000613          	li	a2,0
    8000474c:	00000597          	auipc	a1,0x0
    80004750:	c7458593          	addi	a1,a1,-908 # 800043c0 <_ZL11workerBodyCPv>
    80004754:	fd040513          	addi	a0,s0,-48
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	b58080e7          	jalr	-1192(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004760:	00003517          	auipc	a0,0x3
    80004764:	e5850513          	addi	a0,a0,-424 # 800075b8 <CONSOLE_STATUS+0x5a8>
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	518080e7          	jalr	1304(ra) # 80001c80 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004770:	00000613          	li	a2,0
    80004774:	00000597          	auipc	a1,0x0
    80004778:	b0458593          	addi	a1,a1,-1276 # 80004278 <_ZL11workerBodyDPv>
    8000477c:	fd840513          	addi	a0,s0,-40
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	b30080e7          	jalr	-1232(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004788:	00003517          	auipc	a0,0x3
    8000478c:	e4850513          	addi	a0,a0,-440 # 800075d0 <CONSOLE_STATUS+0x5c0>
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	4f0080e7          	jalr	1264(ra) # 80001c80 <_Z11printStringPKc>
    80004798:	00c0006f          	j	800047a4 <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	b88080e7          	jalr	-1144(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800047a4:	00004797          	auipc	a5,0x4
    800047a8:	5d37c783          	lbu	a5,1491(a5) # 80008d77 <_ZL9finishedA>
    800047ac:	fe0788e3          	beqz	a5,8000479c <_Z18Threads_C_API_testv+0xbc>
    800047b0:	00004797          	auipc	a5,0x4
    800047b4:	5c67c783          	lbu	a5,1478(a5) # 80008d76 <_ZL9finishedB>
    800047b8:	fe0782e3          	beqz	a5,8000479c <_Z18Threads_C_API_testv+0xbc>
    800047bc:	00004797          	auipc	a5,0x4
    800047c0:	5b97c783          	lbu	a5,1465(a5) # 80008d75 <_ZL9finishedC>
    800047c4:	fc078ce3          	beqz	a5,8000479c <_Z18Threads_C_API_testv+0xbc>
    800047c8:	00004797          	auipc	a5,0x4
    800047cc:	5ac7c783          	lbu	a5,1452(a5) # 80008d74 <_ZL9finishedD>
    800047d0:	fc0786e3          	beqz	a5,8000479c <_Z18Threads_C_API_testv+0xbc>
    800047d4:	00000493          	li	s1,0
    800047d8:	0140006f          	j	800047ec <_Z18Threads_C_API_testv+0x10c>
    }

    for(int i = 0; i < 4; i++) delete threads[i];
    800047dc:	00090513          	mv	a0,s2
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	d30080e7          	jalr	-720(ra) # 80002510 <_ZdlPv>
    800047e8:	0014849b          	addiw	s1,s1,1
    800047ec:	00300793          	li	a5,3
    800047f0:	0297c663          	blt	a5,s1,8000481c <_Z18Threads_C_API_testv+0x13c>
    800047f4:	00349793          	slli	a5,s1,0x3
    800047f8:	fe040713          	addi	a4,s0,-32
    800047fc:	00f707b3          	add	a5,a4,a5
    80004800:	fe07b903          	ld	s2,-32(a5)
    80004804:	fe0902e3          	beqz	s2,800047e8 <_Z18Threads_C_API_testv+0x108>
#include "../h/scheduler.hpp"
#include "../h/mySemaphore.hpp"

class TCB {
public:
    ~TCB(){ delete[] stack; }
    80004808:	01093503          	ld	a0,16(s2)
    8000480c:	fc0508e3          	beqz	a0,800047dc <_Z18Threads_C_API_testv+0xfc>
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	d28080e7          	jalr	-728(ra) # 80002538 <_ZdaPv>
    80004818:	fc5ff06f          	j	800047dc <_Z18Threads_C_API_testv+0xfc>

}
    8000481c:	03813083          	ld	ra,56(sp)
    80004820:	03013403          	ld	s0,48(sp)
    80004824:	02813483          	ld	s1,40(sp)
    80004828:	02013903          	ld	s2,32(sp)
    8000482c:	04010113          	addi	sp,sp,64
    80004830:	00008067          	ret

0000000080004834 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004834:	fe010113          	addi	sp,sp,-32
    80004838:	00113c23          	sd	ra,24(sp)
    8000483c:	00813823          	sd	s0,16(sp)
    80004840:	00913423          	sd	s1,8(sp)
    80004844:	01213023          	sd	s2,0(sp)
    80004848:	02010413          	addi	s0,sp,32
    8000484c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004850:	00100793          	li	a5,1
    80004854:	02a7f863          	bgeu	a5,a0,80004884 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004858:	00a00793          	li	a5,10
    8000485c:	02f577b3          	remu	a5,a0,a5
    80004860:	02078e63          	beqz	a5,8000489c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004864:	fff48513          	addi	a0,s1,-1
    80004868:	00000097          	auipc	ra,0x0
    8000486c:	fcc080e7          	jalr	-52(ra) # 80004834 <_ZL9fibonaccim>
    80004870:	00050913          	mv	s2,a0
    80004874:	ffe48513          	addi	a0,s1,-2
    80004878:	00000097          	auipc	ra,0x0
    8000487c:	fbc080e7          	jalr	-68(ra) # 80004834 <_ZL9fibonaccim>
    80004880:	00a90533          	add	a0,s2,a0
}
    80004884:	01813083          	ld	ra,24(sp)
    80004888:	01013403          	ld	s0,16(sp)
    8000488c:	00813483          	ld	s1,8(sp)
    80004890:	00013903          	ld	s2,0(sp)
    80004894:	02010113          	addi	sp,sp,32
    80004898:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	a88080e7          	jalr	-1400(ra) # 80001324 <_Z15thread_dispatchv>
    800048a4:	fc1ff06f          	j	80004864 <_ZL9fibonaccim+0x30>

00000000800048a8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800048a8:	fe010113          	addi	sp,sp,-32
    800048ac:	00113c23          	sd	ra,24(sp)
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00913423          	sd	s1,8(sp)
    800048b8:	01213023          	sd	s2,0(sp)
    800048bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800048c0:	00a00493          	li	s1,10
    800048c4:	0400006f          	j	80004904 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800048c8:	00002517          	auipc	a0,0x2
    800048cc:	79850513          	addi	a0,a0,1944 # 80007060 <CONSOLE_STATUS+0x50>
    800048d0:	ffffd097          	auipc	ra,0xffffd
    800048d4:	3b0080e7          	jalr	944(ra) # 80001c80 <_Z11printStringPKc>
    800048d8:	00000613          	li	a2,0
    800048dc:	00a00593          	li	a1,10
    800048e0:	00048513          	mv	a0,s1
    800048e4:	ffffd097          	auipc	ra,0xffffd
    800048e8:	54c080e7          	jalr	1356(ra) # 80001e30 <_Z8printIntiii>
    800048ec:	00003517          	auipc	a0,0x3
    800048f0:	90c50513          	addi	a0,a0,-1780 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800048f4:	ffffd097          	auipc	ra,0xffffd
    800048f8:	38c080e7          	jalr	908(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800048fc:	0014849b          	addiw	s1,s1,1
    80004900:	0ff4f493          	andi	s1,s1,255
    80004904:	00c00793          	li	a5,12
    80004908:	fc97f0e3          	bgeu	a5,s1,800048c8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000490c:	00003517          	auipc	a0,0x3
    80004910:	c5c50513          	addi	a0,a0,-932 # 80007568 <CONSOLE_STATUS+0x558>
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	36c080e7          	jalr	876(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000491c:	00500313          	li	t1,5
    thread_dispatch();
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	a04080e7          	jalr	-1532(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004928:	01000513          	li	a0,16
    8000492c:	00000097          	auipc	ra,0x0
    80004930:	f08080e7          	jalr	-248(ra) # 80004834 <_ZL9fibonaccim>
    80004934:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004938:	00002517          	auipc	a0,0x2
    8000493c:	74050513          	addi	a0,a0,1856 # 80007078 <CONSOLE_STATUS+0x68>
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	340080e7          	jalr	832(ra) # 80001c80 <_Z11printStringPKc>
    80004948:	00000613          	li	a2,0
    8000494c:	00a00593          	li	a1,10
    80004950:	0009051b          	sext.w	a0,s2
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	4dc080e7          	jalr	1244(ra) # 80001e30 <_Z8printIntiii>
    8000495c:	00003517          	auipc	a0,0x3
    80004960:	89c50513          	addi	a0,a0,-1892 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	31c080e7          	jalr	796(ra) # 80001c80 <_Z11printStringPKc>
    8000496c:	0400006f          	j	800049ac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004970:	00002517          	auipc	a0,0x2
    80004974:	6f050513          	addi	a0,a0,1776 # 80007060 <CONSOLE_STATUS+0x50>
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	308080e7          	jalr	776(ra) # 80001c80 <_Z11printStringPKc>
    80004980:	00000613          	li	a2,0
    80004984:	00a00593          	li	a1,10
    80004988:	00048513          	mv	a0,s1
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	4a4080e7          	jalr	1188(ra) # 80001e30 <_Z8printIntiii>
    80004994:	00003517          	auipc	a0,0x3
    80004998:	86450513          	addi	a0,a0,-1948 # 800071f8 <CONSOLE_STATUS+0x1e8>
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	2e4080e7          	jalr	740(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800049a4:	0014849b          	addiw	s1,s1,1
    800049a8:	0ff4f493          	andi	s1,s1,255
    800049ac:	00f00793          	li	a5,15
    800049b0:	fc97f0e3          	bgeu	a5,s1,80004970 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800049b4:	00003517          	auipc	a0,0x3
    800049b8:	bc450513          	addi	a0,a0,-1084 # 80007578 <CONSOLE_STATUS+0x568>
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	2c4080e7          	jalr	708(ra) # 80001c80 <_Z11printStringPKc>
    finishedD = true;
    800049c4:	00100793          	li	a5,1
    800049c8:	00004717          	auipc	a4,0x4
    800049cc:	3af70823          	sb	a5,944(a4) # 80008d78 <_ZL9finishedD>
    thread_dispatch();
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	954080e7          	jalr	-1708(ra) # 80001324 <_Z15thread_dispatchv>
}
    800049d8:	01813083          	ld	ra,24(sp)
    800049dc:	01013403          	ld	s0,16(sp)
    800049e0:	00813483          	ld	s1,8(sp)
    800049e4:	00013903          	ld	s2,0(sp)
    800049e8:	02010113          	addi	sp,sp,32
    800049ec:	00008067          	ret

00000000800049f0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800049f0:	fe010113          	addi	sp,sp,-32
    800049f4:	00113c23          	sd	ra,24(sp)
    800049f8:	00813823          	sd	s0,16(sp)
    800049fc:	00913423          	sd	s1,8(sp)
    80004a00:	01213023          	sd	s2,0(sp)
    80004a04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004a08:	00000493          	li	s1,0
    80004a0c:	0400006f          	j	80004a4c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004a10:	00002517          	auipc	a0,0x2
    80004a14:	62050513          	addi	a0,a0,1568 # 80007030 <CONSOLE_STATUS+0x20>
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	268080e7          	jalr	616(ra) # 80001c80 <_Z11printStringPKc>
    80004a20:	00000613          	li	a2,0
    80004a24:	00a00593          	li	a1,10
    80004a28:	00048513          	mv	a0,s1
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	404080e7          	jalr	1028(ra) # 80001e30 <_Z8printIntiii>
    80004a34:	00002517          	auipc	a0,0x2
    80004a38:	7c450513          	addi	a0,a0,1988 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004a3c:	ffffd097          	auipc	ra,0xffffd
    80004a40:	244080e7          	jalr	580(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004a44:	0014849b          	addiw	s1,s1,1
    80004a48:	0ff4f493          	andi	s1,s1,255
    80004a4c:	00200793          	li	a5,2
    80004a50:	fc97f0e3          	bgeu	a5,s1,80004a10 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004a54:	00003517          	auipc	a0,0x3
    80004a58:	af450513          	addi	a0,a0,-1292 # 80007548 <CONSOLE_STATUS+0x538>
    80004a5c:	ffffd097          	auipc	ra,0xffffd
    80004a60:	224080e7          	jalr	548(ra) # 80001c80 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004a64:	00700313          	li	t1,7
    thread_dispatch();
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	8bc080e7          	jalr	-1860(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004a70:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004a74:	00002517          	auipc	a0,0x2
    80004a78:	5d450513          	addi	a0,a0,1492 # 80007048 <CONSOLE_STATUS+0x38>
    80004a7c:	ffffd097          	auipc	ra,0xffffd
    80004a80:	204080e7          	jalr	516(ra) # 80001c80 <_Z11printStringPKc>
    80004a84:	00000613          	li	a2,0
    80004a88:	00a00593          	li	a1,10
    80004a8c:	0009051b          	sext.w	a0,s2
    80004a90:	ffffd097          	auipc	ra,0xffffd
    80004a94:	3a0080e7          	jalr	928(ra) # 80001e30 <_Z8printIntiii>
    80004a98:	00002517          	auipc	a0,0x2
    80004a9c:	76050513          	addi	a0,a0,1888 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	1e0080e7          	jalr	480(ra) # 80001c80 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004aa8:	00c00513          	li	a0,12
    80004aac:	00000097          	auipc	ra,0x0
    80004ab0:	d88080e7          	jalr	-632(ra) # 80004834 <_ZL9fibonaccim>
    80004ab4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004ab8:	00002517          	auipc	a0,0x2
    80004abc:	59850513          	addi	a0,a0,1432 # 80007050 <CONSOLE_STATUS+0x40>
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	1c0080e7          	jalr	448(ra) # 80001c80 <_Z11printStringPKc>
    80004ac8:	00000613          	li	a2,0
    80004acc:	00a00593          	li	a1,10
    80004ad0:	0009051b          	sext.w	a0,s2
    80004ad4:	ffffd097          	auipc	ra,0xffffd
    80004ad8:	35c080e7          	jalr	860(ra) # 80001e30 <_Z8printIntiii>
    80004adc:	00002517          	auipc	a0,0x2
    80004ae0:	71c50513          	addi	a0,a0,1820 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004ae4:	ffffd097          	auipc	ra,0xffffd
    80004ae8:	19c080e7          	jalr	412(ra) # 80001c80 <_Z11printStringPKc>
    80004aec:	0400006f          	j	80004b2c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004af0:	00002517          	auipc	a0,0x2
    80004af4:	54050513          	addi	a0,a0,1344 # 80007030 <CONSOLE_STATUS+0x20>
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	188080e7          	jalr	392(ra) # 80001c80 <_Z11printStringPKc>
    80004b00:	00000613          	li	a2,0
    80004b04:	00a00593          	li	a1,10
    80004b08:	00048513          	mv	a0,s1
    80004b0c:	ffffd097          	auipc	ra,0xffffd
    80004b10:	324080e7          	jalr	804(ra) # 80001e30 <_Z8printIntiii>
    80004b14:	00002517          	auipc	a0,0x2
    80004b18:	6e450513          	addi	a0,a0,1764 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	164080e7          	jalr	356(ra) # 80001c80 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004b24:	0014849b          	addiw	s1,s1,1
    80004b28:	0ff4f493          	andi	s1,s1,255
    80004b2c:	00500793          	li	a5,5
    80004b30:	fc97f0e3          	bgeu	a5,s1,80004af0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004b34:	00003517          	auipc	a0,0x3
    80004b38:	9f450513          	addi	a0,a0,-1548 # 80007528 <CONSOLE_STATUS+0x518>
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	144080e7          	jalr	324(ra) # 80001c80 <_Z11printStringPKc>
    finishedC = true;
    80004b44:	00100793          	li	a5,1
    80004b48:	00004717          	auipc	a4,0x4
    80004b4c:	22f708a3          	sb	a5,561(a4) # 80008d79 <_ZL9finishedC>
    thread_dispatch();
    80004b50:	ffffc097          	auipc	ra,0xffffc
    80004b54:	7d4080e7          	jalr	2004(ra) # 80001324 <_Z15thread_dispatchv>
}
    80004b58:	01813083          	ld	ra,24(sp)
    80004b5c:	01013403          	ld	s0,16(sp)
    80004b60:	00813483          	ld	s1,8(sp)
    80004b64:	00013903          	ld	s2,0(sp)
    80004b68:	02010113          	addi	sp,sp,32
    80004b6c:	00008067          	ret

0000000080004b70 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004b70:	fe010113          	addi	sp,sp,-32
    80004b74:	00113c23          	sd	ra,24(sp)
    80004b78:	00813823          	sd	s0,16(sp)
    80004b7c:	00913423          	sd	s1,8(sp)
    80004b80:	01213023          	sd	s2,0(sp)
    80004b84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004b88:	00000913          	li	s2,0
    80004b8c:	0400006f          	j	80004bcc <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	794080e7          	jalr	1940(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004b98:	00148493          	addi	s1,s1,1
    80004b9c:	000027b7          	lui	a5,0x2
    80004ba0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ba4:	0097ee63          	bltu	a5,s1,80004bc0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ba8:	00000713          	li	a4,0
    80004bac:	000077b7          	lui	a5,0x7
    80004bb0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004bb4:	fce7eee3          	bltu	a5,a4,80004b90 <_ZL11workerBodyBPv+0x20>
    80004bb8:	00170713          	addi	a4,a4,1
    80004bbc:	ff1ff06f          	j	80004bac <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80004bc0:	00a00793          	li	a5,10
    80004bc4:	04f90663          	beq	s2,a5,80004c10 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80004bc8:	00190913          	addi	s2,s2,1
    80004bcc:	00f00793          	li	a5,15
    80004bd0:	0527e463          	bltu	a5,s2,80004c18 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80004bd4:	00002517          	auipc	a0,0x2
    80004bd8:	45450513          	addi	a0,a0,1108 # 80007028 <CONSOLE_STATUS+0x18>
    80004bdc:	ffffd097          	auipc	ra,0xffffd
    80004be0:	0a4080e7          	jalr	164(ra) # 80001c80 <_Z11printStringPKc>
    80004be4:	00000613          	li	a2,0
    80004be8:	00a00593          	li	a1,10
    80004bec:	0009051b          	sext.w	a0,s2
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	240080e7          	jalr	576(ra) # 80001e30 <_Z8printIntiii>
    80004bf8:	00002517          	auipc	a0,0x2
    80004bfc:	60050513          	addi	a0,a0,1536 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004c00:	ffffd097          	auipc	ra,0xffffd
    80004c04:	080080e7          	jalr	128(ra) # 80001c80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c08:	00000493          	li	s1,0
    80004c0c:	f91ff06f          	j	80004b9c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80004c10:	14102ff3          	csrr	t6,sepc
    80004c14:	fb5ff06f          	j	80004bc8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80004c18:	00003517          	auipc	a0,0x3
    80004c1c:	92050513          	addi	a0,a0,-1760 # 80007538 <CONSOLE_STATUS+0x528>
    80004c20:	ffffd097          	auipc	ra,0xffffd
    80004c24:	060080e7          	jalr	96(ra) # 80001c80 <_Z11printStringPKc>
    finishedB = true;
    80004c28:	00100793          	li	a5,1
    80004c2c:	00004717          	auipc	a4,0x4
    80004c30:	14f70723          	sb	a5,334(a4) # 80008d7a <_ZL9finishedB>
    thread_dispatch();
    80004c34:	ffffc097          	auipc	ra,0xffffc
    80004c38:	6f0080e7          	jalr	1776(ra) # 80001324 <_Z15thread_dispatchv>
}
    80004c3c:	01813083          	ld	ra,24(sp)
    80004c40:	01013403          	ld	s0,16(sp)
    80004c44:	00813483          	ld	s1,8(sp)
    80004c48:	00013903          	ld	s2,0(sp)
    80004c4c:	02010113          	addi	sp,sp,32
    80004c50:	00008067          	ret

0000000080004c54 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004c54:	fe010113          	addi	sp,sp,-32
    80004c58:	00113c23          	sd	ra,24(sp)
    80004c5c:	00813823          	sd	s0,16(sp)
    80004c60:	00913423          	sd	s1,8(sp)
    80004c64:	01213023          	sd	s2,0(sp)
    80004c68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004c6c:	00000913          	li	s2,0
    80004c70:	0380006f          	j	80004ca8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004c74:	ffffc097          	auipc	ra,0xffffc
    80004c78:	6b0080e7          	jalr	1712(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c7c:	00148493          	addi	s1,s1,1
    80004c80:	000027b7          	lui	a5,0x2
    80004c84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c88:	0097ee63          	bltu	a5,s1,80004ca4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c8c:	00000713          	li	a4,0
    80004c90:	000077b7          	lui	a5,0x7
    80004c94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c98:	fce7eee3          	bltu	a5,a4,80004c74 <_ZL11workerBodyAPv+0x20>
    80004c9c:	00170713          	addi	a4,a4,1
    80004ca0:	ff1ff06f          	j	80004c90 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ca4:	00190913          	addi	s2,s2,1
    80004ca8:	00900793          	li	a5,9
    80004cac:	0527e063          	bltu	a5,s2,80004cec <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004cb0:	00002517          	auipc	a0,0x2
    80004cb4:	37050513          	addi	a0,a0,880 # 80007020 <CONSOLE_STATUS+0x10>
    80004cb8:	ffffd097          	auipc	ra,0xffffd
    80004cbc:	fc8080e7          	jalr	-56(ra) # 80001c80 <_Z11printStringPKc>
    80004cc0:	00000613          	li	a2,0
    80004cc4:	00a00593          	li	a1,10
    80004cc8:	0009051b          	sext.w	a0,s2
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	164080e7          	jalr	356(ra) # 80001e30 <_Z8printIntiii>
    80004cd4:	00002517          	auipc	a0,0x2
    80004cd8:	52450513          	addi	a0,a0,1316 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80004cdc:	ffffd097          	auipc	ra,0xffffd
    80004ce0:	fa4080e7          	jalr	-92(ra) # 80001c80 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ce4:	00000493          	li	s1,0
    80004ce8:	f99ff06f          	j	80004c80 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004cec:	00003517          	auipc	a0,0x3
    80004cf0:	83c50513          	addi	a0,a0,-1988 # 80007528 <CONSOLE_STATUS+0x518>
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	f8c080e7          	jalr	-116(ra) # 80001c80 <_Z11printStringPKc>
    finishedA = true;
    80004cfc:	00100793          	li	a5,1
    80004d00:	00004717          	auipc	a4,0x4
    80004d04:	06f70da3          	sb	a5,123(a4) # 80008d7b <_ZL9finishedA>
}
    80004d08:	01813083          	ld	ra,24(sp)
    80004d0c:	01013403          	ld	s0,16(sp)
    80004d10:	00813483          	ld	s1,8(sp)
    80004d14:	00013903          	ld	s2,0(sp)
    80004d18:	02010113          	addi	sp,sp,32
    80004d1c:	00008067          	ret

0000000080004d20 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80004d20:	fd010113          	addi	sp,sp,-48
    80004d24:	02113423          	sd	ra,40(sp)
    80004d28:	02813023          	sd	s0,32(sp)
    80004d2c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004d30:	00000613          	li	a2,0
    80004d34:	00000597          	auipc	a1,0x0
    80004d38:	f2058593          	addi	a1,a1,-224 # 80004c54 <_ZL11workerBodyAPv>
    80004d3c:	fd040513          	addi	a0,s0,-48
    80004d40:	ffffc097          	auipc	ra,0xffffc
    80004d44:	570080e7          	jalr	1392(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004d48:	00003517          	auipc	a0,0x3
    80004d4c:	84050513          	addi	a0,a0,-1984 # 80007588 <CONSOLE_STATUS+0x578>
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	f30080e7          	jalr	-208(ra) # 80001c80 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004d58:	00000613          	li	a2,0
    80004d5c:	00000597          	auipc	a1,0x0
    80004d60:	e1458593          	addi	a1,a1,-492 # 80004b70 <_ZL11workerBodyBPv>
    80004d64:	fd840513          	addi	a0,s0,-40
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	548080e7          	jalr	1352(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004d70:	00003517          	auipc	a0,0x3
    80004d74:	83050513          	addi	a0,a0,-2000 # 800075a0 <CONSOLE_STATUS+0x590>
    80004d78:	ffffd097          	auipc	ra,0xffffd
    80004d7c:	f08080e7          	jalr	-248(ra) # 80001c80 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004d80:	00000613          	li	a2,0
    80004d84:	00000597          	auipc	a1,0x0
    80004d88:	c6c58593          	addi	a1,a1,-916 # 800049f0 <_ZL11workerBodyCPv>
    80004d8c:	fe040513          	addi	a0,s0,-32
    80004d90:	ffffc097          	auipc	ra,0xffffc
    80004d94:	520080e7          	jalr	1312(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004d98:	00003517          	auipc	a0,0x3
    80004d9c:	82050513          	addi	a0,a0,-2016 # 800075b8 <CONSOLE_STATUS+0x5a8>
    80004da0:	ffffd097          	auipc	ra,0xffffd
    80004da4:	ee0080e7          	jalr	-288(ra) # 80001c80 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004da8:	00000613          	li	a2,0
    80004dac:	00000597          	auipc	a1,0x0
    80004db0:	afc58593          	addi	a1,a1,-1284 # 800048a8 <_ZL11workerBodyDPv>
    80004db4:	fe840513          	addi	a0,s0,-24
    80004db8:	ffffc097          	auipc	ra,0xffffc
    80004dbc:	4f8080e7          	jalr	1272(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004dc0:	00003517          	auipc	a0,0x3
    80004dc4:	81050513          	addi	a0,a0,-2032 # 800075d0 <CONSOLE_STATUS+0x5c0>
    80004dc8:	ffffd097          	auipc	ra,0xffffd
    80004dcc:	eb8080e7          	jalr	-328(ra) # 80001c80 <_Z11printStringPKc>
    80004dd0:	00c0006f          	j	80004ddc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	550080e7          	jalr	1360(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ddc:	00004797          	auipc	a5,0x4
    80004de0:	f9f7c783          	lbu	a5,-97(a5) # 80008d7b <_ZL9finishedA>
    80004de4:	fe0788e3          	beqz	a5,80004dd4 <_Z16System_Mode_testv+0xb4>
    80004de8:	00004797          	auipc	a5,0x4
    80004dec:	f927c783          	lbu	a5,-110(a5) # 80008d7a <_ZL9finishedB>
    80004df0:	fe0782e3          	beqz	a5,80004dd4 <_Z16System_Mode_testv+0xb4>
    80004df4:	00004797          	auipc	a5,0x4
    80004df8:	f857c783          	lbu	a5,-123(a5) # 80008d79 <_ZL9finishedC>
    80004dfc:	fc078ce3          	beqz	a5,80004dd4 <_Z16System_Mode_testv+0xb4>
    80004e00:	00004797          	auipc	a5,0x4
    80004e04:	f787c783          	lbu	a5,-136(a5) # 80008d78 <_ZL9finishedD>
    80004e08:	fc0786e3          	beqz	a5,80004dd4 <_Z16System_Mode_testv+0xb4>
    }

}
    80004e0c:	02813083          	ld	ra,40(sp)
    80004e10:	02013403          	ld	s0,32(sp)
    80004e14:	03010113          	addi	sp,sp,48
    80004e18:	00008067          	ret

0000000080004e1c <start>:
    80004e1c:	ff010113          	addi	sp,sp,-16
    80004e20:	00813423          	sd	s0,8(sp)
    80004e24:	01010413          	addi	s0,sp,16
    80004e28:	300027f3          	csrr	a5,mstatus
    80004e2c:	ffffe737          	lui	a4,0xffffe
    80004e30:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff481f>
    80004e34:	00e7f7b3          	and	a5,a5,a4
    80004e38:	00001737          	lui	a4,0x1
    80004e3c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004e40:	00e7e7b3          	or	a5,a5,a4
    80004e44:	30079073          	csrw	mstatus,a5
    80004e48:	00000797          	auipc	a5,0x0
    80004e4c:	16078793          	addi	a5,a5,352 # 80004fa8 <system_main>
    80004e50:	34179073          	csrw	mepc,a5
    80004e54:	00000793          	li	a5,0
    80004e58:	18079073          	csrw	satp,a5
    80004e5c:	000107b7          	lui	a5,0x10
    80004e60:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004e64:	30279073          	csrw	medeleg,a5
    80004e68:	30379073          	csrw	mideleg,a5
    80004e6c:	104027f3          	csrr	a5,sie
    80004e70:	2227e793          	ori	a5,a5,546
    80004e74:	10479073          	csrw	sie,a5
    80004e78:	fff00793          	li	a5,-1
    80004e7c:	00a7d793          	srli	a5,a5,0xa
    80004e80:	3b079073          	csrw	pmpaddr0,a5
    80004e84:	00f00793          	li	a5,15
    80004e88:	3a079073          	csrw	pmpcfg0,a5
    80004e8c:	f14027f3          	csrr	a5,mhartid
    80004e90:	0200c737          	lui	a4,0x200c
    80004e94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004e98:	0007869b          	sext.w	a3,a5
    80004e9c:	00269713          	slli	a4,a3,0x2
    80004ea0:	000f4637          	lui	a2,0xf4
    80004ea4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004ea8:	00d70733          	add	a4,a4,a3
    80004eac:	0037979b          	slliw	a5,a5,0x3
    80004eb0:	020046b7          	lui	a3,0x2004
    80004eb4:	00d787b3          	add	a5,a5,a3
    80004eb8:	00c585b3          	add	a1,a1,a2
    80004ebc:	00371693          	slli	a3,a4,0x3
    80004ec0:	00004717          	auipc	a4,0x4
    80004ec4:	ec070713          	addi	a4,a4,-320 # 80008d80 <timer_scratch>
    80004ec8:	00b7b023          	sd	a1,0(a5)
    80004ecc:	00d70733          	add	a4,a4,a3
    80004ed0:	00f73c23          	sd	a5,24(a4)
    80004ed4:	02c73023          	sd	a2,32(a4)
    80004ed8:	34071073          	csrw	mscratch,a4
    80004edc:	00000797          	auipc	a5,0x0
    80004ee0:	6e478793          	addi	a5,a5,1764 # 800055c0 <timervec>
    80004ee4:	30579073          	csrw	mtvec,a5
    80004ee8:	300027f3          	csrr	a5,mstatus
    80004eec:	0087e793          	ori	a5,a5,8
    80004ef0:	30079073          	csrw	mstatus,a5
    80004ef4:	304027f3          	csrr	a5,mie
    80004ef8:	0807e793          	ori	a5,a5,128
    80004efc:	30479073          	csrw	mie,a5
    80004f00:	f14027f3          	csrr	a5,mhartid
    80004f04:	0007879b          	sext.w	a5,a5
    80004f08:	00078213          	mv	tp,a5
    80004f0c:	30200073          	mret
    80004f10:	00813403          	ld	s0,8(sp)
    80004f14:	01010113          	addi	sp,sp,16
    80004f18:	00008067          	ret

0000000080004f1c <timerinit>:
    80004f1c:	ff010113          	addi	sp,sp,-16
    80004f20:	00813423          	sd	s0,8(sp)
    80004f24:	01010413          	addi	s0,sp,16
    80004f28:	f14027f3          	csrr	a5,mhartid
    80004f2c:	0200c737          	lui	a4,0x200c
    80004f30:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004f34:	0007869b          	sext.w	a3,a5
    80004f38:	00269713          	slli	a4,a3,0x2
    80004f3c:	000f4637          	lui	a2,0xf4
    80004f40:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004f44:	00d70733          	add	a4,a4,a3
    80004f48:	0037979b          	slliw	a5,a5,0x3
    80004f4c:	020046b7          	lui	a3,0x2004
    80004f50:	00d787b3          	add	a5,a5,a3
    80004f54:	00c585b3          	add	a1,a1,a2
    80004f58:	00371693          	slli	a3,a4,0x3
    80004f5c:	00004717          	auipc	a4,0x4
    80004f60:	e2470713          	addi	a4,a4,-476 # 80008d80 <timer_scratch>
    80004f64:	00b7b023          	sd	a1,0(a5)
    80004f68:	00d70733          	add	a4,a4,a3
    80004f6c:	00f73c23          	sd	a5,24(a4)
    80004f70:	02c73023          	sd	a2,32(a4)
    80004f74:	34071073          	csrw	mscratch,a4
    80004f78:	00000797          	auipc	a5,0x0
    80004f7c:	64878793          	addi	a5,a5,1608 # 800055c0 <timervec>
    80004f80:	30579073          	csrw	mtvec,a5
    80004f84:	300027f3          	csrr	a5,mstatus
    80004f88:	0087e793          	ori	a5,a5,8
    80004f8c:	30079073          	csrw	mstatus,a5
    80004f90:	304027f3          	csrr	a5,mie
    80004f94:	0807e793          	ori	a5,a5,128
    80004f98:	30479073          	csrw	mie,a5
    80004f9c:	00813403          	ld	s0,8(sp)
    80004fa0:	01010113          	addi	sp,sp,16
    80004fa4:	00008067          	ret

0000000080004fa8 <system_main>:
    80004fa8:	fe010113          	addi	sp,sp,-32
    80004fac:	00813823          	sd	s0,16(sp)
    80004fb0:	00913423          	sd	s1,8(sp)
    80004fb4:	00113c23          	sd	ra,24(sp)
    80004fb8:	02010413          	addi	s0,sp,32
    80004fbc:	00000097          	auipc	ra,0x0
    80004fc0:	0c4080e7          	jalr	196(ra) # 80005080 <cpuid>
    80004fc4:	00004497          	auipc	s1,0x4
    80004fc8:	d2c48493          	addi	s1,s1,-724 # 80008cf0 <started>
    80004fcc:	02050263          	beqz	a0,80004ff0 <system_main+0x48>
    80004fd0:	0004a783          	lw	a5,0(s1)
    80004fd4:	0007879b          	sext.w	a5,a5
    80004fd8:	fe078ce3          	beqz	a5,80004fd0 <system_main+0x28>
    80004fdc:	0ff0000f          	fence
    80004fe0:	00002517          	auipc	a0,0x2
    80004fe4:	63850513          	addi	a0,a0,1592 # 80007618 <CONSOLE_STATUS+0x608>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	a74080e7          	jalr	-1420(ra) # 80005a5c <panic>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	9c8080e7          	jalr	-1592(ra) # 800059b8 <consoleinit>
    80004ff8:	00001097          	auipc	ra,0x1
    80004ffc:	154080e7          	jalr	340(ra) # 8000614c <printfinit>
    80005000:	00002517          	auipc	a0,0x2
    80005004:	1f850513          	addi	a0,a0,504 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80005008:	00001097          	auipc	ra,0x1
    8000500c:	ab0080e7          	jalr	-1360(ra) # 80005ab8 <__printf>
    80005010:	00002517          	auipc	a0,0x2
    80005014:	5d850513          	addi	a0,a0,1496 # 800075e8 <CONSOLE_STATUS+0x5d8>
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	aa0080e7          	jalr	-1376(ra) # 80005ab8 <__printf>
    80005020:	00002517          	auipc	a0,0x2
    80005024:	1d850513          	addi	a0,a0,472 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80005028:	00001097          	auipc	ra,0x1
    8000502c:	a90080e7          	jalr	-1392(ra) # 80005ab8 <__printf>
    80005030:	00001097          	auipc	ra,0x1
    80005034:	4a8080e7          	jalr	1192(ra) # 800064d8 <kinit>
    80005038:	00000097          	auipc	ra,0x0
    8000503c:	148080e7          	jalr	328(ra) # 80005180 <trapinit>
    80005040:	00000097          	auipc	ra,0x0
    80005044:	16c080e7          	jalr	364(ra) # 800051ac <trapinithart>
    80005048:	00000097          	auipc	ra,0x0
    8000504c:	5b8080e7          	jalr	1464(ra) # 80005600 <plicinit>
    80005050:	00000097          	auipc	ra,0x0
    80005054:	5d8080e7          	jalr	1496(ra) # 80005628 <plicinithart>
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	078080e7          	jalr	120(ra) # 800050d0 <userinit>
    80005060:	0ff0000f          	fence
    80005064:	00100793          	li	a5,1
    80005068:	00002517          	auipc	a0,0x2
    8000506c:	59850513          	addi	a0,a0,1432 # 80007600 <CONSOLE_STATUS+0x5f0>
    80005070:	00f4a023          	sw	a5,0(s1)
    80005074:	00001097          	auipc	ra,0x1
    80005078:	a44080e7          	jalr	-1468(ra) # 80005ab8 <__printf>
    8000507c:	0000006f          	j	8000507c <system_main+0xd4>

0000000080005080 <cpuid>:
    80005080:	ff010113          	addi	sp,sp,-16
    80005084:	00813423          	sd	s0,8(sp)
    80005088:	01010413          	addi	s0,sp,16
    8000508c:	00020513          	mv	a0,tp
    80005090:	00813403          	ld	s0,8(sp)
    80005094:	0005051b          	sext.w	a0,a0
    80005098:	01010113          	addi	sp,sp,16
    8000509c:	00008067          	ret

00000000800050a0 <mycpu>:
    800050a0:	ff010113          	addi	sp,sp,-16
    800050a4:	00813423          	sd	s0,8(sp)
    800050a8:	01010413          	addi	s0,sp,16
    800050ac:	00020793          	mv	a5,tp
    800050b0:	00813403          	ld	s0,8(sp)
    800050b4:	0007879b          	sext.w	a5,a5
    800050b8:	00779793          	slli	a5,a5,0x7
    800050bc:	00005517          	auipc	a0,0x5
    800050c0:	cf450513          	addi	a0,a0,-780 # 80009db0 <cpus>
    800050c4:	00f50533          	add	a0,a0,a5
    800050c8:	01010113          	addi	sp,sp,16
    800050cc:	00008067          	ret

00000000800050d0 <userinit>:
    800050d0:	ff010113          	addi	sp,sp,-16
    800050d4:	00813423          	sd	s0,8(sp)
    800050d8:	01010413          	addi	s0,sp,16
    800050dc:	00813403          	ld	s0,8(sp)
    800050e0:	01010113          	addi	sp,sp,16
    800050e4:	ffffd317          	auipc	t1,0xffffd
    800050e8:	fac30067          	jr	-84(t1) # 80002090 <main>

00000000800050ec <either_copyout>:
    800050ec:	ff010113          	addi	sp,sp,-16
    800050f0:	00813023          	sd	s0,0(sp)
    800050f4:	00113423          	sd	ra,8(sp)
    800050f8:	01010413          	addi	s0,sp,16
    800050fc:	02051663          	bnez	a0,80005128 <either_copyout+0x3c>
    80005100:	00058513          	mv	a0,a1
    80005104:	00060593          	mv	a1,a2
    80005108:	0006861b          	sext.w	a2,a3
    8000510c:	00002097          	auipc	ra,0x2
    80005110:	c58080e7          	jalr	-936(ra) # 80006d64 <__memmove>
    80005114:	00813083          	ld	ra,8(sp)
    80005118:	00013403          	ld	s0,0(sp)
    8000511c:	00000513          	li	a0,0
    80005120:	01010113          	addi	sp,sp,16
    80005124:	00008067          	ret
    80005128:	00002517          	auipc	a0,0x2
    8000512c:	51850513          	addi	a0,a0,1304 # 80007640 <CONSOLE_STATUS+0x630>
    80005130:	00001097          	auipc	ra,0x1
    80005134:	92c080e7          	jalr	-1748(ra) # 80005a5c <panic>

0000000080005138 <either_copyin>:
    80005138:	ff010113          	addi	sp,sp,-16
    8000513c:	00813023          	sd	s0,0(sp)
    80005140:	00113423          	sd	ra,8(sp)
    80005144:	01010413          	addi	s0,sp,16
    80005148:	02059463          	bnez	a1,80005170 <either_copyin+0x38>
    8000514c:	00060593          	mv	a1,a2
    80005150:	0006861b          	sext.w	a2,a3
    80005154:	00002097          	auipc	ra,0x2
    80005158:	c10080e7          	jalr	-1008(ra) # 80006d64 <__memmove>
    8000515c:	00813083          	ld	ra,8(sp)
    80005160:	00013403          	ld	s0,0(sp)
    80005164:	00000513          	li	a0,0
    80005168:	01010113          	addi	sp,sp,16
    8000516c:	00008067          	ret
    80005170:	00002517          	auipc	a0,0x2
    80005174:	4f850513          	addi	a0,a0,1272 # 80007668 <CONSOLE_STATUS+0x658>
    80005178:	00001097          	auipc	ra,0x1
    8000517c:	8e4080e7          	jalr	-1820(ra) # 80005a5c <panic>

0000000080005180 <trapinit>:
    80005180:	ff010113          	addi	sp,sp,-16
    80005184:	00813423          	sd	s0,8(sp)
    80005188:	01010413          	addi	s0,sp,16
    8000518c:	00813403          	ld	s0,8(sp)
    80005190:	00002597          	auipc	a1,0x2
    80005194:	50058593          	addi	a1,a1,1280 # 80007690 <CONSOLE_STATUS+0x680>
    80005198:	00005517          	auipc	a0,0x5
    8000519c:	c9850513          	addi	a0,a0,-872 # 80009e30 <tickslock>
    800051a0:	01010113          	addi	sp,sp,16
    800051a4:	00001317          	auipc	t1,0x1
    800051a8:	5c430067          	jr	1476(t1) # 80006768 <initlock>

00000000800051ac <trapinithart>:
    800051ac:	ff010113          	addi	sp,sp,-16
    800051b0:	00813423          	sd	s0,8(sp)
    800051b4:	01010413          	addi	s0,sp,16
    800051b8:	00000797          	auipc	a5,0x0
    800051bc:	2f878793          	addi	a5,a5,760 # 800054b0 <kernelvec>
    800051c0:	10579073          	csrw	stvec,a5
    800051c4:	00813403          	ld	s0,8(sp)
    800051c8:	01010113          	addi	sp,sp,16
    800051cc:	00008067          	ret

00000000800051d0 <usertrap>:
    800051d0:	ff010113          	addi	sp,sp,-16
    800051d4:	00813423          	sd	s0,8(sp)
    800051d8:	01010413          	addi	s0,sp,16
    800051dc:	00813403          	ld	s0,8(sp)
    800051e0:	01010113          	addi	sp,sp,16
    800051e4:	00008067          	ret

00000000800051e8 <usertrapret>:
    800051e8:	ff010113          	addi	sp,sp,-16
    800051ec:	00813423          	sd	s0,8(sp)
    800051f0:	01010413          	addi	s0,sp,16
    800051f4:	00813403          	ld	s0,8(sp)
    800051f8:	01010113          	addi	sp,sp,16
    800051fc:	00008067          	ret

0000000080005200 <kerneltrap>:
    80005200:	fe010113          	addi	sp,sp,-32
    80005204:	00813823          	sd	s0,16(sp)
    80005208:	00113c23          	sd	ra,24(sp)
    8000520c:	00913423          	sd	s1,8(sp)
    80005210:	02010413          	addi	s0,sp,32
    80005214:	142025f3          	csrr	a1,scause
    80005218:	100027f3          	csrr	a5,sstatus
    8000521c:	0027f793          	andi	a5,a5,2
    80005220:	10079c63          	bnez	a5,80005338 <kerneltrap+0x138>
    80005224:	142027f3          	csrr	a5,scause
    80005228:	0207ce63          	bltz	a5,80005264 <kerneltrap+0x64>
    8000522c:	00002517          	auipc	a0,0x2
    80005230:	4ac50513          	addi	a0,a0,1196 # 800076d8 <CONSOLE_STATUS+0x6c8>
    80005234:	00001097          	auipc	ra,0x1
    80005238:	884080e7          	jalr	-1916(ra) # 80005ab8 <__printf>
    8000523c:	141025f3          	csrr	a1,sepc
    80005240:	14302673          	csrr	a2,stval
    80005244:	00002517          	auipc	a0,0x2
    80005248:	4a450513          	addi	a0,a0,1188 # 800076e8 <CONSOLE_STATUS+0x6d8>
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	86c080e7          	jalr	-1940(ra) # 80005ab8 <__printf>
    80005254:	00002517          	auipc	a0,0x2
    80005258:	4ac50513          	addi	a0,a0,1196 # 80007700 <CONSOLE_STATUS+0x6f0>
    8000525c:	00001097          	auipc	ra,0x1
    80005260:	800080e7          	jalr	-2048(ra) # 80005a5c <panic>
    80005264:	0ff7f713          	andi	a4,a5,255
    80005268:	00900693          	li	a3,9
    8000526c:	04d70063          	beq	a4,a3,800052ac <kerneltrap+0xac>
    80005270:	fff00713          	li	a4,-1
    80005274:	03f71713          	slli	a4,a4,0x3f
    80005278:	00170713          	addi	a4,a4,1
    8000527c:	fae798e3          	bne	a5,a4,8000522c <kerneltrap+0x2c>
    80005280:	00000097          	auipc	ra,0x0
    80005284:	e00080e7          	jalr	-512(ra) # 80005080 <cpuid>
    80005288:	06050663          	beqz	a0,800052f4 <kerneltrap+0xf4>
    8000528c:	144027f3          	csrr	a5,sip
    80005290:	ffd7f793          	andi	a5,a5,-3
    80005294:	14479073          	csrw	sip,a5
    80005298:	01813083          	ld	ra,24(sp)
    8000529c:	01013403          	ld	s0,16(sp)
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret
    800052ac:	00000097          	auipc	ra,0x0
    800052b0:	3c8080e7          	jalr	968(ra) # 80005674 <plic_claim>
    800052b4:	00a00793          	li	a5,10
    800052b8:	00050493          	mv	s1,a0
    800052bc:	06f50863          	beq	a0,a5,8000532c <kerneltrap+0x12c>
    800052c0:	fc050ce3          	beqz	a0,80005298 <kerneltrap+0x98>
    800052c4:	00050593          	mv	a1,a0
    800052c8:	00002517          	auipc	a0,0x2
    800052cc:	3f050513          	addi	a0,a0,1008 # 800076b8 <CONSOLE_STATUS+0x6a8>
    800052d0:	00000097          	auipc	ra,0x0
    800052d4:	7e8080e7          	jalr	2024(ra) # 80005ab8 <__printf>
    800052d8:	01013403          	ld	s0,16(sp)
    800052dc:	01813083          	ld	ra,24(sp)
    800052e0:	00048513          	mv	a0,s1
    800052e4:	00813483          	ld	s1,8(sp)
    800052e8:	02010113          	addi	sp,sp,32
    800052ec:	00000317          	auipc	t1,0x0
    800052f0:	3c030067          	jr	960(t1) # 800056ac <plic_complete>
    800052f4:	00005517          	auipc	a0,0x5
    800052f8:	b3c50513          	addi	a0,a0,-1220 # 80009e30 <tickslock>
    800052fc:	00001097          	auipc	ra,0x1
    80005300:	490080e7          	jalr	1168(ra) # 8000678c <acquire>
    80005304:	00004717          	auipc	a4,0x4
    80005308:	9f070713          	addi	a4,a4,-1552 # 80008cf4 <ticks>
    8000530c:	00072783          	lw	a5,0(a4)
    80005310:	00005517          	auipc	a0,0x5
    80005314:	b2050513          	addi	a0,a0,-1248 # 80009e30 <tickslock>
    80005318:	0017879b          	addiw	a5,a5,1
    8000531c:	00f72023          	sw	a5,0(a4)
    80005320:	00001097          	auipc	ra,0x1
    80005324:	538080e7          	jalr	1336(ra) # 80006858 <release>
    80005328:	f65ff06f          	j	8000528c <kerneltrap+0x8c>
    8000532c:	00001097          	auipc	ra,0x1
    80005330:	094080e7          	jalr	148(ra) # 800063c0 <uartintr>
    80005334:	fa5ff06f          	j	800052d8 <kerneltrap+0xd8>
    80005338:	00002517          	auipc	a0,0x2
    8000533c:	36050513          	addi	a0,a0,864 # 80007698 <CONSOLE_STATUS+0x688>
    80005340:	00000097          	auipc	ra,0x0
    80005344:	71c080e7          	jalr	1820(ra) # 80005a5c <panic>

0000000080005348 <clockintr>:
    80005348:	fe010113          	addi	sp,sp,-32
    8000534c:	00813823          	sd	s0,16(sp)
    80005350:	00913423          	sd	s1,8(sp)
    80005354:	00113c23          	sd	ra,24(sp)
    80005358:	02010413          	addi	s0,sp,32
    8000535c:	00005497          	auipc	s1,0x5
    80005360:	ad448493          	addi	s1,s1,-1324 # 80009e30 <tickslock>
    80005364:	00048513          	mv	a0,s1
    80005368:	00001097          	auipc	ra,0x1
    8000536c:	424080e7          	jalr	1060(ra) # 8000678c <acquire>
    80005370:	00004717          	auipc	a4,0x4
    80005374:	98470713          	addi	a4,a4,-1660 # 80008cf4 <ticks>
    80005378:	00072783          	lw	a5,0(a4)
    8000537c:	01013403          	ld	s0,16(sp)
    80005380:	01813083          	ld	ra,24(sp)
    80005384:	00048513          	mv	a0,s1
    80005388:	0017879b          	addiw	a5,a5,1
    8000538c:	00813483          	ld	s1,8(sp)
    80005390:	00f72023          	sw	a5,0(a4)
    80005394:	02010113          	addi	sp,sp,32
    80005398:	00001317          	auipc	t1,0x1
    8000539c:	4c030067          	jr	1216(t1) # 80006858 <release>

00000000800053a0 <devintr>:
    800053a0:	142027f3          	csrr	a5,scause
    800053a4:	00000513          	li	a0,0
    800053a8:	0007c463          	bltz	a5,800053b0 <devintr+0x10>
    800053ac:	00008067          	ret
    800053b0:	fe010113          	addi	sp,sp,-32
    800053b4:	00813823          	sd	s0,16(sp)
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	00913423          	sd	s1,8(sp)
    800053c0:	02010413          	addi	s0,sp,32
    800053c4:	0ff7f713          	andi	a4,a5,255
    800053c8:	00900693          	li	a3,9
    800053cc:	04d70c63          	beq	a4,a3,80005424 <devintr+0x84>
    800053d0:	fff00713          	li	a4,-1
    800053d4:	03f71713          	slli	a4,a4,0x3f
    800053d8:	00170713          	addi	a4,a4,1
    800053dc:	00e78c63          	beq	a5,a4,800053f4 <devintr+0x54>
    800053e0:	01813083          	ld	ra,24(sp)
    800053e4:	01013403          	ld	s0,16(sp)
    800053e8:	00813483          	ld	s1,8(sp)
    800053ec:	02010113          	addi	sp,sp,32
    800053f0:	00008067          	ret
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	c8c080e7          	jalr	-884(ra) # 80005080 <cpuid>
    800053fc:	06050663          	beqz	a0,80005468 <devintr+0xc8>
    80005400:	144027f3          	csrr	a5,sip
    80005404:	ffd7f793          	andi	a5,a5,-3
    80005408:	14479073          	csrw	sip,a5
    8000540c:	01813083          	ld	ra,24(sp)
    80005410:	01013403          	ld	s0,16(sp)
    80005414:	00813483          	ld	s1,8(sp)
    80005418:	00200513          	li	a0,2
    8000541c:	02010113          	addi	sp,sp,32
    80005420:	00008067          	ret
    80005424:	00000097          	auipc	ra,0x0
    80005428:	250080e7          	jalr	592(ra) # 80005674 <plic_claim>
    8000542c:	00a00793          	li	a5,10
    80005430:	00050493          	mv	s1,a0
    80005434:	06f50663          	beq	a0,a5,800054a0 <devintr+0x100>
    80005438:	00100513          	li	a0,1
    8000543c:	fa0482e3          	beqz	s1,800053e0 <devintr+0x40>
    80005440:	00048593          	mv	a1,s1
    80005444:	00002517          	auipc	a0,0x2
    80005448:	27450513          	addi	a0,a0,628 # 800076b8 <CONSOLE_STATUS+0x6a8>
    8000544c:	00000097          	auipc	ra,0x0
    80005450:	66c080e7          	jalr	1644(ra) # 80005ab8 <__printf>
    80005454:	00048513          	mv	a0,s1
    80005458:	00000097          	auipc	ra,0x0
    8000545c:	254080e7          	jalr	596(ra) # 800056ac <plic_complete>
    80005460:	00100513          	li	a0,1
    80005464:	f7dff06f          	j	800053e0 <devintr+0x40>
    80005468:	00005517          	auipc	a0,0x5
    8000546c:	9c850513          	addi	a0,a0,-1592 # 80009e30 <tickslock>
    80005470:	00001097          	auipc	ra,0x1
    80005474:	31c080e7          	jalr	796(ra) # 8000678c <acquire>
    80005478:	00004717          	auipc	a4,0x4
    8000547c:	87c70713          	addi	a4,a4,-1924 # 80008cf4 <ticks>
    80005480:	00072783          	lw	a5,0(a4)
    80005484:	00005517          	auipc	a0,0x5
    80005488:	9ac50513          	addi	a0,a0,-1620 # 80009e30 <tickslock>
    8000548c:	0017879b          	addiw	a5,a5,1
    80005490:	00f72023          	sw	a5,0(a4)
    80005494:	00001097          	auipc	ra,0x1
    80005498:	3c4080e7          	jalr	964(ra) # 80006858 <release>
    8000549c:	f65ff06f          	j	80005400 <devintr+0x60>
    800054a0:	00001097          	auipc	ra,0x1
    800054a4:	f20080e7          	jalr	-224(ra) # 800063c0 <uartintr>
    800054a8:	fadff06f          	j	80005454 <devintr+0xb4>
    800054ac:	0000                	unimp
	...

00000000800054b0 <kernelvec>:
    800054b0:	f0010113          	addi	sp,sp,-256
    800054b4:	00113023          	sd	ra,0(sp)
    800054b8:	00213423          	sd	sp,8(sp)
    800054bc:	00313823          	sd	gp,16(sp)
    800054c0:	00413c23          	sd	tp,24(sp)
    800054c4:	02513023          	sd	t0,32(sp)
    800054c8:	02613423          	sd	t1,40(sp)
    800054cc:	02713823          	sd	t2,48(sp)
    800054d0:	02813c23          	sd	s0,56(sp)
    800054d4:	04913023          	sd	s1,64(sp)
    800054d8:	04a13423          	sd	a0,72(sp)
    800054dc:	04b13823          	sd	a1,80(sp)
    800054e0:	04c13c23          	sd	a2,88(sp)
    800054e4:	06d13023          	sd	a3,96(sp)
    800054e8:	06e13423          	sd	a4,104(sp)
    800054ec:	06f13823          	sd	a5,112(sp)
    800054f0:	07013c23          	sd	a6,120(sp)
    800054f4:	09113023          	sd	a7,128(sp)
    800054f8:	09213423          	sd	s2,136(sp)
    800054fc:	09313823          	sd	s3,144(sp)
    80005500:	09413c23          	sd	s4,152(sp)
    80005504:	0b513023          	sd	s5,160(sp)
    80005508:	0b613423          	sd	s6,168(sp)
    8000550c:	0b713823          	sd	s7,176(sp)
    80005510:	0b813c23          	sd	s8,184(sp)
    80005514:	0d913023          	sd	s9,192(sp)
    80005518:	0da13423          	sd	s10,200(sp)
    8000551c:	0db13823          	sd	s11,208(sp)
    80005520:	0dc13c23          	sd	t3,216(sp)
    80005524:	0fd13023          	sd	t4,224(sp)
    80005528:	0fe13423          	sd	t5,232(sp)
    8000552c:	0ff13823          	sd	t6,240(sp)
    80005530:	cd1ff0ef          	jal	ra,80005200 <kerneltrap>
    80005534:	00013083          	ld	ra,0(sp)
    80005538:	00813103          	ld	sp,8(sp)
    8000553c:	01013183          	ld	gp,16(sp)
    80005540:	02013283          	ld	t0,32(sp)
    80005544:	02813303          	ld	t1,40(sp)
    80005548:	03013383          	ld	t2,48(sp)
    8000554c:	03813403          	ld	s0,56(sp)
    80005550:	04013483          	ld	s1,64(sp)
    80005554:	04813503          	ld	a0,72(sp)
    80005558:	05013583          	ld	a1,80(sp)
    8000555c:	05813603          	ld	a2,88(sp)
    80005560:	06013683          	ld	a3,96(sp)
    80005564:	06813703          	ld	a4,104(sp)
    80005568:	07013783          	ld	a5,112(sp)
    8000556c:	07813803          	ld	a6,120(sp)
    80005570:	08013883          	ld	a7,128(sp)
    80005574:	08813903          	ld	s2,136(sp)
    80005578:	09013983          	ld	s3,144(sp)
    8000557c:	09813a03          	ld	s4,152(sp)
    80005580:	0a013a83          	ld	s5,160(sp)
    80005584:	0a813b03          	ld	s6,168(sp)
    80005588:	0b013b83          	ld	s7,176(sp)
    8000558c:	0b813c03          	ld	s8,184(sp)
    80005590:	0c013c83          	ld	s9,192(sp)
    80005594:	0c813d03          	ld	s10,200(sp)
    80005598:	0d013d83          	ld	s11,208(sp)
    8000559c:	0d813e03          	ld	t3,216(sp)
    800055a0:	0e013e83          	ld	t4,224(sp)
    800055a4:	0e813f03          	ld	t5,232(sp)
    800055a8:	0f013f83          	ld	t6,240(sp)
    800055ac:	10010113          	addi	sp,sp,256
    800055b0:	10200073          	sret
    800055b4:	00000013          	nop
    800055b8:	00000013          	nop
    800055bc:	00000013          	nop

00000000800055c0 <timervec>:
    800055c0:	34051573          	csrrw	a0,mscratch,a0
    800055c4:	00b53023          	sd	a1,0(a0)
    800055c8:	00c53423          	sd	a2,8(a0)
    800055cc:	00d53823          	sd	a3,16(a0)
    800055d0:	01853583          	ld	a1,24(a0)
    800055d4:	02053603          	ld	a2,32(a0)
    800055d8:	0005b683          	ld	a3,0(a1)
    800055dc:	00c686b3          	add	a3,a3,a2
    800055e0:	00d5b023          	sd	a3,0(a1)
    800055e4:	00200593          	li	a1,2
    800055e8:	14459073          	csrw	sip,a1
    800055ec:	01053683          	ld	a3,16(a0)
    800055f0:	00853603          	ld	a2,8(a0)
    800055f4:	00053583          	ld	a1,0(a0)
    800055f8:	34051573          	csrrw	a0,mscratch,a0
    800055fc:	30200073          	mret

0000000080005600 <plicinit>:
    80005600:	ff010113          	addi	sp,sp,-16
    80005604:	00813423          	sd	s0,8(sp)
    80005608:	01010413          	addi	s0,sp,16
    8000560c:	00813403          	ld	s0,8(sp)
    80005610:	0c0007b7          	lui	a5,0xc000
    80005614:	00100713          	li	a4,1
    80005618:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000561c:	00e7a223          	sw	a4,4(a5)
    80005620:	01010113          	addi	sp,sp,16
    80005624:	00008067          	ret

0000000080005628 <plicinithart>:
    80005628:	ff010113          	addi	sp,sp,-16
    8000562c:	00813023          	sd	s0,0(sp)
    80005630:	00113423          	sd	ra,8(sp)
    80005634:	01010413          	addi	s0,sp,16
    80005638:	00000097          	auipc	ra,0x0
    8000563c:	a48080e7          	jalr	-1464(ra) # 80005080 <cpuid>
    80005640:	0085171b          	slliw	a4,a0,0x8
    80005644:	0c0027b7          	lui	a5,0xc002
    80005648:	00e787b3          	add	a5,a5,a4
    8000564c:	40200713          	li	a4,1026
    80005650:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005654:	00813083          	ld	ra,8(sp)
    80005658:	00013403          	ld	s0,0(sp)
    8000565c:	00d5151b          	slliw	a0,a0,0xd
    80005660:	0c2017b7          	lui	a5,0xc201
    80005664:	00a78533          	add	a0,a5,a0
    80005668:	00052023          	sw	zero,0(a0)
    8000566c:	01010113          	addi	sp,sp,16
    80005670:	00008067          	ret

0000000080005674 <plic_claim>:
    80005674:	ff010113          	addi	sp,sp,-16
    80005678:	00813023          	sd	s0,0(sp)
    8000567c:	00113423          	sd	ra,8(sp)
    80005680:	01010413          	addi	s0,sp,16
    80005684:	00000097          	auipc	ra,0x0
    80005688:	9fc080e7          	jalr	-1540(ra) # 80005080 <cpuid>
    8000568c:	00813083          	ld	ra,8(sp)
    80005690:	00013403          	ld	s0,0(sp)
    80005694:	00d5151b          	slliw	a0,a0,0xd
    80005698:	0c2017b7          	lui	a5,0xc201
    8000569c:	00a78533          	add	a0,a5,a0
    800056a0:	00452503          	lw	a0,4(a0)
    800056a4:	01010113          	addi	sp,sp,16
    800056a8:	00008067          	ret

00000000800056ac <plic_complete>:
    800056ac:	fe010113          	addi	sp,sp,-32
    800056b0:	00813823          	sd	s0,16(sp)
    800056b4:	00913423          	sd	s1,8(sp)
    800056b8:	00113c23          	sd	ra,24(sp)
    800056bc:	02010413          	addi	s0,sp,32
    800056c0:	00050493          	mv	s1,a0
    800056c4:	00000097          	auipc	ra,0x0
    800056c8:	9bc080e7          	jalr	-1604(ra) # 80005080 <cpuid>
    800056cc:	01813083          	ld	ra,24(sp)
    800056d0:	01013403          	ld	s0,16(sp)
    800056d4:	00d5179b          	slliw	a5,a0,0xd
    800056d8:	0c201737          	lui	a4,0xc201
    800056dc:	00f707b3          	add	a5,a4,a5
    800056e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800056e4:	00813483          	ld	s1,8(sp)
    800056e8:	02010113          	addi	sp,sp,32
    800056ec:	00008067          	ret

00000000800056f0 <consolewrite>:
    800056f0:	fb010113          	addi	sp,sp,-80
    800056f4:	04813023          	sd	s0,64(sp)
    800056f8:	04113423          	sd	ra,72(sp)
    800056fc:	02913c23          	sd	s1,56(sp)
    80005700:	03213823          	sd	s2,48(sp)
    80005704:	03313423          	sd	s3,40(sp)
    80005708:	03413023          	sd	s4,32(sp)
    8000570c:	01513c23          	sd	s5,24(sp)
    80005710:	05010413          	addi	s0,sp,80
    80005714:	06c05c63          	blez	a2,8000578c <consolewrite+0x9c>
    80005718:	00060993          	mv	s3,a2
    8000571c:	00050a13          	mv	s4,a0
    80005720:	00058493          	mv	s1,a1
    80005724:	00000913          	li	s2,0
    80005728:	fff00a93          	li	s5,-1
    8000572c:	01c0006f          	j	80005748 <consolewrite+0x58>
    80005730:	fbf44503          	lbu	a0,-65(s0)
    80005734:	0019091b          	addiw	s2,s2,1
    80005738:	00148493          	addi	s1,s1,1
    8000573c:	00001097          	auipc	ra,0x1
    80005740:	a9c080e7          	jalr	-1380(ra) # 800061d8 <uartputc>
    80005744:	03298063          	beq	s3,s2,80005764 <consolewrite+0x74>
    80005748:	00048613          	mv	a2,s1
    8000574c:	00100693          	li	a3,1
    80005750:	000a0593          	mv	a1,s4
    80005754:	fbf40513          	addi	a0,s0,-65
    80005758:	00000097          	auipc	ra,0x0
    8000575c:	9e0080e7          	jalr	-1568(ra) # 80005138 <either_copyin>
    80005760:	fd5518e3          	bne	a0,s5,80005730 <consolewrite+0x40>
    80005764:	04813083          	ld	ra,72(sp)
    80005768:	04013403          	ld	s0,64(sp)
    8000576c:	03813483          	ld	s1,56(sp)
    80005770:	02813983          	ld	s3,40(sp)
    80005774:	02013a03          	ld	s4,32(sp)
    80005778:	01813a83          	ld	s5,24(sp)
    8000577c:	00090513          	mv	a0,s2
    80005780:	03013903          	ld	s2,48(sp)
    80005784:	05010113          	addi	sp,sp,80
    80005788:	00008067          	ret
    8000578c:	00000913          	li	s2,0
    80005790:	fd5ff06f          	j	80005764 <consolewrite+0x74>

0000000080005794 <consoleread>:
    80005794:	f9010113          	addi	sp,sp,-112
    80005798:	06813023          	sd	s0,96(sp)
    8000579c:	04913c23          	sd	s1,88(sp)
    800057a0:	05213823          	sd	s2,80(sp)
    800057a4:	05313423          	sd	s3,72(sp)
    800057a8:	05413023          	sd	s4,64(sp)
    800057ac:	03513c23          	sd	s5,56(sp)
    800057b0:	03613823          	sd	s6,48(sp)
    800057b4:	03713423          	sd	s7,40(sp)
    800057b8:	03813023          	sd	s8,32(sp)
    800057bc:	06113423          	sd	ra,104(sp)
    800057c0:	01913c23          	sd	s9,24(sp)
    800057c4:	07010413          	addi	s0,sp,112
    800057c8:	00060b93          	mv	s7,a2
    800057cc:	00050913          	mv	s2,a0
    800057d0:	00058c13          	mv	s8,a1
    800057d4:	00060b1b          	sext.w	s6,a2
    800057d8:	00004497          	auipc	s1,0x4
    800057dc:	68048493          	addi	s1,s1,1664 # 80009e58 <cons>
    800057e0:	00400993          	li	s3,4
    800057e4:	fff00a13          	li	s4,-1
    800057e8:	00a00a93          	li	s5,10
    800057ec:	05705e63          	blez	s7,80005848 <consoleread+0xb4>
    800057f0:	09c4a703          	lw	a4,156(s1)
    800057f4:	0984a783          	lw	a5,152(s1)
    800057f8:	0007071b          	sext.w	a4,a4
    800057fc:	08e78463          	beq	a5,a4,80005884 <consoleread+0xf0>
    80005800:	07f7f713          	andi	a4,a5,127
    80005804:	00e48733          	add	a4,s1,a4
    80005808:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000580c:	0017869b          	addiw	a3,a5,1
    80005810:	08d4ac23          	sw	a3,152(s1)
    80005814:	00070c9b          	sext.w	s9,a4
    80005818:	0b370663          	beq	a4,s3,800058c4 <consoleread+0x130>
    8000581c:	00100693          	li	a3,1
    80005820:	f9f40613          	addi	a2,s0,-97
    80005824:	000c0593          	mv	a1,s8
    80005828:	00090513          	mv	a0,s2
    8000582c:	f8e40fa3          	sb	a4,-97(s0)
    80005830:	00000097          	auipc	ra,0x0
    80005834:	8bc080e7          	jalr	-1860(ra) # 800050ec <either_copyout>
    80005838:	01450863          	beq	a0,s4,80005848 <consoleread+0xb4>
    8000583c:	001c0c13          	addi	s8,s8,1
    80005840:	fffb8b9b          	addiw	s7,s7,-1
    80005844:	fb5c94e3          	bne	s9,s5,800057ec <consoleread+0x58>
    80005848:	000b851b          	sext.w	a0,s7
    8000584c:	06813083          	ld	ra,104(sp)
    80005850:	06013403          	ld	s0,96(sp)
    80005854:	05813483          	ld	s1,88(sp)
    80005858:	05013903          	ld	s2,80(sp)
    8000585c:	04813983          	ld	s3,72(sp)
    80005860:	04013a03          	ld	s4,64(sp)
    80005864:	03813a83          	ld	s5,56(sp)
    80005868:	02813b83          	ld	s7,40(sp)
    8000586c:	02013c03          	ld	s8,32(sp)
    80005870:	01813c83          	ld	s9,24(sp)
    80005874:	40ab053b          	subw	a0,s6,a0
    80005878:	03013b03          	ld	s6,48(sp)
    8000587c:	07010113          	addi	sp,sp,112
    80005880:	00008067          	ret
    80005884:	00001097          	auipc	ra,0x1
    80005888:	1d8080e7          	jalr	472(ra) # 80006a5c <push_on>
    8000588c:	0984a703          	lw	a4,152(s1)
    80005890:	09c4a783          	lw	a5,156(s1)
    80005894:	0007879b          	sext.w	a5,a5
    80005898:	fef70ce3          	beq	a4,a5,80005890 <consoleread+0xfc>
    8000589c:	00001097          	auipc	ra,0x1
    800058a0:	234080e7          	jalr	564(ra) # 80006ad0 <pop_on>
    800058a4:	0984a783          	lw	a5,152(s1)
    800058a8:	07f7f713          	andi	a4,a5,127
    800058ac:	00e48733          	add	a4,s1,a4
    800058b0:	01874703          	lbu	a4,24(a4)
    800058b4:	0017869b          	addiw	a3,a5,1
    800058b8:	08d4ac23          	sw	a3,152(s1)
    800058bc:	00070c9b          	sext.w	s9,a4
    800058c0:	f5371ee3          	bne	a4,s3,8000581c <consoleread+0x88>
    800058c4:	000b851b          	sext.w	a0,s7
    800058c8:	f96bf2e3          	bgeu	s7,s6,8000584c <consoleread+0xb8>
    800058cc:	08f4ac23          	sw	a5,152(s1)
    800058d0:	f7dff06f          	j	8000584c <consoleread+0xb8>

00000000800058d4 <consputc>:
    800058d4:	10000793          	li	a5,256
    800058d8:	00f50663          	beq	a0,a5,800058e4 <consputc+0x10>
    800058dc:	00001317          	auipc	t1,0x1
    800058e0:	9f430067          	jr	-1548(t1) # 800062d0 <uartputc_sync>
    800058e4:	ff010113          	addi	sp,sp,-16
    800058e8:	00113423          	sd	ra,8(sp)
    800058ec:	00813023          	sd	s0,0(sp)
    800058f0:	01010413          	addi	s0,sp,16
    800058f4:	00800513          	li	a0,8
    800058f8:	00001097          	auipc	ra,0x1
    800058fc:	9d8080e7          	jalr	-1576(ra) # 800062d0 <uartputc_sync>
    80005900:	02000513          	li	a0,32
    80005904:	00001097          	auipc	ra,0x1
    80005908:	9cc080e7          	jalr	-1588(ra) # 800062d0 <uartputc_sync>
    8000590c:	00013403          	ld	s0,0(sp)
    80005910:	00813083          	ld	ra,8(sp)
    80005914:	00800513          	li	a0,8
    80005918:	01010113          	addi	sp,sp,16
    8000591c:	00001317          	auipc	t1,0x1
    80005920:	9b430067          	jr	-1612(t1) # 800062d0 <uartputc_sync>

0000000080005924 <consoleintr>:
    80005924:	fe010113          	addi	sp,sp,-32
    80005928:	00813823          	sd	s0,16(sp)
    8000592c:	00913423          	sd	s1,8(sp)
    80005930:	01213023          	sd	s2,0(sp)
    80005934:	00113c23          	sd	ra,24(sp)
    80005938:	02010413          	addi	s0,sp,32
    8000593c:	00004917          	auipc	s2,0x4
    80005940:	51c90913          	addi	s2,s2,1308 # 80009e58 <cons>
    80005944:	00050493          	mv	s1,a0
    80005948:	00090513          	mv	a0,s2
    8000594c:	00001097          	auipc	ra,0x1
    80005950:	e40080e7          	jalr	-448(ra) # 8000678c <acquire>
    80005954:	02048c63          	beqz	s1,8000598c <consoleintr+0x68>
    80005958:	0a092783          	lw	a5,160(s2)
    8000595c:	09892703          	lw	a4,152(s2)
    80005960:	07f00693          	li	a3,127
    80005964:	40e7873b          	subw	a4,a5,a4
    80005968:	02e6e263          	bltu	a3,a4,8000598c <consoleintr+0x68>
    8000596c:	00d00713          	li	a4,13
    80005970:	04e48063          	beq	s1,a4,800059b0 <consoleintr+0x8c>
    80005974:	07f7f713          	andi	a4,a5,127
    80005978:	00e90733          	add	a4,s2,a4
    8000597c:	0017879b          	addiw	a5,a5,1
    80005980:	0af92023          	sw	a5,160(s2)
    80005984:	00970c23          	sb	s1,24(a4)
    80005988:	08f92e23          	sw	a5,156(s2)
    8000598c:	01013403          	ld	s0,16(sp)
    80005990:	01813083          	ld	ra,24(sp)
    80005994:	00813483          	ld	s1,8(sp)
    80005998:	00013903          	ld	s2,0(sp)
    8000599c:	00004517          	auipc	a0,0x4
    800059a0:	4bc50513          	addi	a0,a0,1212 # 80009e58 <cons>
    800059a4:	02010113          	addi	sp,sp,32
    800059a8:	00001317          	auipc	t1,0x1
    800059ac:	eb030067          	jr	-336(t1) # 80006858 <release>
    800059b0:	00a00493          	li	s1,10
    800059b4:	fc1ff06f          	j	80005974 <consoleintr+0x50>

00000000800059b8 <consoleinit>:
    800059b8:	fe010113          	addi	sp,sp,-32
    800059bc:	00113c23          	sd	ra,24(sp)
    800059c0:	00813823          	sd	s0,16(sp)
    800059c4:	00913423          	sd	s1,8(sp)
    800059c8:	02010413          	addi	s0,sp,32
    800059cc:	00004497          	auipc	s1,0x4
    800059d0:	48c48493          	addi	s1,s1,1164 # 80009e58 <cons>
    800059d4:	00048513          	mv	a0,s1
    800059d8:	00002597          	auipc	a1,0x2
    800059dc:	d3858593          	addi	a1,a1,-712 # 80007710 <CONSOLE_STATUS+0x700>
    800059e0:	00001097          	auipc	ra,0x1
    800059e4:	d88080e7          	jalr	-632(ra) # 80006768 <initlock>
    800059e8:	00000097          	auipc	ra,0x0
    800059ec:	7ac080e7          	jalr	1964(ra) # 80006194 <uartinit>
    800059f0:	01813083          	ld	ra,24(sp)
    800059f4:	01013403          	ld	s0,16(sp)
    800059f8:	00000797          	auipc	a5,0x0
    800059fc:	d9c78793          	addi	a5,a5,-612 # 80005794 <consoleread>
    80005a00:	0af4bc23          	sd	a5,184(s1)
    80005a04:	00000797          	auipc	a5,0x0
    80005a08:	cec78793          	addi	a5,a5,-788 # 800056f0 <consolewrite>
    80005a0c:	0cf4b023          	sd	a5,192(s1)
    80005a10:	00813483          	ld	s1,8(sp)
    80005a14:	02010113          	addi	sp,sp,32
    80005a18:	00008067          	ret

0000000080005a1c <console_read>:
    80005a1c:	ff010113          	addi	sp,sp,-16
    80005a20:	00813423          	sd	s0,8(sp)
    80005a24:	01010413          	addi	s0,sp,16
    80005a28:	00813403          	ld	s0,8(sp)
    80005a2c:	00004317          	auipc	t1,0x4
    80005a30:	4e433303          	ld	t1,1252(t1) # 80009f10 <devsw+0x10>
    80005a34:	01010113          	addi	sp,sp,16
    80005a38:	00030067          	jr	t1

0000000080005a3c <console_write>:
    80005a3c:	ff010113          	addi	sp,sp,-16
    80005a40:	00813423          	sd	s0,8(sp)
    80005a44:	01010413          	addi	s0,sp,16
    80005a48:	00813403          	ld	s0,8(sp)
    80005a4c:	00004317          	auipc	t1,0x4
    80005a50:	4cc33303          	ld	t1,1228(t1) # 80009f18 <devsw+0x18>
    80005a54:	01010113          	addi	sp,sp,16
    80005a58:	00030067          	jr	t1

0000000080005a5c <panic>:
    80005a5c:	fe010113          	addi	sp,sp,-32
    80005a60:	00113c23          	sd	ra,24(sp)
    80005a64:	00813823          	sd	s0,16(sp)
    80005a68:	00913423          	sd	s1,8(sp)
    80005a6c:	02010413          	addi	s0,sp,32
    80005a70:	00050493          	mv	s1,a0
    80005a74:	00002517          	auipc	a0,0x2
    80005a78:	ca450513          	addi	a0,a0,-860 # 80007718 <CONSOLE_STATUS+0x708>
    80005a7c:	00004797          	auipc	a5,0x4
    80005a80:	5207ae23          	sw	zero,1340(a5) # 80009fb8 <pr+0x18>
    80005a84:	00000097          	auipc	ra,0x0
    80005a88:	034080e7          	jalr	52(ra) # 80005ab8 <__printf>
    80005a8c:	00048513          	mv	a0,s1
    80005a90:	00000097          	auipc	ra,0x0
    80005a94:	028080e7          	jalr	40(ra) # 80005ab8 <__printf>
    80005a98:	00001517          	auipc	a0,0x1
    80005a9c:	76050513          	addi	a0,a0,1888 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80005aa0:	00000097          	auipc	ra,0x0
    80005aa4:	018080e7          	jalr	24(ra) # 80005ab8 <__printf>
    80005aa8:	00100793          	li	a5,1
    80005aac:	00003717          	auipc	a4,0x3
    80005ab0:	24f72623          	sw	a5,588(a4) # 80008cf8 <panicked>
    80005ab4:	0000006f          	j	80005ab4 <panic+0x58>

0000000080005ab8 <__printf>:
    80005ab8:	f3010113          	addi	sp,sp,-208
    80005abc:	08813023          	sd	s0,128(sp)
    80005ac0:	07313423          	sd	s3,104(sp)
    80005ac4:	09010413          	addi	s0,sp,144
    80005ac8:	05813023          	sd	s8,64(sp)
    80005acc:	08113423          	sd	ra,136(sp)
    80005ad0:	06913c23          	sd	s1,120(sp)
    80005ad4:	07213823          	sd	s2,112(sp)
    80005ad8:	07413023          	sd	s4,96(sp)
    80005adc:	05513c23          	sd	s5,88(sp)
    80005ae0:	05613823          	sd	s6,80(sp)
    80005ae4:	05713423          	sd	s7,72(sp)
    80005ae8:	03913c23          	sd	s9,56(sp)
    80005aec:	03a13823          	sd	s10,48(sp)
    80005af0:	03b13423          	sd	s11,40(sp)
    80005af4:	00004317          	auipc	t1,0x4
    80005af8:	4ac30313          	addi	t1,t1,1196 # 80009fa0 <pr>
    80005afc:	01832c03          	lw	s8,24(t1)
    80005b00:	00b43423          	sd	a1,8(s0)
    80005b04:	00c43823          	sd	a2,16(s0)
    80005b08:	00d43c23          	sd	a3,24(s0)
    80005b0c:	02e43023          	sd	a4,32(s0)
    80005b10:	02f43423          	sd	a5,40(s0)
    80005b14:	03043823          	sd	a6,48(s0)
    80005b18:	03143c23          	sd	a7,56(s0)
    80005b1c:	00050993          	mv	s3,a0
    80005b20:	4a0c1663          	bnez	s8,80005fcc <__printf+0x514>
    80005b24:	60098c63          	beqz	s3,8000613c <__printf+0x684>
    80005b28:	0009c503          	lbu	a0,0(s3)
    80005b2c:	00840793          	addi	a5,s0,8
    80005b30:	f6f43c23          	sd	a5,-136(s0)
    80005b34:	00000493          	li	s1,0
    80005b38:	22050063          	beqz	a0,80005d58 <__printf+0x2a0>
    80005b3c:	00002a37          	lui	s4,0x2
    80005b40:	00018ab7          	lui	s5,0x18
    80005b44:	000f4b37          	lui	s6,0xf4
    80005b48:	00989bb7          	lui	s7,0x989
    80005b4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005b50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005b54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005b58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005b5c:	00148c9b          	addiw	s9,s1,1
    80005b60:	02500793          	li	a5,37
    80005b64:	01998933          	add	s2,s3,s9
    80005b68:	38f51263          	bne	a0,a5,80005eec <__printf+0x434>
    80005b6c:	00094783          	lbu	a5,0(s2)
    80005b70:	00078c9b          	sext.w	s9,a5
    80005b74:	1e078263          	beqz	a5,80005d58 <__printf+0x2a0>
    80005b78:	0024849b          	addiw	s1,s1,2
    80005b7c:	07000713          	li	a4,112
    80005b80:	00998933          	add	s2,s3,s1
    80005b84:	38e78a63          	beq	a5,a4,80005f18 <__printf+0x460>
    80005b88:	20f76863          	bltu	a4,a5,80005d98 <__printf+0x2e0>
    80005b8c:	42a78863          	beq	a5,a0,80005fbc <__printf+0x504>
    80005b90:	06400713          	li	a4,100
    80005b94:	40e79663          	bne	a5,a4,80005fa0 <__printf+0x4e8>
    80005b98:	f7843783          	ld	a5,-136(s0)
    80005b9c:	0007a603          	lw	a2,0(a5)
    80005ba0:	00878793          	addi	a5,a5,8
    80005ba4:	f6f43c23          	sd	a5,-136(s0)
    80005ba8:	42064a63          	bltz	a2,80005fdc <__printf+0x524>
    80005bac:	00a00713          	li	a4,10
    80005bb0:	02e677bb          	remuw	a5,a2,a4
    80005bb4:	00002d97          	auipc	s11,0x2
    80005bb8:	b8cd8d93          	addi	s11,s11,-1140 # 80007740 <digits>
    80005bbc:	00900593          	li	a1,9
    80005bc0:	0006051b          	sext.w	a0,a2
    80005bc4:	00000c93          	li	s9,0
    80005bc8:	02079793          	slli	a5,a5,0x20
    80005bcc:	0207d793          	srli	a5,a5,0x20
    80005bd0:	00fd87b3          	add	a5,s11,a5
    80005bd4:	0007c783          	lbu	a5,0(a5)
    80005bd8:	02e656bb          	divuw	a3,a2,a4
    80005bdc:	f8f40023          	sb	a5,-128(s0)
    80005be0:	14c5d863          	bge	a1,a2,80005d30 <__printf+0x278>
    80005be4:	06300593          	li	a1,99
    80005be8:	00100c93          	li	s9,1
    80005bec:	02e6f7bb          	remuw	a5,a3,a4
    80005bf0:	02079793          	slli	a5,a5,0x20
    80005bf4:	0207d793          	srli	a5,a5,0x20
    80005bf8:	00fd87b3          	add	a5,s11,a5
    80005bfc:	0007c783          	lbu	a5,0(a5)
    80005c00:	02e6d73b          	divuw	a4,a3,a4
    80005c04:	f8f400a3          	sb	a5,-127(s0)
    80005c08:	12a5f463          	bgeu	a1,a0,80005d30 <__printf+0x278>
    80005c0c:	00a00693          	li	a3,10
    80005c10:	00900593          	li	a1,9
    80005c14:	02d777bb          	remuw	a5,a4,a3
    80005c18:	02079793          	slli	a5,a5,0x20
    80005c1c:	0207d793          	srli	a5,a5,0x20
    80005c20:	00fd87b3          	add	a5,s11,a5
    80005c24:	0007c503          	lbu	a0,0(a5)
    80005c28:	02d757bb          	divuw	a5,a4,a3
    80005c2c:	f8a40123          	sb	a0,-126(s0)
    80005c30:	48e5f263          	bgeu	a1,a4,800060b4 <__printf+0x5fc>
    80005c34:	06300513          	li	a0,99
    80005c38:	02d7f5bb          	remuw	a1,a5,a3
    80005c3c:	02059593          	slli	a1,a1,0x20
    80005c40:	0205d593          	srli	a1,a1,0x20
    80005c44:	00bd85b3          	add	a1,s11,a1
    80005c48:	0005c583          	lbu	a1,0(a1)
    80005c4c:	02d7d7bb          	divuw	a5,a5,a3
    80005c50:	f8b401a3          	sb	a1,-125(s0)
    80005c54:	48e57263          	bgeu	a0,a4,800060d8 <__printf+0x620>
    80005c58:	3e700513          	li	a0,999
    80005c5c:	02d7f5bb          	remuw	a1,a5,a3
    80005c60:	02059593          	slli	a1,a1,0x20
    80005c64:	0205d593          	srli	a1,a1,0x20
    80005c68:	00bd85b3          	add	a1,s11,a1
    80005c6c:	0005c583          	lbu	a1,0(a1)
    80005c70:	02d7d7bb          	divuw	a5,a5,a3
    80005c74:	f8b40223          	sb	a1,-124(s0)
    80005c78:	46e57663          	bgeu	a0,a4,800060e4 <__printf+0x62c>
    80005c7c:	02d7f5bb          	remuw	a1,a5,a3
    80005c80:	02059593          	slli	a1,a1,0x20
    80005c84:	0205d593          	srli	a1,a1,0x20
    80005c88:	00bd85b3          	add	a1,s11,a1
    80005c8c:	0005c583          	lbu	a1,0(a1)
    80005c90:	02d7d7bb          	divuw	a5,a5,a3
    80005c94:	f8b402a3          	sb	a1,-123(s0)
    80005c98:	46ea7863          	bgeu	s4,a4,80006108 <__printf+0x650>
    80005c9c:	02d7f5bb          	remuw	a1,a5,a3
    80005ca0:	02059593          	slli	a1,a1,0x20
    80005ca4:	0205d593          	srli	a1,a1,0x20
    80005ca8:	00bd85b3          	add	a1,s11,a1
    80005cac:	0005c583          	lbu	a1,0(a1)
    80005cb0:	02d7d7bb          	divuw	a5,a5,a3
    80005cb4:	f8b40323          	sb	a1,-122(s0)
    80005cb8:	3eeaf863          	bgeu	s5,a4,800060a8 <__printf+0x5f0>
    80005cbc:	02d7f5bb          	remuw	a1,a5,a3
    80005cc0:	02059593          	slli	a1,a1,0x20
    80005cc4:	0205d593          	srli	a1,a1,0x20
    80005cc8:	00bd85b3          	add	a1,s11,a1
    80005ccc:	0005c583          	lbu	a1,0(a1)
    80005cd0:	02d7d7bb          	divuw	a5,a5,a3
    80005cd4:	f8b403a3          	sb	a1,-121(s0)
    80005cd8:	42eb7e63          	bgeu	s6,a4,80006114 <__printf+0x65c>
    80005cdc:	02d7f5bb          	remuw	a1,a5,a3
    80005ce0:	02059593          	slli	a1,a1,0x20
    80005ce4:	0205d593          	srli	a1,a1,0x20
    80005ce8:	00bd85b3          	add	a1,s11,a1
    80005cec:	0005c583          	lbu	a1,0(a1)
    80005cf0:	02d7d7bb          	divuw	a5,a5,a3
    80005cf4:	f8b40423          	sb	a1,-120(s0)
    80005cf8:	42ebfc63          	bgeu	s7,a4,80006130 <__printf+0x678>
    80005cfc:	02079793          	slli	a5,a5,0x20
    80005d00:	0207d793          	srli	a5,a5,0x20
    80005d04:	00fd8db3          	add	s11,s11,a5
    80005d08:	000dc703          	lbu	a4,0(s11)
    80005d0c:	00a00793          	li	a5,10
    80005d10:	00900c93          	li	s9,9
    80005d14:	f8e404a3          	sb	a4,-119(s0)
    80005d18:	00065c63          	bgez	a2,80005d30 <__printf+0x278>
    80005d1c:	f9040713          	addi	a4,s0,-112
    80005d20:	00f70733          	add	a4,a4,a5
    80005d24:	02d00693          	li	a3,45
    80005d28:	fed70823          	sb	a3,-16(a4)
    80005d2c:	00078c93          	mv	s9,a5
    80005d30:	f8040793          	addi	a5,s0,-128
    80005d34:	01978cb3          	add	s9,a5,s9
    80005d38:	f7f40d13          	addi	s10,s0,-129
    80005d3c:	000cc503          	lbu	a0,0(s9)
    80005d40:	fffc8c93          	addi	s9,s9,-1
    80005d44:	00000097          	auipc	ra,0x0
    80005d48:	b90080e7          	jalr	-1136(ra) # 800058d4 <consputc>
    80005d4c:	ffac98e3          	bne	s9,s10,80005d3c <__printf+0x284>
    80005d50:	00094503          	lbu	a0,0(s2)
    80005d54:	e00514e3          	bnez	a0,80005b5c <__printf+0xa4>
    80005d58:	1a0c1663          	bnez	s8,80005f04 <__printf+0x44c>
    80005d5c:	08813083          	ld	ra,136(sp)
    80005d60:	08013403          	ld	s0,128(sp)
    80005d64:	07813483          	ld	s1,120(sp)
    80005d68:	07013903          	ld	s2,112(sp)
    80005d6c:	06813983          	ld	s3,104(sp)
    80005d70:	06013a03          	ld	s4,96(sp)
    80005d74:	05813a83          	ld	s5,88(sp)
    80005d78:	05013b03          	ld	s6,80(sp)
    80005d7c:	04813b83          	ld	s7,72(sp)
    80005d80:	04013c03          	ld	s8,64(sp)
    80005d84:	03813c83          	ld	s9,56(sp)
    80005d88:	03013d03          	ld	s10,48(sp)
    80005d8c:	02813d83          	ld	s11,40(sp)
    80005d90:	0d010113          	addi	sp,sp,208
    80005d94:	00008067          	ret
    80005d98:	07300713          	li	a4,115
    80005d9c:	1ce78a63          	beq	a5,a4,80005f70 <__printf+0x4b8>
    80005da0:	07800713          	li	a4,120
    80005da4:	1ee79e63          	bne	a5,a4,80005fa0 <__printf+0x4e8>
    80005da8:	f7843783          	ld	a5,-136(s0)
    80005dac:	0007a703          	lw	a4,0(a5)
    80005db0:	00878793          	addi	a5,a5,8
    80005db4:	f6f43c23          	sd	a5,-136(s0)
    80005db8:	28074263          	bltz	a4,8000603c <__printf+0x584>
    80005dbc:	00002d97          	auipc	s11,0x2
    80005dc0:	984d8d93          	addi	s11,s11,-1660 # 80007740 <digits>
    80005dc4:	00f77793          	andi	a5,a4,15
    80005dc8:	00fd87b3          	add	a5,s11,a5
    80005dcc:	0007c683          	lbu	a3,0(a5)
    80005dd0:	00f00613          	li	a2,15
    80005dd4:	0007079b          	sext.w	a5,a4
    80005dd8:	f8d40023          	sb	a3,-128(s0)
    80005ddc:	0047559b          	srliw	a1,a4,0x4
    80005de0:	0047569b          	srliw	a3,a4,0x4
    80005de4:	00000c93          	li	s9,0
    80005de8:	0ee65063          	bge	a2,a4,80005ec8 <__printf+0x410>
    80005dec:	00f6f693          	andi	a3,a3,15
    80005df0:	00dd86b3          	add	a3,s11,a3
    80005df4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005df8:	0087d79b          	srliw	a5,a5,0x8
    80005dfc:	00100c93          	li	s9,1
    80005e00:	f8d400a3          	sb	a3,-127(s0)
    80005e04:	0cb67263          	bgeu	a2,a1,80005ec8 <__printf+0x410>
    80005e08:	00f7f693          	andi	a3,a5,15
    80005e0c:	00dd86b3          	add	a3,s11,a3
    80005e10:	0006c583          	lbu	a1,0(a3)
    80005e14:	00f00613          	li	a2,15
    80005e18:	0047d69b          	srliw	a3,a5,0x4
    80005e1c:	f8b40123          	sb	a1,-126(s0)
    80005e20:	0047d593          	srli	a1,a5,0x4
    80005e24:	28f67e63          	bgeu	a2,a5,800060c0 <__printf+0x608>
    80005e28:	00f6f693          	andi	a3,a3,15
    80005e2c:	00dd86b3          	add	a3,s11,a3
    80005e30:	0006c503          	lbu	a0,0(a3)
    80005e34:	0087d813          	srli	a6,a5,0x8
    80005e38:	0087d69b          	srliw	a3,a5,0x8
    80005e3c:	f8a401a3          	sb	a0,-125(s0)
    80005e40:	28b67663          	bgeu	a2,a1,800060cc <__printf+0x614>
    80005e44:	00f6f693          	andi	a3,a3,15
    80005e48:	00dd86b3          	add	a3,s11,a3
    80005e4c:	0006c583          	lbu	a1,0(a3)
    80005e50:	00c7d513          	srli	a0,a5,0xc
    80005e54:	00c7d69b          	srliw	a3,a5,0xc
    80005e58:	f8b40223          	sb	a1,-124(s0)
    80005e5c:	29067a63          	bgeu	a2,a6,800060f0 <__printf+0x638>
    80005e60:	00f6f693          	andi	a3,a3,15
    80005e64:	00dd86b3          	add	a3,s11,a3
    80005e68:	0006c583          	lbu	a1,0(a3)
    80005e6c:	0107d813          	srli	a6,a5,0x10
    80005e70:	0107d69b          	srliw	a3,a5,0x10
    80005e74:	f8b402a3          	sb	a1,-123(s0)
    80005e78:	28a67263          	bgeu	a2,a0,800060fc <__printf+0x644>
    80005e7c:	00f6f693          	andi	a3,a3,15
    80005e80:	00dd86b3          	add	a3,s11,a3
    80005e84:	0006c683          	lbu	a3,0(a3)
    80005e88:	0147d79b          	srliw	a5,a5,0x14
    80005e8c:	f8d40323          	sb	a3,-122(s0)
    80005e90:	21067663          	bgeu	a2,a6,8000609c <__printf+0x5e4>
    80005e94:	02079793          	slli	a5,a5,0x20
    80005e98:	0207d793          	srli	a5,a5,0x20
    80005e9c:	00fd8db3          	add	s11,s11,a5
    80005ea0:	000dc683          	lbu	a3,0(s11)
    80005ea4:	00800793          	li	a5,8
    80005ea8:	00700c93          	li	s9,7
    80005eac:	f8d403a3          	sb	a3,-121(s0)
    80005eb0:	00075c63          	bgez	a4,80005ec8 <__printf+0x410>
    80005eb4:	f9040713          	addi	a4,s0,-112
    80005eb8:	00f70733          	add	a4,a4,a5
    80005ebc:	02d00693          	li	a3,45
    80005ec0:	fed70823          	sb	a3,-16(a4)
    80005ec4:	00078c93          	mv	s9,a5
    80005ec8:	f8040793          	addi	a5,s0,-128
    80005ecc:	01978cb3          	add	s9,a5,s9
    80005ed0:	f7f40d13          	addi	s10,s0,-129
    80005ed4:	000cc503          	lbu	a0,0(s9)
    80005ed8:	fffc8c93          	addi	s9,s9,-1
    80005edc:	00000097          	auipc	ra,0x0
    80005ee0:	9f8080e7          	jalr	-1544(ra) # 800058d4 <consputc>
    80005ee4:	ff9d18e3          	bne	s10,s9,80005ed4 <__printf+0x41c>
    80005ee8:	0100006f          	j	80005ef8 <__printf+0x440>
    80005eec:	00000097          	auipc	ra,0x0
    80005ef0:	9e8080e7          	jalr	-1560(ra) # 800058d4 <consputc>
    80005ef4:	000c8493          	mv	s1,s9
    80005ef8:	00094503          	lbu	a0,0(s2)
    80005efc:	c60510e3          	bnez	a0,80005b5c <__printf+0xa4>
    80005f00:	e40c0ee3          	beqz	s8,80005d5c <__printf+0x2a4>
    80005f04:	00004517          	auipc	a0,0x4
    80005f08:	09c50513          	addi	a0,a0,156 # 80009fa0 <pr>
    80005f0c:	00001097          	auipc	ra,0x1
    80005f10:	94c080e7          	jalr	-1716(ra) # 80006858 <release>
    80005f14:	e49ff06f          	j	80005d5c <__printf+0x2a4>
    80005f18:	f7843783          	ld	a5,-136(s0)
    80005f1c:	03000513          	li	a0,48
    80005f20:	01000d13          	li	s10,16
    80005f24:	00878713          	addi	a4,a5,8
    80005f28:	0007bc83          	ld	s9,0(a5)
    80005f2c:	f6e43c23          	sd	a4,-136(s0)
    80005f30:	00000097          	auipc	ra,0x0
    80005f34:	9a4080e7          	jalr	-1628(ra) # 800058d4 <consputc>
    80005f38:	07800513          	li	a0,120
    80005f3c:	00000097          	auipc	ra,0x0
    80005f40:	998080e7          	jalr	-1640(ra) # 800058d4 <consputc>
    80005f44:	00001d97          	auipc	s11,0x1
    80005f48:	7fcd8d93          	addi	s11,s11,2044 # 80007740 <digits>
    80005f4c:	03ccd793          	srli	a5,s9,0x3c
    80005f50:	00fd87b3          	add	a5,s11,a5
    80005f54:	0007c503          	lbu	a0,0(a5)
    80005f58:	fffd0d1b          	addiw	s10,s10,-1
    80005f5c:	004c9c93          	slli	s9,s9,0x4
    80005f60:	00000097          	auipc	ra,0x0
    80005f64:	974080e7          	jalr	-1676(ra) # 800058d4 <consputc>
    80005f68:	fe0d12e3          	bnez	s10,80005f4c <__printf+0x494>
    80005f6c:	f8dff06f          	j	80005ef8 <__printf+0x440>
    80005f70:	f7843783          	ld	a5,-136(s0)
    80005f74:	0007bc83          	ld	s9,0(a5)
    80005f78:	00878793          	addi	a5,a5,8
    80005f7c:	f6f43c23          	sd	a5,-136(s0)
    80005f80:	000c9a63          	bnez	s9,80005f94 <__printf+0x4dc>
    80005f84:	1080006f          	j	8000608c <__printf+0x5d4>
    80005f88:	001c8c93          	addi	s9,s9,1
    80005f8c:	00000097          	auipc	ra,0x0
    80005f90:	948080e7          	jalr	-1720(ra) # 800058d4 <consputc>
    80005f94:	000cc503          	lbu	a0,0(s9)
    80005f98:	fe0518e3          	bnez	a0,80005f88 <__printf+0x4d0>
    80005f9c:	f5dff06f          	j	80005ef8 <__printf+0x440>
    80005fa0:	02500513          	li	a0,37
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	930080e7          	jalr	-1744(ra) # 800058d4 <consputc>
    80005fac:	000c8513          	mv	a0,s9
    80005fb0:	00000097          	auipc	ra,0x0
    80005fb4:	924080e7          	jalr	-1756(ra) # 800058d4 <consputc>
    80005fb8:	f41ff06f          	j	80005ef8 <__printf+0x440>
    80005fbc:	02500513          	li	a0,37
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	914080e7          	jalr	-1772(ra) # 800058d4 <consputc>
    80005fc8:	f31ff06f          	j	80005ef8 <__printf+0x440>
    80005fcc:	00030513          	mv	a0,t1
    80005fd0:	00000097          	auipc	ra,0x0
    80005fd4:	7bc080e7          	jalr	1980(ra) # 8000678c <acquire>
    80005fd8:	b4dff06f          	j	80005b24 <__printf+0x6c>
    80005fdc:	40c0053b          	negw	a0,a2
    80005fe0:	00a00713          	li	a4,10
    80005fe4:	02e576bb          	remuw	a3,a0,a4
    80005fe8:	00001d97          	auipc	s11,0x1
    80005fec:	758d8d93          	addi	s11,s11,1880 # 80007740 <digits>
    80005ff0:	ff700593          	li	a1,-9
    80005ff4:	02069693          	slli	a3,a3,0x20
    80005ff8:	0206d693          	srli	a3,a3,0x20
    80005ffc:	00dd86b3          	add	a3,s11,a3
    80006000:	0006c683          	lbu	a3,0(a3)
    80006004:	02e557bb          	divuw	a5,a0,a4
    80006008:	f8d40023          	sb	a3,-128(s0)
    8000600c:	10b65e63          	bge	a2,a1,80006128 <__printf+0x670>
    80006010:	06300593          	li	a1,99
    80006014:	02e7f6bb          	remuw	a3,a5,a4
    80006018:	02069693          	slli	a3,a3,0x20
    8000601c:	0206d693          	srli	a3,a3,0x20
    80006020:	00dd86b3          	add	a3,s11,a3
    80006024:	0006c683          	lbu	a3,0(a3)
    80006028:	02e7d73b          	divuw	a4,a5,a4
    8000602c:	00200793          	li	a5,2
    80006030:	f8d400a3          	sb	a3,-127(s0)
    80006034:	bca5ece3          	bltu	a1,a0,80005c0c <__printf+0x154>
    80006038:	ce5ff06f          	j	80005d1c <__printf+0x264>
    8000603c:	40e007bb          	negw	a5,a4
    80006040:	00001d97          	auipc	s11,0x1
    80006044:	700d8d93          	addi	s11,s11,1792 # 80007740 <digits>
    80006048:	00f7f693          	andi	a3,a5,15
    8000604c:	00dd86b3          	add	a3,s11,a3
    80006050:	0006c583          	lbu	a1,0(a3)
    80006054:	ff100613          	li	a2,-15
    80006058:	0047d69b          	srliw	a3,a5,0x4
    8000605c:	f8b40023          	sb	a1,-128(s0)
    80006060:	0047d59b          	srliw	a1,a5,0x4
    80006064:	0ac75e63          	bge	a4,a2,80006120 <__printf+0x668>
    80006068:	00f6f693          	andi	a3,a3,15
    8000606c:	00dd86b3          	add	a3,s11,a3
    80006070:	0006c603          	lbu	a2,0(a3)
    80006074:	00f00693          	li	a3,15
    80006078:	0087d79b          	srliw	a5,a5,0x8
    8000607c:	f8c400a3          	sb	a2,-127(s0)
    80006080:	d8b6e4e3          	bltu	a3,a1,80005e08 <__printf+0x350>
    80006084:	00200793          	li	a5,2
    80006088:	e2dff06f          	j	80005eb4 <__printf+0x3fc>
    8000608c:	00001c97          	auipc	s9,0x1
    80006090:	694c8c93          	addi	s9,s9,1684 # 80007720 <CONSOLE_STATUS+0x710>
    80006094:	02800513          	li	a0,40
    80006098:	ef1ff06f          	j	80005f88 <__printf+0x4d0>
    8000609c:	00700793          	li	a5,7
    800060a0:	00600c93          	li	s9,6
    800060a4:	e0dff06f          	j	80005eb0 <__printf+0x3f8>
    800060a8:	00700793          	li	a5,7
    800060ac:	00600c93          	li	s9,6
    800060b0:	c69ff06f          	j	80005d18 <__printf+0x260>
    800060b4:	00300793          	li	a5,3
    800060b8:	00200c93          	li	s9,2
    800060bc:	c5dff06f          	j	80005d18 <__printf+0x260>
    800060c0:	00300793          	li	a5,3
    800060c4:	00200c93          	li	s9,2
    800060c8:	de9ff06f          	j	80005eb0 <__printf+0x3f8>
    800060cc:	00400793          	li	a5,4
    800060d0:	00300c93          	li	s9,3
    800060d4:	dddff06f          	j	80005eb0 <__printf+0x3f8>
    800060d8:	00400793          	li	a5,4
    800060dc:	00300c93          	li	s9,3
    800060e0:	c39ff06f          	j	80005d18 <__printf+0x260>
    800060e4:	00500793          	li	a5,5
    800060e8:	00400c93          	li	s9,4
    800060ec:	c2dff06f          	j	80005d18 <__printf+0x260>
    800060f0:	00500793          	li	a5,5
    800060f4:	00400c93          	li	s9,4
    800060f8:	db9ff06f          	j	80005eb0 <__printf+0x3f8>
    800060fc:	00600793          	li	a5,6
    80006100:	00500c93          	li	s9,5
    80006104:	dadff06f          	j	80005eb0 <__printf+0x3f8>
    80006108:	00600793          	li	a5,6
    8000610c:	00500c93          	li	s9,5
    80006110:	c09ff06f          	j	80005d18 <__printf+0x260>
    80006114:	00800793          	li	a5,8
    80006118:	00700c93          	li	s9,7
    8000611c:	bfdff06f          	j	80005d18 <__printf+0x260>
    80006120:	00100793          	li	a5,1
    80006124:	d91ff06f          	j	80005eb4 <__printf+0x3fc>
    80006128:	00100793          	li	a5,1
    8000612c:	bf1ff06f          	j	80005d1c <__printf+0x264>
    80006130:	00900793          	li	a5,9
    80006134:	00800c93          	li	s9,8
    80006138:	be1ff06f          	j	80005d18 <__printf+0x260>
    8000613c:	00001517          	auipc	a0,0x1
    80006140:	5ec50513          	addi	a0,a0,1516 # 80007728 <CONSOLE_STATUS+0x718>
    80006144:	00000097          	auipc	ra,0x0
    80006148:	918080e7          	jalr	-1768(ra) # 80005a5c <panic>

000000008000614c <printfinit>:
    8000614c:	fe010113          	addi	sp,sp,-32
    80006150:	00813823          	sd	s0,16(sp)
    80006154:	00913423          	sd	s1,8(sp)
    80006158:	00113c23          	sd	ra,24(sp)
    8000615c:	02010413          	addi	s0,sp,32
    80006160:	00004497          	auipc	s1,0x4
    80006164:	e4048493          	addi	s1,s1,-448 # 80009fa0 <pr>
    80006168:	00048513          	mv	a0,s1
    8000616c:	00001597          	auipc	a1,0x1
    80006170:	5cc58593          	addi	a1,a1,1484 # 80007738 <CONSOLE_STATUS+0x728>
    80006174:	00000097          	auipc	ra,0x0
    80006178:	5f4080e7          	jalr	1524(ra) # 80006768 <initlock>
    8000617c:	01813083          	ld	ra,24(sp)
    80006180:	01013403          	ld	s0,16(sp)
    80006184:	0004ac23          	sw	zero,24(s1)
    80006188:	00813483          	ld	s1,8(sp)
    8000618c:	02010113          	addi	sp,sp,32
    80006190:	00008067          	ret

0000000080006194 <uartinit>:
    80006194:	ff010113          	addi	sp,sp,-16
    80006198:	00813423          	sd	s0,8(sp)
    8000619c:	01010413          	addi	s0,sp,16
    800061a0:	100007b7          	lui	a5,0x10000
    800061a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800061a8:	f8000713          	li	a4,-128
    800061ac:	00e781a3          	sb	a4,3(a5)
    800061b0:	00300713          	li	a4,3
    800061b4:	00e78023          	sb	a4,0(a5)
    800061b8:	000780a3          	sb	zero,1(a5)
    800061bc:	00e781a3          	sb	a4,3(a5)
    800061c0:	00700693          	li	a3,7
    800061c4:	00d78123          	sb	a3,2(a5)
    800061c8:	00e780a3          	sb	a4,1(a5)
    800061cc:	00813403          	ld	s0,8(sp)
    800061d0:	01010113          	addi	sp,sp,16
    800061d4:	00008067          	ret

00000000800061d8 <uartputc>:
    800061d8:	00003797          	auipc	a5,0x3
    800061dc:	b207a783          	lw	a5,-1248(a5) # 80008cf8 <panicked>
    800061e0:	00078463          	beqz	a5,800061e8 <uartputc+0x10>
    800061e4:	0000006f          	j	800061e4 <uartputc+0xc>
    800061e8:	fd010113          	addi	sp,sp,-48
    800061ec:	02813023          	sd	s0,32(sp)
    800061f0:	00913c23          	sd	s1,24(sp)
    800061f4:	01213823          	sd	s2,16(sp)
    800061f8:	01313423          	sd	s3,8(sp)
    800061fc:	02113423          	sd	ra,40(sp)
    80006200:	03010413          	addi	s0,sp,48
    80006204:	00003917          	auipc	s2,0x3
    80006208:	afc90913          	addi	s2,s2,-1284 # 80008d00 <uart_tx_r>
    8000620c:	00093783          	ld	a5,0(s2)
    80006210:	00003497          	auipc	s1,0x3
    80006214:	af848493          	addi	s1,s1,-1288 # 80008d08 <uart_tx_w>
    80006218:	0004b703          	ld	a4,0(s1)
    8000621c:	02078693          	addi	a3,a5,32
    80006220:	00050993          	mv	s3,a0
    80006224:	02e69c63          	bne	a3,a4,8000625c <uartputc+0x84>
    80006228:	00001097          	auipc	ra,0x1
    8000622c:	834080e7          	jalr	-1996(ra) # 80006a5c <push_on>
    80006230:	00093783          	ld	a5,0(s2)
    80006234:	0004b703          	ld	a4,0(s1)
    80006238:	02078793          	addi	a5,a5,32
    8000623c:	00e79463          	bne	a5,a4,80006244 <uartputc+0x6c>
    80006240:	0000006f          	j	80006240 <uartputc+0x68>
    80006244:	00001097          	auipc	ra,0x1
    80006248:	88c080e7          	jalr	-1908(ra) # 80006ad0 <pop_on>
    8000624c:	00093783          	ld	a5,0(s2)
    80006250:	0004b703          	ld	a4,0(s1)
    80006254:	02078693          	addi	a3,a5,32
    80006258:	fce688e3          	beq	a3,a4,80006228 <uartputc+0x50>
    8000625c:	01f77693          	andi	a3,a4,31
    80006260:	00004597          	auipc	a1,0x4
    80006264:	d6058593          	addi	a1,a1,-672 # 80009fc0 <uart_tx_buf>
    80006268:	00d586b3          	add	a3,a1,a3
    8000626c:	00170713          	addi	a4,a4,1
    80006270:	01368023          	sb	s3,0(a3)
    80006274:	00e4b023          	sd	a4,0(s1)
    80006278:	10000637          	lui	a2,0x10000
    8000627c:	02f71063          	bne	a4,a5,8000629c <uartputc+0xc4>
    80006280:	0340006f          	j	800062b4 <uartputc+0xdc>
    80006284:	00074703          	lbu	a4,0(a4)
    80006288:	00f93023          	sd	a5,0(s2)
    8000628c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006290:	00093783          	ld	a5,0(s2)
    80006294:	0004b703          	ld	a4,0(s1)
    80006298:	00f70e63          	beq	a4,a5,800062b4 <uartputc+0xdc>
    8000629c:	00564683          	lbu	a3,5(a2)
    800062a0:	01f7f713          	andi	a4,a5,31
    800062a4:	00e58733          	add	a4,a1,a4
    800062a8:	0206f693          	andi	a3,a3,32
    800062ac:	00178793          	addi	a5,a5,1
    800062b0:	fc069ae3          	bnez	a3,80006284 <uartputc+0xac>
    800062b4:	02813083          	ld	ra,40(sp)
    800062b8:	02013403          	ld	s0,32(sp)
    800062bc:	01813483          	ld	s1,24(sp)
    800062c0:	01013903          	ld	s2,16(sp)
    800062c4:	00813983          	ld	s3,8(sp)
    800062c8:	03010113          	addi	sp,sp,48
    800062cc:	00008067          	ret

00000000800062d0 <uartputc_sync>:
    800062d0:	ff010113          	addi	sp,sp,-16
    800062d4:	00813423          	sd	s0,8(sp)
    800062d8:	01010413          	addi	s0,sp,16
    800062dc:	00003717          	auipc	a4,0x3
    800062e0:	a1c72703          	lw	a4,-1508(a4) # 80008cf8 <panicked>
    800062e4:	02071663          	bnez	a4,80006310 <uartputc_sync+0x40>
    800062e8:	00050793          	mv	a5,a0
    800062ec:	100006b7          	lui	a3,0x10000
    800062f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800062f4:	02077713          	andi	a4,a4,32
    800062f8:	fe070ce3          	beqz	a4,800062f0 <uartputc_sync+0x20>
    800062fc:	0ff7f793          	andi	a5,a5,255
    80006300:	00f68023          	sb	a5,0(a3)
    80006304:	00813403          	ld	s0,8(sp)
    80006308:	01010113          	addi	sp,sp,16
    8000630c:	00008067          	ret
    80006310:	0000006f          	j	80006310 <uartputc_sync+0x40>

0000000080006314 <uartstart>:
    80006314:	ff010113          	addi	sp,sp,-16
    80006318:	00813423          	sd	s0,8(sp)
    8000631c:	01010413          	addi	s0,sp,16
    80006320:	00003617          	auipc	a2,0x3
    80006324:	9e060613          	addi	a2,a2,-1568 # 80008d00 <uart_tx_r>
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	9e050513          	addi	a0,a0,-1568 # 80008d08 <uart_tx_w>
    80006330:	00063783          	ld	a5,0(a2)
    80006334:	00053703          	ld	a4,0(a0)
    80006338:	04f70263          	beq	a4,a5,8000637c <uartstart+0x68>
    8000633c:	100005b7          	lui	a1,0x10000
    80006340:	00004817          	auipc	a6,0x4
    80006344:	c8080813          	addi	a6,a6,-896 # 80009fc0 <uart_tx_buf>
    80006348:	01c0006f          	j	80006364 <uartstart+0x50>
    8000634c:	0006c703          	lbu	a4,0(a3)
    80006350:	00f63023          	sd	a5,0(a2)
    80006354:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006358:	00063783          	ld	a5,0(a2)
    8000635c:	00053703          	ld	a4,0(a0)
    80006360:	00f70e63          	beq	a4,a5,8000637c <uartstart+0x68>
    80006364:	01f7f713          	andi	a4,a5,31
    80006368:	00e806b3          	add	a3,a6,a4
    8000636c:	0055c703          	lbu	a4,5(a1)
    80006370:	00178793          	addi	a5,a5,1
    80006374:	02077713          	andi	a4,a4,32
    80006378:	fc071ae3          	bnez	a4,8000634c <uartstart+0x38>
    8000637c:	00813403          	ld	s0,8(sp)
    80006380:	01010113          	addi	sp,sp,16
    80006384:	00008067          	ret

0000000080006388 <uartgetc>:
    80006388:	ff010113          	addi	sp,sp,-16
    8000638c:	00813423          	sd	s0,8(sp)
    80006390:	01010413          	addi	s0,sp,16
    80006394:	10000737          	lui	a4,0x10000
    80006398:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000639c:	0017f793          	andi	a5,a5,1
    800063a0:	00078c63          	beqz	a5,800063b8 <uartgetc+0x30>
    800063a4:	00074503          	lbu	a0,0(a4)
    800063a8:	0ff57513          	andi	a0,a0,255
    800063ac:	00813403          	ld	s0,8(sp)
    800063b0:	01010113          	addi	sp,sp,16
    800063b4:	00008067          	ret
    800063b8:	fff00513          	li	a0,-1
    800063bc:	ff1ff06f          	j	800063ac <uartgetc+0x24>

00000000800063c0 <uartintr>:
    800063c0:	100007b7          	lui	a5,0x10000
    800063c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800063c8:	0017f793          	andi	a5,a5,1
    800063cc:	0a078463          	beqz	a5,80006474 <uartintr+0xb4>
    800063d0:	fe010113          	addi	sp,sp,-32
    800063d4:	00813823          	sd	s0,16(sp)
    800063d8:	00913423          	sd	s1,8(sp)
    800063dc:	00113c23          	sd	ra,24(sp)
    800063e0:	02010413          	addi	s0,sp,32
    800063e4:	100004b7          	lui	s1,0x10000
    800063e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800063ec:	0ff57513          	andi	a0,a0,255
    800063f0:	fffff097          	auipc	ra,0xfffff
    800063f4:	534080e7          	jalr	1332(ra) # 80005924 <consoleintr>
    800063f8:	0054c783          	lbu	a5,5(s1)
    800063fc:	0017f793          	andi	a5,a5,1
    80006400:	fe0794e3          	bnez	a5,800063e8 <uartintr+0x28>
    80006404:	00003617          	auipc	a2,0x3
    80006408:	8fc60613          	addi	a2,a2,-1796 # 80008d00 <uart_tx_r>
    8000640c:	00003517          	auipc	a0,0x3
    80006410:	8fc50513          	addi	a0,a0,-1796 # 80008d08 <uart_tx_w>
    80006414:	00063783          	ld	a5,0(a2)
    80006418:	00053703          	ld	a4,0(a0)
    8000641c:	04f70263          	beq	a4,a5,80006460 <uartintr+0xa0>
    80006420:	100005b7          	lui	a1,0x10000
    80006424:	00004817          	auipc	a6,0x4
    80006428:	b9c80813          	addi	a6,a6,-1124 # 80009fc0 <uart_tx_buf>
    8000642c:	01c0006f          	j	80006448 <uartintr+0x88>
    80006430:	0006c703          	lbu	a4,0(a3)
    80006434:	00f63023          	sd	a5,0(a2)
    80006438:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000643c:	00063783          	ld	a5,0(a2)
    80006440:	00053703          	ld	a4,0(a0)
    80006444:	00f70e63          	beq	a4,a5,80006460 <uartintr+0xa0>
    80006448:	01f7f713          	andi	a4,a5,31
    8000644c:	00e806b3          	add	a3,a6,a4
    80006450:	0055c703          	lbu	a4,5(a1)
    80006454:	00178793          	addi	a5,a5,1
    80006458:	02077713          	andi	a4,a4,32
    8000645c:	fc071ae3          	bnez	a4,80006430 <uartintr+0x70>
    80006460:	01813083          	ld	ra,24(sp)
    80006464:	01013403          	ld	s0,16(sp)
    80006468:	00813483          	ld	s1,8(sp)
    8000646c:	02010113          	addi	sp,sp,32
    80006470:	00008067          	ret
    80006474:	00003617          	auipc	a2,0x3
    80006478:	88c60613          	addi	a2,a2,-1908 # 80008d00 <uart_tx_r>
    8000647c:	00003517          	auipc	a0,0x3
    80006480:	88c50513          	addi	a0,a0,-1908 # 80008d08 <uart_tx_w>
    80006484:	00063783          	ld	a5,0(a2)
    80006488:	00053703          	ld	a4,0(a0)
    8000648c:	04f70263          	beq	a4,a5,800064d0 <uartintr+0x110>
    80006490:	100005b7          	lui	a1,0x10000
    80006494:	00004817          	auipc	a6,0x4
    80006498:	b2c80813          	addi	a6,a6,-1236 # 80009fc0 <uart_tx_buf>
    8000649c:	01c0006f          	j	800064b8 <uartintr+0xf8>
    800064a0:	0006c703          	lbu	a4,0(a3)
    800064a4:	00f63023          	sd	a5,0(a2)
    800064a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800064ac:	00063783          	ld	a5,0(a2)
    800064b0:	00053703          	ld	a4,0(a0)
    800064b4:	02f70063          	beq	a4,a5,800064d4 <uartintr+0x114>
    800064b8:	01f7f713          	andi	a4,a5,31
    800064bc:	00e806b3          	add	a3,a6,a4
    800064c0:	0055c703          	lbu	a4,5(a1)
    800064c4:	00178793          	addi	a5,a5,1
    800064c8:	02077713          	andi	a4,a4,32
    800064cc:	fc071ae3          	bnez	a4,800064a0 <uartintr+0xe0>
    800064d0:	00008067          	ret
    800064d4:	00008067          	ret

00000000800064d8 <kinit>:
    800064d8:	fc010113          	addi	sp,sp,-64
    800064dc:	02913423          	sd	s1,40(sp)
    800064e0:	fffff7b7          	lui	a5,0xfffff
    800064e4:	00005497          	auipc	s1,0x5
    800064e8:	afb48493          	addi	s1,s1,-1285 # 8000afdf <end+0xfff>
    800064ec:	02813823          	sd	s0,48(sp)
    800064f0:	01313c23          	sd	s3,24(sp)
    800064f4:	00f4f4b3          	and	s1,s1,a5
    800064f8:	02113c23          	sd	ra,56(sp)
    800064fc:	03213023          	sd	s2,32(sp)
    80006500:	01413823          	sd	s4,16(sp)
    80006504:	01513423          	sd	s5,8(sp)
    80006508:	04010413          	addi	s0,sp,64
    8000650c:	000017b7          	lui	a5,0x1
    80006510:	01100993          	li	s3,17
    80006514:	00f487b3          	add	a5,s1,a5
    80006518:	01b99993          	slli	s3,s3,0x1b
    8000651c:	06f9e063          	bltu	s3,a5,8000657c <kinit+0xa4>
    80006520:	00004a97          	auipc	s5,0x4
    80006524:	ac0a8a93          	addi	s5,s5,-1344 # 80009fe0 <end>
    80006528:	0754ec63          	bltu	s1,s5,800065a0 <kinit+0xc8>
    8000652c:	0734fa63          	bgeu	s1,s3,800065a0 <kinit+0xc8>
    80006530:	00088a37          	lui	s4,0x88
    80006534:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006538:	00002917          	auipc	s2,0x2
    8000653c:	7d890913          	addi	s2,s2,2008 # 80008d10 <kmem>
    80006540:	00ca1a13          	slli	s4,s4,0xc
    80006544:	0140006f          	j	80006558 <kinit+0x80>
    80006548:	000017b7          	lui	a5,0x1
    8000654c:	00f484b3          	add	s1,s1,a5
    80006550:	0554e863          	bltu	s1,s5,800065a0 <kinit+0xc8>
    80006554:	0534f663          	bgeu	s1,s3,800065a0 <kinit+0xc8>
    80006558:	00001637          	lui	a2,0x1
    8000655c:	00100593          	li	a1,1
    80006560:	00048513          	mv	a0,s1
    80006564:	00000097          	auipc	ra,0x0
    80006568:	5e4080e7          	jalr	1508(ra) # 80006b48 <__memset>
    8000656c:	00093783          	ld	a5,0(s2)
    80006570:	00f4b023          	sd	a5,0(s1)
    80006574:	00993023          	sd	s1,0(s2)
    80006578:	fd4498e3          	bne	s1,s4,80006548 <kinit+0x70>
    8000657c:	03813083          	ld	ra,56(sp)
    80006580:	03013403          	ld	s0,48(sp)
    80006584:	02813483          	ld	s1,40(sp)
    80006588:	02013903          	ld	s2,32(sp)
    8000658c:	01813983          	ld	s3,24(sp)
    80006590:	01013a03          	ld	s4,16(sp)
    80006594:	00813a83          	ld	s5,8(sp)
    80006598:	04010113          	addi	sp,sp,64
    8000659c:	00008067          	ret
    800065a0:	00001517          	auipc	a0,0x1
    800065a4:	1b850513          	addi	a0,a0,440 # 80007758 <digits+0x18>
    800065a8:	fffff097          	auipc	ra,0xfffff
    800065ac:	4b4080e7          	jalr	1204(ra) # 80005a5c <panic>

00000000800065b0 <freerange>:
    800065b0:	fc010113          	addi	sp,sp,-64
    800065b4:	000017b7          	lui	a5,0x1
    800065b8:	02913423          	sd	s1,40(sp)
    800065bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800065c0:	009504b3          	add	s1,a0,s1
    800065c4:	fffff537          	lui	a0,0xfffff
    800065c8:	02813823          	sd	s0,48(sp)
    800065cc:	02113c23          	sd	ra,56(sp)
    800065d0:	03213023          	sd	s2,32(sp)
    800065d4:	01313c23          	sd	s3,24(sp)
    800065d8:	01413823          	sd	s4,16(sp)
    800065dc:	01513423          	sd	s5,8(sp)
    800065e0:	01613023          	sd	s6,0(sp)
    800065e4:	04010413          	addi	s0,sp,64
    800065e8:	00a4f4b3          	and	s1,s1,a0
    800065ec:	00f487b3          	add	a5,s1,a5
    800065f0:	06f5e463          	bltu	a1,a5,80006658 <freerange+0xa8>
    800065f4:	00004a97          	auipc	s5,0x4
    800065f8:	9eca8a93          	addi	s5,s5,-1556 # 80009fe0 <end>
    800065fc:	0954e263          	bltu	s1,s5,80006680 <freerange+0xd0>
    80006600:	01100993          	li	s3,17
    80006604:	01b99993          	slli	s3,s3,0x1b
    80006608:	0734fc63          	bgeu	s1,s3,80006680 <freerange+0xd0>
    8000660c:	00058a13          	mv	s4,a1
    80006610:	00002917          	auipc	s2,0x2
    80006614:	70090913          	addi	s2,s2,1792 # 80008d10 <kmem>
    80006618:	00002b37          	lui	s6,0x2
    8000661c:	0140006f          	j	80006630 <freerange+0x80>
    80006620:	000017b7          	lui	a5,0x1
    80006624:	00f484b3          	add	s1,s1,a5
    80006628:	0554ec63          	bltu	s1,s5,80006680 <freerange+0xd0>
    8000662c:	0534fa63          	bgeu	s1,s3,80006680 <freerange+0xd0>
    80006630:	00001637          	lui	a2,0x1
    80006634:	00100593          	li	a1,1
    80006638:	00048513          	mv	a0,s1
    8000663c:	00000097          	auipc	ra,0x0
    80006640:	50c080e7          	jalr	1292(ra) # 80006b48 <__memset>
    80006644:	00093703          	ld	a4,0(s2)
    80006648:	016487b3          	add	a5,s1,s6
    8000664c:	00e4b023          	sd	a4,0(s1)
    80006650:	00993023          	sd	s1,0(s2)
    80006654:	fcfa76e3          	bgeu	s4,a5,80006620 <freerange+0x70>
    80006658:	03813083          	ld	ra,56(sp)
    8000665c:	03013403          	ld	s0,48(sp)
    80006660:	02813483          	ld	s1,40(sp)
    80006664:	02013903          	ld	s2,32(sp)
    80006668:	01813983          	ld	s3,24(sp)
    8000666c:	01013a03          	ld	s4,16(sp)
    80006670:	00813a83          	ld	s5,8(sp)
    80006674:	00013b03          	ld	s6,0(sp)
    80006678:	04010113          	addi	sp,sp,64
    8000667c:	00008067          	ret
    80006680:	00001517          	auipc	a0,0x1
    80006684:	0d850513          	addi	a0,a0,216 # 80007758 <digits+0x18>
    80006688:	fffff097          	auipc	ra,0xfffff
    8000668c:	3d4080e7          	jalr	980(ra) # 80005a5c <panic>

0000000080006690 <kfree>:
    80006690:	fe010113          	addi	sp,sp,-32
    80006694:	00813823          	sd	s0,16(sp)
    80006698:	00113c23          	sd	ra,24(sp)
    8000669c:	00913423          	sd	s1,8(sp)
    800066a0:	02010413          	addi	s0,sp,32
    800066a4:	03451793          	slli	a5,a0,0x34
    800066a8:	04079c63          	bnez	a5,80006700 <kfree+0x70>
    800066ac:	00004797          	auipc	a5,0x4
    800066b0:	93478793          	addi	a5,a5,-1740 # 80009fe0 <end>
    800066b4:	00050493          	mv	s1,a0
    800066b8:	04f56463          	bltu	a0,a5,80006700 <kfree+0x70>
    800066bc:	01100793          	li	a5,17
    800066c0:	01b79793          	slli	a5,a5,0x1b
    800066c4:	02f57e63          	bgeu	a0,a5,80006700 <kfree+0x70>
    800066c8:	00001637          	lui	a2,0x1
    800066cc:	00100593          	li	a1,1
    800066d0:	00000097          	auipc	ra,0x0
    800066d4:	478080e7          	jalr	1144(ra) # 80006b48 <__memset>
    800066d8:	00002797          	auipc	a5,0x2
    800066dc:	63878793          	addi	a5,a5,1592 # 80008d10 <kmem>
    800066e0:	0007b703          	ld	a4,0(a5)
    800066e4:	01813083          	ld	ra,24(sp)
    800066e8:	01013403          	ld	s0,16(sp)
    800066ec:	00e4b023          	sd	a4,0(s1)
    800066f0:	0097b023          	sd	s1,0(a5)
    800066f4:	00813483          	ld	s1,8(sp)
    800066f8:	02010113          	addi	sp,sp,32
    800066fc:	00008067          	ret
    80006700:	00001517          	auipc	a0,0x1
    80006704:	05850513          	addi	a0,a0,88 # 80007758 <digits+0x18>
    80006708:	fffff097          	auipc	ra,0xfffff
    8000670c:	354080e7          	jalr	852(ra) # 80005a5c <panic>

0000000080006710 <kalloc>:
    80006710:	fe010113          	addi	sp,sp,-32
    80006714:	00813823          	sd	s0,16(sp)
    80006718:	00913423          	sd	s1,8(sp)
    8000671c:	00113c23          	sd	ra,24(sp)
    80006720:	02010413          	addi	s0,sp,32
    80006724:	00002797          	auipc	a5,0x2
    80006728:	5ec78793          	addi	a5,a5,1516 # 80008d10 <kmem>
    8000672c:	0007b483          	ld	s1,0(a5)
    80006730:	02048063          	beqz	s1,80006750 <kalloc+0x40>
    80006734:	0004b703          	ld	a4,0(s1)
    80006738:	00001637          	lui	a2,0x1
    8000673c:	00500593          	li	a1,5
    80006740:	00048513          	mv	a0,s1
    80006744:	00e7b023          	sd	a4,0(a5)
    80006748:	00000097          	auipc	ra,0x0
    8000674c:	400080e7          	jalr	1024(ra) # 80006b48 <__memset>
    80006750:	01813083          	ld	ra,24(sp)
    80006754:	01013403          	ld	s0,16(sp)
    80006758:	00048513          	mv	a0,s1
    8000675c:	00813483          	ld	s1,8(sp)
    80006760:	02010113          	addi	sp,sp,32
    80006764:	00008067          	ret

0000000080006768 <initlock>:
    80006768:	ff010113          	addi	sp,sp,-16
    8000676c:	00813423          	sd	s0,8(sp)
    80006770:	01010413          	addi	s0,sp,16
    80006774:	00813403          	ld	s0,8(sp)
    80006778:	00b53423          	sd	a1,8(a0)
    8000677c:	00052023          	sw	zero,0(a0)
    80006780:	00053823          	sd	zero,16(a0)
    80006784:	01010113          	addi	sp,sp,16
    80006788:	00008067          	ret

000000008000678c <acquire>:
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00813823          	sd	s0,16(sp)
    80006794:	00913423          	sd	s1,8(sp)
    80006798:	00113c23          	sd	ra,24(sp)
    8000679c:	01213023          	sd	s2,0(sp)
    800067a0:	02010413          	addi	s0,sp,32
    800067a4:	00050493          	mv	s1,a0
    800067a8:	10002973          	csrr	s2,sstatus
    800067ac:	100027f3          	csrr	a5,sstatus
    800067b0:	ffd7f793          	andi	a5,a5,-3
    800067b4:	10079073          	csrw	sstatus,a5
    800067b8:	fffff097          	auipc	ra,0xfffff
    800067bc:	8e8080e7          	jalr	-1816(ra) # 800050a0 <mycpu>
    800067c0:	07852783          	lw	a5,120(a0)
    800067c4:	06078e63          	beqz	a5,80006840 <acquire+0xb4>
    800067c8:	fffff097          	auipc	ra,0xfffff
    800067cc:	8d8080e7          	jalr	-1832(ra) # 800050a0 <mycpu>
    800067d0:	07852783          	lw	a5,120(a0)
    800067d4:	0004a703          	lw	a4,0(s1)
    800067d8:	0017879b          	addiw	a5,a5,1
    800067dc:	06f52c23          	sw	a5,120(a0)
    800067e0:	04071063          	bnez	a4,80006820 <acquire+0x94>
    800067e4:	00100713          	li	a4,1
    800067e8:	00070793          	mv	a5,a4
    800067ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800067f0:	0007879b          	sext.w	a5,a5
    800067f4:	fe079ae3          	bnez	a5,800067e8 <acquire+0x5c>
    800067f8:	0ff0000f          	fence
    800067fc:	fffff097          	auipc	ra,0xfffff
    80006800:	8a4080e7          	jalr	-1884(ra) # 800050a0 <mycpu>
    80006804:	01813083          	ld	ra,24(sp)
    80006808:	01013403          	ld	s0,16(sp)
    8000680c:	00a4b823          	sd	a0,16(s1)
    80006810:	00013903          	ld	s2,0(sp)
    80006814:	00813483          	ld	s1,8(sp)
    80006818:	02010113          	addi	sp,sp,32
    8000681c:	00008067          	ret
    80006820:	0104b903          	ld	s2,16(s1)
    80006824:	fffff097          	auipc	ra,0xfffff
    80006828:	87c080e7          	jalr	-1924(ra) # 800050a0 <mycpu>
    8000682c:	faa91ce3          	bne	s2,a0,800067e4 <acquire+0x58>
    80006830:	00001517          	auipc	a0,0x1
    80006834:	f3050513          	addi	a0,a0,-208 # 80007760 <digits+0x20>
    80006838:	fffff097          	auipc	ra,0xfffff
    8000683c:	224080e7          	jalr	548(ra) # 80005a5c <panic>
    80006840:	00195913          	srli	s2,s2,0x1
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	85c080e7          	jalr	-1956(ra) # 800050a0 <mycpu>
    8000684c:	00197913          	andi	s2,s2,1
    80006850:	07252e23          	sw	s2,124(a0)
    80006854:	f75ff06f          	j	800067c8 <acquire+0x3c>

0000000080006858 <release>:
    80006858:	fe010113          	addi	sp,sp,-32
    8000685c:	00813823          	sd	s0,16(sp)
    80006860:	00113c23          	sd	ra,24(sp)
    80006864:	00913423          	sd	s1,8(sp)
    80006868:	01213023          	sd	s2,0(sp)
    8000686c:	02010413          	addi	s0,sp,32
    80006870:	00052783          	lw	a5,0(a0)
    80006874:	00079a63          	bnez	a5,80006888 <release+0x30>
    80006878:	00001517          	auipc	a0,0x1
    8000687c:	ef050513          	addi	a0,a0,-272 # 80007768 <digits+0x28>
    80006880:	fffff097          	auipc	ra,0xfffff
    80006884:	1dc080e7          	jalr	476(ra) # 80005a5c <panic>
    80006888:	01053903          	ld	s2,16(a0)
    8000688c:	00050493          	mv	s1,a0
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	810080e7          	jalr	-2032(ra) # 800050a0 <mycpu>
    80006898:	fea910e3          	bne	s2,a0,80006878 <release+0x20>
    8000689c:	0004b823          	sd	zero,16(s1)
    800068a0:	0ff0000f          	fence
    800068a4:	0f50000f          	fence	iorw,ow
    800068a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800068ac:	ffffe097          	auipc	ra,0xffffe
    800068b0:	7f4080e7          	jalr	2036(ra) # 800050a0 <mycpu>
    800068b4:	100027f3          	csrr	a5,sstatus
    800068b8:	0027f793          	andi	a5,a5,2
    800068bc:	04079a63          	bnez	a5,80006910 <release+0xb8>
    800068c0:	07852783          	lw	a5,120(a0)
    800068c4:	02f05e63          	blez	a5,80006900 <release+0xa8>
    800068c8:	fff7871b          	addiw	a4,a5,-1
    800068cc:	06e52c23          	sw	a4,120(a0)
    800068d0:	00071c63          	bnez	a4,800068e8 <release+0x90>
    800068d4:	07c52783          	lw	a5,124(a0)
    800068d8:	00078863          	beqz	a5,800068e8 <release+0x90>
    800068dc:	100027f3          	csrr	a5,sstatus
    800068e0:	0027e793          	ori	a5,a5,2
    800068e4:	10079073          	csrw	sstatus,a5
    800068e8:	01813083          	ld	ra,24(sp)
    800068ec:	01013403          	ld	s0,16(sp)
    800068f0:	00813483          	ld	s1,8(sp)
    800068f4:	00013903          	ld	s2,0(sp)
    800068f8:	02010113          	addi	sp,sp,32
    800068fc:	00008067          	ret
    80006900:	00001517          	auipc	a0,0x1
    80006904:	e8850513          	addi	a0,a0,-376 # 80007788 <digits+0x48>
    80006908:	fffff097          	auipc	ra,0xfffff
    8000690c:	154080e7          	jalr	340(ra) # 80005a5c <panic>
    80006910:	00001517          	auipc	a0,0x1
    80006914:	e6050513          	addi	a0,a0,-416 # 80007770 <digits+0x30>
    80006918:	fffff097          	auipc	ra,0xfffff
    8000691c:	144080e7          	jalr	324(ra) # 80005a5c <panic>

0000000080006920 <holding>:
    80006920:	00052783          	lw	a5,0(a0)
    80006924:	00079663          	bnez	a5,80006930 <holding+0x10>
    80006928:	00000513          	li	a0,0
    8000692c:	00008067          	ret
    80006930:	fe010113          	addi	sp,sp,-32
    80006934:	00813823          	sd	s0,16(sp)
    80006938:	00913423          	sd	s1,8(sp)
    8000693c:	00113c23          	sd	ra,24(sp)
    80006940:	02010413          	addi	s0,sp,32
    80006944:	01053483          	ld	s1,16(a0)
    80006948:	ffffe097          	auipc	ra,0xffffe
    8000694c:	758080e7          	jalr	1880(ra) # 800050a0 <mycpu>
    80006950:	01813083          	ld	ra,24(sp)
    80006954:	01013403          	ld	s0,16(sp)
    80006958:	40a48533          	sub	a0,s1,a0
    8000695c:	00153513          	seqz	a0,a0
    80006960:	00813483          	ld	s1,8(sp)
    80006964:	02010113          	addi	sp,sp,32
    80006968:	00008067          	ret

000000008000696c <push_off>:
    8000696c:	fe010113          	addi	sp,sp,-32
    80006970:	00813823          	sd	s0,16(sp)
    80006974:	00113c23          	sd	ra,24(sp)
    80006978:	00913423          	sd	s1,8(sp)
    8000697c:	02010413          	addi	s0,sp,32
    80006980:	100024f3          	csrr	s1,sstatus
    80006984:	100027f3          	csrr	a5,sstatus
    80006988:	ffd7f793          	andi	a5,a5,-3
    8000698c:	10079073          	csrw	sstatus,a5
    80006990:	ffffe097          	auipc	ra,0xffffe
    80006994:	710080e7          	jalr	1808(ra) # 800050a0 <mycpu>
    80006998:	07852783          	lw	a5,120(a0)
    8000699c:	02078663          	beqz	a5,800069c8 <push_off+0x5c>
    800069a0:	ffffe097          	auipc	ra,0xffffe
    800069a4:	700080e7          	jalr	1792(ra) # 800050a0 <mycpu>
    800069a8:	07852783          	lw	a5,120(a0)
    800069ac:	01813083          	ld	ra,24(sp)
    800069b0:	01013403          	ld	s0,16(sp)
    800069b4:	0017879b          	addiw	a5,a5,1
    800069b8:	06f52c23          	sw	a5,120(a0)
    800069bc:	00813483          	ld	s1,8(sp)
    800069c0:	02010113          	addi	sp,sp,32
    800069c4:	00008067          	ret
    800069c8:	0014d493          	srli	s1,s1,0x1
    800069cc:	ffffe097          	auipc	ra,0xffffe
    800069d0:	6d4080e7          	jalr	1748(ra) # 800050a0 <mycpu>
    800069d4:	0014f493          	andi	s1,s1,1
    800069d8:	06952e23          	sw	s1,124(a0)
    800069dc:	fc5ff06f          	j	800069a0 <push_off+0x34>

00000000800069e0 <pop_off>:
    800069e0:	ff010113          	addi	sp,sp,-16
    800069e4:	00813023          	sd	s0,0(sp)
    800069e8:	00113423          	sd	ra,8(sp)
    800069ec:	01010413          	addi	s0,sp,16
    800069f0:	ffffe097          	auipc	ra,0xffffe
    800069f4:	6b0080e7          	jalr	1712(ra) # 800050a0 <mycpu>
    800069f8:	100027f3          	csrr	a5,sstatus
    800069fc:	0027f793          	andi	a5,a5,2
    80006a00:	04079663          	bnez	a5,80006a4c <pop_off+0x6c>
    80006a04:	07852783          	lw	a5,120(a0)
    80006a08:	02f05a63          	blez	a5,80006a3c <pop_off+0x5c>
    80006a0c:	fff7871b          	addiw	a4,a5,-1
    80006a10:	06e52c23          	sw	a4,120(a0)
    80006a14:	00071c63          	bnez	a4,80006a2c <pop_off+0x4c>
    80006a18:	07c52783          	lw	a5,124(a0)
    80006a1c:	00078863          	beqz	a5,80006a2c <pop_off+0x4c>
    80006a20:	100027f3          	csrr	a5,sstatus
    80006a24:	0027e793          	ori	a5,a5,2
    80006a28:	10079073          	csrw	sstatus,a5
    80006a2c:	00813083          	ld	ra,8(sp)
    80006a30:	00013403          	ld	s0,0(sp)
    80006a34:	01010113          	addi	sp,sp,16
    80006a38:	00008067          	ret
    80006a3c:	00001517          	auipc	a0,0x1
    80006a40:	d4c50513          	addi	a0,a0,-692 # 80007788 <digits+0x48>
    80006a44:	fffff097          	auipc	ra,0xfffff
    80006a48:	018080e7          	jalr	24(ra) # 80005a5c <panic>
    80006a4c:	00001517          	auipc	a0,0x1
    80006a50:	d2450513          	addi	a0,a0,-732 # 80007770 <digits+0x30>
    80006a54:	fffff097          	auipc	ra,0xfffff
    80006a58:	008080e7          	jalr	8(ra) # 80005a5c <panic>

0000000080006a5c <push_on>:
    80006a5c:	fe010113          	addi	sp,sp,-32
    80006a60:	00813823          	sd	s0,16(sp)
    80006a64:	00113c23          	sd	ra,24(sp)
    80006a68:	00913423          	sd	s1,8(sp)
    80006a6c:	02010413          	addi	s0,sp,32
    80006a70:	100024f3          	csrr	s1,sstatus
    80006a74:	100027f3          	csrr	a5,sstatus
    80006a78:	0027e793          	ori	a5,a5,2
    80006a7c:	10079073          	csrw	sstatus,a5
    80006a80:	ffffe097          	auipc	ra,0xffffe
    80006a84:	620080e7          	jalr	1568(ra) # 800050a0 <mycpu>
    80006a88:	07852783          	lw	a5,120(a0)
    80006a8c:	02078663          	beqz	a5,80006ab8 <push_on+0x5c>
    80006a90:	ffffe097          	auipc	ra,0xffffe
    80006a94:	610080e7          	jalr	1552(ra) # 800050a0 <mycpu>
    80006a98:	07852783          	lw	a5,120(a0)
    80006a9c:	01813083          	ld	ra,24(sp)
    80006aa0:	01013403          	ld	s0,16(sp)
    80006aa4:	0017879b          	addiw	a5,a5,1
    80006aa8:	06f52c23          	sw	a5,120(a0)
    80006aac:	00813483          	ld	s1,8(sp)
    80006ab0:	02010113          	addi	sp,sp,32
    80006ab4:	00008067          	ret
    80006ab8:	0014d493          	srli	s1,s1,0x1
    80006abc:	ffffe097          	auipc	ra,0xffffe
    80006ac0:	5e4080e7          	jalr	1508(ra) # 800050a0 <mycpu>
    80006ac4:	0014f493          	andi	s1,s1,1
    80006ac8:	06952e23          	sw	s1,124(a0)
    80006acc:	fc5ff06f          	j	80006a90 <push_on+0x34>

0000000080006ad0 <pop_on>:
    80006ad0:	ff010113          	addi	sp,sp,-16
    80006ad4:	00813023          	sd	s0,0(sp)
    80006ad8:	00113423          	sd	ra,8(sp)
    80006adc:	01010413          	addi	s0,sp,16
    80006ae0:	ffffe097          	auipc	ra,0xffffe
    80006ae4:	5c0080e7          	jalr	1472(ra) # 800050a0 <mycpu>
    80006ae8:	100027f3          	csrr	a5,sstatus
    80006aec:	0027f793          	andi	a5,a5,2
    80006af0:	04078463          	beqz	a5,80006b38 <pop_on+0x68>
    80006af4:	07852783          	lw	a5,120(a0)
    80006af8:	02f05863          	blez	a5,80006b28 <pop_on+0x58>
    80006afc:	fff7879b          	addiw	a5,a5,-1
    80006b00:	06f52c23          	sw	a5,120(a0)
    80006b04:	07853783          	ld	a5,120(a0)
    80006b08:	00079863          	bnez	a5,80006b18 <pop_on+0x48>
    80006b0c:	100027f3          	csrr	a5,sstatus
    80006b10:	ffd7f793          	andi	a5,a5,-3
    80006b14:	10079073          	csrw	sstatus,a5
    80006b18:	00813083          	ld	ra,8(sp)
    80006b1c:	00013403          	ld	s0,0(sp)
    80006b20:	01010113          	addi	sp,sp,16
    80006b24:	00008067          	ret
    80006b28:	00001517          	auipc	a0,0x1
    80006b2c:	c8850513          	addi	a0,a0,-888 # 800077b0 <digits+0x70>
    80006b30:	fffff097          	auipc	ra,0xfffff
    80006b34:	f2c080e7          	jalr	-212(ra) # 80005a5c <panic>
    80006b38:	00001517          	auipc	a0,0x1
    80006b3c:	c5850513          	addi	a0,a0,-936 # 80007790 <digits+0x50>
    80006b40:	fffff097          	auipc	ra,0xfffff
    80006b44:	f1c080e7          	jalr	-228(ra) # 80005a5c <panic>

0000000080006b48 <__memset>:
    80006b48:	ff010113          	addi	sp,sp,-16
    80006b4c:	00813423          	sd	s0,8(sp)
    80006b50:	01010413          	addi	s0,sp,16
    80006b54:	1a060e63          	beqz	a2,80006d10 <__memset+0x1c8>
    80006b58:	40a007b3          	neg	a5,a0
    80006b5c:	0077f793          	andi	a5,a5,7
    80006b60:	00778693          	addi	a3,a5,7
    80006b64:	00b00813          	li	a6,11
    80006b68:	0ff5f593          	andi	a1,a1,255
    80006b6c:	fff6071b          	addiw	a4,a2,-1
    80006b70:	1b06e663          	bltu	a3,a6,80006d1c <__memset+0x1d4>
    80006b74:	1cd76463          	bltu	a4,a3,80006d3c <__memset+0x1f4>
    80006b78:	1a078e63          	beqz	a5,80006d34 <__memset+0x1ec>
    80006b7c:	00b50023          	sb	a1,0(a0)
    80006b80:	00100713          	li	a4,1
    80006b84:	1ae78463          	beq	a5,a4,80006d2c <__memset+0x1e4>
    80006b88:	00b500a3          	sb	a1,1(a0)
    80006b8c:	00200713          	li	a4,2
    80006b90:	1ae78a63          	beq	a5,a4,80006d44 <__memset+0x1fc>
    80006b94:	00b50123          	sb	a1,2(a0)
    80006b98:	00300713          	li	a4,3
    80006b9c:	18e78463          	beq	a5,a4,80006d24 <__memset+0x1dc>
    80006ba0:	00b501a3          	sb	a1,3(a0)
    80006ba4:	00400713          	li	a4,4
    80006ba8:	1ae78263          	beq	a5,a4,80006d4c <__memset+0x204>
    80006bac:	00b50223          	sb	a1,4(a0)
    80006bb0:	00500713          	li	a4,5
    80006bb4:	1ae78063          	beq	a5,a4,80006d54 <__memset+0x20c>
    80006bb8:	00b502a3          	sb	a1,5(a0)
    80006bbc:	00700713          	li	a4,7
    80006bc0:	18e79e63          	bne	a5,a4,80006d5c <__memset+0x214>
    80006bc4:	00b50323          	sb	a1,6(a0)
    80006bc8:	00700e93          	li	t4,7
    80006bcc:	00859713          	slli	a4,a1,0x8
    80006bd0:	00e5e733          	or	a4,a1,a4
    80006bd4:	01059e13          	slli	t3,a1,0x10
    80006bd8:	01c76e33          	or	t3,a4,t3
    80006bdc:	01859313          	slli	t1,a1,0x18
    80006be0:	006e6333          	or	t1,t3,t1
    80006be4:	02059893          	slli	a7,a1,0x20
    80006be8:	40f60e3b          	subw	t3,a2,a5
    80006bec:	011368b3          	or	a7,t1,a7
    80006bf0:	02859813          	slli	a6,a1,0x28
    80006bf4:	0108e833          	or	a6,a7,a6
    80006bf8:	03059693          	slli	a3,a1,0x30
    80006bfc:	003e589b          	srliw	a7,t3,0x3
    80006c00:	00d866b3          	or	a3,a6,a3
    80006c04:	03859713          	slli	a4,a1,0x38
    80006c08:	00389813          	slli	a6,a7,0x3
    80006c0c:	00f507b3          	add	a5,a0,a5
    80006c10:	00e6e733          	or	a4,a3,a4
    80006c14:	000e089b          	sext.w	a7,t3
    80006c18:	00f806b3          	add	a3,a6,a5
    80006c1c:	00e7b023          	sd	a4,0(a5)
    80006c20:	00878793          	addi	a5,a5,8
    80006c24:	fed79ce3          	bne	a5,a3,80006c1c <__memset+0xd4>
    80006c28:	ff8e7793          	andi	a5,t3,-8
    80006c2c:	0007871b          	sext.w	a4,a5
    80006c30:	01d787bb          	addw	a5,a5,t4
    80006c34:	0ce88e63          	beq	a7,a4,80006d10 <__memset+0x1c8>
    80006c38:	00f50733          	add	a4,a0,a5
    80006c3c:	00b70023          	sb	a1,0(a4)
    80006c40:	0017871b          	addiw	a4,a5,1
    80006c44:	0cc77663          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006c48:	00e50733          	add	a4,a0,a4
    80006c4c:	00b70023          	sb	a1,0(a4)
    80006c50:	0027871b          	addiw	a4,a5,2
    80006c54:	0ac77e63          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006c58:	00e50733          	add	a4,a0,a4
    80006c5c:	00b70023          	sb	a1,0(a4)
    80006c60:	0037871b          	addiw	a4,a5,3
    80006c64:	0ac77663          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006c68:	00e50733          	add	a4,a0,a4
    80006c6c:	00b70023          	sb	a1,0(a4)
    80006c70:	0047871b          	addiw	a4,a5,4
    80006c74:	08c77e63          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006c78:	00e50733          	add	a4,a0,a4
    80006c7c:	00b70023          	sb	a1,0(a4)
    80006c80:	0057871b          	addiw	a4,a5,5
    80006c84:	08c77663          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006c88:	00e50733          	add	a4,a0,a4
    80006c8c:	00b70023          	sb	a1,0(a4)
    80006c90:	0067871b          	addiw	a4,a5,6
    80006c94:	06c77e63          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006c98:	00e50733          	add	a4,a0,a4
    80006c9c:	00b70023          	sb	a1,0(a4)
    80006ca0:	0077871b          	addiw	a4,a5,7
    80006ca4:	06c77663          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006ca8:	00e50733          	add	a4,a0,a4
    80006cac:	00b70023          	sb	a1,0(a4)
    80006cb0:	0087871b          	addiw	a4,a5,8
    80006cb4:	04c77e63          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006cb8:	00e50733          	add	a4,a0,a4
    80006cbc:	00b70023          	sb	a1,0(a4)
    80006cc0:	0097871b          	addiw	a4,a5,9
    80006cc4:	04c77663          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006cc8:	00e50733          	add	a4,a0,a4
    80006ccc:	00b70023          	sb	a1,0(a4)
    80006cd0:	00a7871b          	addiw	a4,a5,10
    80006cd4:	02c77e63          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006cd8:	00e50733          	add	a4,a0,a4
    80006cdc:	00b70023          	sb	a1,0(a4)
    80006ce0:	00b7871b          	addiw	a4,a5,11
    80006ce4:	02c77663          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006ce8:	00e50733          	add	a4,a0,a4
    80006cec:	00b70023          	sb	a1,0(a4)
    80006cf0:	00c7871b          	addiw	a4,a5,12
    80006cf4:	00c77e63          	bgeu	a4,a2,80006d10 <__memset+0x1c8>
    80006cf8:	00e50733          	add	a4,a0,a4
    80006cfc:	00b70023          	sb	a1,0(a4)
    80006d00:	00d7879b          	addiw	a5,a5,13
    80006d04:	00c7f663          	bgeu	a5,a2,80006d10 <__memset+0x1c8>
    80006d08:	00f507b3          	add	a5,a0,a5
    80006d0c:	00b78023          	sb	a1,0(a5)
    80006d10:	00813403          	ld	s0,8(sp)
    80006d14:	01010113          	addi	sp,sp,16
    80006d18:	00008067          	ret
    80006d1c:	00b00693          	li	a3,11
    80006d20:	e55ff06f          	j	80006b74 <__memset+0x2c>
    80006d24:	00300e93          	li	t4,3
    80006d28:	ea5ff06f          	j	80006bcc <__memset+0x84>
    80006d2c:	00100e93          	li	t4,1
    80006d30:	e9dff06f          	j	80006bcc <__memset+0x84>
    80006d34:	00000e93          	li	t4,0
    80006d38:	e95ff06f          	j	80006bcc <__memset+0x84>
    80006d3c:	00000793          	li	a5,0
    80006d40:	ef9ff06f          	j	80006c38 <__memset+0xf0>
    80006d44:	00200e93          	li	t4,2
    80006d48:	e85ff06f          	j	80006bcc <__memset+0x84>
    80006d4c:	00400e93          	li	t4,4
    80006d50:	e7dff06f          	j	80006bcc <__memset+0x84>
    80006d54:	00500e93          	li	t4,5
    80006d58:	e75ff06f          	j	80006bcc <__memset+0x84>
    80006d5c:	00600e93          	li	t4,6
    80006d60:	e6dff06f          	j	80006bcc <__memset+0x84>

0000000080006d64 <__memmove>:
    80006d64:	ff010113          	addi	sp,sp,-16
    80006d68:	00813423          	sd	s0,8(sp)
    80006d6c:	01010413          	addi	s0,sp,16
    80006d70:	0e060863          	beqz	a2,80006e60 <__memmove+0xfc>
    80006d74:	fff6069b          	addiw	a3,a2,-1
    80006d78:	0006881b          	sext.w	a6,a3
    80006d7c:	0ea5e863          	bltu	a1,a0,80006e6c <__memmove+0x108>
    80006d80:	00758713          	addi	a4,a1,7
    80006d84:	00a5e7b3          	or	a5,a1,a0
    80006d88:	40a70733          	sub	a4,a4,a0
    80006d8c:	0077f793          	andi	a5,a5,7
    80006d90:	00f73713          	sltiu	a4,a4,15
    80006d94:	00174713          	xori	a4,a4,1
    80006d98:	0017b793          	seqz	a5,a5
    80006d9c:	00e7f7b3          	and	a5,a5,a4
    80006da0:	10078863          	beqz	a5,80006eb0 <__memmove+0x14c>
    80006da4:	00900793          	li	a5,9
    80006da8:	1107f463          	bgeu	a5,a6,80006eb0 <__memmove+0x14c>
    80006dac:	0036581b          	srliw	a6,a2,0x3
    80006db0:	fff8081b          	addiw	a6,a6,-1
    80006db4:	02081813          	slli	a6,a6,0x20
    80006db8:	01d85893          	srli	a7,a6,0x1d
    80006dbc:	00858813          	addi	a6,a1,8
    80006dc0:	00058793          	mv	a5,a1
    80006dc4:	00050713          	mv	a4,a0
    80006dc8:	01088833          	add	a6,a7,a6
    80006dcc:	0007b883          	ld	a7,0(a5)
    80006dd0:	00878793          	addi	a5,a5,8
    80006dd4:	00870713          	addi	a4,a4,8
    80006dd8:	ff173c23          	sd	a7,-8(a4)
    80006ddc:	ff0798e3          	bne	a5,a6,80006dcc <__memmove+0x68>
    80006de0:	ff867713          	andi	a4,a2,-8
    80006de4:	02071793          	slli	a5,a4,0x20
    80006de8:	0207d793          	srli	a5,a5,0x20
    80006dec:	00f585b3          	add	a1,a1,a5
    80006df0:	40e686bb          	subw	a3,a3,a4
    80006df4:	00f507b3          	add	a5,a0,a5
    80006df8:	06e60463          	beq	a2,a4,80006e60 <__memmove+0xfc>
    80006dfc:	0005c703          	lbu	a4,0(a1)
    80006e00:	00e78023          	sb	a4,0(a5)
    80006e04:	04068e63          	beqz	a3,80006e60 <__memmove+0xfc>
    80006e08:	0015c603          	lbu	a2,1(a1)
    80006e0c:	00100713          	li	a4,1
    80006e10:	00c780a3          	sb	a2,1(a5)
    80006e14:	04e68663          	beq	a3,a4,80006e60 <__memmove+0xfc>
    80006e18:	0025c603          	lbu	a2,2(a1)
    80006e1c:	00200713          	li	a4,2
    80006e20:	00c78123          	sb	a2,2(a5)
    80006e24:	02e68e63          	beq	a3,a4,80006e60 <__memmove+0xfc>
    80006e28:	0035c603          	lbu	a2,3(a1)
    80006e2c:	00300713          	li	a4,3
    80006e30:	00c781a3          	sb	a2,3(a5)
    80006e34:	02e68663          	beq	a3,a4,80006e60 <__memmove+0xfc>
    80006e38:	0045c603          	lbu	a2,4(a1)
    80006e3c:	00400713          	li	a4,4
    80006e40:	00c78223          	sb	a2,4(a5)
    80006e44:	00e68e63          	beq	a3,a4,80006e60 <__memmove+0xfc>
    80006e48:	0055c603          	lbu	a2,5(a1)
    80006e4c:	00500713          	li	a4,5
    80006e50:	00c782a3          	sb	a2,5(a5)
    80006e54:	00e68663          	beq	a3,a4,80006e60 <__memmove+0xfc>
    80006e58:	0065c703          	lbu	a4,6(a1)
    80006e5c:	00e78323          	sb	a4,6(a5)
    80006e60:	00813403          	ld	s0,8(sp)
    80006e64:	01010113          	addi	sp,sp,16
    80006e68:	00008067          	ret
    80006e6c:	02061713          	slli	a4,a2,0x20
    80006e70:	02075713          	srli	a4,a4,0x20
    80006e74:	00e587b3          	add	a5,a1,a4
    80006e78:	f0f574e3          	bgeu	a0,a5,80006d80 <__memmove+0x1c>
    80006e7c:	02069613          	slli	a2,a3,0x20
    80006e80:	02065613          	srli	a2,a2,0x20
    80006e84:	fff64613          	not	a2,a2
    80006e88:	00e50733          	add	a4,a0,a4
    80006e8c:	00c78633          	add	a2,a5,a2
    80006e90:	fff7c683          	lbu	a3,-1(a5)
    80006e94:	fff78793          	addi	a5,a5,-1
    80006e98:	fff70713          	addi	a4,a4,-1
    80006e9c:	00d70023          	sb	a3,0(a4)
    80006ea0:	fec798e3          	bne	a5,a2,80006e90 <__memmove+0x12c>
    80006ea4:	00813403          	ld	s0,8(sp)
    80006ea8:	01010113          	addi	sp,sp,16
    80006eac:	00008067          	ret
    80006eb0:	02069713          	slli	a4,a3,0x20
    80006eb4:	02075713          	srli	a4,a4,0x20
    80006eb8:	00170713          	addi	a4,a4,1
    80006ebc:	00e50733          	add	a4,a0,a4
    80006ec0:	00050793          	mv	a5,a0
    80006ec4:	0005c683          	lbu	a3,0(a1)
    80006ec8:	00178793          	addi	a5,a5,1
    80006ecc:	00158593          	addi	a1,a1,1
    80006ed0:	fed78fa3          	sb	a3,-1(a5)
    80006ed4:	fee798e3          	bne	a5,a4,80006ec4 <__memmove+0x160>
    80006ed8:	f89ff06f          	j	80006e60 <__memmove+0xfc>

0000000080006edc <__putc>:
    80006edc:	fe010113          	addi	sp,sp,-32
    80006ee0:	00813823          	sd	s0,16(sp)
    80006ee4:	00113c23          	sd	ra,24(sp)
    80006ee8:	02010413          	addi	s0,sp,32
    80006eec:	00050793          	mv	a5,a0
    80006ef0:	fef40593          	addi	a1,s0,-17
    80006ef4:	00100613          	li	a2,1
    80006ef8:	00000513          	li	a0,0
    80006efc:	fef407a3          	sb	a5,-17(s0)
    80006f00:	fffff097          	auipc	ra,0xfffff
    80006f04:	b3c080e7          	jalr	-1220(ra) # 80005a3c <console_write>
    80006f08:	01813083          	ld	ra,24(sp)
    80006f0c:	01013403          	ld	s0,16(sp)
    80006f10:	02010113          	addi	sp,sp,32
    80006f14:	00008067          	ret

0000000080006f18 <__getc>:
    80006f18:	fe010113          	addi	sp,sp,-32
    80006f1c:	00813823          	sd	s0,16(sp)
    80006f20:	00113c23          	sd	ra,24(sp)
    80006f24:	02010413          	addi	s0,sp,32
    80006f28:	fe840593          	addi	a1,s0,-24
    80006f2c:	00100613          	li	a2,1
    80006f30:	00000513          	li	a0,0
    80006f34:	fffff097          	auipc	ra,0xfffff
    80006f38:	ae8080e7          	jalr	-1304(ra) # 80005a1c <console_read>
    80006f3c:	fe844503          	lbu	a0,-24(s0)
    80006f40:	01813083          	ld	ra,24(sp)
    80006f44:	01013403          	ld	s0,16(sp)
    80006f48:	02010113          	addi	sp,sp,32
    80006f4c:	00008067          	ret

0000000080006f50 <console_handler>:
    80006f50:	fe010113          	addi	sp,sp,-32
    80006f54:	00813823          	sd	s0,16(sp)
    80006f58:	00113c23          	sd	ra,24(sp)
    80006f5c:	00913423          	sd	s1,8(sp)
    80006f60:	02010413          	addi	s0,sp,32
    80006f64:	14202773          	csrr	a4,scause
    80006f68:	100027f3          	csrr	a5,sstatus
    80006f6c:	0027f793          	andi	a5,a5,2
    80006f70:	06079e63          	bnez	a5,80006fec <console_handler+0x9c>
    80006f74:	00074c63          	bltz	a4,80006f8c <console_handler+0x3c>
    80006f78:	01813083          	ld	ra,24(sp)
    80006f7c:	01013403          	ld	s0,16(sp)
    80006f80:	00813483          	ld	s1,8(sp)
    80006f84:	02010113          	addi	sp,sp,32
    80006f88:	00008067          	ret
    80006f8c:	0ff77713          	andi	a4,a4,255
    80006f90:	00900793          	li	a5,9
    80006f94:	fef712e3          	bne	a4,a5,80006f78 <console_handler+0x28>
    80006f98:	ffffe097          	auipc	ra,0xffffe
    80006f9c:	6dc080e7          	jalr	1756(ra) # 80005674 <plic_claim>
    80006fa0:	00a00793          	li	a5,10
    80006fa4:	00050493          	mv	s1,a0
    80006fa8:	02f50c63          	beq	a0,a5,80006fe0 <console_handler+0x90>
    80006fac:	fc0506e3          	beqz	a0,80006f78 <console_handler+0x28>
    80006fb0:	00050593          	mv	a1,a0
    80006fb4:	00000517          	auipc	a0,0x0
    80006fb8:	70450513          	addi	a0,a0,1796 # 800076b8 <CONSOLE_STATUS+0x6a8>
    80006fbc:	fffff097          	auipc	ra,0xfffff
    80006fc0:	afc080e7          	jalr	-1284(ra) # 80005ab8 <__printf>
    80006fc4:	01013403          	ld	s0,16(sp)
    80006fc8:	01813083          	ld	ra,24(sp)
    80006fcc:	00048513          	mv	a0,s1
    80006fd0:	00813483          	ld	s1,8(sp)
    80006fd4:	02010113          	addi	sp,sp,32
    80006fd8:	ffffe317          	auipc	t1,0xffffe
    80006fdc:	6d430067          	jr	1748(t1) # 800056ac <plic_complete>
    80006fe0:	fffff097          	auipc	ra,0xfffff
    80006fe4:	3e0080e7          	jalr	992(ra) # 800063c0 <uartintr>
    80006fe8:	fddff06f          	j	80006fc4 <console_handler+0x74>
    80006fec:	00000517          	auipc	a0,0x0
    80006ff0:	7cc50513          	addi	a0,a0,1996 # 800077b8 <digits+0x78>
    80006ff4:	fffff097          	auipc	ra,0xfffff
    80006ff8:	a68080e7          	jalr	-1432(ra) # 80005a5c <panic>
    80006ffc:	0000                	unimp
	...
