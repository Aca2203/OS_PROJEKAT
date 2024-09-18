
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00008117          	auipc	sp,0x8
    80000004:	61013103          	ld	sp,1552(sp) # 80008610 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7e9030ef          	jal	ra,80004004 <start>

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
    800011a4:	0cc010ef          	jal	ra,80002270 <_ZN5Riscv20handleSupervisorTrapEv>

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

class _sem{
    int id;
};

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

00000000800013b0 <_Z4getcv>:

char getc() {
    800013b0:	fe010113          	addi	sp,sp,-32
    800013b4:	00813c23          	sd	s0,24(sp)
    800013b8:	02010413          	addi	s0,sp,32
    800013bc:	04100793          	li	a5,65
    800013c0:	00078513          	mv	a0,a5
    Riscv::w_a0(0x41);
    __asm__ volatile("ecall");
    800013c4:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800013c8:	00050793          	mv	a5,a0
    800013cc:	fef43423          	sd	a5,-24(s0)
    return a0;
    800013d0:	fe843503          	ld	a0,-24(s0)

    char ret = (char) Riscv::r_a0();
    return ret;
}
    800013d4:	0ff57513          	andi	a0,a0,255
    800013d8:	01813403          	ld	s0,24(sp)
    800013dc:	02010113          	addi	sp,sp,32
    800013e0:	00008067          	ret

00000000800013e4 <_Z4putcc>:

void putc(char ch) {
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(ch));
    800013f0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    800013f4:	04200793          	li	a5,66
    800013f8:	00078513          	mv	a0,a5
    Riscv::w_a0(0x42);
    __asm__ volatile("ecall");
    800013fc:	00000073          	ecall
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    8000140c:	fe010113          	addi	sp,sp,-32
    80001410:	00113c23          	sd	ra,24(sp)
    80001414:	00813823          	sd	s0,16(sp)
    80001418:	00913423          	sd	s1,8(sp)
    8000141c:	01213023          	sd	s2,0(sp)
    80001420:	02010413          	addi	s0,sp,32
    80001424:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001428:	00100793          	li	a5,1
    8000142c:	02a7f663          	bgeu	a5,a0,80001458 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) { TCB::yield(); }
    80001430:	00357793          	andi	a5,a0,3
    80001434:	02078e63          	beqz	a5,80001470 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001438:	fff48513          	addi	a0,s1,-1
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	fd0080e7          	jalr	-48(ra) # 8000140c <_ZL9fibonaccim>
    80001444:	00050913          	mv	s2,a0
    80001448:	ffe48513          	addi	a0,s1,-2
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	fc0080e7          	jalr	-64(ra) # 8000140c <_ZL9fibonaccim>
    80001454:	00a90533          	add	a0,s2,a0
}
    80001458:	01813083          	ld	ra,24(sp)
    8000145c:	01013403          	ld	s0,16(sp)
    80001460:	00813483          	ld	s1,8(sp)
    80001464:	00013903          	ld	s2,0(sp)
    80001468:	02010113          	addi	sp,sp,32
    8000146c:	00008067          	ret
    if (n % 4 == 0) { TCB::yield(); }
    80001470:	00001097          	auipc	ra,0x1
    80001474:	a8c080e7          	jalr	-1396(ra) # 80001efc <_ZN3TCB5yieldEv>
    80001478:	fc1ff06f          	j	80001438 <_ZL9fibonaccim+0x2c>

000000008000147c <_Z11workerBodyAPv>:
{
    8000147c:	fe010113          	addi	sp,sp,-32
    80001480:	00113c23          	sd	ra,24(sp)
    80001484:	00813823          	sd	s0,16(sp)
    80001488:	00913423          	sd	s1,8(sp)
    8000148c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001490:	00000493          	li	s1,0
    80001494:	0300006f          	j	800014c4 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001498:	00168693          	addi	a3,a3,1
    8000149c:	000027b7          	lui	a5,0x2
    800014a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014a4:	00d7ee63          	bltu	a5,a3,800014c0 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800014a8:	00000713          	li	a4,0
    800014ac:	000077b7          	lui	a5,0x7
    800014b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014b4:	fee7e2e3          	bltu	a5,a4,80001498 <_Z11workerBodyAPv+0x1c>
    800014b8:	00170713          	addi	a4,a4,1
    800014bc:	ff1ff06f          	j	800014ac <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800014c0:	00148493          	addi	s1,s1,1
    800014c4:	00900793          	li	a5,9
    800014c8:	0497e463          	bltu	a5,s1,80001510 <_Z11workerBodyAPv+0x94>
        printString("A: i=");
    800014cc:	00006517          	auipc	a0,0x6
    800014d0:	b5450513          	addi	a0,a0,-1196 # 80007020 <CONSOLE_STATUS+0x10>
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	370080e7          	jalr	880(ra) # 80001844 <_Z11printStringPKc>
        printInt(i);
    800014dc:	00000613          	li	a2,0
    800014e0:	00a00593          	li	a1,10
    800014e4:	0004851b          	sext.w	a0,s1
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	50c080e7          	jalr	1292(ra) # 800019f4 <_Z8printIntiii>
        printString("\n");
    800014f0:	00006517          	auipc	a0,0x6
    800014f4:	b5050513          	addi	a0,a0,-1200 # 80007040 <CONSOLE_STATUS+0x30>
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	34c080e7          	jalr	844(ra) # 80001844 <_Z11printStringPKc>
        thread_exit();
    80001500:	00000097          	auipc	ra,0x0
    80001504:	df0080e7          	jalr	-528(ra) # 800012f0 <_Z11thread_exitv>
        for (uint64 j = 0; j < 10000; j++)
    80001508:	00000693          	li	a3,0
    8000150c:	f91ff06f          	j	8000149c <_Z11workerBodyAPv+0x20>
}
    80001510:	01813083          	ld	ra,24(sp)
    80001514:	01013403          	ld	s0,16(sp)
    80001518:	00813483          	ld	s1,8(sp)
    8000151c:	02010113          	addi	sp,sp,32
    80001520:	00008067          	ret

0000000080001524 <_Z11workerBodyBPv>:
{
    80001524:	fe010113          	addi	sp,sp,-32
    80001528:	00113c23          	sd	ra,24(sp)
    8000152c:	00813823          	sd	s0,16(sp)
    80001530:	00913423          	sd	s1,8(sp)
    80001534:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001538:	00000493          	li	s1,0
    8000153c:	0300006f          	j	8000156c <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001540:	00168693          	addi	a3,a3,1
    80001544:	000027b7          	lui	a5,0x2
    80001548:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000154c:	00d7ee63          	bltu	a5,a3,80001568 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001550:	00000713          	li	a4,0
    80001554:	000077b7          	lui	a5,0x7
    80001558:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000155c:	fee7e2e3          	bltu	a5,a4,80001540 <_Z11workerBodyBPv+0x1c>
    80001560:	00170713          	addi	a4,a4,1
    80001564:	ff1ff06f          	j	80001554 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001568:	00148493          	addi	s1,s1,1
    8000156c:	00f00793          	li	a5,15
    80001570:	0497e063          	bltu	a5,s1,800015b0 <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    80001574:	00006517          	auipc	a0,0x6
    80001578:	ab450513          	addi	a0,a0,-1356 # 80007028 <CONSOLE_STATUS+0x18>
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	2c8080e7          	jalr	712(ra) # 80001844 <_Z11printStringPKc>
        printInt(i);
    80001584:	00000613          	li	a2,0
    80001588:	00a00593          	li	a1,10
    8000158c:	0004851b          	sext.w	a0,s1
    80001590:	00000097          	auipc	ra,0x0
    80001594:	464080e7          	jalr	1124(ra) # 800019f4 <_Z8printIntiii>
        printString("\n");
    80001598:	00006517          	auipc	a0,0x6
    8000159c:	aa850513          	addi	a0,a0,-1368 # 80007040 <CONSOLE_STATUS+0x30>
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	2a4080e7          	jalr	676(ra) # 80001844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800015a8:	00000693          	li	a3,0
    800015ac:	f99ff06f          	j	80001544 <_Z11workerBodyBPv+0x20>
}
    800015b0:	01813083          	ld	ra,24(sp)
    800015b4:	01013403          	ld	s0,16(sp)
    800015b8:	00813483          	ld	s1,8(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret

00000000800015c4 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    800015c4:	fe010113          	addi	sp,sp,-32
    800015c8:	00113c23          	sd	ra,24(sp)
    800015cc:	00813823          	sd	s0,16(sp)
    800015d0:	00913423          	sd	s1,8(sp)
    800015d4:	01213023          	sd	s2,0(sp)
    800015d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800015dc:	00000493          	li	s1,0
    800015e0:	0400006f          	j	80001620 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800015e4:	00006517          	auipc	a0,0x6
    800015e8:	a4c50513          	addi	a0,a0,-1460 # 80007030 <CONSOLE_STATUS+0x20>
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	258080e7          	jalr	600(ra) # 80001844 <_Z11printStringPKc>
        printInt(i);
    800015f4:	00000613          	li	a2,0
    800015f8:	00a00593          	li	a1,10
    800015fc:	00048513          	mv	a0,s1
    80001600:	00000097          	auipc	ra,0x0
    80001604:	3f4080e7          	jalr	1012(ra) # 800019f4 <_Z8printIntiii>
        printString("\n");
    80001608:	00006517          	auipc	a0,0x6
    8000160c:	a3850513          	addi	a0,a0,-1480 # 80007040 <CONSOLE_STATUS+0x30>
    80001610:	00000097          	auipc	ra,0x0
    80001614:	234080e7          	jalr	564(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001618:	0014849b          	addiw	s1,s1,1
    8000161c:	0ff4f493          	andi	s1,s1,255
    80001620:	00200793          	li	a5,2
    80001624:	fc97f0e3          	bgeu	a5,s1,800015e4 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001628:	00006517          	auipc	a0,0x6
    8000162c:	a1050513          	addi	a0,a0,-1520 # 80007038 <CONSOLE_STATUS+0x28>
    80001630:	00000097          	auipc	ra,0x0
    80001634:	214080e7          	jalr	532(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001638:	00700313          	li	t1,7
    TCB::yield();
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	8c0080e7          	jalr	-1856(ra) # 80001efc <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001644:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001648:	00006517          	auipc	a0,0x6
    8000164c:	a0050513          	addi	a0,a0,-1536 # 80007048 <CONSOLE_STATUS+0x38>
    80001650:	00000097          	auipc	ra,0x0
    80001654:	1f4080e7          	jalr	500(ra) # 80001844 <_Z11printStringPKc>
    printInt(t1);
    80001658:	00000613          	li	a2,0
    8000165c:	00a00593          	li	a1,10
    80001660:	0009051b          	sext.w	a0,s2
    80001664:	00000097          	auipc	ra,0x0
    80001668:	390080e7          	jalr	912(ra) # 800019f4 <_Z8printIntiii>
    printString("\n");
    8000166c:	00006517          	auipc	a0,0x6
    80001670:	9d450513          	addi	a0,a0,-1580 # 80007040 <CONSOLE_STATUS+0x30>
    80001674:	00000097          	auipc	ra,0x0
    80001678:	1d0080e7          	jalr	464(ra) # 80001844 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000167c:	00c00513          	li	a0,12
    80001680:	00000097          	auipc	ra,0x0
    80001684:	d8c080e7          	jalr	-628(ra) # 8000140c <_ZL9fibonaccim>
    80001688:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000168c:	00006517          	auipc	a0,0x6
    80001690:	9c450513          	addi	a0,a0,-1596 # 80007050 <CONSOLE_STATUS+0x40>
    80001694:	00000097          	auipc	ra,0x0
    80001698:	1b0080e7          	jalr	432(ra) # 80001844 <_Z11printStringPKc>
    printInt(result);
    8000169c:	00000613          	li	a2,0
    800016a0:	00a00593          	li	a1,10
    800016a4:	0009051b          	sext.w	a0,s2
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	34c080e7          	jalr	844(ra) # 800019f4 <_Z8printIntiii>
    printString("\n");
    800016b0:	00006517          	auipc	a0,0x6
    800016b4:	99050513          	addi	a0,a0,-1648 # 80007040 <CONSOLE_STATUS+0x30>
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	18c080e7          	jalr	396(ra) # 80001844 <_Z11printStringPKc>
    800016c0:	0400006f          	j	80001700 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800016c4:	00006517          	auipc	a0,0x6
    800016c8:	96c50513          	addi	a0,a0,-1684 # 80007030 <CONSOLE_STATUS+0x20>
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	178080e7          	jalr	376(ra) # 80001844 <_Z11printStringPKc>
        printInt(i);
    800016d4:	00000613          	li	a2,0
    800016d8:	00a00593          	li	a1,10
    800016dc:	00048513          	mv	a0,s1
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	314080e7          	jalr	788(ra) # 800019f4 <_Z8printIntiii>
        printString("\n");
    800016e8:	00006517          	auipc	a0,0x6
    800016ec:	95850513          	addi	a0,a0,-1704 # 80007040 <CONSOLE_STATUS+0x30>
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	154080e7          	jalr	340(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 6; i++)
    800016f8:	0014849b          	addiw	s1,s1,1
    800016fc:	0ff4f493          	andi	s1,s1,255
    80001700:	00500793          	li	a5,5
    80001704:	fc97f0e3          	bgeu	a5,s1,800016c4 <_Z11workerBodyCPv+0x100>
    }
    //TCB::running->setFinished(true);
    //TCB::yield();
}
    80001708:	01813083          	ld	ra,24(sp)
    8000170c:	01013403          	ld	s0,16(sp)
    80001710:	00813483          	ld	s1,8(sp)
    80001714:	00013903          	ld	s2,0(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret

0000000080001720 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    80001720:	fe010113          	addi	sp,sp,-32
    80001724:	00113c23          	sd	ra,24(sp)
    80001728:	00813823          	sd	s0,16(sp)
    8000172c:	00913423          	sd	s1,8(sp)
    80001730:	01213023          	sd	s2,0(sp)
    80001734:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001738:	00a00493          	li	s1,10
    8000173c:	0400006f          	j	8000177c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001740:	00006517          	auipc	a0,0x6
    80001744:	92050513          	addi	a0,a0,-1760 # 80007060 <CONSOLE_STATUS+0x50>
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	0fc080e7          	jalr	252(ra) # 80001844 <_Z11printStringPKc>
        printInt(i);
    80001750:	00000613          	li	a2,0
    80001754:	00a00593          	li	a1,10
    80001758:	00048513          	mv	a0,s1
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	298080e7          	jalr	664(ra) # 800019f4 <_Z8printIntiii>
        printString("\n");
    80001764:	00006517          	auipc	a0,0x6
    80001768:	8dc50513          	addi	a0,a0,-1828 # 80007040 <CONSOLE_STATUS+0x30>
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	0d8080e7          	jalr	216(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001774:	0014849b          	addiw	s1,s1,1
    80001778:	0ff4f493          	andi	s1,s1,255
    8000177c:	00c00793          	li	a5,12
    80001780:	fc97f0e3          	bgeu	a5,s1,80001740 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001784:	00006517          	auipc	a0,0x6
    80001788:	8e450513          	addi	a0,a0,-1820 # 80007068 <CONSOLE_STATUS+0x58>
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	0b8080e7          	jalr	184(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001794:	00500313          	li	t1,5
    TCB::yield();
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	764080e7          	jalr	1892(ra) # 80001efc <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(23);
    800017a0:	01700513          	li	a0,23
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	c68080e7          	jalr	-920(ra) # 8000140c <_ZL9fibonaccim>
    800017ac:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800017b0:	00006517          	auipc	a0,0x6
    800017b4:	8c850513          	addi	a0,a0,-1848 # 80007078 <CONSOLE_STATUS+0x68>
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	08c080e7          	jalr	140(ra) # 80001844 <_Z11printStringPKc>
    printInt(result);
    800017c0:	00000613          	li	a2,0
    800017c4:	00a00593          	li	a1,10
    800017c8:	0009051b          	sext.w	a0,s2
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	228080e7          	jalr	552(ra) # 800019f4 <_Z8printIntiii>
    printString("\n");
    800017d4:	00006517          	auipc	a0,0x6
    800017d8:	86c50513          	addi	a0,a0,-1940 # 80007040 <CONSOLE_STATUS+0x30>
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	068080e7          	jalr	104(ra) # 80001844 <_Z11printStringPKc>
    800017e4:	0400006f          	j	80001824 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800017e8:	00006517          	auipc	a0,0x6
    800017ec:	87850513          	addi	a0,a0,-1928 # 80007060 <CONSOLE_STATUS+0x50>
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	054080e7          	jalr	84(ra) # 80001844 <_Z11printStringPKc>
        printInt(i);
    800017f8:	00000613          	li	a2,0
    800017fc:	00a00593          	li	a1,10
    80001800:	00048513          	mv	a0,s1
    80001804:	00000097          	auipc	ra,0x0
    80001808:	1f0080e7          	jalr	496(ra) # 800019f4 <_Z8printIntiii>
        printString("\n");
    8000180c:	00006517          	auipc	a0,0x6
    80001810:	83450513          	addi	a0,a0,-1996 # 80007040 <CONSOLE_STATUS+0x30>
    80001814:	00000097          	auipc	ra,0x0
    80001818:	030080e7          	jalr	48(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 16; i++)
    8000181c:	0014849b          	addiw	s1,s1,1
    80001820:	0ff4f493          	andi	s1,s1,255
    80001824:	00f00793          	li	a5,15
    80001828:	fc97f0e3          	bgeu	a5,s1,800017e8 <_Z11workerBodyDPv+0xc8>
    }
    // TCB::running->setFinished(true);
    // TCB::yield();
    8000182c:	01813083          	ld	ra,24(sp)
    80001830:	01013403          	ld	s0,16(sp)
    80001834:	00813483          	ld	s1,8(sp)
    80001838:	00013903          	ld	s2,0(sp)
    8000183c:	02010113          	addi	sp,sp,32
    80001840:	00008067          	ret

0000000080001844 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001844:	fe010113          	addi	sp,sp,-32
    80001848:	00113c23          	sd	ra,24(sp)
    8000184c:	00813823          	sd	s0,16(sp)
    80001850:	00913423          	sd	s1,8(sp)
    80001854:	02010413          	addi	s0,sp,32
    80001858:	00050493          	mv	s1,a0
    LOCK();
    8000185c:	00100613          	li	a2,1
    80001860:	00000593          	li	a1,0
    80001864:	00007517          	auipc	a0,0x7
    80001868:	e0c50513          	addi	a0,a0,-500 # 80008670 <lockPrint>
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	88c080e7          	jalr	-1908(ra) # 800010f8 <copy_and_swap>
    80001874:	00050863          	beqz	a0,80001884 <_Z11printStringPKc+0x40>
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	aac080e7          	jalr	-1364(ra) # 80001324 <_Z15thread_dispatchv>
    80001880:	fddff06f          	j	8000185c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001884:	0004c503          	lbu	a0,0(s1)
    80001888:	00050a63          	beqz	a0,8000189c <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    8000188c:	00005097          	auipc	ra,0x5
    80001890:	840080e7          	jalr	-1984(ra) # 800060cc <__putc>
        string++;
    80001894:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001898:	fedff06f          	j	80001884 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000189c:	00000613          	li	a2,0
    800018a0:	00100593          	li	a1,1
    800018a4:	00007517          	auipc	a0,0x7
    800018a8:	dcc50513          	addi	a0,a0,-564 # 80008670 <lockPrint>
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	84c080e7          	jalr	-1972(ra) # 800010f8 <copy_and_swap>
    800018b4:	fe0514e3          	bnez	a0,8000189c <_Z11printStringPKc+0x58>
}
    800018b8:	01813083          	ld	ra,24(sp)
    800018bc:	01013403          	ld	s0,16(sp)
    800018c0:	00813483          	ld	s1,8(sp)
    800018c4:	02010113          	addi	sp,sp,32
    800018c8:	00008067          	ret

00000000800018cc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800018cc:	fd010113          	addi	sp,sp,-48
    800018d0:	02113423          	sd	ra,40(sp)
    800018d4:	02813023          	sd	s0,32(sp)
    800018d8:	00913c23          	sd	s1,24(sp)
    800018dc:	01213823          	sd	s2,16(sp)
    800018e0:	01313423          	sd	s3,8(sp)
    800018e4:	01413023          	sd	s4,0(sp)
    800018e8:	03010413          	addi	s0,sp,48
    800018ec:	00050993          	mv	s3,a0
    800018f0:	00058a13          	mv	s4,a1
    LOCK();
    800018f4:	00100613          	li	a2,1
    800018f8:	00000593          	li	a1,0
    800018fc:	00007517          	auipc	a0,0x7
    80001900:	d7450513          	addi	a0,a0,-652 # 80008670 <lockPrint>
    80001904:	fffff097          	auipc	ra,0xfffff
    80001908:	7f4080e7          	jalr	2036(ra) # 800010f8 <copy_and_swap>
    8000190c:	00050863          	beqz	a0,8000191c <_Z9getStringPci+0x50>
    80001910:	00000097          	auipc	ra,0x0
    80001914:	a14080e7          	jalr	-1516(ra) # 80001324 <_Z15thread_dispatchv>
    80001918:	fddff06f          	j	800018f4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000191c:	00000913          	li	s2,0
    80001920:	00090493          	mv	s1,s2
    80001924:	0019091b          	addiw	s2,s2,1
    80001928:	03495a63          	bge	s2,s4,8000195c <_Z9getStringPci+0x90>
        cc = __getc();
    8000192c:	00004097          	auipc	ra,0x4
    80001930:	7dc080e7          	jalr	2012(ra) # 80006108 <__getc>
        if(cc < 1)
    80001934:	02050463          	beqz	a0,8000195c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80001938:	009984b3          	add	s1,s3,s1
    8000193c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001940:	00a00793          	li	a5,10
    80001944:	00f50a63          	beq	a0,a5,80001958 <_Z9getStringPci+0x8c>
    80001948:	00d00793          	li	a5,13
    8000194c:	fcf51ae3          	bne	a0,a5,80001920 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80001950:	00090493          	mv	s1,s2
    80001954:	0080006f          	j	8000195c <_Z9getStringPci+0x90>
    80001958:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000195c:	009984b3          	add	s1,s3,s1
    80001960:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001964:	00000613          	li	a2,0
    80001968:	00100593          	li	a1,1
    8000196c:	00007517          	auipc	a0,0x7
    80001970:	d0450513          	addi	a0,a0,-764 # 80008670 <lockPrint>
    80001974:	fffff097          	auipc	ra,0xfffff
    80001978:	784080e7          	jalr	1924(ra) # 800010f8 <copy_and_swap>
    8000197c:	fe0514e3          	bnez	a0,80001964 <_Z9getStringPci+0x98>
    return buf;
}
    80001980:	00098513          	mv	a0,s3
    80001984:	02813083          	ld	ra,40(sp)
    80001988:	02013403          	ld	s0,32(sp)
    8000198c:	01813483          	ld	s1,24(sp)
    80001990:	01013903          	ld	s2,16(sp)
    80001994:	00813983          	ld	s3,8(sp)
    80001998:	00013a03          	ld	s4,0(sp)
    8000199c:	03010113          	addi	sp,sp,48
    800019a0:	00008067          	ret

00000000800019a4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800019a4:	ff010113          	addi	sp,sp,-16
    800019a8:	00813423          	sd	s0,8(sp)
    800019ac:	01010413          	addi	s0,sp,16
    800019b0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800019b4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800019b8:	0006c603          	lbu	a2,0(a3)
    800019bc:	fd06071b          	addiw	a4,a2,-48
    800019c0:	0ff77713          	andi	a4,a4,255
    800019c4:	00900793          	li	a5,9
    800019c8:	02e7e063          	bltu	a5,a4,800019e8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800019cc:	0025179b          	slliw	a5,a0,0x2
    800019d0:	00a787bb          	addw	a5,a5,a0
    800019d4:	0017979b          	slliw	a5,a5,0x1
    800019d8:	00168693          	addi	a3,a3,1
    800019dc:	00c787bb          	addw	a5,a5,a2
    800019e0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800019e4:	fd5ff06f          	j	800019b8 <_Z11stringToIntPKc+0x14>
    return n;
}
    800019e8:	00813403          	ld	s0,8(sp)
    800019ec:	01010113          	addi	sp,sp,16
    800019f0:	00008067          	ret

00000000800019f4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800019f4:	fc010113          	addi	sp,sp,-64
    800019f8:	02113c23          	sd	ra,56(sp)
    800019fc:	02813823          	sd	s0,48(sp)
    80001a00:	02913423          	sd	s1,40(sp)
    80001a04:	03213023          	sd	s2,32(sp)
    80001a08:	01313c23          	sd	s3,24(sp)
    80001a0c:	04010413          	addi	s0,sp,64
    80001a10:	00050493          	mv	s1,a0
    80001a14:	00058913          	mv	s2,a1
    80001a18:	00060993          	mv	s3,a2
    LOCK();
    80001a1c:	00100613          	li	a2,1
    80001a20:	00000593          	li	a1,0
    80001a24:	00007517          	auipc	a0,0x7
    80001a28:	c4c50513          	addi	a0,a0,-948 # 80008670 <lockPrint>
    80001a2c:	fffff097          	auipc	ra,0xfffff
    80001a30:	6cc080e7          	jalr	1740(ra) # 800010f8 <copy_and_swap>
    80001a34:	00050863          	beqz	a0,80001a44 <_Z8printIntiii+0x50>
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	8ec080e7          	jalr	-1812(ra) # 80001324 <_Z15thread_dispatchv>
    80001a40:	fddff06f          	j	80001a1c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001a44:	00098463          	beqz	s3,80001a4c <_Z8printIntiii+0x58>
    80001a48:	0804c463          	bltz	s1,80001ad0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001a4c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001a50:	00000593          	li	a1,0
    }

    i = 0;
    80001a54:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001a58:	0009079b          	sext.w	a5,s2
    80001a5c:	0325773b          	remuw	a4,a0,s2
    80001a60:	00048613          	mv	a2,s1
    80001a64:	0014849b          	addiw	s1,s1,1
    80001a68:	02071693          	slli	a3,a4,0x20
    80001a6c:	0206d693          	srli	a3,a3,0x20
    80001a70:	00007717          	auipc	a4,0x7
    80001a74:	a9070713          	addi	a4,a4,-1392 # 80008500 <digits>
    80001a78:	00d70733          	add	a4,a4,a3
    80001a7c:	00074683          	lbu	a3,0(a4)
    80001a80:	fd040713          	addi	a4,s0,-48
    80001a84:	00c70733          	add	a4,a4,a2
    80001a88:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001a8c:	0005071b          	sext.w	a4,a0
    80001a90:	0325553b          	divuw	a0,a0,s2
    80001a94:	fcf772e3          	bgeu	a4,a5,80001a58 <_Z8printIntiii+0x64>
    if(neg)
    80001a98:	00058c63          	beqz	a1,80001ab0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80001a9c:	fd040793          	addi	a5,s0,-48
    80001aa0:	009784b3          	add	s1,a5,s1
    80001aa4:	02d00793          	li	a5,45
    80001aa8:	fef48823          	sb	a5,-16(s1)
    80001aac:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001ab0:	fff4849b          	addiw	s1,s1,-1
    80001ab4:	0204c463          	bltz	s1,80001adc <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80001ab8:	fd040793          	addi	a5,s0,-48
    80001abc:	009787b3          	add	a5,a5,s1
    80001ac0:	ff07c503          	lbu	a0,-16(a5)
    80001ac4:	00004097          	auipc	ra,0x4
    80001ac8:	608080e7          	jalr	1544(ra) # 800060cc <__putc>
    80001acc:	fe5ff06f          	j	80001ab0 <_Z8printIntiii+0xbc>
        x = -xx;
    80001ad0:	4090053b          	negw	a0,s1
        neg = 1;
    80001ad4:	00100593          	li	a1,1
        x = -xx;
    80001ad8:	f7dff06f          	j	80001a54 <_Z8printIntiii+0x60>

    UNLOCK();
    80001adc:	00000613          	li	a2,0
    80001ae0:	00100593          	li	a1,1
    80001ae4:	00007517          	auipc	a0,0x7
    80001ae8:	b8c50513          	addi	a0,a0,-1140 # 80008670 <lockPrint>
    80001aec:	fffff097          	auipc	ra,0xfffff
    80001af0:	60c080e7          	jalr	1548(ra) # 800010f8 <copy_and_swap>
    80001af4:	fe0514e3          	bnez	a0,80001adc <_Z8printIntiii+0xe8>
    80001af8:	03813083          	ld	ra,56(sp)
    80001afc:	03013403          	ld	s0,48(sp)
    80001b00:	02813483          	ld	s1,40(sp)
    80001b04:	02013903          	ld	s2,32(sp)
    80001b08:	01813983          	ld	s3,24(sp)
    80001b0c:	04010113          	addi	sp,sp,64
    80001b10:	00008067          	ret

0000000080001b14 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80001b14:	fe010113          	addi	sp,sp,-32
    80001b18:	00113c23          	sd	ra,24(sp)
    80001b1c:	00813823          	sd	s0,16(sp)
    80001b20:	00913423          	sd	s1,8(sp)
    80001b24:	01213023          	sd	s2,0(sp)
    80001b28:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80001b2c:	00005517          	auipc	a0,0x5
    80001b30:	55c50513          	addi	a0,a0,1372 # 80007088 <CONSOLE_STATUS+0x78>
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	d10080e7          	jalr	-752(ra) # 80001844 <_Z11printStringPKc>
    int test = getc() - '0';
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	874080e7          	jalr	-1932(ra) # 800013b0 <_Z4getcv>
    80001b44:	0005091b          	sext.w	s2,a0
    80001b48:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	864080e7          	jalr	-1948(ra) # 800013b0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80001b54:	fcd9071b          	addiw	a4,s2,-51
    80001b58:	00100793          	li	a5,1
    80001b5c:	04e7f663          	bgeu	a5,a4,80001ba8 <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80001b60:	fcb9091b          	addiw	s2,s2,-53
    80001b64:	00100793          	li	a5,1
    80001b68:	0727f463          	bgeu	a5,s2,80001bd0 <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001b6c:	00600793          	li	a5,6
    80001b70:	0697ca63          	blt	a5,s1,80001be4 <_Z8userMainv+0xd0>
    80001b74:	00300793          	li	a5,3
    80001b78:	04f4d063          	bge	s1,a5,80001bb8 <_Z8userMainv+0xa4>
    80001b7c:	00100793          	li	a5,1
    80001b80:	08f48c63          	beq	s1,a5,80001c18 <_Z8userMainv+0x104>
    80001b84:	00200793          	li	a5,2
    80001b88:	0af49663          	bne	s1,a5,80001c34 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	3a0080e7          	jalr	928(ra) # 80002f2c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001b94:	00005517          	auipc	a0,0x5
    80001b98:	5b450513          	addi	a0,a0,1460 # 80007148 <CONSOLE_STATUS+0x138>
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	ca8080e7          	jalr	-856(ra) # 80001844 <_Z11printStringPKc>
#endif
            break;
    80001ba4:	0140006f          	j	80001bb8 <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80001ba8:	00005517          	auipc	a0,0x5
    80001bac:	50050513          	addi	a0,a0,1280 # 800070a8 <CONSOLE_STATUS+0x98>
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	c94080e7          	jalr	-876(ra) # 80001844 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001bb8:	01813083          	ld	ra,24(sp)
    80001bbc:	01013403          	ld	s0,16(sp)
    80001bc0:	00813483          	ld	s1,8(sp)
    80001bc4:	00013903          	ld	s2,0(sp)
    80001bc8:	02010113          	addi	sp,sp,32
    80001bcc:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80001bd0:	00005517          	auipc	a0,0x5
    80001bd4:	50850513          	addi	a0,a0,1288 # 800070d8 <CONSOLE_STATUS+0xc8>
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	c6c080e7          	jalr	-916(ra) # 80001844 <_Z11printStringPKc>
            return;
    80001be0:	fd9ff06f          	j	80001bb8 <_Z8userMainv+0xa4>
    switch (test) {
    80001be4:	00700793          	li	a5,7
    80001be8:	04f49663          	bne	s1,a5,80001c34 <_Z8userMainv+0x120>
            System_Mode_test();
    80001bec:	00002097          	auipc	ra,0x2
    80001bf0:	31c080e7          	jalr	796(ra) # 80003f08 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001bf4:	00005517          	auipc	a0,0x5
    80001bf8:	59450513          	addi	a0,a0,1428 # 80007188 <CONSOLE_STATUS+0x178>
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	c48080e7          	jalr	-952(ra) # 80001844 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001c04:	00005517          	auipc	a0,0x5
    80001c08:	5a450513          	addi	a0,a0,1444 # 800071a8 <CONSOLE_STATUS+0x198>
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	c38080e7          	jalr	-968(ra) # 80001844 <_Z11printStringPKc>
            break;
    80001c14:	fa5ff06f          	j	80001bb8 <_Z8userMainv+0xa4>
            Threads_C_API_test();
    80001c18:	00002097          	auipc	ra,0x2
    80001c1c:	cb0080e7          	jalr	-848(ra) # 800038c8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001c20:	00005517          	auipc	a0,0x5
    80001c24:	4e850513          	addi	a0,a0,1256 # 80007108 <CONSOLE_STATUS+0xf8>
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	c1c080e7          	jalr	-996(ra) # 80001844 <_Z11printStringPKc>
            break;
    80001c30:	f89ff06f          	j	80001bb8 <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    80001c34:	00005517          	auipc	a0,0x5
    80001c38:	5cc50513          	addi	a0,a0,1484 # 80007200 <CONSOLE_STATUS+0x1f0>
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	c08080e7          	jalr	-1016(ra) # 80001844 <_Z11printStringPKc>
    80001c44:	f75ff06f          	j	80001bb8 <_Z8userMainv+0xa4>

0000000080001c48 <main>:
#include "../h/riscv.hpp"
#include "../lib/console.h"

extern void userMain();

int main() {
    80001c48:	fd010113          	addi	sp,sp,-48
    80001c4c:	02113423          	sd	ra,40(sp)
    80001c50:	02813023          	sd	s0,32(sp)
    80001c54:	00913c23          	sd	s1,24(sp)
    80001c58:	01213823          	sd	s2,16(sp)
    80001c5c:	03010413          	addi	s0,sp,48
    MemoryAllocator::initFreeSegment();
    80001c60:	00001097          	auipc	ra,0x1
    80001c64:	d98080e7          	jalr	-616(ra) # 800029f8 <_ZN15MemoryAllocator15initFreeSegmentEv>

    thread_t threads[2];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001c68:	00007797          	auipc	a5,0x7
    80001c6c:	9987b783          	ld	a5,-1640(a5) # 80008600 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile("csrw stvec, %0" : : "r"(stvec));
    80001c70:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001c74:	00200793          	li	a5,2
    80001c78:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    thread_create(&threads[0], nullptr, nullptr);
    80001c7c:	00000613          	li	a2,0
    80001c80:	00000593          	li	a1,0
    80001c84:	fd040513          	addi	a0,s0,-48
    80001c88:	fffff097          	auipc	ra,0xfffff
    80001c8c:	628080e7          	jalr	1576(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[1], reinterpret_cast<void (*) (void *)>(userMain), nullptr);
    80001c90:	00000613          	li	a2,0
    80001c94:	00007597          	auipc	a1,0x7
    80001c98:	95c5b583          	ld	a1,-1700(a1) # 800085f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c9c:	fd840513          	addi	a0,s0,-40
    80001ca0:	fffff097          	auipc	ra,0xfffff
    80001ca4:	610080e7          	jalr	1552(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!(threads[1]->isFinished())) thread_dispatch();
    80001ca8:	fd843783          	ld	a5,-40(s0)

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }
    80001cac:	0307c783          	lbu	a5,48(a5)
    80001cb0:	00079863          	bnez	a5,80001cc0 <main+0x78>
    80001cb4:	fffff097          	auipc	ra,0xfffff
    80001cb8:	670080e7          	jalr	1648(ra) # 80001324 <_Z15thread_dispatchv>
    80001cbc:	fedff06f          	j	80001ca8 <main+0x60>

    for(auto &thread : threads) {
    80001cc0:	fd040493          	addi	s1,s0,-48
    80001cc4:	0140006f          	j	80001cd8 <main+0x90>
        delete thread;
    80001cc8:	00090513          	mv	a0,s2
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	358080e7          	jalr	856(ra) # 80002024 <_ZdlPv>
    for(auto &thread : threads) {
    80001cd4:	00848493          	addi	s1,s1,8
    80001cd8:	fe040793          	addi	a5,s0,-32
    80001cdc:	02f48063          	beq	s1,a5,80001cfc <main+0xb4>
        delete thread;
    80001ce0:	0004b903          	ld	s2,0(s1)
    80001ce4:	fe0908e3          	beqz	s2,80001cd4 <main+0x8c>
    ~TCB(){ delete[] stack; }
    80001ce8:	01093503          	ld	a0,16(s2)
    80001cec:	fc050ee3          	beqz	a0,80001cc8 <main+0x80>
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	35c080e7          	jalr	860(ra) # 8000204c <_ZdaPv>
    80001cf8:	fd1ff06f          	j	80001cc8 <main+0x80>
    }

    Scheduler::deleteThreadQueue();
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	980080e7          	jalr	-1664(ra) # 8000267c <_ZN9Scheduler17deleteThreadQueueEv>

    printString("Proces zavrsen\n");
    80001d04:	00005517          	auipc	a0,0x5
    80001d08:	52450513          	addi	a0,a0,1316 # 80007228 <CONSOLE_STATUS+0x218>
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	b38080e7          	jalr	-1224(ra) # 80001844 <_Z11printStringPKc>

    return 0;
    80001d14:	00000513          	li	a0,0
    80001d18:	02813083          	ld	ra,40(sp)
    80001d1c:	02013403          	ld	s0,32(sp)
    80001d20:	01813483          	ld	s1,24(sp)
    80001d24:	01013903          	ld	s2,16(sp)
    80001d28:	03010113          	addi	sp,sp,48
    80001d2c:	00008067          	ret

0000000080001d30 <_ZN3TCB12createThreadEPFvPvES0_>:
#include "../h/syscall_c.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body, void* arg) {
    80001d30:	fd010113          	addi	sp,sp,-48
    80001d34:	02113423          	sd	ra,40(sp)
    80001d38:	02813023          	sd	s0,32(sp)
    80001d3c:	00913c23          	sd	s1,24(sp)
    80001d40:	01213823          	sd	s2,16(sp)
    80001d44:	01313423          	sd	s3,8(sp)
    80001d48:	03010413          	addi	s0,sp,48
    80001d4c:	00050913          	mv	s2,a0
    80001d50:	00058993          	mv	s3,a1
    TCB* tcb = new TCB(body, arg);
    80001d54:	03800513          	li	a0,56
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	27c080e7          	jalr	636(ra) # 80001fd4 <_Znwm>
    80001d60:	00050493          	mv	s1,a0
        context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
        }),
        time_slice(DEFAULT_TIME_SLICE),
        finished(false) {}
    80001d64:	01253023          	sd	s2,0(a0)
    80001d68:	01353423          	sd	s3,8(a0)
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001d6c:	00090a63          	beqz	s2,80001d80 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001d70:	00008537          	lui	a0,0x8
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	288080e7          	jalr	648(ra) # 80001ffc <_Znam>
    80001d7c:	0080006f          	j	80001d84 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001d80:	00000513          	li	a0,0
        finished(false) {}
    80001d84:	00a4b823          	sd	a0,16(s1)
    80001d88:	00000797          	auipc	a5,0x0
    80001d8c:	19878793          	addi	a5,a5,408 # 80001f20 <_ZN3TCB13threadWrapperEv>
    80001d90:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001d94:	04050663          	beqz	a0,80001de0 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80001d98:	000087b7          	lui	a5,0x8
    80001d9c:	00f507b3          	add	a5,a0,a5
        finished(false) {}
    80001da0:	02f4b023          	sd	a5,32(s1)
    80001da4:	00200793          	li	a5,2
    80001da8:	02f4b423          	sd	a5,40(s1)
    80001dac:	02048823          	sb	zero,48(s1)
    if(body != nullptr) Scheduler::put(tcb);
    80001db0:	02090c63          	beqz	s2,80001de8 <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	858080e7          	jalr	-1960(ra) # 80002610 <_ZN9Scheduler3putEP3TCB>
    else TCB::running = tcb;
    return tcb;
}
    80001dc0:	00048513          	mv	a0,s1
    80001dc4:	02813083          	ld	ra,40(sp)
    80001dc8:	02013403          	ld	s0,32(sp)
    80001dcc:	01813483          	ld	s1,24(sp)
    80001dd0:	01013903          	ld	s2,16(sp)
    80001dd4:	00813983          	ld	s3,8(sp)
    80001dd8:	03010113          	addi	sp,sp,48
    80001ddc:	00008067          	ret
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001de0:	00000793          	li	a5,0
    80001de4:	fbdff06f          	j	80001da0 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    else TCB::running = tcb;
    80001de8:	00007797          	auipc	a5,0x7
    80001dec:	8897b823          	sd	s1,-1904(a5) # 80008678 <_ZN3TCB7runningE>
    return tcb;
    80001df0:	fd1ff06f          	j	80001dc0 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    80001df4:	00050913          	mv	s2,a0
    TCB* tcb = new TCB(body, arg);
    80001df8:	00048513          	mv	a0,s1
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	228080e7          	jalr	552(ra) # 80002024 <_ZdlPv>
    80001e04:	00090513          	mv	a0,s2
    80001e08:	00008097          	auipc	ra,0x8
    80001e0c:	980080e7          	jalr	-1664(ra) # 80009788 <_Unwind_Resume>

0000000080001e10 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>:

TCB* TCB::createThreadWithoutStarting(Body body, void* arg) {
    80001e10:	fd010113          	addi	sp,sp,-48
    80001e14:	02113423          	sd	ra,40(sp)
    80001e18:	02813023          	sd	s0,32(sp)
    80001e1c:	00913c23          	sd	s1,24(sp)
    80001e20:	01213823          	sd	s2,16(sp)
    80001e24:	01313423          	sd	s3,8(sp)
    80001e28:	03010413          	addi	s0,sp,48
    80001e2c:	00050913          	mv	s2,a0
    80001e30:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001e34:	03800513          	li	a0,56
    80001e38:	00000097          	auipc	ra,0x0
    80001e3c:	19c080e7          	jalr	412(ra) # 80001fd4 <_Znwm>
    80001e40:	00050493          	mv	s1,a0
        finished(false) {}
    80001e44:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
    80001e48:	01353423          	sd	s3,8(a0)
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001e4c:	00090a63          	beqz	s2,80001e60 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x50>
    80001e50:	00008537          	lui	a0,0x8
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	1a8080e7          	jalr	424(ra) # 80001ffc <_Znam>
    80001e5c:	0080006f          	j	80001e64 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x54>
    80001e60:	00000513          	li	a0,0
        finished(false) {}
    80001e64:	00a4b823          	sd	a0,16(s1)
    80001e68:	00000797          	auipc	a5,0x0
    80001e6c:	0b878793          	addi	a5,a5,184 # 80001f20 <_ZN3TCB13threadWrapperEv>
    80001e70:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001e74:	02050e63          	beqz	a0,80001eb0 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0xa0>
    80001e78:	000087b7          	lui	a5,0x8
    80001e7c:	00f50533          	add	a0,a0,a5
        finished(false) {}
    80001e80:	02a4b023          	sd	a0,32(s1)
    80001e84:	00200793          	li	a5,2
    80001e88:	02f4b423          	sd	a5,40(s1)
    80001e8c:	02048823          	sb	zero,48(s1)
}
    80001e90:	00048513          	mv	a0,s1
    80001e94:	02813083          	ld	ra,40(sp)
    80001e98:	02013403          	ld	s0,32(sp)
    80001e9c:	01813483          	ld	s1,24(sp)
    80001ea0:	01013903          	ld	s2,16(sp)
    80001ea4:	00813983          	ld	s3,8(sp)
    80001ea8:	03010113          	addi	sp,sp,48
    80001eac:	00008067          	ret
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001eb0:	00000513          	li	a0,0
    80001eb4:	fcdff06f          	j	80001e80 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x70>
    80001eb8:	00050913          	mv	s2,a0
    return new TCB(body, arg);
    80001ebc:	00048513          	mv	a0,s1
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	164080e7          	jalr	356(ra) # 80002024 <_ZdlPv>
    80001ec8:	00090513          	mv	a0,s2
    80001ecc:	00008097          	auipc	ra,0x8
    80001ed0:	8bc080e7          	jalr	-1860(ra) # 80009788 <_Unwind_Resume>

0000000080001ed4 <_ZN3TCB11startThreadEPS_>:

void TCB::startThread(TCB* tcb) {
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00113423          	sd	ra,8(sp)
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	72c080e7          	jalr	1836(ra) # 80002610 <_ZN9Scheduler3putEP3TCB>
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN3TCB5yieldEv>:

void TCB::yield() {
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00813423          	sd	s0,8(sp)
    80001f04:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001f08:	00000793          	li	a5,0
    80001f0c:	00078513          	mv	a0,a5
    Riscv::w_a0(0);
    __asm__ volatile("ecall");
    80001f10:	00000073          	ecall
}
    80001f14:	00813403          	ld	s0,8(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001f20:	ff010113          	addi	sp,sp,-16
    80001f24:	00113423          	sd	ra,8(sp)
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	318080e7          	jalr	792(ra) # 80002248 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001f38:	00006797          	auipc	a5,0x6
    80001f3c:	7407b783          	ld	a5,1856(a5) # 80008678 <_ZN3TCB7runningE>
    80001f40:	0007b703          	ld	a4,0(a5)
    80001f44:	0087b503          	ld	a0,8(a5)
    80001f48:	000700e7          	jalr	a4
    thread_exit();
    80001f4c:	fffff097          	auipc	ra,0xfffff
    80001f50:	3a4080e7          	jalr	932(ra) # 800012f0 <_Z11thread_exitv>
    TCB::yield();
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	fa8080e7          	jalr	-88(ra) # 80001efc <_ZN3TCB5yieldEv>
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001f6c:	fe010113          	addi	sp,sp,-32
    80001f70:	00113c23          	sd	ra,24(sp)
    80001f74:	00813823          	sd	s0,16(sp)
    80001f78:	00913423          	sd	s1,8(sp)
    80001f7c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001f80:	00006497          	auipc	s1,0x6
    80001f84:	6f84b483          	ld	s1,1784(s1) # 80008678 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001f88:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){ Scheduler::put(old); }
    80001f8c:	02078c63          	beqz	a5,80001fc4 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	618080e7          	jalr	1560(ra) # 800025a8 <_ZN9Scheduler3getEv>
    80001f98:	00006797          	auipc	a5,0x6
    80001f9c:	6ea7b023          	sd	a0,1760(a5) # 80008678 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001fa0:	01850593          	addi	a1,a0,24 # 8018 <_entry-0x7fff7fe8>
    80001fa4:	01848513          	addi	a0,s1,24
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	288080e7          	jalr	648(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001fb0:	01813083          	ld	ra,24(sp)
    80001fb4:	01013403          	ld	s0,16(sp)
    80001fb8:	00813483          	ld	s1,8(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret
    if(!old->isFinished()){ Scheduler::put(old); }
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	648080e7          	jalr	1608(ra) # 80002610 <_ZN9Scheduler3putEP3TCB>
    80001fd0:	fc1ff06f          	j	80001f90 <_ZN3TCB8dispatchEv+0x24>

0000000080001fd4 <_Znwm>:
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void *operator new (size_t size){
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00113423          	sd	ra,8(sp)
    80001fdc:	00813023          	sd	s0,0(sp)
    80001fe0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	810080e7          	jalr	-2032(ra) # 800027f4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001fec:	00813083          	ld	ra,8(sp)
    80001ff0:	00013403          	ld	s0,0(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <_Znam>:

void *operator new[] (size_t size){
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00113423          	sd	ra,8(sp)
    80002004:	00813023          	sd	s0,0(sp)
    80002008:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	7e8080e7          	jalr	2024(ra) # 800027f4 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002014:	00813083          	ld	ra,8(sp)
    80002018:	00013403          	ld	s0,0(sp)
    8000201c:	01010113          	addi	sp,sp,16
    80002020:	00008067          	ret

0000000080002024 <_ZdlPv>:

void operator delete (void *ptr) noexcept {
    80002024:	ff010113          	addi	sp,sp,-16
    80002028:	00113423          	sd	ra,8(sp)
    8000202c:	00813023          	sd	s0,0(sp)
    80002030:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80002034:	00001097          	auipc	ra,0x1
    80002038:	8b8080e7          	jalr	-1864(ra) # 800028ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000203c:	00813083          	ld	ra,8(sp)
    80002040:	00013403          	ld	s0,0(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <_ZdaPv>:

void operator delete[] (void *ptr) noexcept {
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	00813023          	sd	s0,0(sp)
    80002058:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	890080e7          	jalr	-1904(ra) # 800028ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN6ThreadD1Ev>:

Thread::Thread(void (*body)(void*), void* arg) {
    thread_create(&this->myHandle, body, arg);
}

Thread::~Thread() {
    80002074:	fe010113          	addi	sp,sp,-32
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	00813823          	sd	s0,16(sp)
    80002080:	00913423          	sd	s1,8(sp)
    80002084:	02010413          	addi	s0,sp,32
    80002088:	00006797          	auipc	a5,0x6
    8000208c:	4a878793          	addi	a5,a5,1192 # 80008530 <_ZTV6Thread+0x10>
    80002090:	00f53023          	sd	a5,0(a0)
    //thread_exit();
    delete this->myHandle;
    80002094:	00853483          	ld	s1,8(a0)
    80002098:	02048063          	beqz	s1,800020b8 <_ZN6ThreadD1Ev+0x44>
    ~TCB(){ delete[] stack; }
    8000209c:	0104b503          	ld	a0,16(s1)
    800020a0:	00050663          	beqz	a0,800020ac <_ZN6ThreadD1Ev+0x38>
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	fa8080e7          	jalr	-88(ra) # 8000204c <_ZdaPv>
    800020ac:	00048513          	mv	a0,s1
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	f74080e7          	jalr	-140(ra) # 80002024 <_ZdlPv>
}
    800020b8:	01813083          	ld	ra,24(sp)
    800020bc:	01013403          	ld	s0,16(sp)
    800020c0:	00813483          	ld	s1,8(sp)
    800020c4:	02010113          	addi	sp,sp,32
    800020c8:	00008067          	ret

00000000800020cc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020cc:	fe010113          	addi	sp,sp,-32
    800020d0:	00113c23          	sd	ra,24(sp)
    800020d4:	00813823          	sd	s0,16(sp)
    800020d8:	00913423          	sd	s1,8(sp)
    800020dc:	02010413          	addi	s0,sp,32
    800020e0:	00050493          	mv	s1,a0
}
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	f90080e7          	jalr	-112(ra) # 80002074 <_ZN6ThreadD1Ev>
    800020ec:	00048513          	mv	a0,s1
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	f34080e7          	jalr	-204(ra) # 80002024 <_ZdlPv>
    800020f8:	01813083          	ld	ra,24(sp)
    800020fc:	01013403          	ld	s0,16(sp)
    80002100:	00813483          	ld	s1,8(sp)
    80002104:	02010113          	addi	sp,sp,32
    80002108:	00008067          	ret

000000008000210c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	00006797          	auipc	a5,0x6
    80002120:	41478793          	addi	a5,a5,1044 # 80008530 <_ZTV6Thread+0x10>
    80002124:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    80002128:	00850513          	addi	a0,a0,8
    8000212c:	fffff097          	auipc	ra,0xfffff
    80002130:	184080e7          	jalr	388(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN6Thread5startEv>:

int Thread::start() {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00113423          	sd	ra,8(sp)
    8000214c:	00813023          	sd	s0,0(sp)
    80002150:	01010413          	addi	s0,sp,16
    thread_start(this->myHandle);
    80002154:	00853503          	ld	a0,8(a0)
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	230080e7          	jalr	560(ra) # 80001388 <_Z12thread_startP3TCB>
    return 0;
}
    80002160:	00000513          	li	a0,0
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN6Thread8dispatchEv>:

void Thread::dispatch() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	1a0080e7          	jalr	416(ra) # 80001324 <_Z15thread_dispatchv>
}
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t time) {
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    return 0;
}
    800021a8:	00000513          	li	a0,0
    800021ac:	00813403          	ld	s0,8(sp)
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <_ZN6ThreadC1Ev>:

Thread::Thread() {
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00113423          	sd	ra,8(sp)
    800021c0:	00813023          	sd	s0,0(sp)
    800021c4:	01010413          	addi	s0,sp,16
    800021c8:	00006797          	auipc	a5,0x6
    800021cc:	36878793          	addi	a5,a5,872 # 80008530 <_ZTV6Thread+0x10>
    800021d0:	00f53023          	sd	a5,0(a0)
    thread_create_without_start(&this->myHandle, runWrapper, this);
    800021d4:	00050613          	mv	a2,a0
    800021d8:	00000597          	auipc	a1,0x0
    800021dc:	03c58593          	addi	a1,a1,60 # 80002214 <_ZN6Thread10runWrapperEPv>
    800021e0:	00850513          	addi	a0,a0,8
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	164080e7          	jalr	356(ra) # 80001348 <_Z27thread_create_without_startPP3TCBPFvPvES2_>
}
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN6Thread3runEv>:
  static void dispatch();
  static int sleep(time_t);

protected:
  Thread();
  virtual void run() {};
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00813423          	sd	s0,8(sp)
    80002204:	01010413          	addi	s0,sp,16
    80002208:	00813403          	ld	s0,8(sp)
    8000220c:	01010113          	addi	sp,sp,16
    80002210:	00008067          	ret

0000000080002214 <_ZN6Thread10runWrapperEPv>:
private:
  thread_t myHandle;
  void (*body)(void*); void* arg;

  static void runWrapper(void* thread) {
    if(thread != nullptr) ((Thread*)thread)->run();
    80002214:	02050863          	beqz	a0,80002244 <_ZN6Thread10runWrapperEPv+0x30>
  static void runWrapper(void* thread) {
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00113423          	sd	ra,8(sp)
    80002220:	00813023          	sd	s0,0(sp)
    80002224:	01010413          	addi	s0,sp,16
    if(thread != nullptr) ((Thread*)thread)->run();
    80002228:	00053783          	ld	a5,0(a0)
    8000222c:	0107b783          	ld	a5,16(a5)
    80002230:	000780e7          	jalr	a5
  }
    80002234:	00813083          	ld	ra,8(sp)
    80002238:	00013403          	ld	s0,0(sp)
    8000223c:	01010113          	addi	sp,sp,16
    80002240:	00008067          	ret
    80002244:	00008067          	ret

0000000080002248 <_ZN5Riscv10popSppSpieEv>:

#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"

void Riscv::popSppSpie() {
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002254:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80002258:	10000793          	li	a5,256
    8000225c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
    80002260:	10200073          	sret
}
    80002264:	00813403          	ld	s0,8(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void *);

void Riscv::handleSupervisorTrap() {
    80002270:	f9010113          	addi	sp,sp,-112
    80002274:	06113423          	sd	ra,104(sp)
    80002278:	06813023          	sd	s0,96(sp)
    8000227c:	04913c23          	sd	s1,88(sp)
    80002280:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002284:	142027f3          	csrr	a5,scause
    80002288:	faf43023          	sd	a5,-96(s0)
    return scause;
    8000228c:	fa043703          	ld	a4,-96(s0)
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002290:	ff870693          	addi	a3,a4,-8
    80002294:	00100793          	li	a5,1
    80002298:	12d7f463          	bgeu	a5,a3,800023c0 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        }

        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x8000000000000001UL) {
    8000229c:	fff00793          	li	a5,-1
    800022a0:	03f79793          	slli	a5,a5,0x3f
    800022a4:	00178793          	addi	a5,a5,1
    800022a8:	2af70463          	beq	a4,a5,80002550 <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
        //     TCB::timeSliceCounter = 0;
        //     TCB::dispatch();
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
    } else if (scause == 0x8000000000000009UL) {
    800022ac:	fff00793          	li	a5,-1
    800022b0:	03f79793          	slli	a5,a5,0x3f
    800022b4:	00978793          	addi	a5,a5,9
    800022b8:	2af70263          	beq	a4,a5,8000255c <_ZN5Riscv20handleSupervisorTrapEv+0x2ec>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800022bc:	141027f3          	csrr	a5,sepc
    800022c0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800022c4:	fd843483          	ld	s1,-40(s0)
        console_handler();
        //mc_sip(SIP_SEIP);
    } else {
        // Neocekivani razlog prekida
        uint64 sepc = r_sepc();
        printString("Vrednost sepc:");
    800022c8:	00005517          	auipc	a0,0x5
    800022cc:	f7050513          	addi	a0,a0,-144 # 80007238 <CONSOLE_STATUS+0x228>
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	574080e7          	jalr	1396(ra) # 80001844 <_Z11printStringPKc>
        printInt(sepc);
    800022d8:	00000613          	li	a2,0
    800022dc:	00a00593          	li	a1,10
    800022e0:	0004851b          	sext.w	a0,s1
    800022e4:	fffff097          	auipc	ra,0xfffff
    800022e8:	710080e7          	jalr	1808(ra) # 800019f4 <_Z8printIntiii>
        printString(" ");
    800022ec:	00005517          	auipc	a0,0x5
    800022f0:	f9450513          	addi	a0,a0,-108 # 80007280 <CONSOLE_STATUS+0x270>
    800022f4:	fffff097          	auipc	ra,0xfffff
    800022f8:	550080e7          	jalr	1360(ra) # 80001844 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    800022fc:	105027f3          	csrr	a5,stvec
    80002300:	fcf43823          	sd	a5,-48(s0)
    return stvec;
    80002304:	fd043483          	ld	s1,-48(s0)
        uint64 stvec = r_stvec();
        printString("Vrednost stvec:");
    80002308:	00005517          	auipc	a0,0x5
    8000230c:	f4050513          	addi	a0,a0,-192 # 80007248 <CONSOLE_STATUS+0x238>
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	534080e7          	jalr	1332(ra) # 80001844 <_Z11printStringPKc>
        printInt(stvec);
    80002318:	00000613          	li	a2,0
    8000231c:	00a00593          	li	a1,10
    80002320:	0004851b          	sext.w	a0,s1
    80002324:	fffff097          	auipc	ra,0xfffff
    80002328:	6d0080e7          	jalr	1744(ra) # 800019f4 <_Z8printIntiii>
        printString(" ");
    8000232c:	00005517          	auipc	a0,0x5
    80002330:	f5450513          	addi	a0,a0,-172 # 80007280 <CONSOLE_STATUS+0x270>
    80002334:	fffff097          	auipc	ra,0xfffff
    80002338:	510080e7          	jalr	1296(ra) # 80001844 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000233c:	100027f3          	csrr	a5,sstatus
    80002340:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002344:	fc843483          	ld	s1,-56(s0)
        uint64 sstatus = r_sstatus();
        printString("Vrednost sstatus:");
    80002348:	00005517          	auipc	a0,0x5
    8000234c:	f1050513          	addi	a0,a0,-240 # 80007258 <CONSOLE_STATUS+0x248>
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	4f4080e7          	jalr	1268(ra) # 80001844 <_Z11printStringPKc>
        printInt(sstatus);
    80002358:	00000613          	li	a2,0
    8000235c:	00a00593          	li	a1,10
    80002360:	0004851b          	sext.w	a0,s1
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	690080e7          	jalr	1680(ra) # 800019f4 <_Z8printIntiii>
        printString(" ");
    8000236c:	00005517          	auipc	a0,0x5
    80002370:	f1450513          	addi	a0,a0,-236 # 80007280 <CONSOLE_STATUS+0x270>
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	4d0080e7          	jalr	1232(ra) # 80001844 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000237c:	142027f3          	csrr	a5,scause
    80002380:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002384:	fc043483          	ld	s1,-64(s0)
        uint64 scause = r_scause();
        printString("Vrednost scause: ");
    80002388:	00005517          	auipc	a0,0x5
    8000238c:	ee850513          	addi	a0,a0,-280 # 80007270 <CONSOLE_STATUS+0x260>
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	4b4080e7          	jalr	1204(ra) # 80001844 <_Z11printStringPKc>
        printInt(scause);
    80002398:	00000613          	li	a2,0
    8000239c:	00a00593          	li	a1,10
    800023a0:	0004851b          	sext.w	a0,s1
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	650080e7          	jalr	1616(ra) # 800019f4 <_Z8printIntiii>
        printString("\n");
    800023ac:	00005517          	auipc	a0,0x5
    800023b0:	c9450513          	addi	a0,a0,-876 # 80007040 <CONSOLE_STATUS+0x30>
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	490080e7          	jalr	1168(ra) # 80001844 <_Z11printStringPKc>
    }
}
    800023bc:	0bc0006f          	j	80002478 <_ZN5Riscv20handleSupervisorTrapEv+0x208>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800023c0:	141027f3          	csrr	a5,sepc
    800023c4:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800023c8:	fb843783          	ld	a5,-72(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800023cc:	00478793          	addi	a5,a5,4
    800023d0:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800023d4:	100027f3          	csrr	a5,sstatus
    800023d8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800023dc:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    800023e0:	f8f43c23          	sd	a5,-104(s0)
        TCB::timeSliceCounter = 0;
    800023e4:	00006797          	auipc	a5,0x6
    800023e8:	2247b783          	ld	a5,548(a5) # 80008608 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023ec:	0007b023          	sd	zero,0(a5)
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800023f0:	00050793          	mv	a5,a0
    800023f4:	faf43423          	sd	a5,-88(s0)
    return a0;
    800023f8:	fa843783          	ld	a5,-88(s0)
        switch (code) {
    800023fc:	01200713          	li	a4,18
    80002400:	02f76463          	bltu	a4,a5,80002428 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    80002404:	04078e63          	beqz	a5,80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
    80002408:	04f76c63          	bltu	a4,a5,80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
    8000240c:	00279793          	slli	a5,a5,0x2
    80002410:	00005717          	auipc	a4,0x5
    80002414:	e7470713          	addi	a4,a4,-396 # 80007284 <CONSOLE_STATUS+0x274>
    80002418:	00e787b3          	add	a5,a5,a4
    8000241c:	0007a783          	lw	a5,0(a5)
    80002420:	00e787b3          	add	a5,a5,a4
    80002424:	00078067          	jr	a5
    80002428:	04100713          	li	a4,65
    8000242c:	10e78863          	beq	a5,a4,8000253c <_ZN5Riscv20handleSupervisorTrapEv+0x2cc>
    80002430:	04200713          	li	a4,66
    80002434:	02e79663          	bne	a5,a4,80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                __asm__ volatile("mv %0, a1" : "=r" (chr));
    80002438:	00058513          	mv	a0,a1
                __putc(chr);
    8000243c:	0ff57513          	andi	a0,a0,255
    80002440:	00004097          	auipc	ra,0x4
    80002444:	c8c080e7          	jalr	-884(ra) # 800060cc <__putc>
                break;
    80002448:	0180006f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                __asm__ volatile("mv %0, a1" : "=r" (size));
    8000244c:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    80002450:	00000097          	auipc	ra,0x0
    80002454:	3a4080e7          	jalr	932(ra) # 800027f4 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80002458:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    8000245c:	04a42823          	sw	a0,80(s0)
        TCB::dispatch();
    80002460:	00000097          	auipc	ra,0x0
    80002464:	b0c080e7          	jalr	-1268(ra) # 80001f6c <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80002468:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    8000246c:	1007b073          	csrc	sstatus,a5
        w_sepc(sepc);
    80002470:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80002474:	14179073          	csrw	sepc,a5
}
    80002478:	06813083          	ld	ra,104(sp)
    8000247c:	06013403          	ld	s0,96(sp)
    80002480:	05813483          	ld	s1,88(sp)
    80002484:	07010113          	addi	sp,sp,112
    80002488:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    8000248c:	00058513          	mv	a0,a1
                ret = MemoryAllocator::mem_free(ptr);
    80002490:	00000097          	auipc	ra,0x0
    80002494:	45c080e7          	jalr	1116(ra) # 800028ec <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002498:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    8000249c:	04a42823          	sw	a0,80(s0)
                break;
    800024a0:	fc1ff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                __asm__ volatile("mv %0, a1" : "=r" (tcb));
    800024a4:	00058513          	mv	a0,a1
                TCB::startThread(tcb);
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	a2c080e7          	jalr	-1492(ra) # 80001ed4 <_ZN3TCB11startThreadEPS_>
                break;
    800024b0:	fb1ff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    800024b4:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (body));
    800024b8:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a7" : "=r" (arg));
    800024bc:	00088593          	mv	a1,a7
                *handle = TCB::createThreadWithoutStarting(body, arg);
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	950080e7          	jalr	-1712(ra) # 80001e10 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>
    800024c8:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) {
    800024cc:	00050863          	beqz	a0,800024dc <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
                    __asm__ volatile("li a0, 0");
    800024d0:	00000513          	li	a0,0
                    __asm__ volatile("sw a0, 80(x8)");
    800024d4:	04a42823          	sw	a0,80(s0)
    800024d8:	f89ff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                    __asm__ volatile("li a0, -1");
    800024dc:	fff00513          	li	a0,-1
                    __asm__ volatile("sw a0, 80(x8)");
    800024e0:	04a42823          	sw	a0,80(s0)
    800024e4:	f7dff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    800024e8:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (body));
    800024ec:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a7" : "=r" (arg));
    800024f0:	00088593          	mv	a1,a7
                *handle = TCB::createThread(body, arg);
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	83c080e7          	jalr	-1988(ra) # 80001d30 <_ZN3TCB12createThreadEPFvPvES0_>
    800024fc:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) {
    80002500:	00050863          	beqz	a0,80002510 <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
                    __asm__ volatile("li a0, 0");
    80002504:	00000513          	li	a0,0
                    __asm__ volatile("sw a0, 80(x8)");
    80002508:	04a42823          	sw	a0,80(s0)
    8000250c:	f55ff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                    __asm__ volatile("li a0, -1");
    80002510:	fff00513          	li	a0,-1
                    __asm__ volatile("sw a0, 80(x8)");
    80002514:	04a42823          	sw	a0,80(s0)
    80002518:	f49ff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                TCB::running->setFinished(true);
    8000251c:	00006797          	auipc	a5,0x6
    80002520:	0fc7b783          	ld	a5,252(a5) # 80008618 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002524:	0007b783          	ld	a5,0(a5)
    void setFinished(bool finished) { this->finished = finished; }
    80002528:	00100713          	li	a4,1
    8000252c:	02e78823          	sb	a4,48(a5)
                __asm__ volatile("li a0, 0");
    80002530:	00000513          	li	a0,0
                __asm__ volatile("sw a0, 80(x8)");
    80002534:	04a42823          	sw	a0,80(s0)
                break;
    80002538:	f29ff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
                chr = __getc();
    8000253c:	00004097          	auipc	ra,0x4
    80002540:	bcc080e7          	jalr	-1076(ra) # 80006108 <__getc>
                __asm__ volatile("mv a0, %0" : : "r" (chr));
    80002544:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80002548:	04a42823          	sw	a0,80(s0)
            break;
    8000254c:	f15ff06f          	j	80002460 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002550:	00200793          	li	a5,2
    80002554:	1447b073          	csrc	sip,a5
}
    80002558:	f21ff06f          	j	80002478 <_ZN5Riscv20handleSupervisorTrapEv+0x208>
        console_handler();
    8000255c:	00004097          	auipc	ra,0x4
    80002560:	be4080e7          	jalr	-1052(ra) # 80006140 <console_handler>
    80002564:	f15ff06f          	j	80002478 <_ZN5Riscv20handleSupervisorTrapEv+0x208>

0000000080002568 <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

void Scheduler::deleteThreadQueue() {
    while(get());
}
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00813423          	sd	s0,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00100793          	li	a5,1
    80002578:	00f50863          	beq	a0,a5,80002588 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret
    80002588:	000107b7          	lui	a5,0x10
    8000258c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002590:	fef596e3          	bne	a1,a5,8000257c <_Z41__static_initialization_and_destruction_0ii+0x14>

#include "MemoryAllocator.hpp"

template <typename T> class List {
public:
    List() : head(0), tail(0) {}
    80002594:	00006797          	auipc	a5,0x6
    80002598:	0f478793          	addi	a5,a5,244 # 80008688 <_ZN9Scheduler16readyThreadQueueE>
    8000259c:	0007b023          	sd	zero,0(a5)
    800025a0:	0007b423          	sd	zero,8(a5)
    800025a4:	fd9ff06f          	j	8000257c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800025a8 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    800025a8:	fe010113          	addi	sp,sp,-32
    800025ac:	00113c23          	sd	ra,24(sp)
    800025b0:	00813823          	sd	s0,16(sp)
    800025b4:	00913423          	sd	s1,8(sp)
    800025b8:	02010413          	addi	s0,sp,32
            tail = element;
        } else head = tail = element;
    }

    T* removeFirst() {
        if(!head) return nullptr;
    800025bc:	00006517          	auipc	a0,0x6
    800025c0:	0cc53503          	ld	a0,204(a0) # 80008688 <_ZN9Scheduler16readyThreadQueueE>
    800025c4:	04050263          	beqz	a0,80002608 <_ZN9Scheduler3getEv+0x60>
        Element* element = head;
        head = head->next;
    800025c8:	00853783          	ld	a5,8(a0)
    800025cc:	00006717          	auipc	a4,0x6
    800025d0:	0af73e23          	sd	a5,188(a4) # 80008688 <_ZN9Scheduler16readyThreadQueueE>
        if(!head) tail = nullptr;
    800025d4:	02078463          	beqz	a5,800025fc <_ZN9Scheduler3getEv+0x54>

        T* result = element->item;
    800025d8:	00053483          	ld	s1,0(a0)
        void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void* ptr){
            MemoryAllocator::mem_free(ptr);
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	310080e7          	jalr	784(ra) # 800028ec <_ZN15MemoryAllocator8mem_freeEPv>
}
    800025e4:	00048513          	mv	a0,s1
    800025e8:	01813083          	ld	ra,24(sp)
    800025ec:	01013403          	ld	s0,16(sp)
    800025f0:	00813483          	ld	s1,8(sp)
    800025f4:	02010113          	addi	sp,sp,32
    800025f8:	00008067          	ret
        if(!head) tail = nullptr;
    800025fc:	00006797          	auipc	a5,0x6
    80002600:	0807ba23          	sd	zero,148(a5) # 80008690 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002604:	fd5ff06f          	j	800025d8 <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    80002608:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000260c:	fd9ff06f          	j	800025e4 <_ZN9Scheduler3getEv+0x3c>

0000000080002610 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002610:	fe010113          	addi	sp,sp,-32
    80002614:	00113c23          	sd	ra,24(sp)
    80002618:	00813823          	sd	s0,16(sp)
    8000261c:	00913423          	sd	s1,8(sp)
    80002620:	02010413          	addi	s0,sp,32
    80002624:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80002628:	01000513          	li	a0,16
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	1c8080e7          	jalr	456(ra) # 800027f4 <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    80002634:	00953023          	sd	s1,0(a0)
    80002638:	00053423          	sd	zero,8(a0)
        if(tail) {
    8000263c:	00006797          	auipc	a5,0x6
    80002640:	0547b783          	ld	a5,84(a5) # 80008690 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002644:	02078263          	beqz	a5,80002668 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = element;
    80002648:	00a7b423          	sd	a0,8(a5)
            tail = element;
    8000264c:	00006797          	auipc	a5,0x6
    80002650:	04a7b223          	sd	a0,68(a5) # 80008690 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002654:	01813083          	ld	ra,24(sp)
    80002658:	01013403          	ld	s0,16(sp)
    8000265c:	00813483          	ld	s1,8(sp)
    80002660:	02010113          	addi	sp,sp,32
    80002664:	00008067          	ret
        } else head = tail = element;
    80002668:	00006797          	auipc	a5,0x6
    8000266c:	02078793          	addi	a5,a5,32 # 80008688 <_ZN9Scheduler16readyThreadQueueE>
    80002670:	00a7b423          	sd	a0,8(a5)
    80002674:	00a7b023          	sd	a0,0(a5)
    80002678:	fddff06f          	j	80002654 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000267c <_ZN9Scheduler17deleteThreadQueueEv>:
void Scheduler::deleteThreadQueue() {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00113423          	sd	ra,8(sp)
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	01010413          	addi	s0,sp,16
    while(get());
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	f1c080e7          	jalr	-228(ra) # 800025a8 <_ZN9Scheduler3getEv>
    80002694:	fe051ce3          	bnez	a0,8000268c <_ZN9Scheduler17deleteThreadQueueEv+0x10>
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    800026b8:	000105b7          	lui	a1,0x10
    800026bc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800026c0:	00100513          	li	a0,1
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	ea4080e7          	jalr	-348(ra) # 80002568 <_Z41__static_initialization_and_destruction_0ii>
    800026cc:	00813083          	ld	ra,8(sp)
    800026d0:	00013403          	ld	s0,0(sp)
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret

00000000800026dc <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00813423          	sd	s0,8(sp)
    800026e4:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    800026e8:	00050e63          	beqz	a0,80002704 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    800026ec:	00053783          	ld	a5,0(a0)
    800026f0:	00078a63          	beqz	a5,80002704 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    800026f4:	00853683          	ld	a3,8(a0)
    800026f8:	01068713          	addi	a4,a3,16
    800026fc:	00e50733          	add	a4,a0,a4
    80002700:	00e78863          	beq	a5,a4,80002710 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    80002704:	00813403          	ld	s0,8(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    80002710:	0087b703          	ld	a4,8(a5)
    80002714:	00e686b3          	add	a3,a3,a4
    80002718:	01068693          	addi	a3,a3,16
    8000271c:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    80002720:	0007b783          	ld	a5,0(a5)
    80002724:	00f53023          	sd	a5,0(a0)
    80002728:	fddff06f          	j	80002704 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

000000008000272c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    8000272c:	ff010113          	addi	sp,sp,-16
    80002730:	00813423          	sd	s0,8(sp)
    80002734:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80002738:	02050063          	beqz	a0,80002758 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    8000273c:	00064e63          	bltz	a2,80002758 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    80002740:	00100793          	li	a5,1
    80002744:	00c7ca63          	blt	a5,a2,80002758 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80002748:	00058e63          	beqz	a1,80002764 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    8000274c:	0005b783          	ld	a5,0(a1)
    80002750:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    80002754:	00a5b023          	sd	a0,0(a1)
    }
}
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret
        if(code == 0) {
    80002764:	00061e63          	bnez	a2,80002780 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    80002768:	00006797          	auipc	a5,0x6
    8000276c:	f3078793          	addi	a5,a5,-208 # 80008698 <_ZN15MemoryAllocator17head_free_segmentE>
    80002770:	0007b703          	ld	a4,0(a5)
    80002774:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    80002778:	00a7b023          	sd	a0,0(a5)
    8000277c:	fddff06f          	j	80002758 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    80002780:	00006797          	auipc	a5,0x6
    80002784:	f1878793          	addi	a5,a5,-232 # 80008698 <_ZN15MemoryAllocator17head_free_segmentE>
    80002788:	0087b703          	ld	a4,8(a5)
    8000278c:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    80002790:	00a7b423          	sd	a0,8(a5)
    80002794:	fc5ff06f          	j	80002758 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

0000000080002798 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00813423          	sd	s0,8(sp)
    800027a0:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    800027a4:	02050063          	beqz	a0,800027c4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    800027a8:	00064e63          	bltz	a2,800027c4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    800027ac:	00100793          	li	a5,1
    800027b0:	00c7ca63          	blt	a5,a2,800027c4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    800027b4:	00058e63          	beqz	a1,800027d0 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    800027b8:	00053783          	ld	a5,0(a0)
    800027bc:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    800027c0:	00053023          	sd	zero,0(a0)
}
    800027c4:	00813403          	ld	s0,8(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    800027d0:	00061a63          	bnez	a2,800027e4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    800027d4:	00053783          	ld	a5,0(a0)
    800027d8:	00006717          	auipc	a4,0x6
    800027dc:	ecf73023          	sd	a5,-320(a4) # 80008698 <_ZN15MemoryAllocator17head_free_segmentE>
    800027e0:	fe1ff06f          	j	800027c0 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    800027e4:	00053783          	ld	a5,0(a0)
    800027e8:	00006717          	auipc	a4,0x6
    800027ec:	eaf73c23          	sd	a5,-328(a4) # 800086a0 <_ZN15MemoryAllocator17head_data_segmentE>
    800027f0:	fd1ff06f          	j	800027c0 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

00000000800027f4 <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    800027f4:	fd010113          	addi	sp,sp,-48
    800027f8:	02113423          	sd	ra,40(sp)
    800027fc:	02813023          	sd	s0,32(sp)
    80002800:	00913c23          	sd	s1,24(sp)
    80002804:	01213823          	sd	s2,16(sp)
    80002808:	01313423          	sd	s3,8(sp)
    8000280c:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    80002810:	0c050a63          	beqz	a0,800028e4 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80002814:	03f50513          	addi	a0,a0,63
    80002818:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    8000281c:	00006497          	auipc	s1,0x6
    80002820:	e7c4b483          	ld	s1,-388(s1) # 80008698 <_ZN15MemoryAllocator17head_free_segmentE>
    80002824:	00000993          	li	s3,0
    80002828:	08048e63          	beqz	s1,800028c4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    8000282c:	0084b783          	ld	a5,8(s1)
    80002830:	0127f863          	bgeu	a5,s2,80002840 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80002834:	00048993          	mv	s3,s1
    80002838:	0004b483          	ld	s1,0(s1)
    8000283c:	fedff06f          	j	80002828 <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    80002840:	00000613          	li	a2,0
    80002844:	00098593          	mv	a1,s3
    80002848:	00048513          	mv	a0,s1
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	f4c080e7          	jalr	-180(ra) # 80002798 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    80002854:	0084b783          	ld	a5,8(s1)
    80002858:	41278733          	sub	a4,a5,s2
    8000285c:	00f00693          	li	a3,15
    80002860:	02e6e463          	bltu	a3,a4,80002888 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    80002864:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    80002868:	00006797          	auipc	a5,0x6
    8000286c:	e387b783          	ld	a5,-456(a5) # 800086a0 <_ZN15MemoryAllocator17head_data_segmentE>
    80002870:	00000593          	li	a1,0
    80002874:	02078e63          	beqz	a5,800028b0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80002878:	0297fc63          	bgeu	a5,s1,800028b0 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    8000287c:	00078593          	mv	a1,a5
    80002880:	0007b783          	ld	a5,0(a5)
    80002884:	ff1ff06f          	j	80002874 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    80002888:	01090513          	addi	a0,s2,16
    8000288c:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    80002890:	ff070713          	addi	a4,a4,-16
    80002894:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    80002898:	00000613          	li	a2,0
    8000289c:	00098593          	mv	a1,s3
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	e8c080e7          	jalr	-372(ra) # 8000272c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    800028a8:	00090793          	mv	a5,s2
    800028ac:	fb9ff06f          	j	80002864 <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    800028b0:	00100613          	li	a2,1
    800028b4:	00048513          	mv	a0,s1
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	e74080e7          	jalr	-396(ra) # 8000272c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    800028c0:	01048493          	addi	s1,s1,16
}
    800028c4:	00048513          	mv	a0,s1
    800028c8:	02813083          	ld	ra,40(sp)
    800028cc:	02013403          	ld	s0,32(sp)
    800028d0:	01813483          	ld	s1,24(sp)
    800028d4:	01013903          	ld	s2,16(sp)
    800028d8:	00813983          	ld	s3,8(sp)
    800028dc:	03010113          	addi	sp,sp,48
    800028e0:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    800028e4:	00000493          	li	s1,0
    800028e8:	fddff06f          	j	800028c4 <_ZN15MemoryAllocator9mem_allocEm+0xd0>

00000000800028ec <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    800028ec:	0c050863          	beqz	a0,800029bc <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    800028f0:	00006797          	auipc	a5,0x6
    800028f4:	d087b783          	ld	a5,-760(a5) # 800085f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800028f8:	0007b783          	ld	a5,0(a5)
    800028fc:	0cf56463          	bltu	a0,a5,800029c4 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002900:	00006797          	auipc	a5,0x6
    80002904:	d207b783          	ld	a5,-736(a5) # 80008620 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002908:	0007b783          	ld	a5,0(a5)
    8000290c:	0cf57063          	bgeu	a0,a5,800029cc <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    80002910:	fe010113          	addi	sp,sp,-32
    80002914:	00113c23          	sd	ra,24(sp)
    80002918:	00813823          	sd	s0,16(sp)
    8000291c:	00913423          	sd	s1,8(sp)
    80002920:	01213023          	sd	s2,0(sp)
    80002924:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80002928:	00006497          	auipc	s1,0x6
    8000292c:	d784b483          	ld	s1,-648(s1) # 800086a0 <_ZN15MemoryAllocator17head_data_segmentE>
    80002930:	00000593          	li	a1,0
    80002934:	0a048063          	beqz	s1,800029d4 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    80002938:	01048793          	addi	a5,s1,16
    8000293c:	00a78a63          	beq	a5,a0,80002950 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    80002940:	0af56863          	bltu	a0,a5,800029f0 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80002944:	00048593          	mv	a1,s1
    80002948:	0004b483          	ld	s1,0(s1)
    8000294c:	fe9ff06f          	j	80002934 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    80002950:	00100613          	li	a2,1
    80002954:	00048513          	mv	a0,s1
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	e40080e7          	jalr	-448(ra) # 80002798 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    80002960:	00006917          	auipc	s2,0x6
    80002964:	d3893903          	ld	s2,-712(s2) # 80008698 <_ZN15MemoryAllocator17head_free_segmentE>
    80002968:	0080006f          	j	80002970 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    8000296c:	00078913          	mv	s2,a5
    80002970:	00090863          	beqz	s2,80002980 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002974:	00093783          	ld	a5,0(s2)
    80002978:	00078463          	beqz	a5,80002980 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    8000297c:	fe97e8e3          	bltu	a5,s1,8000296c <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    80002980:	0124f463          	bgeu	s1,s2,80002988 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002984:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    80002988:	00000613          	li	a2,0
    8000298c:	00090593          	mv	a1,s2
    80002990:	00048513          	mv	a0,s1
    80002994:	00000097          	auipc	ra,0x0
    80002998:	d98080e7          	jalr	-616(ra) # 8000272c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    8000299c:	00048513          	mv	a0,s1
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	d3c080e7          	jalr	-708(ra) # 800026dc <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    800029a8:	00090513          	mv	a0,s2
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	d30080e7          	jalr	-720(ra) # 800026dc <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    800029b4:	00000513          	li	a0,0
    800029b8:	0200006f          	j	800029d8 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    800029bc:	fff00513          	li	a0,-1
    800029c0:	00008067          	ret
    800029c4:	fff00513          	li	a0,-1
    800029c8:	00008067          	ret
    800029cc:	fff00513          	li	a0,-1
}
    800029d0:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    800029d4:	ffe00513          	li	a0,-2
}
    800029d8:	01813083          	ld	ra,24(sp)
    800029dc:	01013403          	ld	s0,16(sp)
    800029e0:	00813483          	ld	s1,8(sp)
    800029e4:	00013903          	ld	s2,0(sp)
    800029e8:	02010113          	addi	sp,sp,32
    800029ec:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    800029f0:	ffe00513          	li	a0,-2
    800029f4:	fe5ff06f          	j	800029d8 <_ZN15MemoryAllocator8mem_freeEPv+0xec>

00000000800029f8 <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00813423          	sd	s0,8(sp)
    80002a00:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    80002a04:	00006697          	auipc	a3,0x6
    80002a08:	bf46b683          	ld	a3,-1036(a3) # 800085f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002a0c:	0006b783          	ld	a5,0(a3)
    80002a10:	00006717          	auipc	a4,0x6
    80002a14:	c8870713          	addi	a4,a4,-888 # 80008698 <_ZN15MemoryAllocator17head_free_segmentE>
    80002a18:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    80002a1c:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    80002a20:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    80002a24:	00006797          	auipc	a5,0x6
    80002a28:	bfc7b783          	ld	a5,-1028(a5) # 80008620 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a2c:	0007b783          	ld	a5,0(a5)
    80002a30:	0006b683          	ld	a3,0(a3)
    80002a34:	40d787b3          	sub	a5,a5,a3
    80002a38:	00073703          	ld	a4,0(a4)
    80002a3c:	ff078793          	addi	a5,a5,-16
    80002a40:	00f73423          	sd	a5,8(a4)
}
    80002a44:	00813403          	ld	s0,8(sp)
    80002a48:	01010113          	addi	sp,sp,16
    80002a4c:	00008067          	ret

0000000080002a50 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002a50:	fe010113          	addi	sp,sp,-32
    80002a54:	00113c23          	sd	ra,24(sp)
    80002a58:	00813823          	sd	s0,16(sp)
    80002a5c:	00913423          	sd	s1,8(sp)
    80002a60:	01213023          	sd	s2,0(sp)
    80002a64:	02010413          	addi	s0,sp,32
    80002a68:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002a6c:	00100793          	li	a5,1
    80002a70:	02a7f863          	bgeu	a5,a0,80002aa0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002a74:	00a00793          	li	a5,10
    80002a78:	02f577b3          	remu	a5,a0,a5
    80002a7c:	02078e63          	beqz	a5,80002ab8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002a80:	fff48513          	addi	a0,s1,-1
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	fcc080e7          	jalr	-52(ra) # 80002a50 <_ZL9fibonaccim>
    80002a8c:	00050913          	mv	s2,a0
    80002a90:	ffe48513          	addi	a0,s1,-2
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	fbc080e7          	jalr	-68(ra) # 80002a50 <_ZL9fibonaccim>
    80002a9c:	00a90533          	add	a0,s2,a0
}
    80002aa0:	01813083          	ld	ra,24(sp)
    80002aa4:	01013403          	ld	s0,16(sp)
    80002aa8:	00813483          	ld	s1,8(sp)
    80002aac:	00013903          	ld	s2,0(sp)
    80002ab0:	02010113          	addi	sp,sp,32
    80002ab4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	86c080e7          	jalr	-1940(ra) # 80001324 <_Z15thread_dispatchv>
    80002ac0:	fc1ff06f          	j	80002a80 <_ZL9fibonaccim+0x30>

0000000080002ac4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	01213023          	sd	s2,0(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002adc:	00000913          	li	s2,0
    80002ae0:	0380006f          	j	80002b18 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	840080e7          	jalr	-1984(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002aec:	00148493          	addi	s1,s1,1
    80002af0:	000027b7          	lui	a5,0x2
    80002af4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002af8:	0097ee63          	bltu	a5,s1,80002b14 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002afc:	00000713          	li	a4,0
    80002b00:	000077b7          	lui	a5,0x7
    80002b04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b08:	fce7eee3          	bltu	a5,a4,80002ae4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002b0c:	00170713          	addi	a4,a4,1
    80002b10:	ff1ff06f          	j	80002b00 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002b14:	00190913          	addi	s2,s2,1
    80002b18:	00900793          	li	a5,9
    80002b1c:	0527e063          	bltu	a5,s2,80002b5c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002b20:	00004517          	auipc	a0,0x4
    80002b24:	50050513          	addi	a0,a0,1280 # 80007020 <CONSOLE_STATUS+0x10>
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	d1c080e7          	jalr	-740(ra) # 80001844 <_Z11printStringPKc>
    80002b30:	00000613          	li	a2,0
    80002b34:	00a00593          	li	a1,10
    80002b38:	0009051b          	sext.w	a0,s2
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	eb8080e7          	jalr	-328(ra) # 800019f4 <_Z8printIntiii>
    80002b44:	00004517          	auipc	a0,0x4
    80002b48:	4fc50513          	addi	a0,a0,1276 # 80007040 <CONSOLE_STATUS+0x30>
    80002b4c:	fffff097          	auipc	ra,0xfffff
    80002b50:	cf8080e7          	jalr	-776(ra) # 80001844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b54:	00000493          	li	s1,0
    80002b58:	f99ff06f          	j	80002af0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002b5c:	00004517          	auipc	a0,0x4
    80002b60:	77450513          	addi	a0,a0,1908 # 800072d0 <CONSOLE_STATUS+0x2c0>
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	ce0080e7          	jalr	-800(ra) # 80001844 <_Z11printStringPKc>
    finishedA = true;
    80002b6c:	00100793          	li	a5,1
    80002b70:	00006717          	auipc	a4,0x6
    80002b74:	b2f70c23          	sb	a5,-1224(a4) # 800086a8 <_ZL9finishedA>
}
    80002b78:	01813083          	ld	ra,24(sp)
    80002b7c:	01013403          	ld	s0,16(sp)
    80002b80:	00813483          	ld	s1,8(sp)
    80002b84:	00013903          	ld	s2,0(sp)
    80002b88:	02010113          	addi	sp,sp,32
    80002b8c:	00008067          	ret

0000000080002b90 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002b90:	fe010113          	addi	sp,sp,-32
    80002b94:	00113c23          	sd	ra,24(sp)
    80002b98:	00813823          	sd	s0,16(sp)
    80002b9c:	00913423          	sd	s1,8(sp)
    80002ba0:	01213023          	sd	s2,0(sp)
    80002ba4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002ba8:	00000913          	li	s2,0
    80002bac:	0380006f          	j	80002be4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002bb0:	ffffe097          	auipc	ra,0xffffe
    80002bb4:	774080e7          	jalr	1908(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002bb8:	00148493          	addi	s1,s1,1
    80002bbc:	000027b7          	lui	a5,0x2
    80002bc0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002bc4:	0097ee63          	bltu	a5,s1,80002be0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002bc8:	00000713          	li	a4,0
    80002bcc:	000077b7          	lui	a5,0x7
    80002bd0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002bd4:	fce7eee3          	bltu	a5,a4,80002bb0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002bd8:	00170713          	addi	a4,a4,1
    80002bdc:	ff1ff06f          	j	80002bcc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002be0:	00190913          	addi	s2,s2,1
    80002be4:	00f00793          	li	a5,15
    80002be8:	0527e063          	bltu	a5,s2,80002c28 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002bec:	00004517          	auipc	a0,0x4
    80002bf0:	43c50513          	addi	a0,a0,1084 # 80007028 <CONSOLE_STATUS+0x18>
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	c50080e7          	jalr	-944(ra) # 80001844 <_Z11printStringPKc>
    80002bfc:	00000613          	li	a2,0
    80002c00:	00a00593          	li	a1,10
    80002c04:	0009051b          	sext.w	a0,s2
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	dec080e7          	jalr	-532(ra) # 800019f4 <_Z8printIntiii>
    80002c10:	00004517          	auipc	a0,0x4
    80002c14:	43050513          	addi	a0,a0,1072 # 80007040 <CONSOLE_STATUS+0x30>
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	c2c080e7          	jalr	-980(ra) # 80001844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c20:	00000493          	li	s1,0
    80002c24:	f99ff06f          	j	80002bbc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002c28:	00004517          	auipc	a0,0x4
    80002c2c:	6b850513          	addi	a0,a0,1720 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	c14080e7          	jalr	-1004(ra) # 80001844 <_Z11printStringPKc>
    finishedB = true;
    80002c38:	00100793          	li	a5,1
    80002c3c:	00006717          	auipc	a4,0x6
    80002c40:	a6f706a3          	sb	a5,-1427(a4) # 800086a9 <_ZL9finishedB>
    thread_dispatch();
    80002c44:	ffffe097          	auipc	ra,0xffffe
    80002c48:	6e0080e7          	jalr	1760(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002c4c:	01813083          	ld	ra,24(sp)
    80002c50:	01013403          	ld	s0,16(sp)
    80002c54:	00813483          	ld	s1,8(sp)
    80002c58:	00013903          	ld	s2,0(sp)
    80002c5c:	02010113          	addi	sp,sp,32
    80002c60:	00008067          	ret

0000000080002c64 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002c64:	fe010113          	addi	sp,sp,-32
    80002c68:	00113c23          	sd	ra,24(sp)
    80002c6c:	00813823          	sd	s0,16(sp)
    80002c70:	00913423          	sd	s1,8(sp)
    80002c74:	01213023          	sd	s2,0(sp)
    80002c78:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002c7c:	00000493          	li	s1,0
    80002c80:	0400006f          	j	80002cc0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002c84:	00004517          	auipc	a0,0x4
    80002c88:	3ac50513          	addi	a0,a0,940 # 80007030 <CONSOLE_STATUS+0x20>
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	bb8080e7          	jalr	-1096(ra) # 80001844 <_Z11printStringPKc>
    80002c94:	00000613          	li	a2,0
    80002c98:	00a00593          	li	a1,10
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	d54080e7          	jalr	-684(ra) # 800019f4 <_Z8printIntiii>
    80002ca8:	00004517          	auipc	a0,0x4
    80002cac:	39850513          	addi	a0,a0,920 # 80007040 <CONSOLE_STATUS+0x30>
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	b94080e7          	jalr	-1132(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002cb8:	0014849b          	addiw	s1,s1,1
    80002cbc:	0ff4f493          	andi	s1,s1,255
    80002cc0:	00200793          	li	a5,2
    80002cc4:	fc97f0e3          	bgeu	a5,s1,80002c84 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002cc8:	00004517          	auipc	a0,0x4
    80002ccc:	62850513          	addi	a0,a0,1576 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	b74080e7          	jalr	-1164(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002cd8:	00700313          	li	t1,7
    thread_dispatch();
    80002cdc:	ffffe097          	auipc	ra,0xffffe
    80002ce0:	648080e7          	jalr	1608(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ce4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002ce8:	00004517          	auipc	a0,0x4
    80002cec:	36050513          	addi	a0,a0,864 # 80007048 <CONSOLE_STATUS+0x38>
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	b54080e7          	jalr	-1196(ra) # 80001844 <_Z11printStringPKc>
    80002cf8:	00000613          	li	a2,0
    80002cfc:	00a00593          	li	a1,10
    80002d00:	0009051b          	sext.w	a0,s2
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	cf0080e7          	jalr	-784(ra) # 800019f4 <_Z8printIntiii>
    80002d0c:	00004517          	auipc	a0,0x4
    80002d10:	33450513          	addi	a0,a0,820 # 80007040 <CONSOLE_STATUS+0x30>
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	b30080e7          	jalr	-1232(ra) # 80001844 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002d1c:	00c00513          	li	a0,12
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	d30080e7          	jalr	-720(ra) # 80002a50 <_ZL9fibonaccim>
    80002d28:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002d2c:	00004517          	auipc	a0,0x4
    80002d30:	32450513          	addi	a0,a0,804 # 80007050 <CONSOLE_STATUS+0x40>
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	b10080e7          	jalr	-1264(ra) # 80001844 <_Z11printStringPKc>
    80002d3c:	00000613          	li	a2,0
    80002d40:	00a00593          	li	a1,10
    80002d44:	0009051b          	sext.w	a0,s2
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	cac080e7          	jalr	-852(ra) # 800019f4 <_Z8printIntiii>
    80002d50:	00004517          	auipc	a0,0x4
    80002d54:	2f050513          	addi	a0,a0,752 # 80007040 <CONSOLE_STATUS+0x30>
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	aec080e7          	jalr	-1300(ra) # 80001844 <_Z11printStringPKc>
    80002d60:	0400006f          	j	80002da0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d64:	00004517          	auipc	a0,0x4
    80002d68:	2cc50513          	addi	a0,a0,716 # 80007030 <CONSOLE_STATUS+0x20>
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	ad8080e7          	jalr	-1320(ra) # 80001844 <_Z11printStringPKc>
    80002d74:	00000613          	li	a2,0
    80002d78:	00a00593          	li	a1,10
    80002d7c:	00048513          	mv	a0,s1
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	c74080e7          	jalr	-908(ra) # 800019f4 <_Z8printIntiii>
    80002d88:	00004517          	auipc	a0,0x4
    80002d8c:	2b850513          	addi	a0,a0,696 # 80007040 <CONSOLE_STATUS+0x30>
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	ab4080e7          	jalr	-1356(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002d98:	0014849b          	addiw	s1,s1,1
    80002d9c:	0ff4f493          	andi	s1,s1,255
    80002da0:	00500793          	li	a5,5
    80002da4:	fc97f0e3          	bgeu	a5,s1,80002d64 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80002da8:	00004517          	auipc	a0,0x4
    80002dac:	55850513          	addi	a0,a0,1368 # 80007300 <CONSOLE_STATUS+0x2f0>
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	a94080e7          	jalr	-1388(ra) # 80001844 <_Z11printStringPKc>
    finishedC = true;
    80002db8:	00100793          	li	a5,1
    80002dbc:	00006717          	auipc	a4,0x6
    80002dc0:	8ef70723          	sb	a5,-1810(a4) # 800086aa <_ZL9finishedC>
    thread_dispatch();
    80002dc4:	ffffe097          	auipc	ra,0xffffe
    80002dc8:	560080e7          	jalr	1376(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002dcc:	01813083          	ld	ra,24(sp)
    80002dd0:	01013403          	ld	s0,16(sp)
    80002dd4:	00813483          	ld	s1,8(sp)
    80002dd8:	00013903          	ld	s2,0(sp)
    80002ddc:	02010113          	addi	sp,sp,32
    80002de0:	00008067          	ret

0000000080002de4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002de4:	fe010113          	addi	sp,sp,-32
    80002de8:	00113c23          	sd	ra,24(sp)
    80002dec:	00813823          	sd	s0,16(sp)
    80002df0:	00913423          	sd	s1,8(sp)
    80002df4:	01213023          	sd	s2,0(sp)
    80002df8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002dfc:	00a00493          	li	s1,10
    80002e00:	0400006f          	j	80002e40 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002e04:	00004517          	auipc	a0,0x4
    80002e08:	25c50513          	addi	a0,a0,604 # 80007060 <CONSOLE_STATUS+0x50>
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	a38080e7          	jalr	-1480(ra) # 80001844 <_Z11printStringPKc>
    80002e14:	00000613          	li	a2,0
    80002e18:	00a00593          	li	a1,10
    80002e1c:	00048513          	mv	a0,s1
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	bd4080e7          	jalr	-1068(ra) # 800019f4 <_Z8printIntiii>
    80002e28:	00004517          	auipc	a0,0x4
    80002e2c:	21850513          	addi	a0,a0,536 # 80007040 <CONSOLE_STATUS+0x30>
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	a14080e7          	jalr	-1516(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002e38:	0014849b          	addiw	s1,s1,1
    80002e3c:	0ff4f493          	andi	s1,s1,255
    80002e40:	00c00793          	li	a5,12
    80002e44:	fc97f0e3          	bgeu	a5,s1,80002e04 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002e48:	00004517          	auipc	a0,0x4
    80002e4c:	4c850513          	addi	a0,a0,1224 # 80007310 <CONSOLE_STATUS+0x300>
    80002e50:	fffff097          	auipc	ra,0xfffff
    80002e54:	9f4080e7          	jalr	-1548(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002e58:	00500313          	li	t1,5
    thread_dispatch();
    80002e5c:	ffffe097          	auipc	ra,0xffffe
    80002e60:	4c8080e7          	jalr	1224(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002e64:	01000513          	li	a0,16
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	be8080e7          	jalr	-1048(ra) # 80002a50 <_ZL9fibonaccim>
    80002e70:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002e74:	00004517          	auipc	a0,0x4
    80002e78:	20450513          	addi	a0,a0,516 # 80007078 <CONSOLE_STATUS+0x68>
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	9c8080e7          	jalr	-1592(ra) # 80001844 <_Z11printStringPKc>
    80002e84:	00000613          	li	a2,0
    80002e88:	00a00593          	li	a1,10
    80002e8c:	0009051b          	sext.w	a0,s2
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	b64080e7          	jalr	-1180(ra) # 800019f4 <_Z8printIntiii>
    80002e98:	00004517          	auipc	a0,0x4
    80002e9c:	1a850513          	addi	a0,a0,424 # 80007040 <CONSOLE_STATUS+0x30>
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	9a4080e7          	jalr	-1628(ra) # 80001844 <_Z11printStringPKc>
    80002ea8:	0400006f          	j	80002ee8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002eac:	00004517          	auipc	a0,0x4
    80002eb0:	1b450513          	addi	a0,a0,436 # 80007060 <CONSOLE_STATUS+0x50>
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	990080e7          	jalr	-1648(ra) # 80001844 <_Z11printStringPKc>
    80002ebc:	00000613          	li	a2,0
    80002ec0:	00a00593          	li	a1,10
    80002ec4:	00048513          	mv	a0,s1
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	b2c080e7          	jalr	-1236(ra) # 800019f4 <_Z8printIntiii>
    80002ed0:	00004517          	auipc	a0,0x4
    80002ed4:	17050513          	addi	a0,a0,368 # 80007040 <CONSOLE_STATUS+0x30>
    80002ed8:	fffff097          	auipc	ra,0xfffff
    80002edc:	96c080e7          	jalr	-1684(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002ee0:	0014849b          	addiw	s1,s1,1
    80002ee4:	0ff4f493          	andi	s1,s1,255
    80002ee8:	00f00793          	li	a5,15
    80002eec:	fc97f0e3          	bgeu	a5,s1,80002eac <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002ef0:	00004517          	auipc	a0,0x4
    80002ef4:	43050513          	addi	a0,a0,1072 # 80007320 <CONSOLE_STATUS+0x310>
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	94c080e7          	jalr	-1716(ra) # 80001844 <_Z11printStringPKc>
    finishedD = true;
    80002f00:	00100793          	li	a5,1
    80002f04:	00005717          	auipc	a4,0x5
    80002f08:	7af703a3          	sb	a5,1959(a4) # 800086ab <_ZL9finishedD>
    thread_dispatch();
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	418080e7          	jalr	1048(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002f14:	01813083          	ld	ra,24(sp)
    80002f18:	01013403          	ld	s0,16(sp)
    80002f1c:	00813483          	ld	s1,8(sp)
    80002f20:	00013903          	ld	s2,0(sp)
    80002f24:	02010113          	addi	sp,sp,32
    80002f28:	00008067          	ret

0000000080002f2c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002f2c:	fc010113          	addi	sp,sp,-64
    80002f30:	02113c23          	sd	ra,56(sp)
    80002f34:	02813823          	sd	s0,48(sp)
    80002f38:	02913423          	sd	s1,40(sp)
    80002f3c:	03213023          	sd	s2,32(sp)
    80002f40:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002f44:	02000513          	li	a0,32
    80002f48:	fffff097          	auipc	ra,0xfffff
    80002f4c:	08c080e7          	jalr	140(ra) # 80001fd4 <_Znwm>
    80002f50:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002f54:	fffff097          	auipc	ra,0xfffff
    80002f58:	264080e7          	jalr	612(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80002f5c:	00005797          	auipc	a5,0x5
    80002f60:	5fc78793          	addi	a5,a5,1532 # 80008558 <_ZTV7WorkerA+0x10>
    80002f64:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002f68:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002f6c:	00004517          	auipc	a0,0x4
    80002f70:	3c450513          	addi	a0,a0,964 # 80007330 <CONSOLE_STATUS+0x320>
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	8d0080e7          	jalr	-1840(ra) # 80001844 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002f7c:	02000513          	li	a0,32
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	054080e7          	jalr	84(ra) # 80001fd4 <_Znwm>
    80002f88:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002f8c:	fffff097          	auipc	ra,0xfffff
    80002f90:	22c080e7          	jalr	556(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80002f94:	00005797          	auipc	a5,0x5
    80002f98:	5ec78793          	addi	a5,a5,1516 # 80008580 <_ZTV7WorkerB+0x10>
    80002f9c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002fa0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002fa4:	00004517          	auipc	a0,0x4
    80002fa8:	3a450513          	addi	a0,a0,932 # 80007348 <CONSOLE_STATUS+0x338>
    80002fac:	fffff097          	auipc	ra,0xfffff
    80002fb0:	898080e7          	jalr	-1896(ra) # 80001844 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002fb4:	02000513          	li	a0,32
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	01c080e7          	jalr	28(ra) # 80001fd4 <_Znwm>
    80002fc0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	1f4080e7          	jalr	500(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80002fcc:	00005797          	auipc	a5,0x5
    80002fd0:	5dc78793          	addi	a5,a5,1500 # 800085a8 <_ZTV7WorkerC+0x10>
    80002fd4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002fd8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002fdc:	00004517          	auipc	a0,0x4
    80002fe0:	38450513          	addi	a0,a0,900 # 80007360 <CONSOLE_STATUS+0x350>
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	860080e7          	jalr	-1952(ra) # 80001844 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002fec:	02000513          	li	a0,32
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	fe4080e7          	jalr	-28(ra) # 80001fd4 <_Znwm>
    80002ff8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002ffc:	fffff097          	auipc	ra,0xfffff
    80003000:	1bc080e7          	jalr	444(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80003004:	00005797          	auipc	a5,0x5
    80003008:	5cc78793          	addi	a5,a5,1484 # 800085d0 <_ZTV7WorkerD+0x10>
    8000300c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003010:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003014:	00004517          	auipc	a0,0x4
    80003018:	36450513          	addi	a0,a0,868 # 80007378 <CONSOLE_STATUS+0x368>
    8000301c:	fffff097          	auipc	ra,0xfffff
    80003020:	828080e7          	jalr	-2008(ra) # 80001844 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003024:	00000493          	li	s1,0
    80003028:	00300793          	li	a5,3
    8000302c:	0297c663          	blt	a5,s1,80003058 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003030:	00349793          	slli	a5,s1,0x3
    80003034:	fe040713          	addi	a4,s0,-32
    80003038:	00f707b3          	add	a5,a4,a5
    8000303c:	fe07b503          	ld	a0,-32(a5)
    80003040:	fffff097          	auipc	ra,0xfffff
    80003044:	104080e7          	jalr	260(ra) # 80002144 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003048:	0014849b          	addiw	s1,s1,1
    8000304c:	fddff06f          	j	80003028 <_Z20Threads_CPP_API_testv+0xfc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        // printString("ThreadB finished: ");
        // printInt(threads[1]->myHandle->isFinished());
        // printString("\n");
        Thread::dispatch();
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	124080e7          	jalr	292(ra) # 80002174 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003058:	00005797          	auipc	a5,0x5
    8000305c:	6507c783          	lbu	a5,1616(a5) # 800086a8 <_ZL9finishedA>
    80003060:	fe0788e3          	beqz	a5,80003050 <_Z20Threads_CPP_API_testv+0x124>
    80003064:	00005797          	auipc	a5,0x5
    80003068:	6457c783          	lbu	a5,1605(a5) # 800086a9 <_ZL9finishedB>
    8000306c:	fe0782e3          	beqz	a5,80003050 <_Z20Threads_CPP_API_testv+0x124>
    80003070:	00005797          	auipc	a5,0x5
    80003074:	63a7c783          	lbu	a5,1594(a5) # 800086aa <_ZL9finishedC>
    80003078:	fc078ce3          	beqz	a5,80003050 <_Z20Threads_CPP_API_testv+0x124>
    8000307c:	00005797          	auipc	a5,0x5
    80003080:	62f7c783          	lbu	a5,1583(a5) # 800086ab <_ZL9finishedD>
    80003084:	fc0786e3          	beqz	a5,80003050 <_Z20Threads_CPP_API_testv+0x124>
    80003088:	fc040493          	addi	s1,s0,-64
    8000308c:	0080006f          	j	80003094 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003090:	00848493          	addi	s1,s1,8
    80003094:	fe040793          	addi	a5,s0,-32
    80003098:	08f48663          	beq	s1,a5,80003124 <_Z20Threads_CPP_API_testv+0x1f8>
    8000309c:	0004b503          	ld	a0,0(s1)
    800030a0:	fe0508e3          	beqz	a0,80003090 <_Z20Threads_CPP_API_testv+0x164>
    800030a4:	00053783          	ld	a5,0(a0)
    800030a8:	0087b783          	ld	a5,8(a5)
    800030ac:	000780e7          	jalr	a5
    800030b0:	fe1ff06f          	j	80003090 <_Z20Threads_CPP_API_testv+0x164>
    800030b4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800030b8:	00048513          	mv	a0,s1
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	f68080e7          	jalr	-152(ra) # 80002024 <_ZdlPv>
    800030c4:	00090513          	mv	a0,s2
    800030c8:	00006097          	auipc	ra,0x6
    800030cc:	6c0080e7          	jalr	1728(ra) # 80009788 <_Unwind_Resume>
    800030d0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800030d4:	00048513          	mv	a0,s1
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	f4c080e7          	jalr	-180(ra) # 80002024 <_ZdlPv>
    800030e0:	00090513          	mv	a0,s2
    800030e4:	00006097          	auipc	ra,0x6
    800030e8:	6a4080e7          	jalr	1700(ra) # 80009788 <_Unwind_Resume>
    800030ec:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800030f0:	00048513          	mv	a0,s1
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	f30080e7          	jalr	-208(ra) # 80002024 <_ZdlPv>
    800030fc:	00090513          	mv	a0,s2
    80003100:	00006097          	auipc	ra,0x6
    80003104:	688080e7          	jalr	1672(ra) # 80009788 <_Unwind_Resume>
    80003108:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000310c:	00048513          	mv	a0,s1
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	f14080e7          	jalr	-236(ra) # 80002024 <_ZdlPv>
    80003118:	00090513          	mv	a0,s2
    8000311c:	00006097          	auipc	ra,0x6
    80003120:	66c080e7          	jalr	1644(ra) # 80009788 <_Unwind_Resume>
}
    80003124:	03813083          	ld	ra,56(sp)
    80003128:	03013403          	ld	s0,48(sp)
    8000312c:	02813483          	ld	s1,40(sp)
    80003130:	02013903          	ld	s2,32(sp)
    80003134:	04010113          	addi	sp,sp,64
    80003138:	00008067          	ret

000000008000313c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00113423          	sd	ra,8(sp)
    80003144:	00813023          	sd	s0,0(sp)
    80003148:	01010413          	addi	s0,sp,16
    8000314c:	00005797          	auipc	a5,0x5
    80003150:	40c78793          	addi	a5,a5,1036 # 80008558 <_ZTV7WorkerA+0x10>
    80003154:	00f53023          	sd	a5,0(a0)
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	f1c080e7          	jalr	-228(ra) # 80002074 <_ZN6ThreadD1Ev>
    80003160:	00813083          	ld	ra,8(sp)
    80003164:	00013403          	ld	s0,0(sp)
    80003168:	01010113          	addi	sp,sp,16
    8000316c:	00008067          	ret

0000000080003170 <_ZN7WorkerAD0Ev>:
    80003170:	fe010113          	addi	sp,sp,-32
    80003174:	00113c23          	sd	ra,24(sp)
    80003178:	00813823          	sd	s0,16(sp)
    8000317c:	00913423          	sd	s1,8(sp)
    80003180:	02010413          	addi	s0,sp,32
    80003184:	00050493          	mv	s1,a0
    80003188:	00005797          	auipc	a5,0x5
    8000318c:	3d078793          	addi	a5,a5,976 # 80008558 <_ZTV7WorkerA+0x10>
    80003190:	00f53023          	sd	a5,0(a0)
    80003194:	fffff097          	auipc	ra,0xfffff
    80003198:	ee0080e7          	jalr	-288(ra) # 80002074 <_ZN6ThreadD1Ev>
    8000319c:	00048513          	mv	a0,s1
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	e84080e7          	jalr	-380(ra) # 80002024 <_ZdlPv>
    800031a8:	01813083          	ld	ra,24(sp)
    800031ac:	01013403          	ld	s0,16(sp)
    800031b0:	00813483          	ld	s1,8(sp)
    800031b4:	02010113          	addi	sp,sp,32
    800031b8:	00008067          	ret

00000000800031bc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800031bc:	ff010113          	addi	sp,sp,-16
    800031c0:	00113423          	sd	ra,8(sp)
    800031c4:	00813023          	sd	s0,0(sp)
    800031c8:	01010413          	addi	s0,sp,16
    800031cc:	00005797          	auipc	a5,0x5
    800031d0:	3b478793          	addi	a5,a5,948 # 80008580 <_ZTV7WorkerB+0x10>
    800031d4:	00f53023          	sd	a5,0(a0)
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	e9c080e7          	jalr	-356(ra) # 80002074 <_ZN6ThreadD1Ev>
    800031e0:	00813083          	ld	ra,8(sp)
    800031e4:	00013403          	ld	s0,0(sp)
    800031e8:	01010113          	addi	sp,sp,16
    800031ec:	00008067          	ret

00000000800031f0 <_ZN7WorkerBD0Ev>:
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00113c23          	sd	ra,24(sp)
    800031f8:	00813823          	sd	s0,16(sp)
    800031fc:	00913423          	sd	s1,8(sp)
    80003200:	02010413          	addi	s0,sp,32
    80003204:	00050493          	mv	s1,a0
    80003208:	00005797          	auipc	a5,0x5
    8000320c:	37878793          	addi	a5,a5,888 # 80008580 <_ZTV7WorkerB+0x10>
    80003210:	00f53023          	sd	a5,0(a0)
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	e60080e7          	jalr	-416(ra) # 80002074 <_ZN6ThreadD1Ev>
    8000321c:	00048513          	mv	a0,s1
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	e04080e7          	jalr	-508(ra) # 80002024 <_ZdlPv>
    80003228:	01813083          	ld	ra,24(sp)
    8000322c:	01013403          	ld	s0,16(sp)
    80003230:	00813483          	ld	s1,8(sp)
    80003234:	02010113          	addi	sp,sp,32
    80003238:	00008067          	ret

000000008000323c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000323c:	ff010113          	addi	sp,sp,-16
    80003240:	00113423          	sd	ra,8(sp)
    80003244:	00813023          	sd	s0,0(sp)
    80003248:	01010413          	addi	s0,sp,16
    8000324c:	00005797          	auipc	a5,0x5
    80003250:	35c78793          	addi	a5,a5,860 # 800085a8 <_ZTV7WorkerC+0x10>
    80003254:	00f53023          	sd	a5,0(a0)
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	e1c080e7          	jalr	-484(ra) # 80002074 <_ZN6ThreadD1Ev>
    80003260:	00813083          	ld	ra,8(sp)
    80003264:	00013403          	ld	s0,0(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret

0000000080003270 <_ZN7WorkerCD0Ev>:
    80003270:	fe010113          	addi	sp,sp,-32
    80003274:	00113c23          	sd	ra,24(sp)
    80003278:	00813823          	sd	s0,16(sp)
    8000327c:	00913423          	sd	s1,8(sp)
    80003280:	02010413          	addi	s0,sp,32
    80003284:	00050493          	mv	s1,a0
    80003288:	00005797          	auipc	a5,0x5
    8000328c:	32078793          	addi	a5,a5,800 # 800085a8 <_ZTV7WorkerC+0x10>
    80003290:	00f53023          	sd	a5,0(a0)
    80003294:	fffff097          	auipc	ra,0xfffff
    80003298:	de0080e7          	jalr	-544(ra) # 80002074 <_ZN6ThreadD1Ev>
    8000329c:	00048513          	mv	a0,s1
    800032a0:	fffff097          	auipc	ra,0xfffff
    800032a4:	d84080e7          	jalr	-636(ra) # 80002024 <_ZdlPv>
    800032a8:	01813083          	ld	ra,24(sp)
    800032ac:	01013403          	ld	s0,16(sp)
    800032b0:	00813483          	ld	s1,8(sp)
    800032b4:	02010113          	addi	sp,sp,32
    800032b8:	00008067          	ret

00000000800032bc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00113423          	sd	ra,8(sp)
    800032c4:	00813023          	sd	s0,0(sp)
    800032c8:	01010413          	addi	s0,sp,16
    800032cc:	00005797          	auipc	a5,0x5
    800032d0:	30478793          	addi	a5,a5,772 # 800085d0 <_ZTV7WorkerD+0x10>
    800032d4:	00f53023          	sd	a5,0(a0)
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	d9c080e7          	jalr	-612(ra) # 80002074 <_ZN6ThreadD1Ev>
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00013403          	ld	s0,0(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <_ZN7WorkerDD0Ev>:
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	00050493          	mv	s1,a0
    80003308:	00005797          	auipc	a5,0x5
    8000330c:	2c878793          	addi	a5,a5,712 # 800085d0 <_ZTV7WorkerD+0x10>
    80003310:	00f53023          	sd	a5,0(a0)
    80003314:	fffff097          	auipc	ra,0xfffff
    80003318:	d60080e7          	jalr	-672(ra) # 80002074 <_ZN6ThreadD1Ev>
    8000331c:	00048513          	mv	a0,s1
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	d04080e7          	jalr	-764(ra) # 80002024 <_ZdlPv>
    80003328:	01813083          	ld	ra,24(sp)
    8000332c:	01013403          	ld	s0,16(sp)
    80003330:	00813483          	ld	s1,8(sp)
    80003334:	02010113          	addi	sp,sp,32
    80003338:	00008067          	ret

000000008000333c <_ZN7WorkerA3runEv>:
    void run() override {
    8000333c:	ff010113          	addi	sp,sp,-16
    80003340:	00113423          	sd	ra,8(sp)
    80003344:	00813023          	sd	s0,0(sp)
    80003348:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000334c:	00000593          	li	a1,0
    80003350:	fffff097          	auipc	ra,0xfffff
    80003354:	774080e7          	jalr	1908(ra) # 80002ac4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003358:	00813083          	ld	ra,8(sp)
    8000335c:	00013403          	ld	s0,0(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret

0000000080003368 <_ZN7WorkerB3runEv>:
    void run() override {
    80003368:	ff010113          	addi	sp,sp,-16
    8000336c:	00113423          	sd	ra,8(sp)
    80003370:	00813023          	sd	s0,0(sp)
    80003374:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003378:	00000593          	li	a1,0
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	814080e7          	jalr	-2028(ra) # 80002b90 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003384:	00813083          	ld	ra,8(sp)
    80003388:	00013403          	ld	s0,0(sp)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <_ZN7WorkerC3runEv>:
    void run() override {
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00113423          	sd	ra,8(sp)
    8000339c:	00813023          	sd	s0,0(sp)
    800033a0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800033a4:	00000593          	li	a1,0
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	8bc080e7          	jalr	-1860(ra) # 80002c64 <_ZN7WorkerC11workerBodyCEPv>
    }
    800033b0:	00813083          	ld	ra,8(sp)
    800033b4:	00013403          	ld	s0,0(sp)
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <_ZN7WorkerD3runEv>:
    void run() override {
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00113423          	sd	ra,8(sp)
    800033c8:	00813023          	sd	s0,0(sp)
    800033cc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800033d0:	00000593          	li	a1,0
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	a10080e7          	jalr	-1520(ra) # 80002de4 <_ZN7WorkerD11workerBodyDEPv>
    }
    800033dc:	00813083          	ld	ra,8(sp)
    800033e0:	00013403          	ld	s0,0(sp)
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00008067          	ret

00000000800033ec <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800033ec:	fe010113          	addi	sp,sp,-32
    800033f0:	00113c23          	sd	ra,24(sp)
    800033f4:	00813823          	sd	s0,16(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	01213023          	sd	s2,0(sp)
    80003400:	02010413          	addi	s0,sp,32
    80003404:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003408:	00100793          	li	a5,1
    8000340c:	02a7f863          	bgeu	a5,a0,8000343c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003410:	00a00793          	li	a5,10
    80003414:	02f577b3          	remu	a5,a0,a5
    80003418:	02078e63          	beqz	a5,80003454 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000341c:	fff48513          	addi	a0,s1,-1
    80003420:	00000097          	auipc	ra,0x0
    80003424:	fcc080e7          	jalr	-52(ra) # 800033ec <_ZL9fibonaccim>
    80003428:	00050913          	mv	s2,a0
    8000342c:	ffe48513          	addi	a0,s1,-2
    80003430:	00000097          	auipc	ra,0x0
    80003434:	fbc080e7          	jalr	-68(ra) # 800033ec <_ZL9fibonaccim>
    80003438:	00a90533          	add	a0,s2,a0
}
    8000343c:	01813083          	ld	ra,24(sp)
    80003440:	01013403          	ld	s0,16(sp)
    80003444:	00813483          	ld	s1,8(sp)
    80003448:	00013903          	ld	s2,0(sp)
    8000344c:	02010113          	addi	sp,sp,32
    80003450:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	ed0080e7          	jalr	-304(ra) # 80001324 <_Z15thread_dispatchv>
    8000345c:	fc1ff06f          	j	8000341c <_ZL9fibonaccim+0x30>

0000000080003460 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003460:	fe010113          	addi	sp,sp,-32
    80003464:	00113c23          	sd	ra,24(sp)
    80003468:	00813823          	sd	s0,16(sp)
    8000346c:	00913423          	sd	s1,8(sp)
    80003470:	01213023          	sd	s2,0(sp)
    80003474:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003478:	00a00493          	li	s1,10
    8000347c:	0400006f          	j	800034bc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003480:	00004517          	auipc	a0,0x4
    80003484:	be050513          	addi	a0,a0,-1056 # 80007060 <CONSOLE_STATUS+0x50>
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	3bc080e7          	jalr	956(ra) # 80001844 <_Z11printStringPKc>
    80003490:	00000613          	li	a2,0
    80003494:	00a00593          	li	a1,10
    80003498:	00048513          	mv	a0,s1
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	558080e7          	jalr	1368(ra) # 800019f4 <_Z8printIntiii>
    800034a4:	00004517          	auipc	a0,0x4
    800034a8:	b9c50513          	addi	a0,a0,-1124 # 80007040 <CONSOLE_STATUS+0x30>
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	398080e7          	jalr	920(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800034b4:	0014849b          	addiw	s1,s1,1
    800034b8:	0ff4f493          	andi	s1,s1,255
    800034bc:	00c00793          	li	a5,12
    800034c0:	fc97f0e3          	bgeu	a5,s1,80003480 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800034c4:	00004517          	auipc	a0,0x4
    800034c8:	e4c50513          	addi	a0,a0,-436 # 80007310 <CONSOLE_STATUS+0x300>
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	378080e7          	jalr	888(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800034d4:	00500313          	li	t1,5
    thread_dispatch();
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	e4c080e7          	jalr	-436(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800034e0:	01000513          	li	a0,16
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	f08080e7          	jalr	-248(ra) # 800033ec <_ZL9fibonaccim>
    800034ec:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800034f0:	00004517          	auipc	a0,0x4
    800034f4:	b8850513          	addi	a0,a0,-1144 # 80007078 <CONSOLE_STATUS+0x68>
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	34c080e7          	jalr	844(ra) # 80001844 <_Z11printStringPKc>
    80003500:	00000613          	li	a2,0
    80003504:	00a00593          	li	a1,10
    80003508:	0009051b          	sext.w	a0,s2
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	4e8080e7          	jalr	1256(ra) # 800019f4 <_Z8printIntiii>
    80003514:	00004517          	auipc	a0,0x4
    80003518:	b2c50513          	addi	a0,a0,-1236 # 80007040 <CONSOLE_STATUS+0x30>
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	328080e7          	jalr	808(ra) # 80001844 <_Z11printStringPKc>
    80003524:	0400006f          	j	80003564 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003528:	00004517          	auipc	a0,0x4
    8000352c:	b3850513          	addi	a0,a0,-1224 # 80007060 <CONSOLE_STATUS+0x50>
    80003530:	ffffe097          	auipc	ra,0xffffe
    80003534:	314080e7          	jalr	788(ra) # 80001844 <_Z11printStringPKc>
    80003538:	00000613          	li	a2,0
    8000353c:	00a00593          	li	a1,10
    80003540:	00048513          	mv	a0,s1
    80003544:	ffffe097          	auipc	ra,0xffffe
    80003548:	4b0080e7          	jalr	1200(ra) # 800019f4 <_Z8printIntiii>
    8000354c:	00004517          	auipc	a0,0x4
    80003550:	af450513          	addi	a0,a0,-1292 # 80007040 <CONSOLE_STATUS+0x30>
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	2f0080e7          	jalr	752(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000355c:	0014849b          	addiw	s1,s1,1
    80003560:	0ff4f493          	andi	s1,s1,255
    80003564:	00f00793          	li	a5,15
    80003568:	fc97f0e3          	bgeu	a5,s1,80003528 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000356c:	00004517          	auipc	a0,0x4
    80003570:	db450513          	addi	a0,a0,-588 # 80007320 <CONSOLE_STATUS+0x310>
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	2d0080e7          	jalr	720(ra) # 80001844 <_Z11printStringPKc>
    finishedD = true;
    8000357c:	00100793          	li	a5,1
    80003580:	00005717          	auipc	a4,0x5
    80003584:	12f70623          	sb	a5,300(a4) # 800086ac <_ZL9finishedD>
    thread_dispatch();
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	d9c080e7          	jalr	-612(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003590:	01813083          	ld	ra,24(sp)
    80003594:	01013403          	ld	s0,16(sp)
    80003598:	00813483          	ld	s1,8(sp)
    8000359c:	00013903          	ld	s2,0(sp)
    800035a0:	02010113          	addi	sp,sp,32
    800035a4:	00008067          	ret

00000000800035a8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800035a8:	fe010113          	addi	sp,sp,-32
    800035ac:	00113c23          	sd	ra,24(sp)
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	01213023          	sd	s2,0(sp)
    800035bc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800035c0:	00000493          	li	s1,0
    800035c4:	0400006f          	j	80003604 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800035c8:	00004517          	auipc	a0,0x4
    800035cc:	a6850513          	addi	a0,a0,-1432 # 80007030 <CONSOLE_STATUS+0x20>
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	274080e7          	jalr	628(ra) # 80001844 <_Z11printStringPKc>
    800035d8:	00000613          	li	a2,0
    800035dc:	00a00593          	li	a1,10
    800035e0:	00048513          	mv	a0,s1
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	410080e7          	jalr	1040(ra) # 800019f4 <_Z8printIntiii>
    800035ec:	00004517          	auipc	a0,0x4
    800035f0:	a5450513          	addi	a0,a0,-1452 # 80007040 <CONSOLE_STATUS+0x30>
    800035f4:	ffffe097          	auipc	ra,0xffffe
    800035f8:	250080e7          	jalr	592(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800035fc:	0014849b          	addiw	s1,s1,1
    80003600:	0ff4f493          	andi	s1,s1,255
    80003604:	00200793          	li	a5,2
    80003608:	fc97f0e3          	bgeu	a5,s1,800035c8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000360c:	00004517          	auipc	a0,0x4
    80003610:	ce450513          	addi	a0,a0,-796 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	230080e7          	jalr	560(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000361c:	00700313          	li	t1,7
    thread_dispatch();
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	d04080e7          	jalr	-764(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003628:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000362c:	00004517          	auipc	a0,0x4
    80003630:	a1c50513          	addi	a0,a0,-1508 # 80007048 <CONSOLE_STATUS+0x38>
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	210080e7          	jalr	528(ra) # 80001844 <_Z11printStringPKc>
    8000363c:	00000613          	li	a2,0
    80003640:	00a00593          	li	a1,10
    80003644:	0009051b          	sext.w	a0,s2
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	3ac080e7          	jalr	940(ra) # 800019f4 <_Z8printIntiii>
    80003650:	00004517          	auipc	a0,0x4
    80003654:	9f050513          	addi	a0,a0,-1552 # 80007040 <CONSOLE_STATUS+0x30>
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	1ec080e7          	jalr	492(ra) # 80001844 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003660:	00c00513          	li	a0,12
    80003664:	00000097          	auipc	ra,0x0
    80003668:	d88080e7          	jalr	-632(ra) # 800033ec <_ZL9fibonaccim>
    8000366c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003670:	00004517          	auipc	a0,0x4
    80003674:	9e050513          	addi	a0,a0,-1568 # 80007050 <CONSOLE_STATUS+0x40>
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	1cc080e7          	jalr	460(ra) # 80001844 <_Z11printStringPKc>
    80003680:	00000613          	li	a2,0
    80003684:	00a00593          	li	a1,10
    80003688:	0009051b          	sext.w	a0,s2
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	368080e7          	jalr	872(ra) # 800019f4 <_Z8printIntiii>
    80003694:	00004517          	auipc	a0,0x4
    80003698:	9ac50513          	addi	a0,a0,-1620 # 80007040 <CONSOLE_STATUS+0x30>
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	1a8080e7          	jalr	424(ra) # 80001844 <_Z11printStringPKc>
    800036a4:	0400006f          	j	800036e4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800036a8:	00004517          	auipc	a0,0x4
    800036ac:	98850513          	addi	a0,a0,-1656 # 80007030 <CONSOLE_STATUS+0x20>
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	194080e7          	jalr	404(ra) # 80001844 <_Z11printStringPKc>
    800036b8:	00000613          	li	a2,0
    800036bc:	00a00593          	li	a1,10
    800036c0:	00048513          	mv	a0,s1
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	330080e7          	jalr	816(ra) # 800019f4 <_Z8printIntiii>
    800036cc:	00004517          	auipc	a0,0x4
    800036d0:	97450513          	addi	a0,a0,-1676 # 80007040 <CONSOLE_STATUS+0x30>
    800036d4:	ffffe097          	auipc	ra,0xffffe
    800036d8:	170080e7          	jalr	368(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800036dc:	0014849b          	addiw	s1,s1,1
    800036e0:	0ff4f493          	andi	s1,s1,255
    800036e4:	00500793          	li	a5,5
    800036e8:	fc97f0e3          	bgeu	a5,s1,800036a8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800036ec:	00004517          	auipc	a0,0x4
    800036f0:	be450513          	addi	a0,a0,-1052 # 800072d0 <CONSOLE_STATUS+0x2c0>
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	150080e7          	jalr	336(ra) # 80001844 <_Z11printStringPKc>
    finishedC = true;
    800036fc:	00100793          	li	a5,1
    80003700:	00005717          	auipc	a4,0x5
    80003704:	faf706a3          	sb	a5,-83(a4) # 800086ad <_ZL9finishedC>
    thread_dispatch();
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	c1c080e7          	jalr	-996(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003710:	01813083          	ld	ra,24(sp)
    80003714:	01013403          	ld	s0,16(sp)
    80003718:	00813483          	ld	s1,8(sp)
    8000371c:	00013903          	ld	s2,0(sp)
    80003720:	02010113          	addi	sp,sp,32
    80003724:	00008067          	ret

0000000080003728 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003728:	fe010113          	addi	sp,sp,-32
    8000372c:	00113c23          	sd	ra,24(sp)
    80003730:	00813823          	sd	s0,16(sp)
    80003734:	00913423          	sd	s1,8(sp)
    80003738:	01213023          	sd	s2,0(sp)
    8000373c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003740:	00000913          	li	s2,0
    80003744:	0380006f          	j	8000377c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	bdc080e7          	jalr	-1060(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003750:	00148493          	addi	s1,s1,1
    80003754:	000027b7          	lui	a5,0x2
    80003758:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000375c:	0097ee63          	bltu	a5,s1,80003778 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003760:	00000713          	li	a4,0
    80003764:	000077b7          	lui	a5,0x7
    80003768:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000376c:	fce7eee3          	bltu	a5,a4,80003748 <_ZL11workerBodyBPv+0x20>
    80003770:	00170713          	addi	a4,a4,1
    80003774:	ff1ff06f          	j	80003764 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003778:	00190913          	addi	s2,s2,1
    8000377c:	00f00793          	li	a5,15
    80003780:	0527e063          	bltu	a5,s2,800037c0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003784:	00004517          	auipc	a0,0x4
    80003788:	8a450513          	addi	a0,a0,-1884 # 80007028 <CONSOLE_STATUS+0x18>
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	0b8080e7          	jalr	184(ra) # 80001844 <_Z11printStringPKc>
    80003794:	00000613          	li	a2,0
    80003798:	00a00593          	li	a1,10
    8000379c:	0009051b          	sext.w	a0,s2
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	254080e7          	jalr	596(ra) # 800019f4 <_Z8printIntiii>
    800037a8:	00004517          	auipc	a0,0x4
    800037ac:	89850513          	addi	a0,a0,-1896 # 80007040 <CONSOLE_STATUS+0x30>
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	094080e7          	jalr	148(ra) # 80001844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037b8:	00000493          	li	s1,0
    800037bc:	f99ff06f          	j	80003754 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800037c0:	00004517          	auipc	a0,0x4
    800037c4:	b2050513          	addi	a0,a0,-1248 # 800072e0 <CONSOLE_STATUS+0x2d0>
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	07c080e7          	jalr	124(ra) # 80001844 <_Z11printStringPKc>
    finishedB = true;
    800037d0:	00100793          	li	a5,1
    800037d4:	00005717          	auipc	a4,0x5
    800037d8:	ecf70d23          	sb	a5,-294(a4) # 800086ae <_ZL9finishedB>
    thread_dispatch();
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	b48080e7          	jalr	-1208(ra) # 80001324 <_Z15thread_dispatchv>
}
    800037e4:	01813083          	ld	ra,24(sp)
    800037e8:	01013403          	ld	s0,16(sp)
    800037ec:	00813483          	ld	s1,8(sp)
    800037f0:	00013903          	ld	s2,0(sp)
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00008067          	ret

00000000800037fc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00113c23          	sd	ra,24(sp)
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	01213023          	sd	s2,0(sp)
    80003810:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003814:	00000913          	li	s2,0
    80003818:	0380006f          	j	80003850 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	b08080e7          	jalr	-1272(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003824:	00148493          	addi	s1,s1,1
    80003828:	000027b7          	lui	a5,0x2
    8000382c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003830:	0097ee63          	bltu	a5,s1,8000384c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003834:	00000713          	li	a4,0
    80003838:	000077b7          	lui	a5,0x7
    8000383c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003840:	fce7eee3          	bltu	a5,a4,8000381c <_ZL11workerBodyAPv+0x20>
    80003844:	00170713          	addi	a4,a4,1
    80003848:	ff1ff06f          	j	80003838 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000384c:	00190913          	addi	s2,s2,1
    80003850:	00900793          	li	a5,9
    80003854:	0527e063          	bltu	a5,s2,80003894 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003858:	00003517          	auipc	a0,0x3
    8000385c:	7c850513          	addi	a0,a0,1992 # 80007020 <CONSOLE_STATUS+0x10>
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	fe4080e7          	jalr	-28(ra) # 80001844 <_Z11printStringPKc>
    80003868:	00000613          	li	a2,0
    8000386c:	00a00593          	li	a1,10
    80003870:	0009051b          	sext.w	a0,s2
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	180080e7          	jalr	384(ra) # 800019f4 <_Z8printIntiii>
    8000387c:	00003517          	auipc	a0,0x3
    80003880:	7c450513          	addi	a0,a0,1988 # 80007040 <CONSOLE_STATUS+0x30>
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	fc0080e7          	jalr	-64(ra) # 80001844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000388c:	00000493          	li	s1,0
    80003890:	f99ff06f          	j	80003828 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003894:	00004517          	auipc	a0,0x4
    80003898:	a3c50513          	addi	a0,a0,-1476 # 800072d0 <CONSOLE_STATUS+0x2c0>
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	fa8080e7          	jalr	-88(ra) # 80001844 <_Z11printStringPKc>
    finishedA = true;
    800038a4:	00100793          	li	a5,1
    800038a8:	00005717          	auipc	a4,0x5
    800038ac:	e0f703a3          	sb	a5,-505(a4) # 800086af <_ZL9finishedA>
}
    800038b0:	01813083          	ld	ra,24(sp)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	00813483          	ld	s1,8(sp)
    800038bc:	00013903          	ld	s2,0(sp)
    800038c0:	02010113          	addi	sp,sp,32
    800038c4:	00008067          	ret

00000000800038c8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800038c8:	fc010113          	addi	sp,sp,-64
    800038cc:	02113c23          	sd	ra,56(sp)
    800038d0:	02813823          	sd	s0,48(sp)
    800038d4:	02913423          	sd	s1,40(sp)
    800038d8:	03213023          	sd	s2,32(sp)
    800038dc:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800038e0:	00000613          	li	a2,0
    800038e4:	00000597          	auipc	a1,0x0
    800038e8:	f1858593          	addi	a1,a1,-232 # 800037fc <_ZL11workerBodyAPv>
    800038ec:	fc040513          	addi	a0,s0,-64
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	9c0080e7          	jalr	-1600(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800038f8:	00004517          	auipc	a0,0x4
    800038fc:	a3850513          	addi	a0,a0,-1480 # 80007330 <CONSOLE_STATUS+0x320>
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	f44080e7          	jalr	-188(ra) # 80001844 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003908:	00000613          	li	a2,0
    8000390c:	00000597          	auipc	a1,0x0
    80003910:	e1c58593          	addi	a1,a1,-484 # 80003728 <_ZL11workerBodyBPv>
    80003914:	fc840513          	addi	a0,s0,-56
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	998080e7          	jalr	-1640(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003920:	00004517          	auipc	a0,0x4
    80003924:	a2850513          	addi	a0,a0,-1496 # 80007348 <CONSOLE_STATUS+0x338>
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	f1c080e7          	jalr	-228(ra) # 80001844 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003930:	00000613          	li	a2,0
    80003934:	00000597          	auipc	a1,0x0
    80003938:	c7458593          	addi	a1,a1,-908 # 800035a8 <_ZL11workerBodyCPv>
    8000393c:	fd040513          	addi	a0,s0,-48
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	970080e7          	jalr	-1680(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003948:	00004517          	auipc	a0,0x4
    8000394c:	a1850513          	addi	a0,a0,-1512 # 80007360 <CONSOLE_STATUS+0x350>
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	ef4080e7          	jalr	-268(ra) # 80001844 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003958:	00000613          	li	a2,0
    8000395c:	00000597          	auipc	a1,0x0
    80003960:	b0458593          	addi	a1,a1,-1276 # 80003460 <_ZL11workerBodyDPv>
    80003964:	fd840513          	addi	a0,s0,-40
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	948080e7          	jalr	-1720(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003970:	00004517          	auipc	a0,0x4
    80003974:	a0850513          	addi	a0,a0,-1528 # 80007378 <CONSOLE_STATUS+0x368>
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	ecc080e7          	jalr	-308(ra) # 80001844 <_Z11printStringPKc>
    80003980:	00c0006f          	j	8000398c <_Z18Threads_C_API_testv+0xc4>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003984:	ffffe097          	auipc	ra,0xffffe
    80003988:	9a0080e7          	jalr	-1632(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000398c:	00005797          	auipc	a5,0x5
    80003990:	d237c783          	lbu	a5,-733(a5) # 800086af <_ZL9finishedA>
    80003994:	fe0788e3          	beqz	a5,80003984 <_Z18Threads_C_API_testv+0xbc>
    80003998:	00005797          	auipc	a5,0x5
    8000399c:	d167c783          	lbu	a5,-746(a5) # 800086ae <_ZL9finishedB>
    800039a0:	fe0782e3          	beqz	a5,80003984 <_Z18Threads_C_API_testv+0xbc>
    800039a4:	00005797          	auipc	a5,0x5
    800039a8:	d097c783          	lbu	a5,-759(a5) # 800086ad <_ZL9finishedC>
    800039ac:	fc078ce3          	beqz	a5,80003984 <_Z18Threads_C_API_testv+0xbc>
    800039b0:	00005797          	auipc	a5,0x5
    800039b4:	cfc7c783          	lbu	a5,-772(a5) # 800086ac <_ZL9finishedD>
    800039b8:	fc0786e3          	beqz	a5,80003984 <_Z18Threads_C_API_testv+0xbc>
    800039bc:	00000493          	li	s1,0
    800039c0:	0140006f          	j	800039d4 <_Z18Threads_C_API_testv+0x10c>
    }

    for(int i = 0; i < 4; i++) delete threads[i];
    800039c4:	00090513          	mv	a0,s2
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	65c080e7          	jalr	1628(ra) # 80002024 <_ZdlPv>
    800039d0:	0014849b          	addiw	s1,s1,1
    800039d4:	00300793          	li	a5,3
    800039d8:	0297c663          	blt	a5,s1,80003a04 <_Z18Threads_C_API_testv+0x13c>
    800039dc:	00349793          	slli	a5,s1,0x3
    800039e0:	fe040713          	addi	a4,s0,-32
    800039e4:	00f707b3          	add	a5,a4,a5
    800039e8:	fe07b903          	ld	s2,-32(a5)
    800039ec:	fe0902e3          	beqz	s2,800039d0 <_Z18Threads_C_API_testv+0x108>
#include "../lib/hw.h"
#include "../h/scheduler.hpp"

class TCB {
public:
    ~TCB(){ delete[] stack; }
    800039f0:	01093503          	ld	a0,16(s2)
    800039f4:	fc0508e3          	beqz	a0,800039c4 <_Z18Threads_C_API_testv+0xfc>
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	654080e7          	jalr	1620(ra) # 8000204c <_ZdaPv>
    80003a00:	fc5ff06f          	j	800039c4 <_Z18Threads_C_API_testv+0xfc>

}
    80003a04:	03813083          	ld	ra,56(sp)
    80003a08:	03013403          	ld	s0,48(sp)
    80003a0c:	02813483          	ld	s1,40(sp)
    80003a10:	02013903          	ld	s2,32(sp)
    80003a14:	04010113          	addi	sp,sp,64
    80003a18:	00008067          	ret

0000000080003a1c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	01213023          	sd	s2,0(sp)
    80003a30:	02010413          	addi	s0,sp,32
    80003a34:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a38:	00100793          	li	a5,1
    80003a3c:	02a7f863          	bgeu	a5,a0,80003a6c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a40:	00a00793          	li	a5,10
    80003a44:	02f577b3          	remu	a5,a0,a5
    80003a48:	02078e63          	beqz	a5,80003a84 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a4c:	fff48513          	addi	a0,s1,-1
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	fcc080e7          	jalr	-52(ra) # 80003a1c <_ZL9fibonaccim>
    80003a58:	00050913          	mv	s2,a0
    80003a5c:	ffe48513          	addi	a0,s1,-2
    80003a60:	00000097          	auipc	ra,0x0
    80003a64:	fbc080e7          	jalr	-68(ra) # 80003a1c <_ZL9fibonaccim>
    80003a68:	00a90533          	add	a0,s2,a0
}
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	01013403          	ld	s0,16(sp)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	00013903          	ld	s2,0(sp)
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	8a0080e7          	jalr	-1888(ra) # 80001324 <_Z15thread_dispatchv>
    80003a8c:	fc1ff06f          	j	80003a4c <_ZL9fibonaccim+0x30>

0000000080003a90 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00113c23          	sd	ra,24(sp)
    80003a98:	00813823          	sd	s0,16(sp)
    80003a9c:	00913423          	sd	s1,8(sp)
    80003aa0:	01213023          	sd	s2,0(sp)
    80003aa4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003aa8:	00a00493          	li	s1,10
    80003aac:	0400006f          	j	80003aec <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ab0:	00003517          	auipc	a0,0x3
    80003ab4:	5b050513          	addi	a0,a0,1456 # 80007060 <CONSOLE_STATUS+0x50>
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	d8c080e7          	jalr	-628(ra) # 80001844 <_Z11printStringPKc>
    80003ac0:	00000613          	li	a2,0
    80003ac4:	00a00593          	li	a1,10
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	f28080e7          	jalr	-216(ra) # 800019f4 <_Z8printIntiii>
    80003ad4:	00003517          	auipc	a0,0x3
    80003ad8:	56c50513          	addi	a0,a0,1388 # 80007040 <CONSOLE_STATUS+0x30>
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	d68080e7          	jalr	-664(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ae4:	0014849b          	addiw	s1,s1,1
    80003ae8:	0ff4f493          	andi	s1,s1,255
    80003aec:	00c00793          	li	a5,12
    80003af0:	fc97f0e3          	bgeu	a5,s1,80003ab0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003af4:	00004517          	auipc	a0,0x4
    80003af8:	81c50513          	addi	a0,a0,-2020 # 80007310 <CONSOLE_STATUS+0x300>
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	d48080e7          	jalr	-696(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003b04:	00500313          	li	t1,5
    thread_dispatch();
    80003b08:	ffffe097          	auipc	ra,0xffffe
    80003b0c:	81c080e7          	jalr	-2020(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003b10:	01000513          	li	a0,16
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	f08080e7          	jalr	-248(ra) # 80003a1c <_ZL9fibonaccim>
    80003b1c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003b20:	00003517          	auipc	a0,0x3
    80003b24:	55850513          	addi	a0,a0,1368 # 80007078 <CONSOLE_STATUS+0x68>
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	d1c080e7          	jalr	-740(ra) # 80001844 <_Z11printStringPKc>
    80003b30:	00000613          	li	a2,0
    80003b34:	00a00593          	li	a1,10
    80003b38:	0009051b          	sext.w	a0,s2
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	eb8080e7          	jalr	-328(ra) # 800019f4 <_Z8printIntiii>
    80003b44:	00003517          	auipc	a0,0x3
    80003b48:	4fc50513          	addi	a0,a0,1276 # 80007040 <CONSOLE_STATUS+0x30>
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	cf8080e7          	jalr	-776(ra) # 80001844 <_Z11printStringPKc>
    80003b54:	0400006f          	j	80003b94 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b58:	00003517          	auipc	a0,0x3
    80003b5c:	50850513          	addi	a0,a0,1288 # 80007060 <CONSOLE_STATUS+0x50>
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	ce4080e7          	jalr	-796(ra) # 80001844 <_Z11printStringPKc>
    80003b68:	00000613          	li	a2,0
    80003b6c:	00a00593          	li	a1,10
    80003b70:	00048513          	mv	a0,s1
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	e80080e7          	jalr	-384(ra) # 800019f4 <_Z8printIntiii>
    80003b7c:	00003517          	auipc	a0,0x3
    80003b80:	4c450513          	addi	a0,a0,1220 # 80007040 <CONSOLE_STATUS+0x30>
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	cc0080e7          	jalr	-832(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b8c:	0014849b          	addiw	s1,s1,1
    80003b90:	0ff4f493          	andi	s1,s1,255
    80003b94:	00f00793          	li	a5,15
    80003b98:	fc97f0e3          	bgeu	a5,s1,80003b58 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003b9c:	00003517          	auipc	a0,0x3
    80003ba0:	78450513          	addi	a0,a0,1924 # 80007320 <CONSOLE_STATUS+0x310>
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	ca0080e7          	jalr	-864(ra) # 80001844 <_Z11printStringPKc>
    finishedD = true;
    80003bac:	00100793          	li	a5,1
    80003bb0:	00005717          	auipc	a4,0x5
    80003bb4:	b0f70023          	sb	a5,-1280(a4) # 800086b0 <_ZL9finishedD>
    thread_dispatch();
    80003bb8:	ffffd097          	auipc	ra,0xffffd
    80003bbc:	76c080e7          	jalr	1900(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003bc0:	01813083          	ld	ra,24(sp)
    80003bc4:	01013403          	ld	s0,16(sp)
    80003bc8:	00813483          	ld	s1,8(sp)
    80003bcc:	00013903          	ld	s2,0(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003bd8:	fe010113          	addi	sp,sp,-32
    80003bdc:	00113c23          	sd	ra,24(sp)
    80003be0:	00813823          	sd	s0,16(sp)
    80003be4:	00913423          	sd	s1,8(sp)
    80003be8:	01213023          	sd	s2,0(sp)
    80003bec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003bf0:	00000493          	li	s1,0
    80003bf4:	0400006f          	j	80003c34 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003bf8:	00003517          	auipc	a0,0x3
    80003bfc:	43850513          	addi	a0,a0,1080 # 80007030 <CONSOLE_STATUS+0x20>
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	c44080e7          	jalr	-956(ra) # 80001844 <_Z11printStringPKc>
    80003c08:	00000613          	li	a2,0
    80003c0c:	00a00593          	li	a1,10
    80003c10:	00048513          	mv	a0,s1
    80003c14:	ffffe097          	auipc	ra,0xffffe
    80003c18:	de0080e7          	jalr	-544(ra) # 800019f4 <_Z8printIntiii>
    80003c1c:	00003517          	auipc	a0,0x3
    80003c20:	42450513          	addi	a0,a0,1060 # 80007040 <CONSOLE_STATUS+0x30>
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	c20080e7          	jalr	-992(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c2c:	0014849b          	addiw	s1,s1,1
    80003c30:	0ff4f493          	andi	s1,s1,255
    80003c34:	00200793          	li	a5,2
    80003c38:	fc97f0e3          	bgeu	a5,s1,80003bf8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003c3c:	00003517          	auipc	a0,0x3
    80003c40:	6b450513          	addi	a0,a0,1716 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	c00080e7          	jalr	-1024(ra) # 80001844 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c4c:	00700313          	li	t1,7
    thread_dispatch();
    80003c50:	ffffd097          	auipc	ra,0xffffd
    80003c54:	6d4080e7          	jalr	1748(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c58:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003c5c:	00003517          	auipc	a0,0x3
    80003c60:	3ec50513          	addi	a0,a0,1004 # 80007048 <CONSOLE_STATUS+0x38>
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	be0080e7          	jalr	-1056(ra) # 80001844 <_Z11printStringPKc>
    80003c6c:	00000613          	li	a2,0
    80003c70:	00a00593          	li	a1,10
    80003c74:	0009051b          	sext.w	a0,s2
    80003c78:	ffffe097          	auipc	ra,0xffffe
    80003c7c:	d7c080e7          	jalr	-644(ra) # 800019f4 <_Z8printIntiii>
    80003c80:	00003517          	auipc	a0,0x3
    80003c84:	3c050513          	addi	a0,a0,960 # 80007040 <CONSOLE_STATUS+0x30>
    80003c88:	ffffe097          	auipc	ra,0xffffe
    80003c8c:	bbc080e7          	jalr	-1092(ra) # 80001844 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003c90:	00c00513          	li	a0,12
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	d88080e7          	jalr	-632(ra) # 80003a1c <_ZL9fibonaccim>
    80003c9c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ca0:	00003517          	auipc	a0,0x3
    80003ca4:	3b050513          	addi	a0,a0,944 # 80007050 <CONSOLE_STATUS+0x40>
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	b9c080e7          	jalr	-1124(ra) # 80001844 <_Z11printStringPKc>
    80003cb0:	00000613          	li	a2,0
    80003cb4:	00a00593          	li	a1,10
    80003cb8:	0009051b          	sext.w	a0,s2
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	d38080e7          	jalr	-712(ra) # 800019f4 <_Z8printIntiii>
    80003cc4:	00003517          	auipc	a0,0x3
    80003cc8:	37c50513          	addi	a0,a0,892 # 80007040 <CONSOLE_STATUS+0x30>
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	b78080e7          	jalr	-1160(ra) # 80001844 <_Z11printStringPKc>
    80003cd4:	0400006f          	j	80003d14 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003cd8:	00003517          	auipc	a0,0x3
    80003cdc:	35850513          	addi	a0,a0,856 # 80007030 <CONSOLE_STATUS+0x20>
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	b64080e7          	jalr	-1180(ra) # 80001844 <_Z11printStringPKc>
    80003ce8:	00000613          	li	a2,0
    80003cec:	00a00593          	li	a1,10
    80003cf0:	00048513          	mv	a0,s1
    80003cf4:	ffffe097          	auipc	ra,0xffffe
    80003cf8:	d00080e7          	jalr	-768(ra) # 800019f4 <_Z8printIntiii>
    80003cfc:	00003517          	auipc	a0,0x3
    80003d00:	34450513          	addi	a0,a0,836 # 80007040 <CONSOLE_STATUS+0x30>
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	b40080e7          	jalr	-1216(ra) # 80001844 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d0c:	0014849b          	addiw	s1,s1,1
    80003d10:	0ff4f493          	andi	s1,s1,255
    80003d14:	00500793          	li	a5,5
    80003d18:	fc97f0e3          	bgeu	a5,s1,80003cd8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003d1c:	00003517          	auipc	a0,0x3
    80003d20:	5b450513          	addi	a0,a0,1460 # 800072d0 <CONSOLE_STATUS+0x2c0>
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	b20080e7          	jalr	-1248(ra) # 80001844 <_Z11printStringPKc>
    finishedC = true;
    80003d2c:	00100793          	li	a5,1
    80003d30:	00005717          	auipc	a4,0x5
    80003d34:	98f700a3          	sb	a5,-1663(a4) # 800086b1 <_ZL9finishedC>
    thread_dispatch();
    80003d38:	ffffd097          	auipc	ra,0xffffd
    80003d3c:	5ec080e7          	jalr	1516(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003d40:	01813083          	ld	ra,24(sp)
    80003d44:	01013403          	ld	s0,16(sp)
    80003d48:	00813483          	ld	s1,8(sp)
    80003d4c:	00013903          	ld	s2,0(sp)
    80003d50:	02010113          	addi	sp,sp,32
    80003d54:	00008067          	ret

0000000080003d58 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003d58:	fe010113          	addi	sp,sp,-32
    80003d5c:	00113c23          	sd	ra,24(sp)
    80003d60:	00813823          	sd	s0,16(sp)
    80003d64:	00913423          	sd	s1,8(sp)
    80003d68:	01213023          	sd	s2,0(sp)
    80003d6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d70:	00000913          	li	s2,0
    80003d74:	0400006f          	j	80003db4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003d78:	ffffd097          	auipc	ra,0xffffd
    80003d7c:	5ac080e7          	jalr	1452(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d80:	00148493          	addi	s1,s1,1
    80003d84:	000027b7          	lui	a5,0x2
    80003d88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d8c:	0097ee63          	bltu	a5,s1,80003da8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d90:	00000713          	li	a4,0
    80003d94:	000077b7          	lui	a5,0x7
    80003d98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d9c:	fce7eee3          	bltu	a5,a4,80003d78 <_ZL11workerBodyBPv+0x20>
    80003da0:	00170713          	addi	a4,a4,1
    80003da4:	ff1ff06f          	j	80003d94 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003da8:	00a00793          	li	a5,10
    80003dac:	04f90663          	beq	s2,a5,80003df8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003db0:	00190913          	addi	s2,s2,1
    80003db4:	00f00793          	li	a5,15
    80003db8:	0527e463          	bltu	a5,s2,80003e00 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003dbc:	00003517          	auipc	a0,0x3
    80003dc0:	26c50513          	addi	a0,a0,620 # 80007028 <CONSOLE_STATUS+0x18>
    80003dc4:	ffffe097          	auipc	ra,0xffffe
    80003dc8:	a80080e7          	jalr	-1408(ra) # 80001844 <_Z11printStringPKc>
    80003dcc:	00000613          	li	a2,0
    80003dd0:	00a00593          	li	a1,10
    80003dd4:	0009051b          	sext.w	a0,s2
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	c1c080e7          	jalr	-996(ra) # 800019f4 <_Z8printIntiii>
    80003de0:	00003517          	auipc	a0,0x3
    80003de4:	26050513          	addi	a0,a0,608 # 80007040 <CONSOLE_STATUS+0x30>
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	a5c080e7          	jalr	-1444(ra) # 80001844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003df0:	00000493          	li	s1,0
    80003df4:	f91ff06f          	j	80003d84 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003df8:	14102ff3          	csrr	t6,sepc
    80003dfc:	fb5ff06f          	j	80003db0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003e00:	00003517          	auipc	a0,0x3
    80003e04:	4e050513          	addi	a0,a0,1248 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	a3c080e7          	jalr	-1476(ra) # 80001844 <_Z11printStringPKc>
    finishedB = true;
    80003e10:	00100793          	li	a5,1
    80003e14:	00005717          	auipc	a4,0x5
    80003e18:	88f70f23          	sb	a5,-1890(a4) # 800086b2 <_ZL9finishedB>
    thread_dispatch();
    80003e1c:	ffffd097          	auipc	ra,0xffffd
    80003e20:	508080e7          	jalr	1288(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003e24:	01813083          	ld	ra,24(sp)
    80003e28:	01013403          	ld	s0,16(sp)
    80003e2c:	00813483          	ld	s1,8(sp)
    80003e30:	00013903          	ld	s2,0(sp)
    80003e34:	02010113          	addi	sp,sp,32
    80003e38:	00008067          	ret

0000000080003e3c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003e3c:	fe010113          	addi	sp,sp,-32
    80003e40:	00113c23          	sd	ra,24(sp)
    80003e44:	00813823          	sd	s0,16(sp)
    80003e48:	00913423          	sd	s1,8(sp)
    80003e4c:	01213023          	sd	s2,0(sp)
    80003e50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003e54:	00000913          	li	s2,0
    80003e58:	0380006f          	j	80003e90 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003e5c:	ffffd097          	auipc	ra,0xffffd
    80003e60:	4c8080e7          	jalr	1224(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e64:	00148493          	addi	s1,s1,1
    80003e68:	000027b7          	lui	a5,0x2
    80003e6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e70:	0097ee63          	bltu	a5,s1,80003e8c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e74:	00000713          	li	a4,0
    80003e78:	000077b7          	lui	a5,0x7
    80003e7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e80:	fce7eee3          	bltu	a5,a4,80003e5c <_ZL11workerBodyAPv+0x20>
    80003e84:	00170713          	addi	a4,a4,1
    80003e88:	ff1ff06f          	j	80003e78 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003e8c:	00190913          	addi	s2,s2,1
    80003e90:	00900793          	li	a5,9
    80003e94:	0527e063          	bltu	a5,s2,80003ed4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003e98:	00003517          	auipc	a0,0x3
    80003e9c:	18850513          	addi	a0,a0,392 # 80007020 <CONSOLE_STATUS+0x10>
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	9a4080e7          	jalr	-1628(ra) # 80001844 <_Z11printStringPKc>
    80003ea8:	00000613          	li	a2,0
    80003eac:	00a00593          	li	a1,10
    80003eb0:	0009051b          	sext.w	a0,s2
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	b40080e7          	jalr	-1216(ra) # 800019f4 <_Z8printIntiii>
    80003ebc:	00003517          	auipc	a0,0x3
    80003ec0:	18450513          	addi	a0,a0,388 # 80007040 <CONSOLE_STATUS+0x30>
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	980080e7          	jalr	-1664(ra) # 80001844 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ecc:	00000493          	li	s1,0
    80003ed0:	f99ff06f          	j	80003e68 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003ed4:	00003517          	auipc	a0,0x3
    80003ed8:	3fc50513          	addi	a0,a0,1020 # 800072d0 <CONSOLE_STATUS+0x2c0>
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	968080e7          	jalr	-1688(ra) # 80001844 <_Z11printStringPKc>
    finishedA = true;
    80003ee4:	00100793          	li	a5,1
    80003ee8:	00004717          	auipc	a4,0x4
    80003eec:	7cf705a3          	sb	a5,1995(a4) # 800086b3 <_ZL9finishedA>
}
    80003ef0:	01813083          	ld	ra,24(sp)
    80003ef4:	01013403          	ld	s0,16(sp)
    80003ef8:	00813483          	ld	s1,8(sp)
    80003efc:	00013903          	ld	s2,0(sp)
    80003f00:	02010113          	addi	sp,sp,32
    80003f04:	00008067          	ret

0000000080003f08 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003f08:	fd010113          	addi	sp,sp,-48
    80003f0c:	02113423          	sd	ra,40(sp)
    80003f10:	02813023          	sd	s0,32(sp)
    80003f14:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003f18:	00000613          	li	a2,0
    80003f1c:	00000597          	auipc	a1,0x0
    80003f20:	f2058593          	addi	a1,a1,-224 # 80003e3c <_ZL11workerBodyAPv>
    80003f24:	fd040513          	addi	a0,s0,-48
    80003f28:	ffffd097          	auipc	ra,0xffffd
    80003f2c:	388080e7          	jalr	904(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003f30:	00003517          	auipc	a0,0x3
    80003f34:	40050513          	addi	a0,a0,1024 # 80007330 <CONSOLE_STATUS+0x320>
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	90c080e7          	jalr	-1780(ra) # 80001844 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003f40:	00000613          	li	a2,0
    80003f44:	00000597          	auipc	a1,0x0
    80003f48:	e1458593          	addi	a1,a1,-492 # 80003d58 <_ZL11workerBodyBPv>
    80003f4c:	fd840513          	addi	a0,s0,-40
    80003f50:	ffffd097          	auipc	ra,0xffffd
    80003f54:	360080e7          	jalr	864(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003f58:	00003517          	auipc	a0,0x3
    80003f5c:	3f050513          	addi	a0,a0,1008 # 80007348 <CONSOLE_STATUS+0x338>
    80003f60:	ffffe097          	auipc	ra,0xffffe
    80003f64:	8e4080e7          	jalr	-1820(ra) # 80001844 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003f68:	00000613          	li	a2,0
    80003f6c:	00000597          	auipc	a1,0x0
    80003f70:	c6c58593          	addi	a1,a1,-916 # 80003bd8 <_ZL11workerBodyCPv>
    80003f74:	fe040513          	addi	a0,s0,-32
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	338080e7          	jalr	824(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003f80:	00003517          	auipc	a0,0x3
    80003f84:	3e050513          	addi	a0,a0,992 # 80007360 <CONSOLE_STATUS+0x350>
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	8bc080e7          	jalr	-1860(ra) # 80001844 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003f90:	00000613          	li	a2,0
    80003f94:	00000597          	auipc	a1,0x0
    80003f98:	afc58593          	addi	a1,a1,-1284 # 80003a90 <_ZL11workerBodyDPv>
    80003f9c:	fe840513          	addi	a0,s0,-24
    80003fa0:	ffffd097          	auipc	ra,0xffffd
    80003fa4:	310080e7          	jalr	784(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003fa8:	00003517          	auipc	a0,0x3
    80003fac:	3d050513          	addi	a0,a0,976 # 80007378 <CONSOLE_STATUS+0x368>
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	894080e7          	jalr	-1900(ra) # 80001844 <_Z11printStringPKc>
    80003fb8:	00c0006f          	j	80003fc4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003fbc:	ffffd097          	auipc	ra,0xffffd
    80003fc0:	368080e7          	jalr	872(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fc4:	00004797          	auipc	a5,0x4
    80003fc8:	6ef7c783          	lbu	a5,1775(a5) # 800086b3 <_ZL9finishedA>
    80003fcc:	fe0788e3          	beqz	a5,80003fbc <_Z16System_Mode_testv+0xb4>
    80003fd0:	00004797          	auipc	a5,0x4
    80003fd4:	6e27c783          	lbu	a5,1762(a5) # 800086b2 <_ZL9finishedB>
    80003fd8:	fe0782e3          	beqz	a5,80003fbc <_Z16System_Mode_testv+0xb4>
    80003fdc:	00004797          	auipc	a5,0x4
    80003fe0:	6d57c783          	lbu	a5,1749(a5) # 800086b1 <_ZL9finishedC>
    80003fe4:	fc078ce3          	beqz	a5,80003fbc <_Z16System_Mode_testv+0xb4>
    80003fe8:	00004797          	auipc	a5,0x4
    80003fec:	6c87c783          	lbu	a5,1736(a5) # 800086b0 <_ZL9finishedD>
    80003ff0:	fc0786e3          	beqz	a5,80003fbc <_Z16System_Mode_testv+0xb4>
    }

}
    80003ff4:	02813083          	ld	ra,40(sp)
    80003ff8:	02013403          	ld	s0,32(sp)
    80003ffc:	03010113          	addi	sp,sp,48
    80004000:	00008067          	ret

0000000080004004 <start>:
    80004004:	ff010113          	addi	sp,sp,-16
    80004008:	00813423          	sd	s0,8(sp)
    8000400c:	01010413          	addi	s0,sp,16
    80004010:	300027f3          	csrr	a5,mstatus
    80004014:	ffffe737          	lui	a4,0xffffe
    80004018:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4edf>
    8000401c:	00e7f7b3          	and	a5,a5,a4
    80004020:	00001737          	lui	a4,0x1
    80004024:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004028:	00e7e7b3          	or	a5,a5,a4
    8000402c:	30079073          	csrw	mstatus,a5
    80004030:	00000797          	auipc	a5,0x0
    80004034:	16078793          	addi	a5,a5,352 # 80004190 <system_main>
    80004038:	34179073          	csrw	mepc,a5
    8000403c:	00000793          	li	a5,0
    80004040:	18079073          	csrw	satp,a5
    80004044:	000107b7          	lui	a5,0x10
    80004048:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000404c:	30279073          	csrw	medeleg,a5
    80004050:	30379073          	csrw	mideleg,a5
    80004054:	104027f3          	csrr	a5,sie
    80004058:	2227e793          	ori	a5,a5,546
    8000405c:	10479073          	csrw	sie,a5
    80004060:	fff00793          	li	a5,-1
    80004064:	00a7d793          	srli	a5,a5,0xa
    80004068:	3b079073          	csrw	pmpaddr0,a5
    8000406c:	00f00793          	li	a5,15
    80004070:	3a079073          	csrw	pmpcfg0,a5
    80004074:	f14027f3          	csrr	a5,mhartid
    80004078:	0200c737          	lui	a4,0x200c
    8000407c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004080:	0007869b          	sext.w	a3,a5
    80004084:	00269713          	slli	a4,a3,0x2
    80004088:	000f4637          	lui	a2,0xf4
    8000408c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004090:	00d70733          	add	a4,a4,a3
    80004094:	0037979b          	slliw	a5,a5,0x3
    80004098:	020046b7          	lui	a3,0x2004
    8000409c:	00d787b3          	add	a5,a5,a3
    800040a0:	00c585b3          	add	a1,a1,a2
    800040a4:	00371693          	slli	a3,a4,0x3
    800040a8:	00004717          	auipc	a4,0x4
    800040ac:	61870713          	addi	a4,a4,1560 # 800086c0 <timer_scratch>
    800040b0:	00b7b023          	sd	a1,0(a5)
    800040b4:	00d70733          	add	a4,a4,a3
    800040b8:	00f73c23          	sd	a5,24(a4)
    800040bc:	02c73023          	sd	a2,32(a4)
    800040c0:	34071073          	csrw	mscratch,a4
    800040c4:	00000797          	auipc	a5,0x0
    800040c8:	6ec78793          	addi	a5,a5,1772 # 800047b0 <timervec>
    800040cc:	30579073          	csrw	mtvec,a5
    800040d0:	300027f3          	csrr	a5,mstatus
    800040d4:	0087e793          	ori	a5,a5,8
    800040d8:	30079073          	csrw	mstatus,a5
    800040dc:	304027f3          	csrr	a5,mie
    800040e0:	0807e793          	ori	a5,a5,128
    800040e4:	30479073          	csrw	mie,a5
    800040e8:	f14027f3          	csrr	a5,mhartid
    800040ec:	0007879b          	sext.w	a5,a5
    800040f0:	00078213          	mv	tp,a5
    800040f4:	30200073          	mret
    800040f8:	00813403          	ld	s0,8(sp)
    800040fc:	01010113          	addi	sp,sp,16
    80004100:	00008067          	ret

0000000080004104 <timerinit>:
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00813423          	sd	s0,8(sp)
    8000410c:	01010413          	addi	s0,sp,16
    80004110:	f14027f3          	csrr	a5,mhartid
    80004114:	0200c737          	lui	a4,0x200c
    80004118:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000411c:	0007869b          	sext.w	a3,a5
    80004120:	00269713          	slli	a4,a3,0x2
    80004124:	000f4637          	lui	a2,0xf4
    80004128:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000412c:	00d70733          	add	a4,a4,a3
    80004130:	0037979b          	slliw	a5,a5,0x3
    80004134:	020046b7          	lui	a3,0x2004
    80004138:	00d787b3          	add	a5,a5,a3
    8000413c:	00c585b3          	add	a1,a1,a2
    80004140:	00371693          	slli	a3,a4,0x3
    80004144:	00004717          	auipc	a4,0x4
    80004148:	57c70713          	addi	a4,a4,1404 # 800086c0 <timer_scratch>
    8000414c:	00b7b023          	sd	a1,0(a5)
    80004150:	00d70733          	add	a4,a4,a3
    80004154:	00f73c23          	sd	a5,24(a4)
    80004158:	02c73023          	sd	a2,32(a4)
    8000415c:	34071073          	csrw	mscratch,a4
    80004160:	00000797          	auipc	a5,0x0
    80004164:	65078793          	addi	a5,a5,1616 # 800047b0 <timervec>
    80004168:	30579073          	csrw	mtvec,a5
    8000416c:	300027f3          	csrr	a5,mstatus
    80004170:	0087e793          	ori	a5,a5,8
    80004174:	30079073          	csrw	mstatus,a5
    80004178:	304027f3          	csrr	a5,mie
    8000417c:	0807e793          	ori	a5,a5,128
    80004180:	30479073          	csrw	mie,a5
    80004184:	00813403          	ld	s0,8(sp)
    80004188:	01010113          	addi	sp,sp,16
    8000418c:	00008067          	ret

0000000080004190 <system_main>:
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	00813823          	sd	s0,16(sp)
    80004198:	00913423          	sd	s1,8(sp)
    8000419c:	00113c23          	sd	ra,24(sp)
    800041a0:	02010413          	addi	s0,sp,32
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	0c4080e7          	jalr	196(ra) # 80004268 <cpuid>
    800041ac:	00004497          	auipc	s1,0x4
    800041b0:	49448493          	addi	s1,s1,1172 # 80008640 <started>
    800041b4:	02050263          	beqz	a0,800041d8 <system_main+0x48>
    800041b8:	0004a783          	lw	a5,0(s1)
    800041bc:	0007879b          	sext.w	a5,a5
    800041c0:	fe078ce3          	beqz	a5,800041b8 <system_main+0x28>
    800041c4:	0ff0000f          	fence
    800041c8:	00003517          	auipc	a0,0x3
    800041cc:	1f850513          	addi	a0,a0,504 # 800073c0 <CONSOLE_STATUS+0x3b0>
    800041d0:	00001097          	auipc	ra,0x1
    800041d4:	a7c080e7          	jalr	-1412(ra) # 80004c4c <panic>
    800041d8:	00001097          	auipc	ra,0x1
    800041dc:	9d0080e7          	jalr	-1584(ra) # 80004ba8 <consoleinit>
    800041e0:	00001097          	auipc	ra,0x1
    800041e4:	15c080e7          	jalr	348(ra) # 8000533c <printfinit>
    800041e8:	00003517          	auipc	a0,0x3
    800041ec:	e5850513          	addi	a0,a0,-424 # 80007040 <CONSOLE_STATUS+0x30>
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	ab8080e7          	jalr	-1352(ra) # 80004ca8 <__printf>
    800041f8:	00003517          	auipc	a0,0x3
    800041fc:	19850513          	addi	a0,a0,408 # 80007390 <CONSOLE_STATUS+0x380>
    80004200:	00001097          	auipc	ra,0x1
    80004204:	aa8080e7          	jalr	-1368(ra) # 80004ca8 <__printf>
    80004208:	00003517          	auipc	a0,0x3
    8000420c:	e3850513          	addi	a0,a0,-456 # 80007040 <CONSOLE_STATUS+0x30>
    80004210:	00001097          	auipc	ra,0x1
    80004214:	a98080e7          	jalr	-1384(ra) # 80004ca8 <__printf>
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	4b0080e7          	jalr	1200(ra) # 800056c8 <kinit>
    80004220:	00000097          	auipc	ra,0x0
    80004224:	148080e7          	jalr	328(ra) # 80004368 <trapinit>
    80004228:	00000097          	auipc	ra,0x0
    8000422c:	16c080e7          	jalr	364(ra) # 80004394 <trapinithart>
    80004230:	00000097          	auipc	ra,0x0
    80004234:	5c0080e7          	jalr	1472(ra) # 800047f0 <plicinit>
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	5e0080e7          	jalr	1504(ra) # 80004818 <plicinithart>
    80004240:	00000097          	auipc	ra,0x0
    80004244:	078080e7          	jalr	120(ra) # 800042b8 <userinit>
    80004248:	0ff0000f          	fence
    8000424c:	00100793          	li	a5,1
    80004250:	00003517          	auipc	a0,0x3
    80004254:	15850513          	addi	a0,a0,344 # 800073a8 <CONSOLE_STATUS+0x398>
    80004258:	00f4a023          	sw	a5,0(s1)
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	a4c080e7          	jalr	-1460(ra) # 80004ca8 <__printf>
    80004264:	0000006f          	j	80004264 <system_main+0xd4>

0000000080004268 <cpuid>:
    80004268:	ff010113          	addi	sp,sp,-16
    8000426c:	00813423          	sd	s0,8(sp)
    80004270:	01010413          	addi	s0,sp,16
    80004274:	00020513          	mv	a0,tp
    80004278:	00813403          	ld	s0,8(sp)
    8000427c:	0005051b          	sext.w	a0,a0
    80004280:	01010113          	addi	sp,sp,16
    80004284:	00008067          	ret

0000000080004288 <mycpu>:
    80004288:	ff010113          	addi	sp,sp,-16
    8000428c:	00813423          	sd	s0,8(sp)
    80004290:	01010413          	addi	s0,sp,16
    80004294:	00020793          	mv	a5,tp
    80004298:	00813403          	ld	s0,8(sp)
    8000429c:	0007879b          	sext.w	a5,a5
    800042a0:	00779793          	slli	a5,a5,0x7
    800042a4:	00005517          	auipc	a0,0x5
    800042a8:	44c50513          	addi	a0,a0,1100 # 800096f0 <cpus>
    800042ac:	00f50533          	add	a0,a0,a5
    800042b0:	01010113          	addi	sp,sp,16
    800042b4:	00008067          	ret

00000000800042b8 <userinit>:
    800042b8:	ff010113          	addi	sp,sp,-16
    800042bc:	00813423          	sd	s0,8(sp)
    800042c0:	01010413          	addi	s0,sp,16
    800042c4:	00813403          	ld	s0,8(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	ffffe317          	auipc	t1,0xffffe
    800042d0:	97c30067          	jr	-1668(t1) # 80001c48 <main>

00000000800042d4 <either_copyout>:
    800042d4:	ff010113          	addi	sp,sp,-16
    800042d8:	00813023          	sd	s0,0(sp)
    800042dc:	00113423          	sd	ra,8(sp)
    800042e0:	01010413          	addi	s0,sp,16
    800042e4:	02051663          	bnez	a0,80004310 <either_copyout+0x3c>
    800042e8:	00058513          	mv	a0,a1
    800042ec:	00060593          	mv	a1,a2
    800042f0:	0006861b          	sext.w	a2,a3
    800042f4:	00002097          	auipc	ra,0x2
    800042f8:	c60080e7          	jalr	-928(ra) # 80005f54 <__memmove>
    800042fc:	00813083          	ld	ra,8(sp)
    80004300:	00013403          	ld	s0,0(sp)
    80004304:	00000513          	li	a0,0
    80004308:	01010113          	addi	sp,sp,16
    8000430c:	00008067          	ret
    80004310:	00003517          	auipc	a0,0x3
    80004314:	0d850513          	addi	a0,a0,216 # 800073e8 <CONSOLE_STATUS+0x3d8>
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	934080e7          	jalr	-1740(ra) # 80004c4c <panic>

0000000080004320 <either_copyin>:
    80004320:	ff010113          	addi	sp,sp,-16
    80004324:	00813023          	sd	s0,0(sp)
    80004328:	00113423          	sd	ra,8(sp)
    8000432c:	01010413          	addi	s0,sp,16
    80004330:	02059463          	bnez	a1,80004358 <either_copyin+0x38>
    80004334:	00060593          	mv	a1,a2
    80004338:	0006861b          	sext.w	a2,a3
    8000433c:	00002097          	auipc	ra,0x2
    80004340:	c18080e7          	jalr	-1000(ra) # 80005f54 <__memmove>
    80004344:	00813083          	ld	ra,8(sp)
    80004348:	00013403          	ld	s0,0(sp)
    8000434c:	00000513          	li	a0,0
    80004350:	01010113          	addi	sp,sp,16
    80004354:	00008067          	ret
    80004358:	00003517          	auipc	a0,0x3
    8000435c:	0b850513          	addi	a0,a0,184 # 80007410 <CONSOLE_STATUS+0x400>
    80004360:	00001097          	auipc	ra,0x1
    80004364:	8ec080e7          	jalr	-1812(ra) # 80004c4c <panic>

0000000080004368 <trapinit>:
    80004368:	ff010113          	addi	sp,sp,-16
    8000436c:	00813423          	sd	s0,8(sp)
    80004370:	01010413          	addi	s0,sp,16
    80004374:	00813403          	ld	s0,8(sp)
    80004378:	00003597          	auipc	a1,0x3
    8000437c:	0c058593          	addi	a1,a1,192 # 80007438 <CONSOLE_STATUS+0x428>
    80004380:	00005517          	auipc	a0,0x5
    80004384:	3f050513          	addi	a0,a0,1008 # 80009770 <tickslock>
    80004388:	01010113          	addi	sp,sp,16
    8000438c:	00001317          	auipc	t1,0x1
    80004390:	5cc30067          	jr	1484(t1) # 80005958 <initlock>

0000000080004394 <trapinithart>:
    80004394:	ff010113          	addi	sp,sp,-16
    80004398:	00813423          	sd	s0,8(sp)
    8000439c:	01010413          	addi	s0,sp,16
    800043a0:	00000797          	auipc	a5,0x0
    800043a4:	30078793          	addi	a5,a5,768 # 800046a0 <kernelvec>
    800043a8:	10579073          	csrw	stvec,a5
    800043ac:	00813403          	ld	s0,8(sp)
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <usertrap>:
    800043b8:	ff010113          	addi	sp,sp,-16
    800043bc:	00813423          	sd	s0,8(sp)
    800043c0:	01010413          	addi	s0,sp,16
    800043c4:	00813403          	ld	s0,8(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <usertrapret>:
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00813423          	sd	s0,8(sp)
    800043d8:	01010413          	addi	s0,sp,16
    800043dc:	00813403          	ld	s0,8(sp)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <kerneltrap>:
    800043e8:	fe010113          	addi	sp,sp,-32
    800043ec:	00813823          	sd	s0,16(sp)
    800043f0:	00113c23          	sd	ra,24(sp)
    800043f4:	00913423          	sd	s1,8(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	142025f3          	csrr	a1,scause
    80004400:	100027f3          	csrr	a5,sstatus
    80004404:	0027f793          	andi	a5,a5,2
    80004408:	10079c63          	bnez	a5,80004520 <kerneltrap+0x138>
    8000440c:	142027f3          	csrr	a5,scause
    80004410:	0207ce63          	bltz	a5,8000444c <kerneltrap+0x64>
    80004414:	00003517          	auipc	a0,0x3
    80004418:	06c50513          	addi	a0,a0,108 # 80007480 <CONSOLE_STATUS+0x470>
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	88c080e7          	jalr	-1908(ra) # 80004ca8 <__printf>
    80004424:	141025f3          	csrr	a1,sepc
    80004428:	14302673          	csrr	a2,stval
    8000442c:	00003517          	auipc	a0,0x3
    80004430:	06450513          	addi	a0,a0,100 # 80007490 <CONSOLE_STATUS+0x480>
    80004434:	00001097          	auipc	ra,0x1
    80004438:	874080e7          	jalr	-1932(ra) # 80004ca8 <__printf>
    8000443c:	00003517          	auipc	a0,0x3
    80004440:	06c50513          	addi	a0,a0,108 # 800074a8 <CONSOLE_STATUS+0x498>
    80004444:	00001097          	auipc	ra,0x1
    80004448:	808080e7          	jalr	-2040(ra) # 80004c4c <panic>
    8000444c:	0ff7f713          	andi	a4,a5,255
    80004450:	00900693          	li	a3,9
    80004454:	04d70063          	beq	a4,a3,80004494 <kerneltrap+0xac>
    80004458:	fff00713          	li	a4,-1
    8000445c:	03f71713          	slli	a4,a4,0x3f
    80004460:	00170713          	addi	a4,a4,1
    80004464:	fae798e3          	bne	a5,a4,80004414 <kerneltrap+0x2c>
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	e00080e7          	jalr	-512(ra) # 80004268 <cpuid>
    80004470:	06050663          	beqz	a0,800044dc <kerneltrap+0xf4>
    80004474:	144027f3          	csrr	a5,sip
    80004478:	ffd7f793          	andi	a5,a5,-3
    8000447c:	14479073          	csrw	sip,a5
    80004480:	01813083          	ld	ra,24(sp)
    80004484:	01013403          	ld	s0,16(sp)
    80004488:	00813483          	ld	s1,8(sp)
    8000448c:	02010113          	addi	sp,sp,32
    80004490:	00008067          	ret
    80004494:	00000097          	auipc	ra,0x0
    80004498:	3d0080e7          	jalr	976(ra) # 80004864 <plic_claim>
    8000449c:	00a00793          	li	a5,10
    800044a0:	00050493          	mv	s1,a0
    800044a4:	06f50863          	beq	a0,a5,80004514 <kerneltrap+0x12c>
    800044a8:	fc050ce3          	beqz	a0,80004480 <kerneltrap+0x98>
    800044ac:	00050593          	mv	a1,a0
    800044b0:	00003517          	auipc	a0,0x3
    800044b4:	fb050513          	addi	a0,a0,-80 # 80007460 <CONSOLE_STATUS+0x450>
    800044b8:	00000097          	auipc	ra,0x0
    800044bc:	7f0080e7          	jalr	2032(ra) # 80004ca8 <__printf>
    800044c0:	01013403          	ld	s0,16(sp)
    800044c4:	01813083          	ld	ra,24(sp)
    800044c8:	00048513          	mv	a0,s1
    800044cc:	00813483          	ld	s1,8(sp)
    800044d0:	02010113          	addi	sp,sp,32
    800044d4:	00000317          	auipc	t1,0x0
    800044d8:	3c830067          	jr	968(t1) # 8000489c <plic_complete>
    800044dc:	00005517          	auipc	a0,0x5
    800044e0:	29450513          	addi	a0,a0,660 # 80009770 <tickslock>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	498080e7          	jalr	1176(ra) # 8000597c <acquire>
    800044ec:	00004717          	auipc	a4,0x4
    800044f0:	15870713          	addi	a4,a4,344 # 80008644 <ticks>
    800044f4:	00072783          	lw	a5,0(a4)
    800044f8:	00005517          	auipc	a0,0x5
    800044fc:	27850513          	addi	a0,a0,632 # 80009770 <tickslock>
    80004500:	0017879b          	addiw	a5,a5,1
    80004504:	00f72023          	sw	a5,0(a4)
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	540080e7          	jalr	1344(ra) # 80005a48 <release>
    80004510:	f65ff06f          	j	80004474 <kerneltrap+0x8c>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	09c080e7          	jalr	156(ra) # 800055b0 <uartintr>
    8000451c:	fa5ff06f          	j	800044c0 <kerneltrap+0xd8>
    80004520:	00003517          	auipc	a0,0x3
    80004524:	f2050513          	addi	a0,a0,-224 # 80007440 <CONSOLE_STATUS+0x430>
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	724080e7          	jalr	1828(ra) # 80004c4c <panic>

0000000080004530 <clockintr>:
    80004530:	fe010113          	addi	sp,sp,-32
    80004534:	00813823          	sd	s0,16(sp)
    80004538:	00913423          	sd	s1,8(sp)
    8000453c:	00113c23          	sd	ra,24(sp)
    80004540:	02010413          	addi	s0,sp,32
    80004544:	00005497          	auipc	s1,0x5
    80004548:	22c48493          	addi	s1,s1,556 # 80009770 <tickslock>
    8000454c:	00048513          	mv	a0,s1
    80004550:	00001097          	auipc	ra,0x1
    80004554:	42c080e7          	jalr	1068(ra) # 8000597c <acquire>
    80004558:	00004717          	auipc	a4,0x4
    8000455c:	0ec70713          	addi	a4,a4,236 # 80008644 <ticks>
    80004560:	00072783          	lw	a5,0(a4)
    80004564:	01013403          	ld	s0,16(sp)
    80004568:	01813083          	ld	ra,24(sp)
    8000456c:	00048513          	mv	a0,s1
    80004570:	0017879b          	addiw	a5,a5,1
    80004574:	00813483          	ld	s1,8(sp)
    80004578:	00f72023          	sw	a5,0(a4)
    8000457c:	02010113          	addi	sp,sp,32
    80004580:	00001317          	auipc	t1,0x1
    80004584:	4c830067          	jr	1224(t1) # 80005a48 <release>

0000000080004588 <devintr>:
    80004588:	142027f3          	csrr	a5,scause
    8000458c:	00000513          	li	a0,0
    80004590:	0007c463          	bltz	a5,80004598 <devintr+0x10>
    80004594:	00008067          	ret
    80004598:	fe010113          	addi	sp,sp,-32
    8000459c:	00813823          	sd	s0,16(sp)
    800045a0:	00113c23          	sd	ra,24(sp)
    800045a4:	00913423          	sd	s1,8(sp)
    800045a8:	02010413          	addi	s0,sp,32
    800045ac:	0ff7f713          	andi	a4,a5,255
    800045b0:	00900693          	li	a3,9
    800045b4:	04d70c63          	beq	a4,a3,8000460c <devintr+0x84>
    800045b8:	fff00713          	li	a4,-1
    800045bc:	03f71713          	slli	a4,a4,0x3f
    800045c0:	00170713          	addi	a4,a4,1
    800045c4:	00e78c63          	beq	a5,a4,800045dc <devintr+0x54>
    800045c8:	01813083          	ld	ra,24(sp)
    800045cc:	01013403          	ld	s0,16(sp)
    800045d0:	00813483          	ld	s1,8(sp)
    800045d4:	02010113          	addi	sp,sp,32
    800045d8:	00008067          	ret
    800045dc:	00000097          	auipc	ra,0x0
    800045e0:	c8c080e7          	jalr	-884(ra) # 80004268 <cpuid>
    800045e4:	06050663          	beqz	a0,80004650 <devintr+0xc8>
    800045e8:	144027f3          	csrr	a5,sip
    800045ec:	ffd7f793          	andi	a5,a5,-3
    800045f0:	14479073          	csrw	sip,a5
    800045f4:	01813083          	ld	ra,24(sp)
    800045f8:	01013403          	ld	s0,16(sp)
    800045fc:	00813483          	ld	s1,8(sp)
    80004600:	00200513          	li	a0,2
    80004604:	02010113          	addi	sp,sp,32
    80004608:	00008067          	ret
    8000460c:	00000097          	auipc	ra,0x0
    80004610:	258080e7          	jalr	600(ra) # 80004864 <plic_claim>
    80004614:	00a00793          	li	a5,10
    80004618:	00050493          	mv	s1,a0
    8000461c:	06f50663          	beq	a0,a5,80004688 <devintr+0x100>
    80004620:	00100513          	li	a0,1
    80004624:	fa0482e3          	beqz	s1,800045c8 <devintr+0x40>
    80004628:	00048593          	mv	a1,s1
    8000462c:	00003517          	auipc	a0,0x3
    80004630:	e3450513          	addi	a0,a0,-460 # 80007460 <CONSOLE_STATUS+0x450>
    80004634:	00000097          	auipc	ra,0x0
    80004638:	674080e7          	jalr	1652(ra) # 80004ca8 <__printf>
    8000463c:	00048513          	mv	a0,s1
    80004640:	00000097          	auipc	ra,0x0
    80004644:	25c080e7          	jalr	604(ra) # 8000489c <plic_complete>
    80004648:	00100513          	li	a0,1
    8000464c:	f7dff06f          	j	800045c8 <devintr+0x40>
    80004650:	00005517          	auipc	a0,0x5
    80004654:	12050513          	addi	a0,a0,288 # 80009770 <tickslock>
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	324080e7          	jalr	804(ra) # 8000597c <acquire>
    80004660:	00004717          	auipc	a4,0x4
    80004664:	fe470713          	addi	a4,a4,-28 # 80008644 <ticks>
    80004668:	00072783          	lw	a5,0(a4)
    8000466c:	00005517          	auipc	a0,0x5
    80004670:	10450513          	addi	a0,a0,260 # 80009770 <tickslock>
    80004674:	0017879b          	addiw	a5,a5,1
    80004678:	00f72023          	sw	a5,0(a4)
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	3cc080e7          	jalr	972(ra) # 80005a48 <release>
    80004684:	f65ff06f          	j	800045e8 <devintr+0x60>
    80004688:	00001097          	auipc	ra,0x1
    8000468c:	f28080e7          	jalr	-216(ra) # 800055b0 <uartintr>
    80004690:	fadff06f          	j	8000463c <devintr+0xb4>
	...

00000000800046a0 <kernelvec>:
    800046a0:	f0010113          	addi	sp,sp,-256
    800046a4:	00113023          	sd	ra,0(sp)
    800046a8:	00213423          	sd	sp,8(sp)
    800046ac:	00313823          	sd	gp,16(sp)
    800046b0:	00413c23          	sd	tp,24(sp)
    800046b4:	02513023          	sd	t0,32(sp)
    800046b8:	02613423          	sd	t1,40(sp)
    800046bc:	02713823          	sd	t2,48(sp)
    800046c0:	02813c23          	sd	s0,56(sp)
    800046c4:	04913023          	sd	s1,64(sp)
    800046c8:	04a13423          	sd	a0,72(sp)
    800046cc:	04b13823          	sd	a1,80(sp)
    800046d0:	04c13c23          	sd	a2,88(sp)
    800046d4:	06d13023          	sd	a3,96(sp)
    800046d8:	06e13423          	sd	a4,104(sp)
    800046dc:	06f13823          	sd	a5,112(sp)
    800046e0:	07013c23          	sd	a6,120(sp)
    800046e4:	09113023          	sd	a7,128(sp)
    800046e8:	09213423          	sd	s2,136(sp)
    800046ec:	09313823          	sd	s3,144(sp)
    800046f0:	09413c23          	sd	s4,152(sp)
    800046f4:	0b513023          	sd	s5,160(sp)
    800046f8:	0b613423          	sd	s6,168(sp)
    800046fc:	0b713823          	sd	s7,176(sp)
    80004700:	0b813c23          	sd	s8,184(sp)
    80004704:	0d913023          	sd	s9,192(sp)
    80004708:	0da13423          	sd	s10,200(sp)
    8000470c:	0db13823          	sd	s11,208(sp)
    80004710:	0dc13c23          	sd	t3,216(sp)
    80004714:	0fd13023          	sd	t4,224(sp)
    80004718:	0fe13423          	sd	t5,232(sp)
    8000471c:	0ff13823          	sd	t6,240(sp)
    80004720:	cc9ff0ef          	jal	ra,800043e8 <kerneltrap>
    80004724:	00013083          	ld	ra,0(sp)
    80004728:	00813103          	ld	sp,8(sp)
    8000472c:	01013183          	ld	gp,16(sp)
    80004730:	02013283          	ld	t0,32(sp)
    80004734:	02813303          	ld	t1,40(sp)
    80004738:	03013383          	ld	t2,48(sp)
    8000473c:	03813403          	ld	s0,56(sp)
    80004740:	04013483          	ld	s1,64(sp)
    80004744:	04813503          	ld	a0,72(sp)
    80004748:	05013583          	ld	a1,80(sp)
    8000474c:	05813603          	ld	a2,88(sp)
    80004750:	06013683          	ld	a3,96(sp)
    80004754:	06813703          	ld	a4,104(sp)
    80004758:	07013783          	ld	a5,112(sp)
    8000475c:	07813803          	ld	a6,120(sp)
    80004760:	08013883          	ld	a7,128(sp)
    80004764:	08813903          	ld	s2,136(sp)
    80004768:	09013983          	ld	s3,144(sp)
    8000476c:	09813a03          	ld	s4,152(sp)
    80004770:	0a013a83          	ld	s5,160(sp)
    80004774:	0a813b03          	ld	s6,168(sp)
    80004778:	0b013b83          	ld	s7,176(sp)
    8000477c:	0b813c03          	ld	s8,184(sp)
    80004780:	0c013c83          	ld	s9,192(sp)
    80004784:	0c813d03          	ld	s10,200(sp)
    80004788:	0d013d83          	ld	s11,208(sp)
    8000478c:	0d813e03          	ld	t3,216(sp)
    80004790:	0e013e83          	ld	t4,224(sp)
    80004794:	0e813f03          	ld	t5,232(sp)
    80004798:	0f013f83          	ld	t6,240(sp)
    8000479c:	10010113          	addi	sp,sp,256
    800047a0:	10200073          	sret
    800047a4:	00000013          	nop
    800047a8:	00000013          	nop
    800047ac:	00000013          	nop

00000000800047b0 <timervec>:
    800047b0:	34051573          	csrrw	a0,mscratch,a0
    800047b4:	00b53023          	sd	a1,0(a0)
    800047b8:	00c53423          	sd	a2,8(a0)
    800047bc:	00d53823          	sd	a3,16(a0)
    800047c0:	01853583          	ld	a1,24(a0)
    800047c4:	02053603          	ld	a2,32(a0)
    800047c8:	0005b683          	ld	a3,0(a1)
    800047cc:	00c686b3          	add	a3,a3,a2
    800047d0:	00d5b023          	sd	a3,0(a1)
    800047d4:	00200593          	li	a1,2
    800047d8:	14459073          	csrw	sip,a1
    800047dc:	01053683          	ld	a3,16(a0)
    800047e0:	00853603          	ld	a2,8(a0)
    800047e4:	00053583          	ld	a1,0(a0)
    800047e8:	34051573          	csrrw	a0,mscratch,a0
    800047ec:	30200073          	mret

00000000800047f0 <plicinit>:
    800047f0:	ff010113          	addi	sp,sp,-16
    800047f4:	00813423          	sd	s0,8(sp)
    800047f8:	01010413          	addi	s0,sp,16
    800047fc:	00813403          	ld	s0,8(sp)
    80004800:	0c0007b7          	lui	a5,0xc000
    80004804:	00100713          	li	a4,1
    80004808:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000480c:	00e7a223          	sw	a4,4(a5)
    80004810:	01010113          	addi	sp,sp,16
    80004814:	00008067          	ret

0000000080004818 <plicinithart>:
    80004818:	ff010113          	addi	sp,sp,-16
    8000481c:	00813023          	sd	s0,0(sp)
    80004820:	00113423          	sd	ra,8(sp)
    80004824:	01010413          	addi	s0,sp,16
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	a40080e7          	jalr	-1472(ra) # 80004268 <cpuid>
    80004830:	0085171b          	slliw	a4,a0,0x8
    80004834:	0c0027b7          	lui	a5,0xc002
    80004838:	00e787b3          	add	a5,a5,a4
    8000483c:	40200713          	li	a4,1026
    80004840:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004844:	00813083          	ld	ra,8(sp)
    80004848:	00013403          	ld	s0,0(sp)
    8000484c:	00d5151b          	slliw	a0,a0,0xd
    80004850:	0c2017b7          	lui	a5,0xc201
    80004854:	00a78533          	add	a0,a5,a0
    80004858:	00052023          	sw	zero,0(a0)
    8000485c:	01010113          	addi	sp,sp,16
    80004860:	00008067          	ret

0000000080004864 <plic_claim>:
    80004864:	ff010113          	addi	sp,sp,-16
    80004868:	00813023          	sd	s0,0(sp)
    8000486c:	00113423          	sd	ra,8(sp)
    80004870:	01010413          	addi	s0,sp,16
    80004874:	00000097          	auipc	ra,0x0
    80004878:	9f4080e7          	jalr	-1548(ra) # 80004268 <cpuid>
    8000487c:	00813083          	ld	ra,8(sp)
    80004880:	00013403          	ld	s0,0(sp)
    80004884:	00d5151b          	slliw	a0,a0,0xd
    80004888:	0c2017b7          	lui	a5,0xc201
    8000488c:	00a78533          	add	a0,a5,a0
    80004890:	00452503          	lw	a0,4(a0)
    80004894:	01010113          	addi	sp,sp,16
    80004898:	00008067          	ret

000000008000489c <plic_complete>:
    8000489c:	fe010113          	addi	sp,sp,-32
    800048a0:	00813823          	sd	s0,16(sp)
    800048a4:	00913423          	sd	s1,8(sp)
    800048a8:	00113c23          	sd	ra,24(sp)
    800048ac:	02010413          	addi	s0,sp,32
    800048b0:	00050493          	mv	s1,a0
    800048b4:	00000097          	auipc	ra,0x0
    800048b8:	9b4080e7          	jalr	-1612(ra) # 80004268 <cpuid>
    800048bc:	01813083          	ld	ra,24(sp)
    800048c0:	01013403          	ld	s0,16(sp)
    800048c4:	00d5179b          	slliw	a5,a0,0xd
    800048c8:	0c201737          	lui	a4,0xc201
    800048cc:	00f707b3          	add	a5,a4,a5
    800048d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800048d4:	00813483          	ld	s1,8(sp)
    800048d8:	02010113          	addi	sp,sp,32
    800048dc:	00008067          	ret

00000000800048e0 <consolewrite>:
    800048e0:	fb010113          	addi	sp,sp,-80
    800048e4:	04813023          	sd	s0,64(sp)
    800048e8:	04113423          	sd	ra,72(sp)
    800048ec:	02913c23          	sd	s1,56(sp)
    800048f0:	03213823          	sd	s2,48(sp)
    800048f4:	03313423          	sd	s3,40(sp)
    800048f8:	03413023          	sd	s4,32(sp)
    800048fc:	01513c23          	sd	s5,24(sp)
    80004900:	05010413          	addi	s0,sp,80
    80004904:	06c05c63          	blez	a2,8000497c <consolewrite+0x9c>
    80004908:	00060993          	mv	s3,a2
    8000490c:	00050a13          	mv	s4,a0
    80004910:	00058493          	mv	s1,a1
    80004914:	00000913          	li	s2,0
    80004918:	fff00a93          	li	s5,-1
    8000491c:	01c0006f          	j	80004938 <consolewrite+0x58>
    80004920:	fbf44503          	lbu	a0,-65(s0)
    80004924:	0019091b          	addiw	s2,s2,1
    80004928:	00148493          	addi	s1,s1,1
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	a9c080e7          	jalr	-1380(ra) # 800053c8 <uartputc>
    80004934:	03298063          	beq	s3,s2,80004954 <consolewrite+0x74>
    80004938:	00048613          	mv	a2,s1
    8000493c:	00100693          	li	a3,1
    80004940:	000a0593          	mv	a1,s4
    80004944:	fbf40513          	addi	a0,s0,-65
    80004948:	00000097          	auipc	ra,0x0
    8000494c:	9d8080e7          	jalr	-1576(ra) # 80004320 <either_copyin>
    80004950:	fd5518e3          	bne	a0,s5,80004920 <consolewrite+0x40>
    80004954:	04813083          	ld	ra,72(sp)
    80004958:	04013403          	ld	s0,64(sp)
    8000495c:	03813483          	ld	s1,56(sp)
    80004960:	02813983          	ld	s3,40(sp)
    80004964:	02013a03          	ld	s4,32(sp)
    80004968:	01813a83          	ld	s5,24(sp)
    8000496c:	00090513          	mv	a0,s2
    80004970:	03013903          	ld	s2,48(sp)
    80004974:	05010113          	addi	sp,sp,80
    80004978:	00008067          	ret
    8000497c:	00000913          	li	s2,0
    80004980:	fd5ff06f          	j	80004954 <consolewrite+0x74>

0000000080004984 <consoleread>:
    80004984:	f9010113          	addi	sp,sp,-112
    80004988:	06813023          	sd	s0,96(sp)
    8000498c:	04913c23          	sd	s1,88(sp)
    80004990:	05213823          	sd	s2,80(sp)
    80004994:	05313423          	sd	s3,72(sp)
    80004998:	05413023          	sd	s4,64(sp)
    8000499c:	03513c23          	sd	s5,56(sp)
    800049a0:	03613823          	sd	s6,48(sp)
    800049a4:	03713423          	sd	s7,40(sp)
    800049a8:	03813023          	sd	s8,32(sp)
    800049ac:	06113423          	sd	ra,104(sp)
    800049b0:	01913c23          	sd	s9,24(sp)
    800049b4:	07010413          	addi	s0,sp,112
    800049b8:	00060b93          	mv	s7,a2
    800049bc:	00050913          	mv	s2,a0
    800049c0:	00058c13          	mv	s8,a1
    800049c4:	00060b1b          	sext.w	s6,a2
    800049c8:	00005497          	auipc	s1,0x5
    800049cc:	dd048493          	addi	s1,s1,-560 # 80009798 <cons>
    800049d0:	00400993          	li	s3,4
    800049d4:	fff00a13          	li	s4,-1
    800049d8:	00a00a93          	li	s5,10
    800049dc:	05705e63          	blez	s7,80004a38 <consoleread+0xb4>
    800049e0:	09c4a703          	lw	a4,156(s1)
    800049e4:	0984a783          	lw	a5,152(s1)
    800049e8:	0007071b          	sext.w	a4,a4
    800049ec:	08e78463          	beq	a5,a4,80004a74 <consoleread+0xf0>
    800049f0:	07f7f713          	andi	a4,a5,127
    800049f4:	00e48733          	add	a4,s1,a4
    800049f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800049fc:	0017869b          	addiw	a3,a5,1
    80004a00:	08d4ac23          	sw	a3,152(s1)
    80004a04:	00070c9b          	sext.w	s9,a4
    80004a08:	0b370663          	beq	a4,s3,80004ab4 <consoleread+0x130>
    80004a0c:	00100693          	li	a3,1
    80004a10:	f9f40613          	addi	a2,s0,-97
    80004a14:	000c0593          	mv	a1,s8
    80004a18:	00090513          	mv	a0,s2
    80004a1c:	f8e40fa3          	sb	a4,-97(s0)
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	8b4080e7          	jalr	-1868(ra) # 800042d4 <either_copyout>
    80004a28:	01450863          	beq	a0,s4,80004a38 <consoleread+0xb4>
    80004a2c:	001c0c13          	addi	s8,s8,1
    80004a30:	fffb8b9b          	addiw	s7,s7,-1
    80004a34:	fb5c94e3          	bne	s9,s5,800049dc <consoleread+0x58>
    80004a38:	000b851b          	sext.w	a0,s7
    80004a3c:	06813083          	ld	ra,104(sp)
    80004a40:	06013403          	ld	s0,96(sp)
    80004a44:	05813483          	ld	s1,88(sp)
    80004a48:	05013903          	ld	s2,80(sp)
    80004a4c:	04813983          	ld	s3,72(sp)
    80004a50:	04013a03          	ld	s4,64(sp)
    80004a54:	03813a83          	ld	s5,56(sp)
    80004a58:	02813b83          	ld	s7,40(sp)
    80004a5c:	02013c03          	ld	s8,32(sp)
    80004a60:	01813c83          	ld	s9,24(sp)
    80004a64:	40ab053b          	subw	a0,s6,a0
    80004a68:	03013b03          	ld	s6,48(sp)
    80004a6c:	07010113          	addi	sp,sp,112
    80004a70:	00008067          	ret
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	1d8080e7          	jalr	472(ra) # 80005c4c <push_on>
    80004a7c:	0984a703          	lw	a4,152(s1)
    80004a80:	09c4a783          	lw	a5,156(s1)
    80004a84:	0007879b          	sext.w	a5,a5
    80004a88:	fef70ce3          	beq	a4,a5,80004a80 <consoleread+0xfc>
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	234080e7          	jalr	564(ra) # 80005cc0 <pop_on>
    80004a94:	0984a783          	lw	a5,152(s1)
    80004a98:	07f7f713          	andi	a4,a5,127
    80004a9c:	00e48733          	add	a4,s1,a4
    80004aa0:	01874703          	lbu	a4,24(a4)
    80004aa4:	0017869b          	addiw	a3,a5,1
    80004aa8:	08d4ac23          	sw	a3,152(s1)
    80004aac:	00070c9b          	sext.w	s9,a4
    80004ab0:	f5371ee3          	bne	a4,s3,80004a0c <consoleread+0x88>
    80004ab4:	000b851b          	sext.w	a0,s7
    80004ab8:	f96bf2e3          	bgeu	s7,s6,80004a3c <consoleread+0xb8>
    80004abc:	08f4ac23          	sw	a5,152(s1)
    80004ac0:	f7dff06f          	j	80004a3c <consoleread+0xb8>

0000000080004ac4 <consputc>:
    80004ac4:	10000793          	li	a5,256
    80004ac8:	00f50663          	beq	a0,a5,80004ad4 <consputc+0x10>
    80004acc:	00001317          	auipc	t1,0x1
    80004ad0:	9f430067          	jr	-1548(t1) # 800054c0 <uartputc_sync>
    80004ad4:	ff010113          	addi	sp,sp,-16
    80004ad8:	00113423          	sd	ra,8(sp)
    80004adc:	00813023          	sd	s0,0(sp)
    80004ae0:	01010413          	addi	s0,sp,16
    80004ae4:	00800513          	li	a0,8
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	9d8080e7          	jalr	-1576(ra) # 800054c0 <uartputc_sync>
    80004af0:	02000513          	li	a0,32
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	9cc080e7          	jalr	-1588(ra) # 800054c0 <uartputc_sync>
    80004afc:	00013403          	ld	s0,0(sp)
    80004b00:	00813083          	ld	ra,8(sp)
    80004b04:	00800513          	li	a0,8
    80004b08:	01010113          	addi	sp,sp,16
    80004b0c:	00001317          	auipc	t1,0x1
    80004b10:	9b430067          	jr	-1612(t1) # 800054c0 <uartputc_sync>

0000000080004b14 <consoleintr>:
    80004b14:	fe010113          	addi	sp,sp,-32
    80004b18:	00813823          	sd	s0,16(sp)
    80004b1c:	00913423          	sd	s1,8(sp)
    80004b20:	01213023          	sd	s2,0(sp)
    80004b24:	00113c23          	sd	ra,24(sp)
    80004b28:	02010413          	addi	s0,sp,32
    80004b2c:	00005917          	auipc	s2,0x5
    80004b30:	c6c90913          	addi	s2,s2,-916 # 80009798 <cons>
    80004b34:	00050493          	mv	s1,a0
    80004b38:	00090513          	mv	a0,s2
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	e40080e7          	jalr	-448(ra) # 8000597c <acquire>
    80004b44:	02048c63          	beqz	s1,80004b7c <consoleintr+0x68>
    80004b48:	0a092783          	lw	a5,160(s2)
    80004b4c:	09892703          	lw	a4,152(s2)
    80004b50:	07f00693          	li	a3,127
    80004b54:	40e7873b          	subw	a4,a5,a4
    80004b58:	02e6e263          	bltu	a3,a4,80004b7c <consoleintr+0x68>
    80004b5c:	00d00713          	li	a4,13
    80004b60:	04e48063          	beq	s1,a4,80004ba0 <consoleintr+0x8c>
    80004b64:	07f7f713          	andi	a4,a5,127
    80004b68:	00e90733          	add	a4,s2,a4
    80004b6c:	0017879b          	addiw	a5,a5,1
    80004b70:	0af92023          	sw	a5,160(s2)
    80004b74:	00970c23          	sb	s1,24(a4)
    80004b78:	08f92e23          	sw	a5,156(s2)
    80004b7c:	01013403          	ld	s0,16(sp)
    80004b80:	01813083          	ld	ra,24(sp)
    80004b84:	00813483          	ld	s1,8(sp)
    80004b88:	00013903          	ld	s2,0(sp)
    80004b8c:	00005517          	auipc	a0,0x5
    80004b90:	c0c50513          	addi	a0,a0,-1012 # 80009798 <cons>
    80004b94:	02010113          	addi	sp,sp,32
    80004b98:	00001317          	auipc	t1,0x1
    80004b9c:	eb030067          	jr	-336(t1) # 80005a48 <release>
    80004ba0:	00a00493          	li	s1,10
    80004ba4:	fc1ff06f          	j	80004b64 <consoleintr+0x50>

0000000080004ba8 <consoleinit>:
    80004ba8:	fe010113          	addi	sp,sp,-32
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	00813823          	sd	s0,16(sp)
    80004bb4:	00913423          	sd	s1,8(sp)
    80004bb8:	02010413          	addi	s0,sp,32
    80004bbc:	00005497          	auipc	s1,0x5
    80004bc0:	bdc48493          	addi	s1,s1,-1060 # 80009798 <cons>
    80004bc4:	00048513          	mv	a0,s1
    80004bc8:	00003597          	auipc	a1,0x3
    80004bcc:	8f058593          	addi	a1,a1,-1808 # 800074b8 <CONSOLE_STATUS+0x4a8>
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	d88080e7          	jalr	-632(ra) # 80005958 <initlock>
    80004bd8:	00000097          	auipc	ra,0x0
    80004bdc:	7ac080e7          	jalr	1964(ra) # 80005384 <uartinit>
    80004be0:	01813083          	ld	ra,24(sp)
    80004be4:	01013403          	ld	s0,16(sp)
    80004be8:	00000797          	auipc	a5,0x0
    80004bec:	d9c78793          	addi	a5,a5,-612 # 80004984 <consoleread>
    80004bf0:	0af4bc23          	sd	a5,184(s1)
    80004bf4:	00000797          	auipc	a5,0x0
    80004bf8:	cec78793          	addi	a5,a5,-788 # 800048e0 <consolewrite>
    80004bfc:	0cf4b023          	sd	a5,192(s1)
    80004c00:	00813483          	ld	s1,8(sp)
    80004c04:	02010113          	addi	sp,sp,32
    80004c08:	00008067          	ret

0000000080004c0c <console_read>:
    80004c0c:	ff010113          	addi	sp,sp,-16
    80004c10:	00813423          	sd	s0,8(sp)
    80004c14:	01010413          	addi	s0,sp,16
    80004c18:	00813403          	ld	s0,8(sp)
    80004c1c:	00005317          	auipc	t1,0x5
    80004c20:	c3433303          	ld	t1,-972(t1) # 80009850 <devsw+0x10>
    80004c24:	01010113          	addi	sp,sp,16
    80004c28:	00030067          	jr	t1

0000000080004c2c <console_write>:
    80004c2c:	ff010113          	addi	sp,sp,-16
    80004c30:	00813423          	sd	s0,8(sp)
    80004c34:	01010413          	addi	s0,sp,16
    80004c38:	00813403          	ld	s0,8(sp)
    80004c3c:	00005317          	auipc	t1,0x5
    80004c40:	c1c33303          	ld	t1,-996(t1) # 80009858 <devsw+0x18>
    80004c44:	01010113          	addi	sp,sp,16
    80004c48:	00030067          	jr	t1

0000000080004c4c <panic>:
    80004c4c:	fe010113          	addi	sp,sp,-32
    80004c50:	00113c23          	sd	ra,24(sp)
    80004c54:	00813823          	sd	s0,16(sp)
    80004c58:	00913423          	sd	s1,8(sp)
    80004c5c:	02010413          	addi	s0,sp,32
    80004c60:	00050493          	mv	s1,a0
    80004c64:	00003517          	auipc	a0,0x3
    80004c68:	85c50513          	addi	a0,a0,-1956 # 800074c0 <CONSOLE_STATUS+0x4b0>
    80004c6c:	00005797          	auipc	a5,0x5
    80004c70:	c807a623          	sw	zero,-884(a5) # 800098f8 <pr+0x18>
    80004c74:	00000097          	auipc	ra,0x0
    80004c78:	034080e7          	jalr	52(ra) # 80004ca8 <__printf>
    80004c7c:	00048513          	mv	a0,s1
    80004c80:	00000097          	auipc	ra,0x0
    80004c84:	028080e7          	jalr	40(ra) # 80004ca8 <__printf>
    80004c88:	00002517          	auipc	a0,0x2
    80004c8c:	3b850513          	addi	a0,a0,952 # 80007040 <CONSOLE_STATUS+0x30>
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	018080e7          	jalr	24(ra) # 80004ca8 <__printf>
    80004c98:	00100793          	li	a5,1
    80004c9c:	00004717          	auipc	a4,0x4
    80004ca0:	9af72623          	sw	a5,-1620(a4) # 80008648 <panicked>
    80004ca4:	0000006f          	j	80004ca4 <panic+0x58>

0000000080004ca8 <__printf>:
    80004ca8:	f3010113          	addi	sp,sp,-208
    80004cac:	08813023          	sd	s0,128(sp)
    80004cb0:	07313423          	sd	s3,104(sp)
    80004cb4:	09010413          	addi	s0,sp,144
    80004cb8:	05813023          	sd	s8,64(sp)
    80004cbc:	08113423          	sd	ra,136(sp)
    80004cc0:	06913c23          	sd	s1,120(sp)
    80004cc4:	07213823          	sd	s2,112(sp)
    80004cc8:	07413023          	sd	s4,96(sp)
    80004ccc:	05513c23          	sd	s5,88(sp)
    80004cd0:	05613823          	sd	s6,80(sp)
    80004cd4:	05713423          	sd	s7,72(sp)
    80004cd8:	03913c23          	sd	s9,56(sp)
    80004cdc:	03a13823          	sd	s10,48(sp)
    80004ce0:	03b13423          	sd	s11,40(sp)
    80004ce4:	00005317          	auipc	t1,0x5
    80004ce8:	bfc30313          	addi	t1,t1,-1028 # 800098e0 <pr>
    80004cec:	01832c03          	lw	s8,24(t1)
    80004cf0:	00b43423          	sd	a1,8(s0)
    80004cf4:	00c43823          	sd	a2,16(s0)
    80004cf8:	00d43c23          	sd	a3,24(s0)
    80004cfc:	02e43023          	sd	a4,32(s0)
    80004d00:	02f43423          	sd	a5,40(s0)
    80004d04:	03043823          	sd	a6,48(s0)
    80004d08:	03143c23          	sd	a7,56(s0)
    80004d0c:	00050993          	mv	s3,a0
    80004d10:	4a0c1663          	bnez	s8,800051bc <__printf+0x514>
    80004d14:	60098c63          	beqz	s3,8000532c <__printf+0x684>
    80004d18:	0009c503          	lbu	a0,0(s3)
    80004d1c:	00840793          	addi	a5,s0,8
    80004d20:	f6f43c23          	sd	a5,-136(s0)
    80004d24:	00000493          	li	s1,0
    80004d28:	22050063          	beqz	a0,80004f48 <__printf+0x2a0>
    80004d2c:	00002a37          	lui	s4,0x2
    80004d30:	00018ab7          	lui	s5,0x18
    80004d34:	000f4b37          	lui	s6,0xf4
    80004d38:	00989bb7          	lui	s7,0x989
    80004d3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004d40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004d44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004d48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004d4c:	00148c9b          	addiw	s9,s1,1
    80004d50:	02500793          	li	a5,37
    80004d54:	01998933          	add	s2,s3,s9
    80004d58:	38f51263          	bne	a0,a5,800050dc <__printf+0x434>
    80004d5c:	00094783          	lbu	a5,0(s2)
    80004d60:	00078c9b          	sext.w	s9,a5
    80004d64:	1e078263          	beqz	a5,80004f48 <__printf+0x2a0>
    80004d68:	0024849b          	addiw	s1,s1,2
    80004d6c:	07000713          	li	a4,112
    80004d70:	00998933          	add	s2,s3,s1
    80004d74:	38e78a63          	beq	a5,a4,80005108 <__printf+0x460>
    80004d78:	20f76863          	bltu	a4,a5,80004f88 <__printf+0x2e0>
    80004d7c:	42a78863          	beq	a5,a0,800051ac <__printf+0x504>
    80004d80:	06400713          	li	a4,100
    80004d84:	40e79663          	bne	a5,a4,80005190 <__printf+0x4e8>
    80004d88:	f7843783          	ld	a5,-136(s0)
    80004d8c:	0007a603          	lw	a2,0(a5)
    80004d90:	00878793          	addi	a5,a5,8
    80004d94:	f6f43c23          	sd	a5,-136(s0)
    80004d98:	42064a63          	bltz	a2,800051cc <__printf+0x524>
    80004d9c:	00a00713          	li	a4,10
    80004da0:	02e677bb          	remuw	a5,a2,a4
    80004da4:	00002d97          	auipc	s11,0x2
    80004da8:	744d8d93          	addi	s11,s11,1860 # 800074e8 <digits>
    80004dac:	00900593          	li	a1,9
    80004db0:	0006051b          	sext.w	a0,a2
    80004db4:	00000c93          	li	s9,0
    80004db8:	02079793          	slli	a5,a5,0x20
    80004dbc:	0207d793          	srli	a5,a5,0x20
    80004dc0:	00fd87b3          	add	a5,s11,a5
    80004dc4:	0007c783          	lbu	a5,0(a5)
    80004dc8:	02e656bb          	divuw	a3,a2,a4
    80004dcc:	f8f40023          	sb	a5,-128(s0)
    80004dd0:	14c5d863          	bge	a1,a2,80004f20 <__printf+0x278>
    80004dd4:	06300593          	li	a1,99
    80004dd8:	00100c93          	li	s9,1
    80004ddc:	02e6f7bb          	remuw	a5,a3,a4
    80004de0:	02079793          	slli	a5,a5,0x20
    80004de4:	0207d793          	srli	a5,a5,0x20
    80004de8:	00fd87b3          	add	a5,s11,a5
    80004dec:	0007c783          	lbu	a5,0(a5)
    80004df0:	02e6d73b          	divuw	a4,a3,a4
    80004df4:	f8f400a3          	sb	a5,-127(s0)
    80004df8:	12a5f463          	bgeu	a1,a0,80004f20 <__printf+0x278>
    80004dfc:	00a00693          	li	a3,10
    80004e00:	00900593          	li	a1,9
    80004e04:	02d777bb          	remuw	a5,a4,a3
    80004e08:	02079793          	slli	a5,a5,0x20
    80004e0c:	0207d793          	srli	a5,a5,0x20
    80004e10:	00fd87b3          	add	a5,s11,a5
    80004e14:	0007c503          	lbu	a0,0(a5)
    80004e18:	02d757bb          	divuw	a5,a4,a3
    80004e1c:	f8a40123          	sb	a0,-126(s0)
    80004e20:	48e5f263          	bgeu	a1,a4,800052a4 <__printf+0x5fc>
    80004e24:	06300513          	li	a0,99
    80004e28:	02d7f5bb          	remuw	a1,a5,a3
    80004e2c:	02059593          	slli	a1,a1,0x20
    80004e30:	0205d593          	srli	a1,a1,0x20
    80004e34:	00bd85b3          	add	a1,s11,a1
    80004e38:	0005c583          	lbu	a1,0(a1)
    80004e3c:	02d7d7bb          	divuw	a5,a5,a3
    80004e40:	f8b401a3          	sb	a1,-125(s0)
    80004e44:	48e57263          	bgeu	a0,a4,800052c8 <__printf+0x620>
    80004e48:	3e700513          	li	a0,999
    80004e4c:	02d7f5bb          	remuw	a1,a5,a3
    80004e50:	02059593          	slli	a1,a1,0x20
    80004e54:	0205d593          	srli	a1,a1,0x20
    80004e58:	00bd85b3          	add	a1,s11,a1
    80004e5c:	0005c583          	lbu	a1,0(a1)
    80004e60:	02d7d7bb          	divuw	a5,a5,a3
    80004e64:	f8b40223          	sb	a1,-124(s0)
    80004e68:	46e57663          	bgeu	a0,a4,800052d4 <__printf+0x62c>
    80004e6c:	02d7f5bb          	remuw	a1,a5,a3
    80004e70:	02059593          	slli	a1,a1,0x20
    80004e74:	0205d593          	srli	a1,a1,0x20
    80004e78:	00bd85b3          	add	a1,s11,a1
    80004e7c:	0005c583          	lbu	a1,0(a1)
    80004e80:	02d7d7bb          	divuw	a5,a5,a3
    80004e84:	f8b402a3          	sb	a1,-123(s0)
    80004e88:	46ea7863          	bgeu	s4,a4,800052f8 <__printf+0x650>
    80004e8c:	02d7f5bb          	remuw	a1,a5,a3
    80004e90:	02059593          	slli	a1,a1,0x20
    80004e94:	0205d593          	srli	a1,a1,0x20
    80004e98:	00bd85b3          	add	a1,s11,a1
    80004e9c:	0005c583          	lbu	a1,0(a1)
    80004ea0:	02d7d7bb          	divuw	a5,a5,a3
    80004ea4:	f8b40323          	sb	a1,-122(s0)
    80004ea8:	3eeaf863          	bgeu	s5,a4,80005298 <__printf+0x5f0>
    80004eac:	02d7f5bb          	remuw	a1,a5,a3
    80004eb0:	02059593          	slli	a1,a1,0x20
    80004eb4:	0205d593          	srli	a1,a1,0x20
    80004eb8:	00bd85b3          	add	a1,s11,a1
    80004ebc:	0005c583          	lbu	a1,0(a1)
    80004ec0:	02d7d7bb          	divuw	a5,a5,a3
    80004ec4:	f8b403a3          	sb	a1,-121(s0)
    80004ec8:	42eb7e63          	bgeu	s6,a4,80005304 <__printf+0x65c>
    80004ecc:	02d7f5bb          	remuw	a1,a5,a3
    80004ed0:	02059593          	slli	a1,a1,0x20
    80004ed4:	0205d593          	srli	a1,a1,0x20
    80004ed8:	00bd85b3          	add	a1,s11,a1
    80004edc:	0005c583          	lbu	a1,0(a1)
    80004ee0:	02d7d7bb          	divuw	a5,a5,a3
    80004ee4:	f8b40423          	sb	a1,-120(s0)
    80004ee8:	42ebfc63          	bgeu	s7,a4,80005320 <__printf+0x678>
    80004eec:	02079793          	slli	a5,a5,0x20
    80004ef0:	0207d793          	srli	a5,a5,0x20
    80004ef4:	00fd8db3          	add	s11,s11,a5
    80004ef8:	000dc703          	lbu	a4,0(s11)
    80004efc:	00a00793          	li	a5,10
    80004f00:	00900c93          	li	s9,9
    80004f04:	f8e404a3          	sb	a4,-119(s0)
    80004f08:	00065c63          	bgez	a2,80004f20 <__printf+0x278>
    80004f0c:	f9040713          	addi	a4,s0,-112
    80004f10:	00f70733          	add	a4,a4,a5
    80004f14:	02d00693          	li	a3,45
    80004f18:	fed70823          	sb	a3,-16(a4)
    80004f1c:	00078c93          	mv	s9,a5
    80004f20:	f8040793          	addi	a5,s0,-128
    80004f24:	01978cb3          	add	s9,a5,s9
    80004f28:	f7f40d13          	addi	s10,s0,-129
    80004f2c:	000cc503          	lbu	a0,0(s9)
    80004f30:	fffc8c93          	addi	s9,s9,-1
    80004f34:	00000097          	auipc	ra,0x0
    80004f38:	b90080e7          	jalr	-1136(ra) # 80004ac4 <consputc>
    80004f3c:	ffac98e3          	bne	s9,s10,80004f2c <__printf+0x284>
    80004f40:	00094503          	lbu	a0,0(s2)
    80004f44:	e00514e3          	bnez	a0,80004d4c <__printf+0xa4>
    80004f48:	1a0c1663          	bnez	s8,800050f4 <__printf+0x44c>
    80004f4c:	08813083          	ld	ra,136(sp)
    80004f50:	08013403          	ld	s0,128(sp)
    80004f54:	07813483          	ld	s1,120(sp)
    80004f58:	07013903          	ld	s2,112(sp)
    80004f5c:	06813983          	ld	s3,104(sp)
    80004f60:	06013a03          	ld	s4,96(sp)
    80004f64:	05813a83          	ld	s5,88(sp)
    80004f68:	05013b03          	ld	s6,80(sp)
    80004f6c:	04813b83          	ld	s7,72(sp)
    80004f70:	04013c03          	ld	s8,64(sp)
    80004f74:	03813c83          	ld	s9,56(sp)
    80004f78:	03013d03          	ld	s10,48(sp)
    80004f7c:	02813d83          	ld	s11,40(sp)
    80004f80:	0d010113          	addi	sp,sp,208
    80004f84:	00008067          	ret
    80004f88:	07300713          	li	a4,115
    80004f8c:	1ce78a63          	beq	a5,a4,80005160 <__printf+0x4b8>
    80004f90:	07800713          	li	a4,120
    80004f94:	1ee79e63          	bne	a5,a4,80005190 <__printf+0x4e8>
    80004f98:	f7843783          	ld	a5,-136(s0)
    80004f9c:	0007a703          	lw	a4,0(a5)
    80004fa0:	00878793          	addi	a5,a5,8
    80004fa4:	f6f43c23          	sd	a5,-136(s0)
    80004fa8:	28074263          	bltz	a4,8000522c <__printf+0x584>
    80004fac:	00002d97          	auipc	s11,0x2
    80004fb0:	53cd8d93          	addi	s11,s11,1340 # 800074e8 <digits>
    80004fb4:	00f77793          	andi	a5,a4,15
    80004fb8:	00fd87b3          	add	a5,s11,a5
    80004fbc:	0007c683          	lbu	a3,0(a5)
    80004fc0:	00f00613          	li	a2,15
    80004fc4:	0007079b          	sext.w	a5,a4
    80004fc8:	f8d40023          	sb	a3,-128(s0)
    80004fcc:	0047559b          	srliw	a1,a4,0x4
    80004fd0:	0047569b          	srliw	a3,a4,0x4
    80004fd4:	00000c93          	li	s9,0
    80004fd8:	0ee65063          	bge	a2,a4,800050b8 <__printf+0x410>
    80004fdc:	00f6f693          	andi	a3,a3,15
    80004fe0:	00dd86b3          	add	a3,s11,a3
    80004fe4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004fe8:	0087d79b          	srliw	a5,a5,0x8
    80004fec:	00100c93          	li	s9,1
    80004ff0:	f8d400a3          	sb	a3,-127(s0)
    80004ff4:	0cb67263          	bgeu	a2,a1,800050b8 <__printf+0x410>
    80004ff8:	00f7f693          	andi	a3,a5,15
    80004ffc:	00dd86b3          	add	a3,s11,a3
    80005000:	0006c583          	lbu	a1,0(a3)
    80005004:	00f00613          	li	a2,15
    80005008:	0047d69b          	srliw	a3,a5,0x4
    8000500c:	f8b40123          	sb	a1,-126(s0)
    80005010:	0047d593          	srli	a1,a5,0x4
    80005014:	28f67e63          	bgeu	a2,a5,800052b0 <__printf+0x608>
    80005018:	00f6f693          	andi	a3,a3,15
    8000501c:	00dd86b3          	add	a3,s11,a3
    80005020:	0006c503          	lbu	a0,0(a3)
    80005024:	0087d813          	srli	a6,a5,0x8
    80005028:	0087d69b          	srliw	a3,a5,0x8
    8000502c:	f8a401a3          	sb	a0,-125(s0)
    80005030:	28b67663          	bgeu	a2,a1,800052bc <__printf+0x614>
    80005034:	00f6f693          	andi	a3,a3,15
    80005038:	00dd86b3          	add	a3,s11,a3
    8000503c:	0006c583          	lbu	a1,0(a3)
    80005040:	00c7d513          	srli	a0,a5,0xc
    80005044:	00c7d69b          	srliw	a3,a5,0xc
    80005048:	f8b40223          	sb	a1,-124(s0)
    8000504c:	29067a63          	bgeu	a2,a6,800052e0 <__printf+0x638>
    80005050:	00f6f693          	andi	a3,a3,15
    80005054:	00dd86b3          	add	a3,s11,a3
    80005058:	0006c583          	lbu	a1,0(a3)
    8000505c:	0107d813          	srli	a6,a5,0x10
    80005060:	0107d69b          	srliw	a3,a5,0x10
    80005064:	f8b402a3          	sb	a1,-123(s0)
    80005068:	28a67263          	bgeu	a2,a0,800052ec <__printf+0x644>
    8000506c:	00f6f693          	andi	a3,a3,15
    80005070:	00dd86b3          	add	a3,s11,a3
    80005074:	0006c683          	lbu	a3,0(a3)
    80005078:	0147d79b          	srliw	a5,a5,0x14
    8000507c:	f8d40323          	sb	a3,-122(s0)
    80005080:	21067663          	bgeu	a2,a6,8000528c <__printf+0x5e4>
    80005084:	02079793          	slli	a5,a5,0x20
    80005088:	0207d793          	srli	a5,a5,0x20
    8000508c:	00fd8db3          	add	s11,s11,a5
    80005090:	000dc683          	lbu	a3,0(s11)
    80005094:	00800793          	li	a5,8
    80005098:	00700c93          	li	s9,7
    8000509c:	f8d403a3          	sb	a3,-121(s0)
    800050a0:	00075c63          	bgez	a4,800050b8 <__printf+0x410>
    800050a4:	f9040713          	addi	a4,s0,-112
    800050a8:	00f70733          	add	a4,a4,a5
    800050ac:	02d00693          	li	a3,45
    800050b0:	fed70823          	sb	a3,-16(a4)
    800050b4:	00078c93          	mv	s9,a5
    800050b8:	f8040793          	addi	a5,s0,-128
    800050bc:	01978cb3          	add	s9,a5,s9
    800050c0:	f7f40d13          	addi	s10,s0,-129
    800050c4:	000cc503          	lbu	a0,0(s9)
    800050c8:	fffc8c93          	addi	s9,s9,-1
    800050cc:	00000097          	auipc	ra,0x0
    800050d0:	9f8080e7          	jalr	-1544(ra) # 80004ac4 <consputc>
    800050d4:	ff9d18e3          	bne	s10,s9,800050c4 <__printf+0x41c>
    800050d8:	0100006f          	j	800050e8 <__printf+0x440>
    800050dc:	00000097          	auipc	ra,0x0
    800050e0:	9e8080e7          	jalr	-1560(ra) # 80004ac4 <consputc>
    800050e4:	000c8493          	mv	s1,s9
    800050e8:	00094503          	lbu	a0,0(s2)
    800050ec:	c60510e3          	bnez	a0,80004d4c <__printf+0xa4>
    800050f0:	e40c0ee3          	beqz	s8,80004f4c <__printf+0x2a4>
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	7ec50513          	addi	a0,a0,2028 # 800098e0 <pr>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	94c080e7          	jalr	-1716(ra) # 80005a48 <release>
    80005104:	e49ff06f          	j	80004f4c <__printf+0x2a4>
    80005108:	f7843783          	ld	a5,-136(s0)
    8000510c:	03000513          	li	a0,48
    80005110:	01000d13          	li	s10,16
    80005114:	00878713          	addi	a4,a5,8
    80005118:	0007bc83          	ld	s9,0(a5)
    8000511c:	f6e43c23          	sd	a4,-136(s0)
    80005120:	00000097          	auipc	ra,0x0
    80005124:	9a4080e7          	jalr	-1628(ra) # 80004ac4 <consputc>
    80005128:	07800513          	li	a0,120
    8000512c:	00000097          	auipc	ra,0x0
    80005130:	998080e7          	jalr	-1640(ra) # 80004ac4 <consputc>
    80005134:	00002d97          	auipc	s11,0x2
    80005138:	3b4d8d93          	addi	s11,s11,948 # 800074e8 <digits>
    8000513c:	03ccd793          	srli	a5,s9,0x3c
    80005140:	00fd87b3          	add	a5,s11,a5
    80005144:	0007c503          	lbu	a0,0(a5)
    80005148:	fffd0d1b          	addiw	s10,s10,-1
    8000514c:	004c9c93          	slli	s9,s9,0x4
    80005150:	00000097          	auipc	ra,0x0
    80005154:	974080e7          	jalr	-1676(ra) # 80004ac4 <consputc>
    80005158:	fe0d12e3          	bnez	s10,8000513c <__printf+0x494>
    8000515c:	f8dff06f          	j	800050e8 <__printf+0x440>
    80005160:	f7843783          	ld	a5,-136(s0)
    80005164:	0007bc83          	ld	s9,0(a5)
    80005168:	00878793          	addi	a5,a5,8
    8000516c:	f6f43c23          	sd	a5,-136(s0)
    80005170:	000c9a63          	bnez	s9,80005184 <__printf+0x4dc>
    80005174:	1080006f          	j	8000527c <__printf+0x5d4>
    80005178:	001c8c93          	addi	s9,s9,1
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	948080e7          	jalr	-1720(ra) # 80004ac4 <consputc>
    80005184:	000cc503          	lbu	a0,0(s9)
    80005188:	fe0518e3          	bnez	a0,80005178 <__printf+0x4d0>
    8000518c:	f5dff06f          	j	800050e8 <__printf+0x440>
    80005190:	02500513          	li	a0,37
    80005194:	00000097          	auipc	ra,0x0
    80005198:	930080e7          	jalr	-1744(ra) # 80004ac4 <consputc>
    8000519c:	000c8513          	mv	a0,s9
    800051a0:	00000097          	auipc	ra,0x0
    800051a4:	924080e7          	jalr	-1756(ra) # 80004ac4 <consputc>
    800051a8:	f41ff06f          	j	800050e8 <__printf+0x440>
    800051ac:	02500513          	li	a0,37
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	914080e7          	jalr	-1772(ra) # 80004ac4 <consputc>
    800051b8:	f31ff06f          	j	800050e8 <__printf+0x440>
    800051bc:	00030513          	mv	a0,t1
    800051c0:	00000097          	auipc	ra,0x0
    800051c4:	7bc080e7          	jalr	1980(ra) # 8000597c <acquire>
    800051c8:	b4dff06f          	j	80004d14 <__printf+0x6c>
    800051cc:	40c0053b          	negw	a0,a2
    800051d0:	00a00713          	li	a4,10
    800051d4:	02e576bb          	remuw	a3,a0,a4
    800051d8:	00002d97          	auipc	s11,0x2
    800051dc:	310d8d93          	addi	s11,s11,784 # 800074e8 <digits>
    800051e0:	ff700593          	li	a1,-9
    800051e4:	02069693          	slli	a3,a3,0x20
    800051e8:	0206d693          	srli	a3,a3,0x20
    800051ec:	00dd86b3          	add	a3,s11,a3
    800051f0:	0006c683          	lbu	a3,0(a3)
    800051f4:	02e557bb          	divuw	a5,a0,a4
    800051f8:	f8d40023          	sb	a3,-128(s0)
    800051fc:	10b65e63          	bge	a2,a1,80005318 <__printf+0x670>
    80005200:	06300593          	li	a1,99
    80005204:	02e7f6bb          	remuw	a3,a5,a4
    80005208:	02069693          	slli	a3,a3,0x20
    8000520c:	0206d693          	srli	a3,a3,0x20
    80005210:	00dd86b3          	add	a3,s11,a3
    80005214:	0006c683          	lbu	a3,0(a3)
    80005218:	02e7d73b          	divuw	a4,a5,a4
    8000521c:	00200793          	li	a5,2
    80005220:	f8d400a3          	sb	a3,-127(s0)
    80005224:	bca5ece3          	bltu	a1,a0,80004dfc <__printf+0x154>
    80005228:	ce5ff06f          	j	80004f0c <__printf+0x264>
    8000522c:	40e007bb          	negw	a5,a4
    80005230:	00002d97          	auipc	s11,0x2
    80005234:	2b8d8d93          	addi	s11,s11,696 # 800074e8 <digits>
    80005238:	00f7f693          	andi	a3,a5,15
    8000523c:	00dd86b3          	add	a3,s11,a3
    80005240:	0006c583          	lbu	a1,0(a3)
    80005244:	ff100613          	li	a2,-15
    80005248:	0047d69b          	srliw	a3,a5,0x4
    8000524c:	f8b40023          	sb	a1,-128(s0)
    80005250:	0047d59b          	srliw	a1,a5,0x4
    80005254:	0ac75e63          	bge	a4,a2,80005310 <__printf+0x668>
    80005258:	00f6f693          	andi	a3,a3,15
    8000525c:	00dd86b3          	add	a3,s11,a3
    80005260:	0006c603          	lbu	a2,0(a3)
    80005264:	00f00693          	li	a3,15
    80005268:	0087d79b          	srliw	a5,a5,0x8
    8000526c:	f8c400a3          	sb	a2,-127(s0)
    80005270:	d8b6e4e3          	bltu	a3,a1,80004ff8 <__printf+0x350>
    80005274:	00200793          	li	a5,2
    80005278:	e2dff06f          	j	800050a4 <__printf+0x3fc>
    8000527c:	00002c97          	auipc	s9,0x2
    80005280:	24cc8c93          	addi	s9,s9,588 # 800074c8 <CONSOLE_STATUS+0x4b8>
    80005284:	02800513          	li	a0,40
    80005288:	ef1ff06f          	j	80005178 <__printf+0x4d0>
    8000528c:	00700793          	li	a5,7
    80005290:	00600c93          	li	s9,6
    80005294:	e0dff06f          	j	800050a0 <__printf+0x3f8>
    80005298:	00700793          	li	a5,7
    8000529c:	00600c93          	li	s9,6
    800052a0:	c69ff06f          	j	80004f08 <__printf+0x260>
    800052a4:	00300793          	li	a5,3
    800052a8:	00200c93          	li	s9,2
    800052ac:	c5dff06f          	j	80004f08 <__printf+0x260>
    800052b0:	00300793          	li	a5,3
    800052b4:	00200c93          	li	s9,2
    800052b8:	de9ff06f          	j	800050a0 <__printf+0x3f8>
    800052bc:	00400793          	li	a5,4
    800052c0:	00300c93          	li	s9,3
    800052c4:	dddff06f          	j	800050a0 <__printf+0x3f8>
    800052c8:	00400793          	li	a5,4
    800052cc:	00300c93          	li	s9,3
    800052d0:	c39ff06f          	j	80004f08 <__printf+0x260>
    800052d4:	00500793          	li	a5,5
    800052d8:	00400c93          	li	s9,4
    800052dc:	c2dff06f          	j	80004f08 <__printf+0x260>
    800052e0:	00500793          	li	a5,5
    800052e4:	00400c93          	li	s9,4
    800052e8:	db9ff06f          	j	800050a0 <__printf+0x3f8>
    800052ec:	00600793          	li	a5,6
    800052f0:	00500c93          	li	s9,5
    800052f4:	dadff06f          	j	800050a0 <__printf+0x3f8>
    800052f8:	00600793          	li	a5,6
    800052fc:	00500c93          	li	s9,5
    80005300:	c09ff06f          	j	80004f08 <__printf+0x260>
    80005304:	00800793          	li	a5,8
    80005308:	00700c93          	li	s9,7
    8000530c:	bfdff06f          	j	80004f08 <__printf+0x260>
    80005310:	00100793          	li	a5,1
    80005314:	d91ff06f          	j	800050a4 <__printf+0x3fc>
    80005318:	00100793          	li	a5,1
    8000531c:	bf1ff06f          	j	80004f0c <__printf+0x264>
    80005320:	00900793          	li	a5,9
    80005324:	00800c93          	li	s9,8
    80005328:	be1ff06f          	j	80004f08 <__printf+0x260>
    8000532c:	00002517          	auipc	a0,0x2
    80005330:	1a450513          	addi	a0,a0,420 # 800074d0 <CONSOLE_STATUS+0x4c0>
    80005334:	00000097          	auipc	ra,0x0
    80005338:	918080e7          	jalr	-1768(ra) # 80004c4c <panic>

000000008000533c <printfinit>:
    8000533c:	fe010113          	addi	sp,sp,-32
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	00113c23          	sd	ra,24(sp)
    8000534c:	02010413          	addi	s0,sp,32
    80005350:	00004497          	auipc	s1,0x4
    80005354:	59048493          	addi	s1,s1,1424 # 800098e0 <pr>
    80005358:	00048513          	mv	a0,s1
    8000535c:	00002597          	auipc	a1,0x2
    80005360:	18458593          	addi	a1,a1,388 # 800074e0 <CONSOLE_STATUS+0x4d0>
    80005364:	00000097          	auipc	ra,0x0
    80005368:	5f4080e7          	jalr	1524(ra) # 80005958 <initlock>
    8000536c:	01813083          	ld	ra,24(sp)
    80005370:	01013403          	ld	s0,16(sp)
    80005374:	0004ac23          	sw	zero,24(s1)
    80005378:	00813483          	ld	s1,8(sp)
    8000537c:	02010113          	addi	sp,sp,32
    80005380:	00008067          	ret

0000000080005384 <uartinit>:
    80005384:	ff010113          	addi	sp,sp,-16
    80005388:	00813423          	sd	s0,8(sp)
    8000538c:	01010413          	addi	s0,sp,16
    80005390:	100007b7          	lui	a5,0x10000
    80005394:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005398:	f8000713          	li	a4,-128
    8000539c:	00e781a3          	sb	a4,3(a5)
    800053a0:	00300713          	li	a4,3
    800053a4:	00e78023          	sb	a4,0(a5)
    800053a8:	000780a3          	sb	zero,1(a5)
    800053ac:	00e781a3          	sb	a4,3(a5)
    800053b0:	00700693          	li	a3,7
    800053b4:	00d78123          	sb	a3,2(a5)
    800053b8:	00e780a3          	sb	a4,1(a5)
    800053bc:	00813403          	ld	s0,8(sp)
    800053c0:	01010113          	addi	sp,sp,16
    800053c4:	00008067          	ret

00000000800053c8 <uartputc>:
    800053c8:	00003797          	auipc	a5,0x3
    800053cc:	2807a783          	lw	a5,640(a5) # 80008648 <panicked>
    800053d0:	00078463          	beqz	a5,800053d8 <uartputc+0x10>
    800053d4:	0000006f          	j	800053d4 <uartputc+0xc>
    800053d8:	fd010113          	addi	sp,sp,-48
    800053dc:	02813023          	sd	s0,32(sp)
    800053e0:	00913c23          	sd	s1,24(sp)
    800053e4:	01213823          	sd	s2,16(sp)
    800053e8:	01313423          	sd	s3,8(sp)
    800053ec:	02113423          	sd	ra,40(sp)
    800053f0:	03010413          	addi	s0,sp,48
    800053f4:	00003917          	auipc	s2,0x3
    800053f8:	25c90913          	addi	s2,s2,604 # 80008650 <uart_tx_r>
    800053fc:	00093783          	ld	a5,0(s2)
    80005400:	00003497          	auipc	s1,0x3
    80005404:	25848493          	addi	s1,s1,600 # 80008658 <uart_tx_w>
    80005408:	0004b703          	ld	a4,0(s1)
    8000540c:	02078693          	addi	a3,a5,32
    80005410:	00050993          	mv	s3,a0
    80005414:	02e69c63          	bne	a3,a4,8000544c <uartputc+0x84>
    80005418:	00001097          	auipc	ra,0x1
    8000541c:	834080e7          	jalr	-1996(ra) # 80005c4c <push_on>
    80005420:	00093783          	ld	a5,0(s2)
    80005424:	0004b703          	ld	a4,0(s1)
    80005428:	02078793          	addi	a5,a5,32
    8000542c:	00e79463          	bne	a5,a4,80005434 <uartputc+0x6c>
    80005430:	0000006f          	j	80005430 <uartputc+0x68>
    80005434:	00001097          	auipc	ra,0x1
    80005438:	88c080e7          	jalr	-1908(ra) # 80005cc0 <pop_on>
    8000543c:	00093783          	ld	a5,0(s2)
    80005440:	0004b703          	ld	a4,0(s1)
    80005444:	02078693          	addi	a3,a5,32
    80005448:	fce688e3          	beq	a3,a4,80005418 <uartputc+0x50>
    8000544c:	01f77693          	andi	a3,a4,31
    80005450:	00004597          	auipc	a1,0x4
    80005454:	4b058593          	addi	a1,a1,1200 # 80009900 <uart_tx_buf>
    80005458:	00d586b3          	add	a3,a1,a3
    8000545c:	00170713          	addi	a4,a4,1
    80005460:	01368023          	sb	s3,0(a3)
    80005464:	00e4b023          	sd	a4,0(s1)
    80005468:	10000637          	lui	a2,0x10000
    8000546c:	02f71063          	bne	a4,a5,8000548c <uartputc+0xc4>
    80005470:	0340006f          	j	800054a4 <uartputc+0xdc>
    80005474:	00074703          	lbu	a4,0(a4)
    80005478:	00f93023          	sd	a5,0(s2)
    8000547c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005480:	00093783          	ld	a5,0(s2)
    80005484:	0004b703          	ld	a4,0(s1)
    80005488:	00f70e63          	beq	a4,a5,800054a4 <uartputc+0xdc>
    8000548c:	00564683          	lbu	a3,5(a2)
    80005490:	01f7f713          	andi	a4,a5,31
    80005494:	00e58733          	add	a4,a1,a4
    80005498:	0206f693          	andi	a3,a3,32
    8000549c:	00178793          	addi	a5,a5,1
    800054a0:	fc069ae3          	bnez	a3,80005474 <uartputc+0xac>
    800054a4:	02813083          	ld	ra,40(sp)
    800054a8:	02013403          	ld	s0,32(sp)
    800054ac:	01813483          	ld	s1,24(sp)
    800054b0:	01013903          	ld	s2,16(sp)
    800054b4:	00813983          	ld	s3,8(sp)
    800054b8:	03010113          	addi	sp,sp,48
    800054bc:	00008067          	ret

00000000800054c0 <uartputc_sync>:
    800054c0:	ff010113          	addi	sp,sp,-16
    800054c4:	00813423          	sd	s0,8(sp)
    800054c8:	01010413          	addi	s0,sp,16
    800054cc:	00003717          	auipc	a4,0x3
    800054d0:	17c72703          	lw	a4,380(a4) # 80008648 <panicked>
    800054d4:	02071663          	bnez	a4,80005500 <uartputc_sync+0x40>
    800054d8:	00050793          	mv	a5,a0
    800054dc:	100006b7          	lui	a3,0x10000
    800054e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800054e4:	02077713          	andi	a4,a4,32
    800054e8:	fe070ce3          	beqz	a4,800054e0 <uartputc_sync+0x20>
    800054ec:	0ff7f793          	andi	a5,a5,255
    800054f0:	00f68023          	sb	a5,0(a3)
    800054f4:	00813403          	ld	s0,8(sp)
    800054f8:	01010113          	addi	sp,sp,16
    800054fc:	00008067          	ret
    80005500:	0000006f          	j	80005500 <uartputc_sync+0x40>

0000000080005504 <uartstart>:
    80005504:	ff010113          	addi	sp,sp,-16
    80005508:	00813423          	sd	s0,8(sp)
    8000550c:	01010413          	addi	s0,sp,16
    80005510:	00003617          	auipc	a2,0x3
    80005514:	14060613          	addi	a2,a2,320 # 80008650 <uart_tx_r>
    80005518:	00003517          	auipc	a0,0x3
    8000551c:	14050513          	addi	a0,a0,320 # 80008658 <uart_tx_w>
    80005520:	00063783          	ld	a5,0(a2)
    80005524:	00053703          	ld	a4,0(a0)
    80005528:	04f70263          	beq	a4,a5,8000556c <uartstart+0x68>
    8000552c:	100005b7          	lui	a1,0x10000
    80005530:	00004817          	auipc	a6,0x4
    80005534:	3d080813          	addi	a6,a6,976 # 80009900 <uart_tx_buf>
    80005538:	01c0006f          	j	80005554 <uartstart+0x50>
    8000553c:	0006c703          	lbu	a4,0(a3)
    80005540:	00f63023          	sd	a5,0(a2)
    80005544:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005548:	00063783          	ld	a5,0(a2)
    8000554c:	00053703          	ld	a4,0(a0)
    80005550:	00f70e63          	beq	a4,a5,8000556c <uartstart+0x68>
    80005554:	01f7f713          	andi	a4,a5,31
    80005558:	00e806b3          	add	a3,a6,a4
    8000555c:	0055c703          	lbu	a4,5(a1)
    80005560:	00178793          	addi	a5,a5,1
    80005564:	02077713          	andi	a4,a4,32
    80005568:	fc071ae3          	bnez	a4,8000553c <uartstart+0x38>
    8000556c:	00813403          	ld	s0,8(sp)
    80005570:	01010113          	addi	sp,sp,16
    80005574:	00008067          	ret

0000000080005578 <uartgetc>:
    80005578:	ff010113          	addi	sp,sp,-16
    8000557c:	00813423          	sd	s0,8(sp)
    80005580:	01010413          	addi	s0,sp,16
    80005584:	10000737          	lui	a4,0x10000
    80005588:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000558c:	0017f793          	andi	a5,a5,1
    80005590:	00078c63          	beqz	a5,800055a8 <uartgetc+0x30>
    80005594:	00074503          	lbu	a0,0(a4)
    80005598:	0ff57513          	andi	a0,a0,255
    8000559c:	00813403          	ld	s0,8(sp)
    800055a0:	01010113          	addi	sp,sp,16
    800055a4:	00008067          	ret
    800055a8:	fff00513          	li	a0,-1
    800055ac:	ff1ff06f          	j	8000559c <uartgetc+0x24>

00000000800055b0 <uartintr>:
    800055b0:	100007b7          	lui	a5,0x10000
    800055b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800055b8:	0017f793          	andi	a5,a5,1
    800055bc:	0a078463          	beqz	a5,80005664 <uartintr+0xb4>
    800055c0:	fe010113          	addi	sp,sp,-32
    800055c4:	00813823          	sd	s0,16(sp)
    800055c8:	00913423          	sd	s1,8(sp)
    800055cc:	00113c23          	sd	ra,24(sp)
    800055d0:	02010413          	addi	s0,sp,32
    800055d4:	100004b7          	lui	s1,0x10000
    800055d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800055dc:	0ff57513          	andi	a0,a0,255
    800055e0:	fffff097          	auipc	ra,0xfffff
    800055e4:	534080e7          	jalr	1332(ra) # 80004b14 <consoleintr>
    800055e8:	0054c783          	lbu	a5,5(s1)
    800055ec:	0017f793          	andi	a5,a5,1
    800055f0:	fe0794e3          	bnez	a5,800055d8 <uartintr+0x28>
    800055f4:	00003617          	auipc	a2,0x3
    800055f8:	05c60613          	addi	a2,a2,92 # 80008650 <uart_tx_r>
    800055fc:	00003517          	auipc	a0,0x3
    80005600:	05c50513          	addi	a0,a0,92 # 80008658 <uart_tx_w>
    80005604:	00063783          	ld	a5,0(a2)
    80005608:	00053703          	ld	a4,0(a0)
    8000560c:	04f70263          	beq	a4,a5,80005650 <uartintr+0xa0>
    80005610:	100005b7          	lui	a1,0x10000
    80005614:	00004817          	auipc	a6,0x4
    80005618:	2ec80813          	addi	a6,a6,748 # 80009900 <uart_tx_buf>
    8000561c:	01c0006f          	j	80005638 <uartintr+0x88>
    80005620:	0006c703          	lbu	a4,0(a3)
    80005624:	00f63023          	sd	a5,0(a2)
    80005628:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000562c:	00063783          	ld	a5,0(a2)
    80005630:	00053703          	ld	a4,0(a0)
    80005634:	00f70e63          	beq	a4,a5,80005650 <uartintr+0xa0>
    80005638:	01f7f713          	andi	a4,a5,31
    8000563c:	00e806b3          	add	a3,a6,a4
    80005640:	0055c703          	lbu	a4,5(a1)
    80005644:	00178793          	addi	a5,a5,1
    80005648:	02077713          	andi	a4,a4,32
    8000564c:	fc071ae3          	bnez	a4,80005620 <uartintr+0x70>
    80005650:	01813083          	ld	ra,24(sp)
    80005654:	01013403          	ld	s0,16(sp)
    80005658:	00813483          	ld	s1,8(sp)
    8000565c:	02010113          	addi	sp,sp,32
    80005660:	00008067          	ret
    80005664:	00003617          	auipc	a2,0x3
    80005668:	fec60613          	addi	a2,a2,-20 # 80008650 <uart_tx_r>
    8000566c:	00003517          	auipc	a0,0x3
    80005670:	fec50513          	addi	a0,a0,-20 # 80008658 <uart_tx_w>
    80005674:	00063783          	ld	a5,0(a2)
    80005678:	00053703          	ld	a4,0(a0)
    8000567c:	04f70263          	beq	a4,a5,800056c0 <uartintr+0x110>
    80005680:	100005b7          	lui	a1,0x10000
    80005684:	00004817          	auipc	a6,0x4
    80005688:	27c80813          	addi	a6,a6,636 # 80009900 <uart_tx_buf>
    8000568c:	01c0006f          	j	800056a8 <uartintr+0xf8>
    80005690:	0006c703          	lbu	a4,0(a3)
    80005694:	00f63023          	sd	a5,0(a2)
    80005698:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000569c:	00063783          	ld	a5,0(a2)
    800056a0:	00053703          	ld	a4,0(a0)
    800056a4:	02f70063          	beq	a4,a5,800056c4 <uartintr+0x114>
    800056a8:	01f7f713          	andi	a4,a5,31
    800056ac:	00e806b3          	add	a3,a6,a4
    800056b0:	0055c703          	lbu	a4,5(a1)
    800056b4:	00178793          	addi	a5,a5,1
    800056b8:	02077713          	andi	a4,a4,32
    800056bc:	fc071ae3          	bnez	a4,80005690 <uartintr+0xe0>
    800056c0:	00008067          	ret
    800056c4:	00008067          	ret

00000000800056c8 <kinit>:
    800056c8:	fc010113          	addi	sp,sp,-64
    800056cc:	02913423          	sd	s1,40(sp)
    800056d0:	fffff7b7          	lui	a5,0xfffff
    800056d4:	00005497          	auipc	s1,0x5
    800056d8:	24b48493          	addi	s1,s1,587 # 8000a91f <end+0xfff>
    800056dc:	02813823          	sd	s0,48(sp)
    800056e0:	01313c23          	sd	s3,24(sp)
    800056e4:	00f4f4b3          	and	s1,s1,a5
    800056e8:	02113c23          	sd	ra,56(sp)
    800056ec:	03213023          	sd	s2,32(sp)
    800056f0:	01413823          	sd	s4,16(sp)
    800056f4:	01513423          	sd	s5,8(sp)
    800056f8:	04010413          	addi	s0,sp,64
    800056fc:	000017b7          	lui	a5,0x1
    80005700:	01100993          	li	s3,17
    80005704:	00f487b3          	add	a5,s1,a5
    80005708:	01b99993          	slli	s3,s3,0x1b
    8000570c:	06f9e063          	bltu	s3,a5,8000576c <kinit+0xa4>
    80005710:	00004a97          	auipc	s5,0x4
    80005714:	210a8a93          	addi	s5,s5,528 # 80009920 <end>
    80005718:	0754ec63          	bltu	s1,s5,80005790 <kinit+0xc8>
    8000571c:	0734fa63          	bgeu	s1,s3,80005790 <kinit+0xc8>
    80005720:	00088a37          	lui	s4,0x88
    80005724:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005728:	00003917          	auipc	s2,0x3
    8000572c:	f3890913          	addi	s2,s2,-200 # 80008660 <kmem>
    80005730:	00ca1a13          	slli	s4,s4,0xc
    80005734:	0140006f          	j	80005748 <kinit+0x80>
    80005738:	000017b7          	lui	a5,0x1
    8000573c:	00f484b3          	add	s1,s1,a5
    80005740:	0554e863          	bltu	s1,s5,80005790 <kinit+0xc8>
    80005744:	0534f663          	bgeu	s1,s3,80005790 <kinit+0xc8>
    80005748:	00001637          	lui	a2,0x1
    8000574c:	00100593          	li	a1,1
    80005750:	00048513          	mv	a0,s1
    80005754:	00000097          	auipc	ra,0x0
    80005758:	5e4080e7          	jalr	1508(ra) # 80005d38 <__memset>
    8000575c:	00093783          	ld	a5,0(s2)
    80005760:	00f4b023          	sd	a5,0(s1)
    80005764:	00993023          	sd	s1,0(s2)
    80005768:	fd4498e3          	bne	s1,s4,80005738 <kinit+0x70>
    8000576c:	03813083          	ld	ra,56(sp)
    80005770:	03013403          	ld	s0,48(sp)
    80005774:	02813483          	ld	s1,40(sp)
    80005778:	02013903          	ld	s2,32(sp)
    8000577c:	01813983          	ld	s3,24(sp)
    80005780:	01013a03          	ld	s4,16(sp)
    80005784:	00813a83          	ld	s5,8(sp)
    80005788:	04010113          	addi	sp,sp,64
    8000578c:	00008067          	ret
    80005790:	00002517          	auipc	a0,0x2
    80005794:	d7050513          	addi	a0,a0,-656 # 80007500 <digits+0x18>
    80005798:	fffff097          	auipc	ra,0xfffff
    8000579c:	4b4080e7          	jalr	1204(ra) # 80004c4c <panic>

00000000800057a0 <freerange>:
    800057a0:	fc010113          	addi	sp,sp,-64
    800057a4:	000017b7          	lui	a5,0x1
    800057a8:	02913423          	sd	s1,40(sp)
    800057ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800057b0:	009504b3          	add	s1,a0,s1
    800057b4:	fffff537          	lui	a0,0xfffff
    800057b8:	02813823          	sd	s0,48(sp)
    800057bc:	02113c23          	sd	ra,56(sp)
    800057c0:	03213023          	sd	s2,32(sp)
    800057c4:	01313c23          	sd	s3,24(sp)
    800057c8:	01413823          	sd	s4,16(sp)
    800057cc:	01513423          	sd	s5,8(sp)
    800057d0:	01613023          	sd	s6,0(sp)
    800057d4:	04010413          	addi	s0,sp,64
    800057d8:	00a4f4b3          	and	s1,s1,a0
    800057dc:	00f487b3          	add	a5,s1,a5
    800057e0:	06f5e463          	bltu	a1,a5,80005848 <freerange+0xa8>
    800057e4:	00004a97          	auipc	s5,0x4
    800057e8:	13ca8a93          	addi	s5,s5,316 # 80009920 <end>
    800057ec:	0954e263          	bltu	s1,s5,80005870 <freerange+0xd0>
    800057f0:	01100993          	li	s3,17
    800057f4:	01b99993          	slli	s3,s3,0x1b
    800057f8:	0734fc63          	bgeu	s1,s3,80005870 <freerange+0xd0>
    800057fc:	00058a13          	mv	s4,a1
    80005800:	00003917          	auipc	s2,0x3
    80005804:	e6090913          	addi	s2,s2,-416 # 80008660 <kmem>
    80005808:	00002b37          	lui	s6,0x2
    8000580c:	0140006f          	j	80005820 <freerange+0x80>
    80005810:	000017b7          	lui	a5,0x1
    80005814:	00f484b3          	add	s1,s1,a5
    80005818:	0554ec63          	bltu	s1,s5,80005870 <freerange+0xd0>
    8000581c:	0534fa63          	bgeu	s1,s3,80005870 <freerange+0xd0>
    80005820:	00001637          	lui	a2,0x1
    80005824:	00100593          	li	a1,1
    80005828:	00048513          	mv	a0,s1
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	50c080e7          	jalr	1292(ra) # 80005d38 <__memset>
    80005834:	00093703          	ld	a4,0(s2)
    80005838:	016487b3          	add	a5,s1,s6
    8000583c:	00e4b023          	sd	a4,0(s1)
    80005840:	00993023          	sd	s1,0(s2)
    80005844:	fcfa76e3          	bgeu	s4,a5,80005810 <freerange+0x70>
    80005848:	03813083          	ld	ra,56(sp)
    8000584c:	03013403          	ld	s0,48(sp)
    80005850:	02813483          	ld	s1,40(sp)
    80005854:	02013903          	ld	s2,32(sp)
    80005858:	01813983          	ld	s3,24(sp)
    8000585c:	01013a03          	ld	s4,16(sp)
    80005860:	00813a83          	ld	s5,8(sp)
    80005864:	00013b03          	ld	s6,0(sp)
    80005868:	04010113          	addi	sp,sp,64
    8000586c:	00008067          	ret
    80005870:	00002517          	auipc	a0,0x2
    80005874:	c9050513          	addi	a0,a0,-880 # 80007500 <digits+0x18>
    80005878:	fffff097          	auipc	ra,0xfffff
    8000587c:	3d4080e7          	jalr	980(ra) # 80004c4c <panic>

0000000080005880 <kfree>:
    80005880:	fe010113          	addi	sp,sp,-32
    80005884:	00813823          	sd	s0,16(sp)
    80005888:	00113c23          	sd	ra,24(sp)
    8000588c:	00913423          	sd	s1,8(sp)
    80005890:	02010413          	addi	s0,sp,32
    80005894:	03451793          	slli	a5,a0,0x34
    80005898:	04079c63          	bnez	a5,800058f0 <kfree+0x70>
    8000589c:	00004797          	auipc	a5,0x4
    800058a0:	08478793          	addi	a5,a5,132 # 80009920 <end>
    800058a4:	00050493          	mv	s1,a0
    800058a8:	04f56463          	bltu	a0,a5,800058f0 <kfree+0x70>
    800058ac:	01100793          	li	a5,17
    800058b0:	01b79793          	slli	a5,a5,0x1b
    800058b4:	02f57e63          	bgeu	a0,a5,800058f0 <kfree+0x70>
    800058b8:	00001637          	lui	a2,0x1
    800058bc:	00100593          	li	a1,1
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	478080e7          	jalr	1144(ra) # 80005d38 <__memset>
    800058c8:	00003797          	auipc	a5,0x3
    800058cc:	d9878793          	addi	a5,a5,-616 # 80008660 <kmem>
    800058d0:	0007b703          	ld	a4,0(a5)
    800058d4:	01813083          	ld	ra,24(sp)
    800058d8:	01013403          	ld	s0,16(sp)
    800058dc:	00e4b023          	sd	a4,0(s1)
    800058e0:	0097b023          	sd	s1,0(a5)
    800058e4:	00813483          	ld	s1,8(sp)
    800058e8:	02010113          	addi	sp,sp,32
    800058ec:	00008067          	ret
    800058f0:	00002517          	auipc	a0,0x2
    800058f4:	c1050513          	addi	a0,a0,-1008 # 80007500 <digits+0x18>
    800058f8:	fffff097          	auipc	ra,0xfffff
    800058fc:	354080e7          	jalr	852(ra) # 80004c4c <panic>

0000000080005900 <kalloc>:
    80005900:	fe010113          	addi	sp,sp,-32
    80005904:	00813823          	sd	s0,16(sp)
    80005908:	00913423          	sd	s1,8(sp)
    8000590c:	00113c23          	sd	ra,24(sp)
    80005910:	02010413          	addi	s0,sp,32
    80005914:	00003797          	auipc	a5,0x3
    80005918:	d4c78793          	addi	a5,a5,-692 # 80008660 <kmem>
    8000591c:	0007b483          	ld	s1,0(a5)
    80005920:	02048063          	beqz	s1,80005940 <kalloc+0x40>
    80005924:	0004b703          	ld	a4,0(s1)
    80005928:	00001637          	lui	a2,0x1
    8000592c:	00500593          	li	a1,5
    80005930:	00048513          	mv	a0,s1
    80005934:	00e7b023          	sd	a4,0(a5)
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	400080e7          	jalr	1024(ra) # 80005d38 <__memset>
    80005940:	01813083          	ld	ra,24(sp)
    80005944:	01013403          	ld	s0,16(sp)
    80005948:	00048513          	mv	a0,s1
    8000594c:	00813483          	ld	s1,8(sp)
    80005950:	02010113          	addi	sp,sp,32
    80005954:	00008067          	ret

0000000080005958 <initlock>:
    80005958:	ff010113          	addi	sp,sp,-16
    8000595c:	00813423          	sd	s0,8(sp)
    80005960:	01010413          	addi	s0,sp,16
    80005964:	00813403          	ld	s0,8(sp)
    80005968:	00b53423          	sd	a1,8(a0)
    8000596c:	00052023          	sw	zero,0(a0)
    80005970:	00053823          	sd	zero,16(a0)
    80005974:	01010113          	addi	sp,sp,16
    80005978:	00008067          	ret

000000008000597c <acquire>:
    8000597c:	fe010113          	addi	sp,sp,-32
    80005980:	00813823          	sd	s0,16(sp)
    80005984:	00913423          	sd	s1,8(sp)
    80005988:	00113c23          	sd	ra,24(sp)
    8000598c:	01213023          	sd	s2,0(sp)
    80005990:	02010413          	addi	s0,sp,32
    80005994:	00050493          	mv	s1,a0
    80005998:	10002973          	csrr	s2,sstatus
    8000599c:	100027f3          	csrr	a5,sstatus
    800059a0:	ffd7f793          	andi	a5,a5,-3
    800059a4:	10079073          	csrw	sstatus,a5
    800059a8:	fffff097          	auipc	ra,0xfffff
    800059ac:	8e0080e7          	jalr	-1824(ra) # 80004288 <mycpu>
    800059b0:	07852783          	lw	a5,120(a0)
    800059b4:	06078e63          	beqz	a5,80005a30 <acquire+0xb4>
    800059b8:	fffff097          	auipc	ra,0xfffff
    800059bc:	8d0080e7          	jalr	-1840(ra) # 80004288 <mycpu>
    800059c0:	07852783          	lw	a5,120(a0)
    800059c4:	0004a703          	lw	a4,0(s1)
    800059c8:	0017879b          	addiw	a5,a5,1
    800059cc:	06f52c23          	sw	a5,120(a0)
    800059d0:	04071063          	bnez	a4,80005a10 <acquire+0x94>
    800059d4:	00100713          	li	a4,1
    800059d8:	00070793          	mv	a5,a4
    800059dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800059e0:	0007879b          	sext.w	a5,a5
    800059e4:	fe079ae3          	bnez	a5,800059d8 <acquire+0x5c>
    800059e8:	0ff0000f          	fence
    800059ec:	fffff097          	auipc	ra,0xfffff
    800059f0:	89c080e7          	jalr	-1892(ra) # 80004288 <mycpu>
    800059f4:	01813083          	ld	ra,24(sp)
    800059f8:	01013403          	ld	s0,16(sp)
    800059fc:	00a4b823          	sd	a0,16(s1)
    80005a00:	00013903          	ld	s2,0(sp)
    80005a04:	00813483          	ld	s1,8(sp)
    80005a08:	02010113          	addi	sp,sp,32
    80005a0c:	00008067          	ret
    80005a10:	0104b903          	ld	s2,16(s1)
    80005a14:	fffff097          	auipc	ra,0xfffff
    80005a18:	874080e7          	jalr	-1932(ra) # 80004288 <mycpu>
    80005a1c:	faa91ce3          	bne	s2,a0,800059d4 <acquire+0x58>
    80005a20:	00002517          	auipc	a0,0x2
    80005a24:	ae850513          	addi	a0,a0,-1304 # 80007508 <digits+0x20>
    80005a28:	fffff097          	auipc	ra,0xfffff
    80005a2c:	224080e7          	jalr	548(ra) # 80004c4c <panic>
    80005a30:	00195913          	srli	s2,s2,0x1
    80005a34:	fffff097          	auipc	ra,0xfffff
    80005a38:	854080e7          	jalr	-1964(ra) # 80004288 <mycpu>
    80005a3c:	00197913          	andi	s2,s2,1
    80005a40:	07252e23          	sw	s2,124(a0)
    80005a44:	f75ff06f          	j	800059b8 <acquire+0x3c>

0000000080005a48 <release>:
    80005a48:	fe010113          	addi	sp,sp,-32
    80005a4c:	00813823          	sd	s0,16(sp)
    80005a50:	00113c23          	sd	ra,24(sp)
    80005a54:	00913423          	sd	s1,8(sp)
    80005a58:	01213023          	sd	s2,0(sp)
    80005a5c:	02010413          	addi	s0,sp,32
    80005a60:	00052783          	lw	a5,0(a0)
    80005a64:	00079a63          	bnez	a5,80005a78 <release+0x30>
    80005a68:	00002517          	auipc	a0,0x2
    80005a6c:	aa850513          	addi	a0,a0,-1368 # 80007510 <digits+0x28>
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	1dc080e7          	jalr	476(ra) # 80004c4c <panic>
    80005a78:	01053903          	ld	s2,16(a0)
    80005a7c:	00050493          	mv	s1,a0
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	808080e7          	jalr	-2040(ra) # 80004288 <mycpu>
    80005a88:	fea910e3          	bne	s2,a0,80005a68 <release+0x20>
    80005a8c:	0004b823          	sd	zero,16(s1)
    80005a90:	0ff0000f          	fence
    80005a94:	0f50000f          	fence	iorw,ow
    80005a98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80005a9c:	ffffe097          	auipc	ra,0xffffe
    80005aa0:	7ec080e7          	jalr	2028(ra) # 80004288 <mycpu>
    80005aa4:	100027f3          	csrr	a5,sstatus
    80005aa8:	0027f793          	andi	a5,a5,2
    80005aac:	04079a63          	bnez	a5,80005b00 <release+0xb8>
    80005ab0:	07852783          	lw	a5,120(a0)
    80005ab4:	02f05e63          	blez	a5,80005af0 <release+0xa8>
    80005ab8:	fff7871b          	addiw	a4,a5,-1
    80005abc:	06e52c23          	sw	a4,120(a0)
    80005ac0:	00071c63          	bnez	a4,80005ad8 <release+0x90>
    80005ac4:	07c52783          	lw	a5,124(a0)
    80005ac8:	00078863          	beqz	a5,80005ad8 <release+0x90>
    80005acc:	100027f3          	csrr	a5,sstatus
    80005ad0:	0027e793          	ori	a5,a5,2
    80005ad4:	10079073          	csrw	sstatus,a5
    80005ad8:	01813083          	ld	ra,24(sp)
    80005adc:	01013403          	ld	s0,16(sp)
    80005ae0:	00813483          	ld	s1,8(sp)
    80005ae4:	00013903          	ld	s2,0(sp)
    80005ae8:	02010113          	addi	sp,sp,32
    80005aec:	00008067          	ret
    80005af0:	00002517          	auipc	a0,0x2
    80005af4:	a4050513          	addi	a0,a0,-1472 # 80007530 <digits+0x48>
    80005af8:	fffff097          	auipc	ra,0xfffff
    80005afc:	154080e7          	jalr	340(ra) # 80004c4c <panic>
    80005b00:	00002517          	auipc	a0,0x2
    80005b04:	a1850513          	addi	a0,a0,-1512 # 80007518 <digits+0x30>
    80005b08:	fffff097          	auipc	ra,0xfffff
    80005b0c:	144080e7          	jalr	324(ra) # 80004c4c <panic>

0000000080005b10 <holding>:
    80005b10:	00052783          	lw	a5,0(a0)
    80005b14:	00079663          	bnez	a5,80005b20 <holding+0x10>
    80005b18:	00000513          	li	a0,0
    80005b1c:	00008067          	ret
    80005b20:	fe010113          	addi	sp,sp,-32
    80005b24:	00813823          	sd	s0,16(sp)
    80005b28:	00913423          	sd	s1,8(sp)
    80005b2c:	00113c23          	sd	ra,24(sp)
    80005b30:	02010413          	addi	s0,sp,32
    80005b34:	01053483          	ld	s1,16(a0)
    80005b38:	ffffe097          	auipc	ra,0xffffe
    80005b3c:	750080e7          	jalr	1872(ra) # 80004288 <mycpu>
    80005b40:	01813083          	ld	ra,24(sp)
    80005b44:	01013403          	ld	s0,16(sp)
    80005b48:	40a48533          	sub	a0,s1,a0
    80005b4c:	00153513          	seqz	a0,a0
    80005b50:	00813483          	ld	s1,8(sp)
    80005b54:	02010113          	addi	sp,sp,32
    80005b58:	00008067          	ret

0000000080005b5c <push_off>:
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00813823          	sd	s0,16(sp)
    80005b64:	00113c23          	sd	ra,24(sp)
    80005b68:	00913423          	sd	s1,8(sp)
    80005b6c:	02010413          	addi	s0,sp,32
    80005b70:	100024f3          	csrr	s1,sstatus
    80005b74:	100027f3          	csrr	a5,sstatus
    80005b78:	ffd7f793          	andi	a5,a5,-3
    80005b7c:	10079073          	csrw	sstatus,a5
    80005b80:	ffffe097          	auipc	ra,0xffffe
    80005b84:	708080e7          	jalr	1800(ra) # 80004288 <mycpu>
    80005b88:	07852783          	lw	a5,120(a0)
    80005b8c:	02078663          	beqz	a5,80005bb8 <push_off+0x5c>
    80005b90:	ffffe097          	auipc	ra,0xffffe
    80005b94:	6f8080e7          	jalr	1784(ra) # 80004288 <mycpu>
    80005b98:	07852783          	lw	a5,120(a0)
    80005b9c:	01813083          	ld	ra,24(sp)
    80005ba0:	01013403          	ld	s0,16(sp)
    80005ba4:	0017879b          	addiw	a5,a5,1
    80005ba8:	06f52c23          	sw	a5,120(a0)
    80005bac:	00813483          	ld	s1,8(sp)
    80005bb0:	02010113          	addi	sp,sp,32
    80005bb4:	00008067          	ret
    80005bb8:	0014d493          	srli	s1,s1,0x1
    80005bbc:	ffffe097          	auipc	ra,0xffffe
    80005bc0:	6cc080e7          	jalr	1740(ra) # 80004288 <mycpu>
    80005bc4:	0014f493          	andi	s1,s1,1
    80005bc8:	06952e23          	sw	s1,124(a0)
    80005bcc:	fc5ff06f          	j	80005b90 <push_off+0x34>

0000000080005bd0 <pop_off>:
    80005bd0:	ff010113          	addi	sp,sp,-16
    80005bd4:	00813023          	sd	s0,0(sp)
    80005bd8:	00113423          	sd	ra,8(sp)
    80005bdc:	01010413          	addi	s0,sp,16
    80005be0:	ffffe097          	auipc	ra,0xffffe
    80005be4:	6a8080e7          	jalr	1704(ra) # 80004288 <mycpu>
    80005be8:	100027f3          	csrr	a5,sstatus
    80005bec:	0027f793          	andi	a5,a5,2
    80005bf0:	04079663          	bnez	a5,80005c3c <pop_off+0x6c>
    80005bf4:	07852783          	lw	a5,120(a0)
    80005bf8:	02f05a63          	blez	a5,80005c2c <pop_off+0x5c>
    80005bfc:	fff7871b          	addiw	a4,a5,-1
    80005c00:	06e52c23          	sw	a4,120(a0)
    80005c04:	00071c63          	bnez	a4,80005c1c <pop_off+0x4c>
    80005c08:	07c52783          	lw	a5,124(a0)
    80005c0c:	00078863          	beqz	a5,80005c1c <pop_off+0x4c>
    80005c10:	100027f3          	csrr	a5,sstatus
    80005c14:	0027e793          	ori	a5,a5,2
    80005c18:	10079073          	csrw	sstatus,a5
    80005c1c:	00813083          	ld	ra,8(sp)
    80005c20:	00013403          	ld	s0,0(sp)
    80005c24:	01010113          	addi	sp,sp,16
    80005c28:	00008067          	ret
    80005c2c:	00002517          	auipc	a0,0x2
    80005c30:	90450513          	addi	a0,a0,-1788 # 80007530 <digits+0x48>
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	018080e7          	jalr	24(ra) # 80004c4c <panic>
    80005c3c:	00002517          	auipc	a0,0x2
    80005c40:	8dc50513          	addi	a0,a0,-1828 # 80007518 <digits+0x30>
    80005c44:	fffff097          	auipc	ra,0xfffff
    80005c48:	008080e7          	jalr	8(ra) # 80004c4c <panic>

0000000080005c4c <push_on>:
    80005c4c:	fe010113          	addi	sp,sp,-32
    80005c50:	00813823          	sd	s0,16(sp)
    80005c54:	00113c23          	sd	ra,24(sp)
    80005c58:	00913423          	sd	s1,8(sp)
    80005c5c:	02010413          	addi	s0,sp,32
    80005c60:	100024f3          	csrr	s1,sstatus
    80005c64:	100027f3          	csrr	a5,sstatus
    80005c68:	0027e793          	ori	a5,a5,2
    80005c6c:	10079073          	csrw	sstatus,a5
    80005c70:	ffffe097          	auipc	ra,0xffffe
    80005c74:	618080e7          	jalr	1560(ra) # 80004288 <mycpu>
    80005c78:	07852783          	lw	a5,120(a0)
    80005c7c:	02078663          	beqz	a5,80005ca8 <push_on+0x5c>
    80005c80:	ffffe097          	auipc	ra,0xffffe
    80005c84:	608080e7          	jalr	1544(ra) # 80004288 <mycpu>
    80005c88:	07852783          	lw	a5,120(a0)
    80005c8c:	01813083          	ld	ra,24(sp)
    80005c90:	01013403          	ld	s0,16(sp)
    80005c94:	0017879b          	addiw	a5,a5,1
    80005c98:	06f52c23          	sw	a5,120(a0)
    80005c9c:	00813483          	ld	s1,8(sp)
    80005ca0:	02010113          	addi	sp,sp,32
    80005ca4:	00008067          	ret
    80005ca8:	0014d493          	srli	s1,s1,0x1
    80005cac:	ffffe097          	auipc	ra,0xffffe
    80005cb0:	5dc080e7          	jalr	1500(ra) # 80004288 <mycpu>
    80005cb4:	0014f493          	andi	s1,s1,1
    80005cb8:	06952e23          	sw	s1,124(a0)
    80005cbc:	fc5ff06f          	j	80005c80 <push_on+0x34>

0000000080005cc0 <pop_on>:
    80005cc0:	ff010113          	addi	sp,sp,-16
    80005cc4:	00813023          	sd	s0,0(sp)
    80005cc8:	00113423          	sd	ra,8(sp)
    80005ccc:	01010413          	addi	s0,sp,16
    80005cd0:	ffffe097          	auipc	ra,0xffffe
    80005cd4:	5b8080e7          	jalr	1464(ra) # 80004288 <mycpu>
    80005cd8:	100027f3          	csrr	a5,sstatus
    80005cdc:	0027f793          	andi	a5,a5,2
    80005ce0:	04078463          	beqz	a5,80005d28 <pop_on+0x68>
    80005ce4:	07852783          	lw	a5,120(a0)
    80005ce8:	02f05863          	blez	a5,80005d18 <pop_on+0x58>
    80005cec:	fff7879b          	addiw	a5,a5,-1
    80005cf0:	06f52c23          	sw	a5,120(a0)
    80005cf4:	07853783          	ld	a5,120(a0)
    80005cf8:	00079863          	bnez	a5,80005d08 <pop_on+0x48>
    80005cfc:	100027f3          	csrr	a5,sstatus
    80005d00:	ffd7f793          	andi	a5,a5,-3
    80005d04:	10079073          	csrw	sstatus,a5
    80005d08:	00813083          	ld	ra,8(sp)
    80005d0c:	00013403          	ld	s0,0(sp)
    80005d10:	01010113          	addi	sp,sp,16
    80005d14:	00008067          	ret
    80005d18:	00002517          	auipc	a0,0x2
    80005d1c:	84050513          	addi	a0,a0,-1984 # 80007558 <digits+0x70>
    80005d20:	fffff097          	auipc	ra,0xfffff
    80005d24:	f2c080e7          	jalr	-212(ra) # 80004c4c <panic>
    80005d28:	00002517          	auipc	a0,0x2
    80005d2c:	81050513          	addi	a0,a0,-2032 # 80007538 <digits+0x50>
    80005d30:	fffff097          	auipc	ra,0xfffff
    80005d34:	f1c080e7          	jalr	-228(ra) # 80004c4c <panic>

0000000080005d38 <__memset>:
    80005d38:	ff010113          	addi	sp,sp,-16
    80005d3c:	00813423          	sd	s0,8(sp)
    80005d40:	01010413          	addi	s0,sp,16
    80005d44:	1a060e63          	beqz	a2,80005f00 <__memset+0x1c8>
    80005d48:	40a007b3          	neg	a5,a0
    80005d4c:	0077f793          	andi	a5,a5,7
    80005d50:	00778693          	addi	a3,a5,7
    80005d54:	00b00813          	li	a6,11
    80005d58:	0ff5f593          	andi	a1,a1,255
    80005d5c:	fff6071b          	addiw	a4,a2,-1
    80005d60:	1b06e663          	bltu	a3,a6,80005f0c <__memset+0x1d4>
    80005d64:	1cd76463          	bltu	a4,a3,80005f2c <__memset+0x1f4>
    80005d68:	1a078e63          	beqz	a5,80005f24 <__memset+0x1ec>
    80005d6c:	00b50023          	sb	a1,0(a0)
    80005d70:	00100713          	li	a4,1
    80005d74:	1ae78463          	beq	a5,a4,80005f1c <__memset+0x1e4>
    80005d78:	00b500a3          	sb	a1,1(a0)
    80005d7c:	00200713          	li	a4,2
    80005d80:	1ae78a63          	beq	a5,a4,80005f34 <__memset+0x1fc>
    80005d84:	00b50123          	sb	a1,2(a0)
    80005d88:	00300713          	li	a4,3
    80005d8c:	18e78463          	beq	a5,a4,80005f14 <__memset+0x1dc>
    80005d90:	00b501a3          	sb	a1,3(a0)
    80005d94:	00400713          	li	a4,4
    80005d98:	1ae78263          	beq	a5,a4,80005f3c <__memset+0x204>
    80005d9c:	00b50223          	sb	a1,4(a0)
    80005da0:	00500713          	li	a4,5
    80005da4:	1ae78063          	beq	a5,a4,80005f44 <__memset+0x20c>
    80005da8:	00b502a3          	sb	a1,5(a0)
    80005dac:	00700713          	li	a4,7
    80005db0:	18e79e63          	bne	a5,a4,80005f4c <__memset+0x214>
    80005db4:	00b50323          	sb	a1,6(a0)
    80005db8:	00700e93          	li	t4,7
    80005dbc:	00859713          	slli	a4,a1,0x8
    80005dc0:	00e5e733          	or	a4,a1,a4
    80005dc4:	01059e13          	slli	t3,a1,0x10
    80005dc8:	01c76e33          	or	t3,a4,t3
    80005dcc:	01859313          	slli	t1,a1,0x18
    80005dd0:	006e6333          	or	t1,t3,t1
    80005dd4:	02059893          	slli	a7,a1,0x20
    80005dd8:	40f60e3b          	subw	t3,a2,a5
    80005ddc:	011368b3          	or	a7,t1,a7
    80005de0:	02859813          	slli	a6,a1,0x28
    80005de4:	0108e833          	or	a6,a7,a6
    80005de8:	03059693          	slli	a3,a1,0x30
    80005dec:	003e589b          	srliw	a7,t3,0x3
    80005df0:	00d866b3          	or	a3,a6,a3
    80005df4:	03859713          	slli	a4,a1,0x38
    80005df8:	00389813          	slli	a6,a7,0x3
    80005dfc:	00f507b3          	add	a5,a0,a5
    80005e00:	00e6e733          	or	a4,a3,a4
    80005e04:	000e089b          	sext.w	a7,t3
    80005e08:	00f806b3          	add	a3,a6,a5
    80005e0c:	00e7b023          	sd	a4,0(a5)
    80005e10:	00878793          	addi	a5,a5,8
    80005e14:	fed79ce3          	bne	a5,a3,80005e0c <__memset+0xd4>
    80005e18:	ff8e7793          	andi	a5,t3,-8
    80005e1c:	0007871b          	sext.w	a4,a5
    80005e20:	01d787bb          	addw	a5,a5,t4
    80005e24:	0ce88e63          	beq	a7,a4,80005f00 <__memset+0x1c8>
    80005e28:	00f50733          	add	a4,a0,a5
    80005e2c:	00b70023          	sb	a1,0(a4)
    80005e30:	0017871b          	addiw	a4,a5,1
    80005e34:	0cc77663          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005e38:	00e50733          	add	a4,a0,a4
    80005e3c:	00b70023          	sb	a1,0(a4)
    80005e40:	0027871b          	addiw	a4,a5,2
    80005e44:	0ac77e63          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005e48:	00e50733          	add	a4,a0,a4
    80005e4c:	00b70023          	sb	a1,0(a4)
    80005e50:	0037871b          	addiw	a4,a5,3
    80005e54:	0ac77663          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005e58:	00e50733          	add	a4,a0,a4
    80005e5c:	00b70023          	sb	a1,0(a4)
    80005e60:	0047871b          	addiw	a4,a5,4
    80005e64:	08c77e63          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005e68:	00e50733          	add	a4,a0,a4
    80005e6c:	00b70023          	sb	a1,0(a4)
    80005e70:	0057871b          	addiw	a4,a5,5
    80005e74:	08c77663          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005e78:	00e50733          	add	a4,a0,a4
    80005e7c:	00b70023          	sb	a1,0(a4)
    80005e80:	0067871b          	addiw	a4,a5,6
    80005e84:	06c77e63          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005e88:	00e50733          	add	a4,a0,a4
    80005e8c:	00b70023          	sb	a1,0(a4)
    80005e90:	0077871b          	addiw	a4,a5,7
    80005e94:	06c77663          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005e98:	00e50733          	add	a4,a0,a4
    80005e9c:	00b70023          	sb	a1,0(a4)
    80005ea0:	0087871b          	addiw	a4,a5,8
    80005ea4:	04c77e63          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005ea8:	00e50733          	add	a4,a0,a4
    80005eac:	00b70023          	sb	a1,0(a4)
    80005eb0:	0097871b          	addiw	a4,a5,9
    80005eb4:	04c77663          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005eb8:	00e50733          	add	a4,a0,a4
    80005ebc:	00b70023          	sb	a1,0(a4)
    80005ec0:	00a7871b          	addiw	a4,a5,10
    80005ec4:	02c77e63          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005ec8:	00e50733          	add	a4,a0,a4
    80005ecc:	00b70023          	sb	a1,0(a4)
    80005ed0:	00b7871b          	addiw	a4,a5,11
    80005ed4:	02c77663          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005ed8:	00e50733          	add	a4,a0,a4
    80005edc:	00b70023          	sb	a1,0(a4)
    80005ee0:	00c7871b          	addiw	a4,a5,12
    80005ee4:	00c77e63          	bgeu	a4,a2,80005f00 <__memset+0x1c8>
    80005ee8:	00e50733          	add	a4,a0,a4
    80005eec:	00b70023          	sb	a1,0(a4)
    80005ef0:	00d7879b          	addiw	a5,a5,13
    80005ef4:	00c7f663          	bgeu	a5,a2,80005f00 <__memset+0x1c8>
    80005ef8:	00f507b3          	add	a5,a0,a5
    80005efc:	00b78023          	sb	a1,0(a5)
    80005f00:	00813403          	ld	s0,8(sp)
    80005f04:	01010113          	addi	sp,sp,16
    80005f08:	00008067          	ret
    80005f0c:	00b00693          	li	a3,11
    80005f10:	e55ff06f          	j	80005d64 <__memset+0x2c>
    80005f14:	00300e93          	li	t4,3
    80005f18:	ea5ff06f          	j	80005dbc <__memset+0x84>
    80005f1c:	00100e93          	li	t4,1
    80005f20:	e9dff06f          	j	80005dbc <__memset+0x84>
    80005f24:	00000e93          	li	t4,0
    80005f28:	e95ff06f          	j	80005dbc <__memset+0x84>
    80005f2c:	00000793          	li	a5,0
    80005f30:	ef9ff06f          	j	80005e28 <__memset+0xf0>
    80005f34:	00200e93          	li	t4,2
    80005f38:	e85ff06f          	j	80005dbc <__memset+0x84>
    80005f3c:	00400e93          	li	t4,4
    80005f40:	e7dff06f          	j	80005dbc <__memset+0x84>
    80005f44:	00500e93          	li	t4,5
    80005f48:	e75ff06f          	j	80005dbc <__memset+0x84>
    80005f4c:	00600e93          	li	t4,6
    80005f50:	e6dff06f          	j	80005dbc <__memset+0x84>

0000000080005f54 <__memmove>:
    80005f54:	ff010113          	addi	sp,sp,-16
    80005f58:	00813423          	sd	s0,8(sp)
    80005f5c:	01010413          	addi	s0,sp,16
    80005f60:	0e060863          	beqz	a2,80006050 <__memmove+0xfc>
    80005f64:	fff6069b          	addiw	a3,a2,-1
    80005f68:	0006881b          	sext.w	a6,a3
    80005f6c:	0ea5e863          	bltu	a1,a0,8000605c <__memmove+0x108>
    80005f70:	00758713          	addi	a4,a1,7
    80005f74:	00a5e7b3          	or	a5,a1,a0
    80005f78:	40a70733          	sub	a4,a4,a0
    80005f7c:	0077f793          	andi	a5,a5,7
    80005f80:	00f73713          	sltiu	a4,a4,15
    80005f84:	00174713          	xori	a4,a4,1
    80005f88:	0017b793          	seqz	a5,a5
    80005f8c:	00e7f7b3          	and	a5,a5,a4
    80005f90:	10078863          	beqz	a5,800060a0 <__memmove+0x14c>
    80005f94:	00900793          	li	a5,9
    80005f98:	1107f463          	bgeu	a5,a6,800060a0 <__memmove+0x14c>
    80005f9c:	0036581b          	srliw	a6,a2,0x3
    80005fa0:	fff8081b          	addiw	a6,a6,-1
    80005fa4:	02081813          	slli	a6,a6,0x20
    80005fa8:	01d85893          	srli	a7,a6,0x1d
    80005fac:	00858813          	addi	a6,a1,8
    80005fb0:	00058793          	mv	a5,a1
    80005fb4:	00050713          	mv	a4,a0
    80005fb8:	01088833          	add	a6,a7,a6
    80005fbc:	0007b883          	ld	a7,0(a5)
    80005fc0:	00878793          	addi	a5,a5,8
    80005fc4:	00870713          	addi	a4,a4,8
    80005fc8:	ff173c23          	sd	a7,-8(a4)
    80005fcc:	ff0798e3          	bne	a5,a6,80005fbc <__memmove+0x68>
    80005fd0:	ff867713          	andi	a4,a2,-8
    80005fd4:	02071793          	slli	a5,a4,0x20
    80005fd8:	0207d793          	srli	a5,a5,0x20
    80005fdc:	00f585b3          	add	a1,a1,a5
    80005fe0:	40e686bb          	subw	a3,a3,a4
    80005fe4:	00f507b3          	add	a5,a0,a5
    80005fe8:	06e60463          	beq	a2,a4,80006050 <__memmove+0xfc>
    80005fec:	0005c703          	lbu	a4,0(a1)
    80005ff0:	00e78023          	sb	a4,0(a5)
    80005ff4:	04068e63          	beqz	a3,80006050 <__memmove+0xfc>
    80005ff8:	0015c603          	lbu	a2,1(a1)
    80005ffc:	00100713          	li	a4,1
    80006000:	00c780a3          	sb	a2,1(a5)
    80006004:	04e68663          	beq	a3,a4,80006050 <__memmove+0xfc>
    80006008:	0025c603          	lbu	a2,2(a1)
    8000600c:	00200713          	li	a4,2
    80006010:	00c78123          	sb	a2,2(a5)
    80006014:	02e68e63          	beq	a3,a4,80006050 <__memmove+0xfc>
    80006018:	0035c603          	lbu	a2,3(a1)
    8000601c:	00300713          	li	a4,3
    80006020:	00c781a3          	sb	a2,3(a5)
    80006024:	02e68663          	beq	a3,a4,80006050 <__memmove+0xfc>
    80006028:	0045c603          	lbu	a2,4(a1)
    8000602c:	00400713          	li	a4,4
    80006030:	00c78223          	sb	a2,4(a5)
    80006034:	00e68e63          	beq	a3,a4,80006050 <__memmove+0xfc>
    80006038:	0055c603          	lbu	a2,5(a1)
    8000603c:	00500713          	li	a4,5
    80006040:	00c782a3          	sb	a2,5(a5)
    80006044:	00e68663          	beq	a3,a4,80006050 <__memmove+0xfc>
    80006048:	0065c703          	lbu	a4,6(a1)
    8000604c:	00e78323          	sb	a4,6(a5)
    80006050:	00813403          	ld	s0,8(sp)
    80006054:	01010113          	addi	sp,sp,16
    80006058:	00008067          	ret
    8000605c:	02061713          	slli	a4,a2,0x20
    80006060:	02075713          	srli	a4,a4,0x20
    80006064:	00e587b3          	add	a5,a1,a4
    80006068:	f0f574e3          	bgeu	a0,a5,80005f70 <__memmove+0x1c>
    8000606c:	02069613          	slli	a2,a3,0x20
    80006070:	02065613          	srli	a2,a2,0x20
    80006074:	fff64613          	not	a2,a2
    80006078:	00e50733          	add	a4,a0,a4
    8000607c:	00c78633          	add	a2,a5,a2
    80006080:	fff7c683          	lbu	a3,-1(a5)
    80006084:	fff78793          	addi	a5,a5,-1
    80006088:	fff70713          	addi	a4,a4,-1
    8000608c:	00d70023          	sb	a3,0(a4)
    80006090:	fec798e3          	bne	a5,a2,80006080 <__memmove+0x12c>
    80006094:	00813403          	ld	s0,8(sp)
    80006098:	01010113          	addi	sp,sp,16
    8000609c:	00008067          	ret
    800060a0:	02069713          	slli	a4,a3,0x20
    800060a4:	02075713          	srli	a4,a4,0x20
    800060a8:	00170713          	addi	a4,a4,1
    800060ac:	00e50733          	add	a4,a0,a4
    800060b0:	00050793          	mv	a5,a0
    800060b4:	0005c683          	lbu	a3,0(a1)
    800060b8:	00178793          	addi	a5,a5,1
    800060bc:	00158593          	addi	a1,a1,1
    800060c0:	fed78fa3          	sb	a3,-1(a5)
    800060c4:	fee798e3          	bne	a5,a4,800060b4 <__memmove+0x160>
    800060c8:	f89ff06f          	j	80006050 <__memmove+0xfc>

00000000800060cc <__putc>:
    800060cc:	fe010113          	addi	sp,sp,-32
    800060d0:	00813823          	sd	s0,16(sp)
    800060d4:	00113c23          	sd	ra,24(sp)
    800060d8:	02010413          	addi	s0,sp,32
    800060dc:	00050793          	mv	a5,a0
    800060e0:	fef40593          	addi	a1,s0,-17
    800060e4:	00100613          	li	a2,1
    800060e8:	00000513          	li	a0,0
    800060ec:	fef407a3          	sb	a5,-17(s0)
    800060f0:	fffff097          	auipc	ra,0xfffff
    800060f4:	b3c080e7          	jalr	-1220(ra) # 80004c2c <console_write>
    800060f8:	01813083          	ld	ra,24(sp)
    800060fc:	01013403          	ld	s0,16(sp)
    80006100:	02010113          	addi	sp,sp,32
    80006104:	00008067          	ret

0000000080006108 <__getc>:
    80006108:	fe010113          	addi	sp,sp,-32
    8000610c:	00813823          	sd	s0,16(sp)
    80006110:	00113c23          	sd	ra,24(sp)
    80006114:	02010413          	addi	s0,sp,32
    80006118:	fe840593          	addi	a1,s0,-24
    8000611c:	00100613          	li	a2,1
    80006120:	00000513          	li	a0,0
    80006124:	fffff097          	auipc	ra,0xfffff
    80006128:	ae8080e7          	jalr	-1304(ra) # 80004c0c <console_read>
    8000612c:	fe844503          	lbu	a0,-24(s0)
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	01013403          	ld	s0,16(sp)
    80006138:	02010113          	addi	sp,sp,32
    8000613c:	00008067          	ret

0000000080006140 <console_handler>:
    80006140:	fe010113          	addi	sp,sp,-32
    80006144:	00813823          	sd	s0,16(sp)
    80006148:	00113c23          	sd	ra,24(sp)
    8000614c:	00913423          	sd	s1,8(sp)
    80006150:	02010413          	addi	s0,sp,32
    80006154:	14202773          	csrr	a4,scause
    80006158:	100027f3          	csrr	a5,sstatus
    8000615c:	0027f793          	andi	a5,a5,2
    80006160:	06079e63          	bnez	a5,800061dc <console_handler+0x9c>
    80006164:	00074c63          	bltz	a4,8000617c <console_handler+0x3c>
    80006168:	01813083          	ld	ra,24(sp)
    8000616c:	01013403          	ld	s0,16(sp)
    80006170:	00813483          	ld	s1,8(sp)
    80006174:	02010113          	addi	sp,sp,32
    80006178:	00008067          	ret
    8000617c:	0ff77713          	andi	a4,a4,255
    80006180:	00900793          	li	a5,9
    80006184:	fef712e3          	bne	a4,a5,80006168 <console_handler+0x28>
    80006188:	ffffe097          	auipc	ra,0xffffe
    8000618c:	6dc080e7          	jalr	1756(ra) # 80004864 <plic_claim>
    80006190:	00a00793          	li	a5,10
    80006194:	00050493          	mv	s1,a0
    80006198:	02f50c63          	beq	a0,a5,800061d0 <console_handler+0x90>
    8000619c:	fc0506e3          	beqz	a0,80006168 <console_handler+0x28>
    800061a0:	00050593          	mv	a1,a0
    800061a4:	00001517          	auipc	a0,0x1
    800061a8:	2bc50513          	addi	a0,a0,700 # 80007460 <CONSOLE_STATUS+0x450>
    800061ac:	fffff097          	auipc	ra,0xfffff
    800061b0:	afc080e7          	jalr	-1284(ra) # 80004ca8 <__printf>
    800061b4:	01013403          	ld	s0,16(sp)
    800061b8:	01813083          	ld	ra,24(sp)
    800061bc:	00048513          	mv	a0,s1
    800061c0:	00813483          	ld	s1,8(sp)
    800061c4:	02010113          	addi	sp,sp,32
    800061c8:	ffffe317          	auipc	t1,0xffffe
    800061cc:	6d430067          	jr	1748(t1) # 8000489c <plic_complete>
    800061d0:	fffff097          	auipc	ra,0xfffff
    800061d4:	3e0080e7          	jalr	992(ra) # 800055b0 <uartintr>
    800061d8:	fddff06f          	j	800061b4 <console_handler+0x74>
    800061dc:	00001517          	auipc	a0,0x1
    800061e0:	38450513          	addi	a0,a0,900 # 80007560 <digits+0x78>
    800061e4:	fffff097          	auipc	ra,0xfffff
    800061e8:	a68080e7          	jalr	-1432(ra) # 80004c4c <panic>
	...
