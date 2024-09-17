
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	f0813103          	ld	sp,-248(sp) # 80006f08 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	288030ef          	jal	ra,800032a4 <start>

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
    800011a4:	5ad000ef          	jal	ra,80001f50 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001348 <_Z4getcv>:

char getc() {
    80001348:	fe010113          	addi	sp,sp,-32
    8000134c:	00813c23          	sd	s0,24(sp)
    80001350:	02010413          	addi	s0,sp,32
    80001354:	04100793          	li	a5,65
    80001358:	00078513          	mv	a0,a5
    Riscv::w_a0(0x41);
    __asm__ volatile("ecall");
    8000135c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001360:	00050793          	mv	a5,a0
    80001364:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001368:	fe843503          	ld	a0,-24(s0)

    char ret = (char) Riscv::r_a0();
    return ret;
}
    8000136c:	0ff57513          	andi	a0,a0,255
    80001370:	01813403          	ld	s0,24(sp)
    80001374:	02010113          	addi	sp,sp,32
    80001378:	00008067          	ret

000000008000137c <_Z4putcc>:

void putc(char ch) {
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(ch));
    80001388:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r"(value));
    8000138c:	04200793          	li	a5,66
    80001390:	00078513          	mv	a0,a5
    Riscv::w_a0(0x42);
    __asm__ volatile("ecall");
    80001394:	00000073          	ecall
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800013a4:	fe010113          	addi	sp,sp,-32
    800013a8:	00113c23          	sd	ra,24(sp)
    800013ac:	00813823          	sd	s0,16(sp)
    800013b0:	00913423          	sd	s1,8(sp)
    800013b4:	01213023          	sd	s2,0(sp)
    800013b8:	02010413          	addi	s0,sp,32
    800013bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800013c0:	00100793          	li	a5,1
    800013c4:	02a7f663          	bgeu	a5,a0,800013f0 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) { TCB::yield(); }
    800013c8:	00357793          	andi	a5,a0,3
    800013cc:	02078e63          	beqz	a5,80001408 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800013d0:	fff48513          	addi	a0,s1,-1
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	fd0080e7          	jalr	-48(ra) # 800013a4 <_ZL9fibonaccim>
    800013dc:	00050913          	mv	s2,a0
    800013e0:	ffe48513          	addi	a0,s1,-2
    800013e4:	00000097          	auipc	ra,0x0
    800013e8:	fc0080e7          	jalr	-64(ra) # 800013a4 <_ZL9fibonaccim>
    800013ec:	00a90533          	add	a0,s2,a0
}
    800013f0:	01813083          	ld	ra,24(sp)
    800013f4:	01013403          	ld	s0,16(sp)
    800013f8:	00813483          	ld	s1,8(sp)
    800013fc:	00013903          	ld	s2,0(sp)
    80001400:	02010113          	addi	sp,sp,32
    80001404:	00008067          	ret
    if (n % 4 == 0) { TCB::yield(); }
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	998080e7          	jalr	-1640(ra) # 80001da0 <_ZN3TCB5yieldEv>
    80001410:	fc1ff06f          	j	800013d0 <_ZL9fibonaccim+0x2c>

0000000080001414 <_Z11workerBodyAPv>:
{
    80001414:	fe010113          	addi	sp,sp,-32
    80001418:	00113c23          	sd	ra,24(sp)
    8000141c:	00813823          	sd	s0,16(sp)
    80001420:	00913423          	sd	s1,8(sp)
    80001424:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001428:	00000493          	li	s1,0
    8000142c:	0300006f          	j	8000145c <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001430:	00168693          	addi	a3,a3,1
    80001434:	000027b7          	lui	a5,0x2
    80001438:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000143c:	00d7ee63          	bltu	a5,a3,80001458 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001440:	00000713          	li	a4,0
    80001444:	000077b7          	lui	a5,0x7
    80001448:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000144c:	fee7e2e3          	bltu	a5,a4,80001430 <_Z11workerBodyAPv+0x1c>
    80001450:	00170713          	addi	a4,a4,1
    80001454:	ff1ff06f          	j	80001444 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001458:	00148493          	addi	s1,s1,1
    8000145c:	00900793          	li	a5,9
    80001460:	0497e463          	bltu	a5,s1,800014a8 <_Z11workerBodyAPv+0x94>
        printString("A: i=");
    80001464:	00005517          	auipc	a0,0x5
    80001468:	bbc50513          	addi	a0,a0,-1092 # 80006020 <CONSOLE_STATUS+0x10>
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	370080e7          	jalr	880(ra) # 800017dc <_Z11printStringPKc>
        printInt(i);
    80001474:	00000613          	li	a2,0
    80001478:	00a00593          	li	a1,10
    8000147c:	0004851b          	sext.w	a0,s1
    80001480:	00000097          	auipc	ra,0x0
    80001484:	50c080e7          	jalr	1292(ra) # 8000198c <_Z8printIntiii>
        printString("\n");
    80001488:	00005517          	auipc	a0,0x5
    8000148c:	bb850513          	addi	a0,a0,-1096 # 80006040 <CONSOLE_STATUS+0x30>
    80001490:	00000097          	auipc	ra,0x0
    80001494:	34c080e7          	jalr	844(ra) # 800017dc <_Z11printStringPKc>
        thread_exit();
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	e58080e7          	jalr	-424(ra) # 800012f0 <_Z11thread_exitv>
        for (uint64 j = 0; j < 10000; j++)
    800014a0:	00000693          	li	a3,0
    800014a4:	f91ff06f          	j	80001434 <_Z11workerBodyAPv+0x20>
}
    800014a8:	01813083          	ld	ra,24(sp)
    800014ac:	01013403          	ld	s0,16(sp)
    800014b0:	00813483          	ld	s1,8(sp)
    800014b4:	02010113          	addi	sp,sp,32
    800014b8:	00008067          	ret

00000000800014bc <_Z11workerBodyBPv>:
{
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00113c23          	sd	ra,24(sp)
    800014c4:	00813823          	sd	s0,16(sp)
    800014c8:	00913423          	sd	s1,8(sp)
    800014cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800014d0:	00000493          	li	s1,0
    800014d4:	0300006f          	j	80001504 <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800014d8:	00168693          	addi	a3,a3,1
    800014dc:	000027b7          	lui	a5,0x2
    800014e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014e4:	00d7ee63          	bltu	a5,a3,80001500 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800014e8:	00000713          	li	a4,0
    800014ec:	000077b7          	lui	a5,0x7
    800014f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014f4:	fee7e2e3          	bltu	a5,a4,800014d8 <_Z11workerBodyBPv+0x1c>
    800014f8:	00170713          	addi	a4,a4,1
    800014fc:	ff1ff06f          	j	800014ec <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001500:	00148493          	addi	s1,s1,1
    80001504:	00f00793          	li	a5,15
    80001508:	0497e063          	bltu	a5,s1,80001548 <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    8000150c:	00005517          	auipc	a0,0x5
    80001510:	b1c50513          	addi	a0,a0,-1252 # 80006028 <CONSOLE_STATUS+0x18>
    80001514:	00000097          	auipc	ra,0x0
    80001518:	2c8080e7          	jalr	712(ra) # 800017dc <_Z11printStringPKc>
        printInt(i);
    8000151c:	00000613          	li	a2,0
    80001520:	00a00593          	li	a1,10
    80001524:	0004851b          	sext.w	a0,s1
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	464080e7          	jalr	1124(ra) # 8000198c <_Z8printIntiii>
        printString("\n");
    80001530:	00005517          	auipc	a0,0x5
    80001534:	b1050513          	addi	a0,a0,-1264 # 80006040 <CONSOLE_STATUS+0x30>
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	2a4080e7          	jalr	676(ra) # 800017dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001540:	00000693          	li	a3,0
    80001544:	f99ff06f          	j	800014dc <_Z11workerBodyBPv+0x20>
}
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    8000155c:	fe010113          	addi	sp,sp,-32
    80001560:	00113c23          	sd	ra,24(sp)
    80001564:	00813823          	sd	s0,16(sp)
    80001568:	00913423          	sd	s1,8(sp)
    8000156c:	01213023          	sd	s2,0(sp)
    80001570:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001574:	00000493          	li	s1,0
    80001578:	0400006f          	j	800015b8 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    8000157c:	00005517          	auipc	a0,0x5
    80001580:	ab450513          	addi	a0,a0,-1356 # 80006030 <CONSOLE_STATUS+0x20>
    80001584:	00000097          	auipc	ra,0x0
    80001588:	258080e7          	jalr	600(ra) # 800017dc <_Z11printStringPKc>
        printInt(i);
    8000158c:	00000613          	li	a2,0
    80001590:	00a00593          	li	a1,10
    80001594:	00048513          	mv	a0,s1
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	3f4080e7          	jalr	1012(ra) # 8000198c <_Z8printIntiii>
        printString("\n");
    800015a0:	00005517          	auipc	a0,0x5
    800015a4:	aa050513          	addi	a0,a0,-1376 # 80006040 <CONSOLE_STATUS+0x30>
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	234080e7          	jalr	564(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 3; i++)
    800015b0:	0014849b          	addiw	s1,s1,1
    800015b4:	0ff4f493          	andi	s1,s1,255
    800015b8:	00200793          	li	a5,2
    800015bc:	fc97f0e3          	bgeu	a5,s1,8000157c <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    800015c0:	00005517          	auipc	a0,0x5
    800015c4:	a7850513          	addi	a0,a0,-1416 # 80006038 <CONSOLE_STATUS+0x28>
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	214080e7          	jalr	532(ra) # 800017dc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800015d0:	00700313          	li	t1,7
    TCB::yield();
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	7cc080e7          	jalr	1996(ra) # 80001da0 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800015dc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800015e0:	00005517          	auipc	a0,0x5
    800015e4:	a6850513          	addi	a0,a0,-1432 # 80006048 <CONSOLE_STATUS+0x38>
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	1f4080e7          	jalr	500(ra) # 800017dc <_Z11printStringPKc>
    printInt(t1);
    800015f0:	00000613          	li	a2,0
    800015f4:	00a00593          	li	a1,10
    800015f8:	0009051b          	sext.w	a0,s2
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	390080e7          	jalr	912(ra) # 8000198c <_Z8printIntiii>
    printString("\n");
    80001604:	00005517          	auipc	a0,0x5
    80001608:	a3c50513          	addi	a0,a0,-1476 # 80006040 <CONSOLE_STATUS+0x30>
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	1d0080e7          	jalr	464(ra) # 800017dc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001614:	00c00513          	li	a0,12
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	d8c080e7          	jalr	-628(ra) # 800013a4 <_ZL9fibonaccim>
    80001620:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001624:	00005517          	auipc	a0,0x5
    80001628:	a2c50513          	addi	a0,a0,-1492 # 80006050 <CONSOLE_STATUS+0x40>
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	1b0080e7          	jalr	432(ra) # 800017dc <_Z11printStringPKc>
    printInt(result);
    80001634:	00000613          	li	a2,0
    80001638:	00a00593          	li	a1,10
    8000163c:	0009051b          	sext.w	a0,s2
    80001640:	00000097          	auipc	ra,0x0
    80001644:	34c080e7          	jalr	844(ra) # 8000198c <_Z8printIntiii>
    printString("\n");
    80001648:	00005517          	auipc	a0,0x5
    8000164c:	9f850513          	addi	a0,a0,-1544 # 80006040 <CONSOLE_STATUS+0x30>
    80001650:	00000097          	auipc	ra,0x0
    80001654:	18c080e7          	jalr	396(ra) # 800017dc <_Z11printStringPKc>
    80001658:	0400006f          	j	80001698 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000165c:	00005517          	auipc	a0,0x5
    80001660:	9d450513          	addi	a0,a0,-1580 # 80006030 <CONSOLE_STATUS+0x20>
    80001664:	00000097          	auipc	ra,0x0
    80001668:	178080e7          	jalr	376(ra) # 800017dc <_Z11printStringPKc>
        printInt(i);
    8000166c:	00000613          	li	a2,0
    80001670:	00a00593          	li	a1,10
    80001674:	00048513          	mv	a0,s1
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	314080e7          	jalr	788(ra) # 8000198c <_Z8printIntiii>
        printString("\n");
    80001680:	00005517          	auipc	a0,0x5
    80001684:	9c050513          	addi	a0,a0,-1600 # 80006040 <CONSOLE_STATUS+0x30>
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	154080e7          	jalr	340(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 6; i++)
    80001690:	0014849b          	addiw	s1,s1,1
    80001694:	0ff4f493          	andi	s1,s1,255
    80001698:	00500793          	li	a5,5
    8000169c:	fc97f0e3          	bgeu	a5,s1,8000165c <_Z11workerBodyCPv+0x100>
    }
    //TCB::running->setFinished(true);
    //TCB::yield();
}
    800016a0:	01813083          	ld	ra,24(sp)
    800016a4:	01013403          	ld	s0,16(sp)
    800016a8:	00813483          	ld	s1,8(sp)
    800016ac:	00013903          	ld	s2,0(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	01213023          	sd	s2,0(sp)
    800016cc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800016d0:	00a00493          	li	s1,10
    800016d4:	0400006f          	j	80001714 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800016d8:	00005517          	auipc	a0,0x5
    800016dc:	98850513          	addi	a0,a0,-1656 # 80006060 <CONSOLE_STATUS+0x50>
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	0fc080e7          	jalr	252(ra) # 800017dc <_Z11printStringPKc>
        printInt(i);
    800016e8:	00000613          	li	a2,0
    800016ec:	00a00593          	li	a1,10
    800016f0:	00048513          	mv	a0,s1
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	298080e7          	jalr	664(ra) # 8000198c <_Z8printIntiii>
        printString("\n");
    800016fc:	00005517          	auipc	a0,0x5
    80001700:	94450513          	addi	a0,a0,-1724 # 80006040 <CONSOLE_STATUS+0x30>
    80001704:	00000097          	auipc	ra,0x0
    80001708:	0d8080e7          	jalr	216(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 13; i++)
    8000170c:	0014849b          	addiw	s1,s1,1
    80001710:	0ff4f493          	andi	s1,s1,255
    80001714:	00c00793          	li	a5,12
    80001718:	fc97f0e3          	bgeu	a5,s1,800016d8 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    8000171c:	00005517          	auipc	a0,0x5
    80001720:	94c50513          	addi	a0,a0,-1716 # 80006068 <CONSOLE_STATUS+0x58>
    80001724:	00000097          	auipc	ra,0x0
    80001728:	0b8080e7          	jalr	184(ra) # 800017dc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000172c:	00500313          	li	t1,5
    TCB::yield();
    80001730:	00000097          	auipc	ra,0x0
    80001734:	670080e7          	jalr	1648(ra) # 80001da0 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(23);
    80001738:	01700513          	li	a0,23
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	c68080e7          	jalr	-920(ra) # 800013a4 <_ZL9fibonaccim>
    80001744:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001748:	00005517          	auipc	a0,0x5
    8000174c:	93050513          	addi	a0,a0,-1744 # 80006078 <CONSOLE_STATUS+0x68>
    80001750:	00000097          	auipc	ra,0x0
    80001754:	08c080e7          	jalr	140(ra) # 800017dc <_Z11printStringPKc>
    printInt(result);
    80001758:	00000613          	li	a2,0
    8000175c:	00a00593          	li	a1,10
    80001760:	0009051b          	sext.w	a0,s2
    80001764:	00000097          	auipc	ra,0x0
    80001768:	228080e7          	jalr	552(ra) # 8000198c <_Z8printIntiii>
    printString("\n");
    8000176c:	00005517          	auipc	a0,0x5
    80001770:	8d450513          	addi	a0,a0,-1836 # 80006040 <CONSOLE_STATUS+0x30>
    80001774:	00000097          	auipc	ra,0x0
    80001778:	068080e7          	jalr	104(ra) # 800017dc <_Z11printStringPKc>
    8000177c:	0400006f          	j	800017bc <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001780:	00005517          	auipc	a0,0x5
    80001784:	8e050513          	addi	a0,a0,-1824 # 80006060 <CONSOLE_STATUS+0x50>
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	054080e7          	jalr	84(ra) # 800017dc <_Z11printStringPKc>
        printInt(i);
    80001790:	00000613          	li	a2,0
    80001794:	00a00593          	li	a1,10
    80001798:	00048513          	mv	a0,s1
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	1f0080e7          	jalr	496(ra) # 8000198c <_Z8printIntiii>
        printString("\n");
    800017a4:	00005517          	auipc	a0,0x5
    800017a8:	89c50513          	addi	a0,a0,-1892 # 80006040 <CONSOLE_STATUS+0x30>
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	030080e7          	jalr	48(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 16; i++)
    800017b4:	0014849b          	addiw	s1,s1,1
    800017b8:	0ff4f493          	andi	s1,s1,255
    800017bc:	00f00793          	li	a5,15
    800017c0:	fc97f0e3          	bgeu	a5,s1,80001780 <_Z11workerBodyDPv+0xc8>
    }
    // TCB::running->setFinished(true);
    // TCB::yield();
    800017c4:	01813083          	ld	ra,24(sp)
    800017c8:	01013403          	ld	s0,16(sp)
    800017cc:	00813483          	ld	s1,8(sp)
    800017d0:	00013903          	ld	s2,0(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret

00000000800017dc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800017dc:	fe010113          	addi	sp,sp,-32
    800017e0:	00113c23          	sd	ra,24(sp)
    800017e4:	00813823          	sd	s0,16(sp)
    800017e8:	00913423          	sd	s1,8(sp)
    800017ec:	02010413          	addi	s0,sp,32
    800017f0:	00050493          	mv	s1,a0
    LOCK();
    800017f4:	00100613          	li	a2,1
    800017f8:	00000593          	li	a1,0
    800017fc:	00005517          	auipc	a0,0x5
    80001800:	77450513          	addi	a0,a0,1908 # 80006f70 <lockPrint>
    80001804:	00000097          	auipc	ra,0x0
    80001808:	8f4080e7          	jalr	-1804(ra) # 800010f8 <copy_and_swap>
    8000180c:	00050863          	beqz	a0,8000181c <_Z11printStringPKc+0x40>
    80001810:	00000097          	auipc	ra,0x0
    80001814:	b14080e7          	jalr	-1260(ra) # 80001324 <_Z15thread_dispatchv>
    80001818:	fddff06f          	j	800017f4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000181c:	0004c503          	lbu	a0,0(s1)
    80001820:	00050a63          	beqz	a0,80001834 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    80001824:	00004097          	auipc	ra,0x4
    80001828:	b48080e7          	jalr	-1208(ra) # 8000536c <__putc>
        string++;
    8000182c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001830:	fedff06f          	j	8000181c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80001834:	00000613          	li	a2,0
    80001838:	00100593          	li	a1,1
    8000183c:	00005517          	auipc	a0,0x5
    80001840:	73450513          	addi	a0,a0,1844 # 80006f70 <lockPrint>
    80001844:	00000097          	auipc	ra,0x0
    80001848:	8b4080e7          	jalr	-1868(ra) # 800010f8 <copy_and_swap>
    8000184c:	fe0514e3          	bnez	a0,80001834 <_Z11printStringPKc+0x58>
}
    80001850:	01813083          	ld	ra,24(sp)
    80001854:	01013403          	ld	s0,16(sp)
    80001858:	00813483          	ld	s1,8(sp)
    8000185c:	02010113          	addi	sp,sp,32
    80001860:	00008067          	ret

0000000080001864 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001864:	fd010113          	addi	sp,sp,-48
    80001868:	02113423          	sd	ra,40(sp)
    8000186c:	02813023          	sd	s0,32(sp)
    80001870:	00913c23          	sd	s1,24(sp)
    80001874:	01213823          	sd	s2,16(sp)
    80001878:	01313423          	sd	s3,8(sp)
    8000187c:	01413023          	sd	s4,0(sp)
    80001880:	03010413          	addi	s0,sp,48
    80001884:	00050993          	mv	s3,a0
    80001888:	00058a13          	mv	s4,a1
    LOCK();
    8000188c:	00100613          	li	a2,1
    80001890:	00000593          	li	a1,0
    80001894:	00005517          	auipc	a0,0x5
    80001898:	6dc50513          	addi	a0,a0,1756 # 80006f70 <lockPrint>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	85c080e7          	jalr	-1956(ra) # 800010f8 <copy_and_swap>
    800018a4:	00050863          	beqz	a0,800018b4 <_Z9getStringPci+0x50>
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	a7c080e7          	jalr	-1412(ra) # 80001324 <_Z15thread_dispatchv>
    800018b0:	fddff06f          	j	8000188c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800018b4:	00000913          	li	s2,0
    800018b8:	00090493          	mv	s1,s2
    800018bc:	0019091b          	addiw	s2,s2,1
    800018c0:	03495a63          	bge	s2,s4,800018f4 <_Z9getStringPci+0x90>
        cc = __getc();
    800018c4:	00004097          	auipc	ra,0x4
    800018c8:	ae4080e7          	jalr	-1308(ra) # 800053a8 <__getc>
        if(cc < 1)
    800018cc:	02050463          	beqz	a0,800018f4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800018d0:	009984b3          	add	s1,s3,s1
    800018d4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800018d8:	00a00793          	li	a5,10
    800018dc:	00f50a63          	beq	a0,a5,800018f0 <_Z9getStringPci+0x8c>
    800018e0:	00d00793          	li	a5,13
    800018e4:	fcf51ae3          	bne	a0,a5,800018b8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800018e8:	00090493          	mv	s1,s2
    800018ec:	0080006f          	j	800018f4 <_Z9getStringPci+0x90>
    800018f0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800018f4:	009984b3          	add	s1,s3,s1
    800018f8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800018fc:	00000613          	li	a2,0
    80001900:	00100593          	li	a1,1
    80001904:	00005517          	auipc	a0,0x5
    80001908:	66c50513          	addi	a0,a0,1644 # 80006f70 <lockPrint>
    8000190c:	fffff097          	auipc	ra,0xfffff
    80001910:	7ec080e7          	jalr	2028(ra) # 800010f8 <copy_and_swap>
    80001914:	fe0514e3          	bnez	a0,800018fc <_Z9getStringPci+0x98>
    return buf;
}
    80001918:	00098513          	mv	a0,s3
    8000191c:	02813083          	ld	ra,40(sp)
    80001920:	02013403          	ld	s0,32(sp)
    80001924:	01813483          	ld	s1,24(sp)
    80001928:	01013903          	ld	s2,16(sp)
    8000192c:	00813983          	ld	s3,8(sp)
    80001930:	00013a03          	ld	s4,0(sp)
    80001934:	03010113          	addi	sp,sp,48
    80001938:	00008067          	ret

000000008000193c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00813423          	sd	s0,8(sp)
    80001944:	01010413          	addi	s0,sp,16
    80001948:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000194c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001950:	0006c603          	lbu	a2,0(a3)
    80001954:	fd06071b          	addiw	a4,a2,-48
    80001958:	0ff77713          	andi	a4,a4,255
    8000195c:	00900793          	li	a5,9
    80001960:	02e7e063          	bltu	a5,a4,80001980 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001964:	0025179b          	slliw	a5,a0,0x2
    80001968:	00a787bb          	addw	a5,a5,a0
    8000196c:	0017979b          	slliw	a5,a5,0x1
    80001970:	00168693          	addi	a3,a3,1
    80001974:	00c787bb          	addw	a5,a5,a2
    80001978:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000197c:	fd5ff06f          	j	80001950 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001980:	00813403          	ld	s0,8(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret

000000008000198c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000198c:	fc010113          	addi	sp,sp,-64
    80001990:	02113c23          	sd	ra,56(sp)
    80001994:	02813823          	sd	s0,48(sp)
    80001998:	02913423          	sd	s1,40(sp)
    8000199c:	03213023          	sd	s2,32(sp)
    800019a0:	01313c23          	sd	s3,24(sp)
    800019a4:	04010413          	addi	s0,sp,64
    800019a8:	00050493          	mv	s1,a0
    800019ac:	00058913          	mv	s2,a1
    800019b0:	00060993          	mv	s3,a2
    LOCK();
    800019b4:	00100613          	li	a2,1
    800019b8:	00000593          	li	a1,0
    800019bc:	00005517          	auipc	a0,0x5
    800019c0:	5b450513          	addi	a0,a0,1460 # 80006f70 <lockPrint>
    800019c4:	fffff097          	auipc	ra,0xfffff
    800019c8:	734080e7          	jalr	1844(ra) # 800010f8 <copy_and_swap>
    800019cc:	00050863          	beqz	a0,800019dc <_Z8printIntiii+0x50>
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	954080e7          	jalr	-1708(ra) # 80001324 <_Z15thread_dispatchv>
    800019d8:	fddff06f          	j	800019b4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800019dc:	00098463          	beqz	s3,800019e4 <_Z8printIntiii+0x58>
    800019e0:	0804c463          	bltz	s1,80001a68 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800019e4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800019e8:	00000593          	li	a1,0
    }

    i = 0;
    800019ec:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800019f0:	0009079b          	sext.w	a5,s2
    800019f4:	0325773b          	remuw	a4,a0,s2
    800019f8:	00048613          	mv	a2,s1
    800019fc:	0014849b          	addiw	s1,s1,1
    80001a00:	02071693          	slli	a3,a4,0x20
    80001a04:	0206d693          	srli	a3,a3,0x20
    80001a08:	00005717          	auipc	a4,0x5
    80001a0c:	4b870713          	addi	a4,a4,1208 # 80006ec0 <digits>
    80001a10:	00d70733          	add	a4,a4,a3
    80001a14:	00074683          	lbu	a3,0(a4)
    80001a18:	fd040713          	addi	a4,s0,-48
    80001a1c:	00c70733          	add	a4,a4,a2
    80001a20:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001a24:	0005071b          	sext.w	a4,a0
    80001a28:	0325553b          	divuw	a0,a0,s2
    80001a2c:	fcf772e3          	bgeu	a4,a5,800019f0 <_Z8printIntiii+0x64>
    if(neg)
    80001a30:	00058c63          	beqz	a1,80001a48 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80001a34:	fd040793          	addi	a5,s0,-48
    80001a38:	009784b3          	add	s1,a5,s1
    80001a3c:	02d00793          	li	a5,45
    80001a40:	fef48823          	sb	a5,-16(s1)
    80001a44:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001a48:	fff4849b          	addiw	s1,s1,-1
    80001a4c:	0204c463          	bltz	s1,80001a74 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80001a50:	fd040793          	addi	a5,s0,-48
    80001a54:	009787b3          	add	a5,a5,s1
    80001a58:	ff07c503          	lbu	a0,-16(a5)
    80001a5c:	00004097          	auipc	ra,0x4
    80001a60:	910080e7          	jalr	-1776(ra) # 8000536c <__putc>
    80001a64:	fe5ff06f          	j	80001a48 <_Z8printIntiii+0xbc>
        x = -xx;
    80001a68:	4090053b          	negw	a0,s1
        neg = 1;
    80001a6c:	00100593          	li	a1,1
        x = -xx;
    80001a70:	f7dff06f          	j	800019ec <_Z8printIntiii+0x60>

    UNLOCK();
    80001a74:	00000613          	li	a2,0
    80001a78:	00100593          	li	a1,1
    80001a7c:	00005517          	auipc	a0,0x5
    80001a80:	4f450513          	addi	a0,a0,1268 # 80006f70 <lockPrint>
    80001a84:	fffff097          	auipc	ra,0xfffff
    80001a88:	674080e7          	jalr	1652(ra) # 800010f8 <copy_and_swap>
    80001a8c:	fe0514e3          	bnez	a0,80001a74 <_Z8printIntiii+0xe8>
    80001a90:	03813083          	ld	ra,56(sp)
    80001a94:	03013403          	ld	s0,48(sp)
    80001a98:	02813483          	ld	s1,40(sp)
    80001a9c:	02013903          	ld	s2,32(sp)
    80001aa0:	01813983          	ld	s3,24(sp)
    80001aa4:	04010113          	addi	sp,sp,64
    80001aa8:	00008067          	ret

0000000080001aac <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80001aac:	fe010113          	addi	sp,sp,-32
    80001ab0:	00113c23          	sd	ra,24(sp)
    80001ab4:	00813823          	sd	s0,16(sp)
    80001ab8:	00913423          	sd	s1,8(sp)
    80001abc:	01213023          	sd	s2,0(sp)
    80001ac0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80001ac4:	00004517          	auipc	a0,0x4
    80001ac8:	5c450513          	addi	a0,a0,1476 # 80006088 <CONSOLE_STATUS+0x78>
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	d10080e7          	jalr	-752(ra) # 800017dc <_Z11printStringPKc>
    int test = getc() - '0';
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	874080e7          	jalr	-1932(ra) # 80001348 <_Z4getcv>
    80001adc:	0005091b          	sext.w	s2,a0
    80001ae0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	864080e7          	jalr	-1948(ra) # 80001348 <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80001aec:	fcd9071b          	addiw	a4,s2,-51
    80001af0:	00100793          	li	a5,1
    80001af4:	04e7f263          	bgeu	a5,a4,80001b38 <_Z8userMainv+0x8c>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80001af8:	fcb9091b          	addiw	s2,s2,-53
    80001afc:	00100793          	li	a5,1
    80001b00:	0727f063          	bgeu	a5,s2,80001b60 <_Z8userMainv+0xb4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001b04:	00600793          	li	a5,6
    80001b08:	0697c663          	blt	a5,s1,80001b74 <_Z8userMainv+0xc8>
    80001b0c:	00300793          	li	a5,3
    80001b10:	02f4dc63          	bge	s1,a5,80001b48 <_Z8userMainv+0x9c>
    80001b14:	00100793          	li	a5,1
    80001b18:	08f48863          	beq	s1,a5,80001ba8 <_Z8userMainv+0xfc>
    80001b1c:	00200793          	li	a5,2
    80001b20:	0af49263          	bne	s1,a5,80001bc4 <_Z8userMainv+0x118>
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            //Threads_CPP_API_test();
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001b24:	00004517          	auipc	a0,0x4
    80001b28:	62450513          	addi	a0,a0,1572 # 80006148 <CONSOLE_STATUS+0x138>
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	cb0080e7          	jalr	-848(ra) # 800017dc <_Z11printStringPKc>
#endif
            break;
    80001b34:	0140006f          	j	80001b48 <_Z8userMainv+0x9c>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80001b38:	00004517          	auipc	a0,0x4
    80001b3c:	57050513          	addi	a0,a0,1392 # 800060a8 <CONSOLE_STATUS+0x98>
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	c9c080e7          	jalr	-868(ra) # 800017dc <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	00013903          	ld	s2,0(sp)
    80001b58:	02010113          	addi	sp,sp,32
    80001b5c:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80001b60:	00004517          	auipc	a0,0x4
    80001b64:	57850513          	addi	a0,a0,1400 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	c74080e7          	jalr	-908(ra) # 800017dc <_Z11printStringPKc>
            return;
    80001b70:	fd9ff06f          	j	80001b48 <_Z8userMainv+0x9c>
    switch (test) {
    80001b74:	00700793          	li	a5,7
    80001b78:	04f49663          	bne	s1,a5,80001bc4 <_Z8userMainv+0x118>
            System_Mode_test();
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	62c080e7          	jalr	1580(ra) # 800031a8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001b84:	00004517          	auipc	a0,0x4
    80001b88:	60450513          	addi	a0,a0,1540 # 80006188 <CONSOLE_STATUS+0x178>
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	c50080e7          	jalr	-944(ra) # 800017dc <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001b94:	00004517          	auipc	a0,0x4
    80001b98:	61450513          	addi	a0,a0,1556 # 800061a8 <CONSOLE_STATUS+0x198>
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	c40080e7          	jalr	-960(ra) # 800017dc <_Z11printStringPKc>
            break;
    80001ba4:	fa5ff06f          	j	80001b48 <_Z8userMainv+0x9c>
            Threads_C_API_test();
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	018080e7          	jalr	24(ra) # 80002bc0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001bb0:	00004517          	auipc	a0,0x4
    80001bb4:	55850513          	addi	a0,a0,1368 # 80006108 <CONSOLE_STATUS+0xf8>
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	c24080e7          	jalr	-988(ra) # 800017dc <_Z11printStringPKc>
            break;
    80001bc0:	f89ff06f          	j	80001b48 <_Z8userMainv+0x9c>
            printString("Niste uneli odgovarajuci broj za test\n");
    80001bc4:	00004517          	auipc	a0,0x4
    80001bc8:	63c50513          	addi	a0,a0,1596 # 80006200 <CONSOLE_STATUS+0x1f0>
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	c10080e7          	jalr	-1008(ra) # 800017dc <_Z11printStringPKc>
    80001bd4:	f75ff06f          	j	80001b48 <_Z8userMainv+0x9c>

0000000080001bd8 <main>:
#include "../h/riscv.hpp"
#include "../lib/console.h"

extern void userMain();

int main() {
    80001bd8:	fd010113          	addi	sp,sp,-48
    80001bdc:	02113423          	sd	ra,40(sp)
    80001be0:	02813023          	sd	s0,32(sp)
    80001be4:	00913c23          	sd	s1,24(sp)
    80001be8:	01213823          	sd	s2,16(sp)
    80001bec:	03010413          	addi	s0,sp,48
    MemoryAllocator::initFreeSegment();
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	a9c080e7          	jalr	-1380(ra) # 8000268c <_ZN15MemoryAllocator15initFreeSegmentEv>

    thread_t threads[2];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001bf8:	00005797          	auipc	a5,0x5
    80001bfc:	3007b783          	ld	a5,768(a5) # 80006ef8 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile("csrw stvec, %0" : : "r"(stvec));
    80001c00:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001c04:	00200793          	li	a5,2
    80001c08:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    thread_create(&threads[0], nullptr, nullptr);
    80001c0c:	00000613          	li	a2,0
    80001c10:	00000593          	li	a1,0
    80001c14:	fd040513          	addi	a0,s0,-48
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	698080e7          	jalr	1688(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[1], reinterpret_cast<void (*) (void *)>(userMain), nullptr);
    80001c20:	00000613          	li	a2,0
    80001c24:	00005597          	auipc	a1,0x5
    80001c28:	2c45b583          	ld	a1,708(a1) # 80006ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c2c:	fd840513          	addi	a0,s0,-40
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	680080e7          	jalr	1664(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!(threads[1]->isFinished())) thread_dispatch();
    80001c38:	fd843783          	ld	a5,-40(s0)

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }
    80001c3c:	0307c783          	lbu	a5,48(a5)
    80001c40:	00079863          	bnez	a5,80001c50 <main+0x78>
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	6e0080e7          	jalr	1760(ra) # 80001324 <_Z15thread_dispatchv>
    80001c4c:	fedff06f          	j	80001c38 <main+0x60>

    for(auto &thread : threads) {
    80001c50:	fd040493          	addi	s1,s0,-48
    80001c54:	0140006f          	j	80001c68 <main+0x90>
        delete thread;
    80001c58:	00090513          	mv	a0,s2
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	27c080e7          	jalr	636(ra) # 80001ed8 <_ZdlPv>
    for(auto &thread : threads) {
    80001c64:	00848493          	addi	s1,s1,8
    80001c68:	fe040793          	addi	a5,s0,-32
    80001c6c:	02f48063          	beq	s1,a5,80001c8c <main+0xb4>
        delete thread;
    80001c70:	0004b903          	ld	s2,0(s1)
    80001c74:	fe0908e3          	beqz	s2,80001c64 <main+0x8c>
    ~TCB(){ delete[] stack; }
    80001c78:	01093503          	ld	a0,16(s2)
    80001c7c:	fc050ee3          	beqz	a0,80001c58 <main+0x80>
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	280080e7          	jalr	640(ra) # 80001f00 <_ZdaPv>
    80001c88:	fd1ff06f          	j	80001c58 <main+0x80>
    }

    Scheduler::deleteThreadQueue();
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	684080e7          	jalr	1668(ra) # 80002310 <_ZN9Scheduler17deleteThreadQueueEv>

    printString("Proces zavrsen\n");
    80001c94:	00004517          	auipc	a0,0x4
    80001c98:	59450513          	addi	a0,a0,1428 # 80006228 <CONSOLE_STATUS+0x218>
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	b40080e7          	jalr	-1216(ra) # 800017dc <_Z11printStringPKc>

    return 0;
    80001ca4:	00000513          	li	a0,0
    80001ca8:	02813083          	ld	ra,40(sp)
    80001cac:	02013403          	ld	s0,32(sp)
    80001cb0:	01813483          	ld	s1,24(sp)
    80001cb4:	01013903          	ld	s2,16(sp)
    80001cb8:	03010113          	addi	sp,sp,48
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZN3TCB12createThreadEPFvPvES0_>:
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body, void* arg) {
    80001cc0:	fd010113          	addi	sp,sp,-48
    80001cc4:	02113423          	sd	ra,40(sp)
    80001cc8:	02813023          	sd	s0,32(sp)
    80001ccc:	00913c23          	sd	s1,24(sp)
    80001cd0:	01213823          	sd	s2,16(sp)
    80001cd4:	01313423          	sd	s3,8(sp)
    80001cd8:	03010413          	addi	s0,sp,48
    80001cdc:	00050913          	mv	s2,a0
    80001ce0:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001ce4:	03800513          	li	a0,56
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	1a0080e7          	jalr	416(ra) # 80001e88 <_Znwm>
    80001cf0:	00050493          	mv	s1,a0
        context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
        }),
        time_slice(DEFAULT_TIME_SLICE),
        finished(false) {
    80001cf4:	01253023          	sd	s2,0(a0)
    80001cf8:	01353423          	sd	s3,8(a0)
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001cfc:	00090a63          	beqz	s2,80001d10 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001d00:	00008537          	lui	a0,0x8
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	1ac080e7          	jalr	428(ra) # 80001eb0 <_Znam>
    80001d0c:	0080006f          	j	80001d14 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001d10:	00000513          	li	a0,0
        finished(false) {
    80001d14:	00a4b823          	sd	a0,16(s1)
    80001d18:	00000797          	auipc	a5,0x0
    80001d1c:	0ac78793          	addi	a5,a5,172 # 80001dc4 <_ZN3TCB13threadWrapperEv>
    80001d20:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001d24:	02050863          	beqz	a0,80001d54 <_ZN3TCB12createThreadEPFvPvES0_+0x94>
    80001d28:	000087b7          	lui	a5,0x8
    80001d2c:	00f507b3          	add	a5,a0,a5
        finished(false) {
    80001d30:	02f4b023          	sd	a5,32(s1)
    80001d34:	00200793          	li	a5,2
    80001d38:	02f4b423          	sd	a5,40(s1)
    80001d3c:	02048823          	sb	zero,48(s1)
        if(body != nullptr) Scheduler::put(this);
    80001d40:	00090e63          	beqz	s2,80001d5c <_ZN3TCB12createThreadEPFvPvES0_+0x9c>
    80001d44:	00048513          	mv	a0,s1
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	55c080e7          	jalr	1372(ra) # 800022a4 <_ZN9Scheduler3putEP3TCB>
    80001d50:	0140006f          	j	80001d64 <_ZN3TCB12createThreadEPFvPvES0_+0xa4>
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001d54:	00000793          	li	a5,0
    80001d58:	fd9ff06f          	j	80001d30 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
        else TCB::running = this;
    80001d5c:	00005797          	auipc	a5,0x5
    80001d60:	2097be23          	sd	s1,540(a5) # 80006f78 <_ZN3TCB7runningE>
}
    80001d64:	00048513          	mv	a0,s1
    80001d68:	02813083          	ld	ra,40(sp)
    80001d6c:	02013403          	ld	s0,32(sp)
    80001d70:	01813483          	ld	s1,24(sp)
    80001d74:	01013903          	ld	s2,16(sp)
    80001d78:	00813983          	ld	s3,8(sp)
    80001d7c:	03010113          	addi	sp,sp,48
    80001d80:	00008067          	ret
    80001d84:	00050913          	mv	s2,a0
    return new TCB(body, arg);
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	14c080e7          	jalr	332(ra) # 80001ed8 <_ZdlPv>
    80001d94:	00090513          	mv	a0,s2
    80001d98:	00006097          	auipc	ra,0x6
    80001d9c:	2e0080e7          	jalr	736(ra) # 80008078 <_Unwind_Resume>

0000000080001da0 <_ZN3TCB5yieldEv>:

void TCB::yield() {
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00813423          	sd	s0,8(sp)
    80001da8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001dac:	00000793          	li	a5,0
    80001db0:	00078513          	mv	a0,a5
    Riscv::w_a0(0);
    __asm__ volatile("ecall");
    80001db4:	00000073          	ecall
}
    80001db8:	00813403          	ld	s0,8(sp)
    80001dbc:	01010113          	addi	sp,sp,16
    80001dc0:	00008067          	ret

0000000080001dc4 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001dc4:	fe010113          	addi	sp,sp,-32
    80001dc8:	00113c23          	sd	ra,24(sp)
    80001dcc:	00813823          	sd	s0,16(sp)
    80001dd0:	00913423          	sd	s1,8(sp)
    80001dd4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	150080e7          	jalr	336(ra) # 80001f28 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001de0:	00005497          	auipc	s1,0x5
    80001de4:	19848493          	addi	s1,s1,408 # 80006f78 <_ZN3TCB7runningE>
    80001de8:	0004b783          	ld	a5,0(s1)
    80001dec:	0007b703          	ld	a4,0(a5)
    80001df0:	0087b503          	ld	a0,8(a5)
    80001df4:	000700e7          	jalr	a4
    running->setFinished(true);
    80001df8:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished) { this->finished = finished; }
    80001dfc:	00100713          	li	a4,1
    80001e00:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	f9c080e7          	jalr	-100(ra) # 80001da0 <_ZN3TCB5yieldEv>
    80001e0c:	01813083          	ld	ra,24(sp)
    80001e10:	01013403          	ld	s0,16(sp)
    80001e14:	00813483          	ld	s1,8(sp)
    80001e18:	02010113          	addi	sp,sp,32
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001e20:	fe010113          	addi	sp,sp,-32
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	00813823          	sd	s0,16(sp)
    80001e2c:	00913423          	sd	s1,8(sp)
    80001e30:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001e34:	00005497          	auipc	s1,0x5
    80001e38:	1444b483          	ld	s1,324(s1) # 80006f78 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001e3c:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){ Scheduler::put(old); }
    80001e40:	02078c63          	beqz	a5,80001e78 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	3f8080e7          	jalr	1016(ra) # 8000223c <_ZN9Scheduler3getEv>
    80001e4c:	00005797          	auipc	a5,0x5
    80001e50:	12a7b623          	sd	a0,300(a5) # 80006f78 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001e54:	01850593          	addi	a1,a0,24 # 8018 <_entry-0x7fff7fe8>
    80001e58:	01848513          	addi	a0,s1,24
    80001e5c:	fffff097          	auipc	ra,0xfffff
    80001e60:	3d4080e7          	jalr	980(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e64:	01813083          	ld	ra,24(sp)
    80001e68:	01013403          	ld	s0,16(sp)
    80001e6c:	00813483          	ld	s1,8(sp)
    80001e70:	02010113          	addi	sp,sp,32
    80001e74:	00008067          	ret
    if(!old->isFinished()){ Scheduler::put(old); }
    80001e78:	00048513          	mv	a0,s1
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	428080e7          	jalr	1064(ra) # 800022a4 <_ZN9Scheduler3putEP3TCB>
    80001e84:	fc1ff06f          	j	80001e44 <_ZN3TCB8dispatchEv+0x24>

0000000080001e88 <_Znwm>:
#include "../h/syscall_cpp.hpp"

void *operator new (size_t size){
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00113423          	sd	ra,8(sp)
    80001e90:	00813023          	sd	s0,0(sp)
    80001e94:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	5f0080e7          	jalr	1520(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_Znam>:

void *operator new[] (size_t size){
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	00813023          	sd	s0,0(sp)
    80001ebc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	5c8080e7          	jalr	1480(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001ec8:	00813083          	ld	ra,8(sp)
    80001ecc:	00013403          	ld	s0,0(sp)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <_ZdlPv>:

void operator delete (void *ptr) noexcept {
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	00813023          	sd	s0,0(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	698080e7          	jalr	1688(ra) # 80002580 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_ZdaPv>:

void operator delete[] (void *ptr) noexcept {
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00113423          	sd	ra,8(sp)
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	670080e7          	jalr	1648(ra) # 80002580 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_ZN5Riscv10popSppSpieEv>:

#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"

void Riscv::popSppSpie() {
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00813423          	sd	s0,8(sp)
    80001f30:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001f34:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001f38:	10000793          	li	a5,256
    80001f3c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
    80001f40:	10200073          	sret
}
    80001f44:	00813403          	ld	s0,8(sp)
    80001f48:	01010113          	addi	sp,sp,16
    80001f4c:	00008067          	ret

0000000080001f50 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void *);

void Riscv::handleSupervisorTrap() {
    80001f50:	f9010113          	addi	sp,sp,-112
    80001f54:	06113423          	sd	ra,104(sp)
    80001f58:	06813023          	sd	s0,96(sp)
    80001f5c:	04913c23          	sd	s1,88(sp)
    80001f60:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001f64:	142027f3          	csrr	a5,scause
    80001f68:	faf43023          	sd	a5,-96(s0)
    return scause;
    80001f6c:	fa043703          	ld	a4,-96(s0)
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001f70:	ff870693          	addi	a3,a4,-8
    80001f74:	00100793          	li	a5,1
    80001f78:	12d7f463          	bgeu	a5,a3,800020a0 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        }

        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x8000000000000001UL) {
    80001f7c:	fff00793          	li	a5,-1
    80001f80:	03f79793          	slli	a5,a5,0x3f
    80001f84:	00178793          	addi	a5,a5,1
    80001f88:	24f70e63          	beq	a4,a5,800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
        //     TCB::timeSliceCounter = 0;
        //     TCB::dispatch();
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
    } else if (scause == 0x8000000000000009UL) {
    80001f8c:	fff00793          	li	a5,-1
    80001f90:	03f79793          	slli	a5,a5,0x3f
    80001f94:	00978793          	addi	a5,a5,9
    80001f98:	24f70c63          	beq	a4,a5,800021f0 <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001f9c:	141027f3          	csrr	a5,sepc
    80001fa0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001fa4:	fd843483          	ld	s1,-40(s0)
        console_handler();
        //mc_sip(SIP_SEIP);
    } else {
        // Neocekivani razlog prekida
        uint64 sepc = r_sepc();
        printString("Vrednost sepc:");
    80001fa8:	00004517          	auipc	a0,0x4
    80001fac:	29050513          	addi	a0,a0,656 # 80006238 <CONSOLE_STATUS+0x228>
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	82c080e7          	jalr	-2004(ra) # 800017dc <_Z11printStringPKc>
        printInt(sepc);
    80001fb8:	00000613          	li	a2,0
    80001fbc:	00a00593          	li	a1,10
    80001fc0:	0004851b          	sext.w	a0,s1
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	9c8080e7          	jalr	-1592(ra) # 8000198c <_Z8printIntiii>
        printString(" ");
    80001fcc:	00004517          	auipc	a0,0x4
    80001fd0:	2b450513          	addi	a0,a0,692 # 80006280 <CONSOLE_STATUS+0x270>
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	808080e7          	jalr	-2040(ra) # 800017dc <_Z11printStringPKc>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    80001fdc:	105027f3          	csrr	a5,stvec
    80001fe0:	fcf43823          	sd	a5,-48(s0)
    return stvec;
    80001fe4:	fd043483          	ld	s1,-48(s0)
        uint64 stvec = r_stvec();
        printString("Vrednost stvec:");
    80001fe8:	00004517          	auipc	a0,0x4
    80001fec:	26050513          	addi	a0,a0,608 # 80006248 <CONSOLE_STATUS+0x238>
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	7ec080e7          	jalr	2028(ra) # 800017dc <_Z11printStringPKc>
        printInt(stvec);
    80001ff8:	00000613          	li	a2,0
    80001ffc:	00a00593          	li	a1,10
    80002000:	0004851b          	sext.w	a0,s1
    80002004:	00000097          	auipc	ra,0x0
    80002008:	988080e7          	jalr	-1656(ra) # 8000198c <_Z8printIntiii>
        printString(" ");
    8000200c:	00004517          	auipc	a0,0x4
    80002010:	27450513          	addi	a0,a0,628 # 80006280 <CONSOLE_STATUS+0x270>
    80002014:	fffff097          	auipc	ra,0xfffff
    80002018:	7c8080e7          	jalr	1992(ra) # 800017dc <_Z11printStringPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000201c:	100027f3          	csrr	a5,sstatus
    80002020:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002024:	fc843483          	ld	s1,-56(s0)
        uint64 sstatus = r_sstatus();
        printString("Vrednost sstatus:");
    80002028:	00004517          	auipc	a0,0x4
    8000202c:	23050513          	addi	a0,a0,560 # 80006258 <CONSOLE_STATUS+0x248>
    80002030:	fffff097          	auipc	ra,0xfffff
    80002034:	7ac080e7          	jalr	1964(ra) # 800017dc <_Z11printStringPKc>
        printInt(sstatus);
    80002038:	00000613          	li	a2,0
    8000203c:	00a00593          	li	a1,10
    80002040:	0004851b          	sext.w	a0,s1
    80002044:	00000097          	auipc	ra,0x0
    80002048:	948080e7          	jalr	-1720(ra) # 8000198c <_Z8printIntiii>
        printString(" ");
    8000204c:	00004517          	auipc	a0,0x4
    80002050:	23450513          	addi	a0,a0,564 # 80006280 <CONSOLE_STATUS+0x270>
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	788080e7          	jalr	1928(ra) # 800017dc <_Z11printStringPKc>
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000205c:	142027f3          	csrr	a5,scause
    80002060:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002064:	fc043483          	ld	s1,-64(s0)
        uint64 scause = r_scause();
        printString("Vrednost scause: ");
    80002068:	00004517          	auipc	a0,0x4
    8000206c:	20850513          	addi	a0,a0,520 # 80006270 <CONSOLE_STATUS+0x260>
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	76c080e7          	jalr	1900(ra) # 800017dc <_Z11printStringPKc>
        printInt(scause);
    80002078:	00000613          	li	a2,0
    8000207c:	00a00593          	li	a1,10
    80002080:	0004851b          	sext.w	a0,s1
    80002084:	00000097          	auipc	ra,0x0
    80002088:	908080e7          	jalr	-1784(ra) # 8000198c <_Z8printIntiii>
        printString("\n");
    8000208c:	00004517          	auipc	a0,0x4
    80002090:	fb450513          	addi	a0,a0,-76 # 80006040 <CONSOLE_STATUS+0x30>
    80002094:	fffff097          	auipc	ra,0xfffff
    80002098:	748080e7          	jalr	1864(ra) # 800017dc <_Z11printStringPKc>
    }
}
    8000209c:	0b80006f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800020a0:	141027f3          	csrr	a5,sepc
    800020a4:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800020a8:	fb843783          	ld	a5,-72(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800020ac:	00478793          	addi	a5,a5,4
    800020b0:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800020b4:	100027f3          	csrr	a5,sstatus
    800020b8:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800020bc:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    800020c0:	f8f43c23          	sd	a5,-104(s0)
        TCB::timeSliceCounter = 0;
    800020c4:	00005797          	auipc	a5,0x5
    800020c8:	e3c7b783          	ld	a5,-452(a5) # 80006f00 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020cc:	0007b023          	sd	zero,0(a5)
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    800020d0:	00050793          	mv	a5,a0
    800020d4:	faf43423          	sd	a5,-88(s0)
    return a0;
    800020d8:	fa843783          	ld	a5,-88(s0)
        switch (code) {
    800020dc:	01200713          	li	a4,18
    800020e0:	0ce78863          	beq	a5,a4,800021b0 <_ZN5Riscv20handleSupervisorTrapEv+0x260>
    800020e4:	08f76263          	bltu	a4,a5,80002168 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
    800020e8:	00200713          	li	a4,2
    800020ec:	0ae78063          	beq	a5,a4,8000218c <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
    800020f0:	01100713          	li	a4,17
    800020f4:	02e79663          	bne	a5,a4,80002120 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    800020f8:	00058493          	mv	s1,a1
                __asm__ volatile("mv %0, a2" : "=r" (body));
    800020fc:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a7" : "=r" (arg));
    80002100:	00088593          	mv	a1,a7
                *handle = TCB::createThread(body, arg);
    80002104:	00000097          	auipc	ra,0x0
    80002108:	bbc080e7          	jalr	-1092(ra) # 80001cc0 <_ZN3TCB12createThreadEPFvPvES0_>
    8000210c:	00a4b023          	sd	a0,0(s1)
                if(*handle != nullptr) {
    80002110:	08050a63          	beqz	a0,800021a4 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
                    __asm__ volatile("li a0, 0");
    80002114:	00000513          	li	a0,0
                    __asm__ volatile("sw a0, 80(x8)");
    80002118:	04a42823          	sw	a0,80(s0)
    8000211c:	0200006f          	j	8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
        switch (code) {
    80002120:	00100713          	li	a4,1
    80002124:	00e79c63          	bne	a5,a4,8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80002128:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	35c080e7          	jalr	860(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80002134:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80002138:	04a42823          	sw	a0,80(s0)
        TCB::dispatch();
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	ce4080e7          	jalr	-796(ra) # 80001e20 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80002144:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    80002148:	1007b073          	csrc	sstatus,a5
        w_sepc(sepc);
    8000214c:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80002150:	14179073          	csrw	sepc,a5
}
    80002154:	06813083          	ld	ra,104(sp)
    80002158:	06013403          	ld	s0,96(sp)
    8000215c:	05813483          	ld	s1,88(sp)
    80002160:	07010113          	addi	sp,sp,112
    80002164:	00008067          	ret
        switch (code) {
    80002168:	04100713          	li	a4,65
    8000216c:	06e78263          	beq	a5,a4,800021d0 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
    80002170:	04200713          	li	a4,66
    80002174:	fce794e3          	bne	a5,a4,8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                __asm__ volatile("mv %0, a1" : "=r" (chr));
    80002178:	00058513          	mv	a0,a1
                __putc(chr);
    8000217c:	0ff57513          	andi	a0,a0,255
    80002180:	00003097          	auipc	ra,0x3
    80002184:	1ec080e7          	jalr	492(ra) # 8000536c <__putc>
                break;
    80002188:	fb5ff06f          	j	8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    8000218c:	00058513          	mv	a0,a1
                ret = MemoryAllocator::mem_free(ptr);
    80002190:	00000097          	auipc	ra,0x0
    80002194:	3f0080e7          	jalr	1008(ra) # 80002580 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80002198:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    8000219c:	04a42823          	sw	a0,80(s0)
                break;
    800021a0:	f9dff06f          	j	8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                    __asm__ volatile("li a0, -1");
    800021a4:	fff00513          	li	a0,-1
                    __asm__ volatile("sw a0, 80(x8)");
    800021a8:	04a42823          	sw	a0,80(s0)
    800021ac:	f91ff06f          	j	8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                TCB::running->setFinished(true);
    800021b0:	00005797          	auipc	a5,0x5
    800021b4:	d607b783          	ld	a5,-672(a5) # 80006f10 <_GLOBAL_OFFSET_TABLE_+0x30>
    800021b8:	0007b783          	ld	a5,0(a5)
    void setFinished(bool finished) { this->finished = finished; }
    800021bc:	00100713          	li	a4,1
    800021c0:	02e78823          	sb	a4,48(a5)
                __asm__ volatile("li a0, 0");
    800021c4:	00000513          	li	a0,0
                __asm__ volatile("sw a0, 80(x8)");
    800021c8:	04a42823          	sw	a0,80(s0)
                break;
    800021cc:	f71ff06f          	j	8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                chr = __getc();
    800021d0:	00003097          	auipc	ra,0x3
    800021d4:	1d8080e7          	jalr	472(ra) # 800053a8 <__getc>
                __asm__ volatile("mv a0, %0" : : "r" (chr));
    800021d8:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    800021dc:	04a42823          	sw	a0,80(s0)
            break;
    800021e0:	f5dff06f          	j	8000213c <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    800021e4:	00200793          	li	a5,2
    800021e8:	1447b073          	csrc	sip,a5
}
    800021ec:	f69ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
        console_handler();
    800021f0:	00003097          	auipc	ra,0x3
    800021f4:	1f0080e7          	jalr	496(ra) # 800053e0 <console_handler>
    800021f8:	f5dff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x204>

00000000800021fc <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

void Scheduler::deleteThreadQueue() {
    while(get());
}
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00813423          	sd	s0,8(sp)
    80002204:	01010413          	addi	s0,sp,16
    80002208:	00100793          	li	a5,1
    8000220c:	00f50863          	beq	a0,a5,8000221c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002210:	00813403          	ld	s0,8(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret
    8000221c:	000107b7          	lui	a5,0x10
    80002220:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002224:	fef596e3          	bne	a1,a5,80002210 <_Z41__static_initialization_and_destruction_0ii+0x14>

#include "MemoryAllocator.hpp"

template <typename T> class List {
public:
    List() : head(0), tail(0) {}
    80002228:	00005797          	auipc	a5,0x5
    8000222c:	d6078793          	addi	a5,a5,-672 # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
    80002230:	0007b023          	sd	zero,0(a5)
    80002234:	0007b423          	sd	zero,8(a5)
    80002238:	fd9ff06f          	j	80002210 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000223c <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    8000223c:	fe010113          	addi	sp,sp,-32
    80002240:	00113c23          	sd	ra,24(sp)
    80002244:	00813823          	sd	s0,16(sp)
    80002248:	00913423          	sd	s1,8(sp)
    8000224c:	02010413          	addi	s0,sp,32
            tail = element;
        } else head = tail = element;
    }

    T* removeFirst() {
        if(!head) return nullptr;
    80002250:	00005517          	auipc	a0,0x5
    80002254:	d3853503          	ld	a0,-712(a0) # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
    80002258:	04050263          	beqz	a0,8000229c <_ZN9Scheduler3getEv+0x60>
        Element* element = head;
        head = head->next;
    8000225c:	00853783          	ld	a5,8(a0)
    80002260:	00005717          	auipc	a4,0x5
    80002264:	d2f73423          	sd	a5,-728(a4) # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
        if(!head) tail = nullptr;
    80002268:	02078463          	beqz	a5,80002290 <_ZN9Scheduler3getEv+0x54>

        T* result = element->item;
    8000226c:	00053483          	ld	s1,0(a0)
        void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void* ptr){
            MemoryAllocator::mem_free(ptr);
    80002270:	00000097          	auipc	ra,0x0
    80002274:	310080e7          	jalr	784(ra) # 80002580 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002278:	00048513          	mv	a0,s1
    8000227c:	01813083          	ld	ra,24(sp)
    80002280:	01013403          	ld	s0,16(sp)
    80002284:	00813483          	ld	s1,8(sp)
    80002288:	02010113          	addi	sp,sp,32
    8000228c:	00008067          	ret
        if(!head) tail = nullptr;
    80002290:	00005797          	auipc	a5,0x5
    80002294:	d007b023          	sd	zero,-768(a5) # 80006f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002298:	fd5ff06f          	j	8000226c <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    8000229c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800022a0:	fd9ff06f          	j	80002278 <_ZN9Scheduler3getEv+0x3c>

00000000800022a4 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    800022a4:	fe010113          	addi	sp,sp,-32
    800022a8:	00113c23          	sd	ra,24(sp)
    800022ac:	00813823          	sd	s0,16(sp)
    800022b0:	00913423          	sd	s1,8(sp)
    800022b4:	02010413          	addi	s0,sp,32
    800022b8:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    800022bc:	01000513          	li	a0,16
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	1c8080e7          	jalr	456(ra) # 80002488 <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    800022c8:	00953023          	sd	s1,0(a0)
    800022cc:	00053423          	sd	zero,8(a0)
        if(tail) {
    800022d0:	00005797          	auipc	a5,0x5
    800022d4:	cc07b783          	ld	a5,-832(a5) # 80006f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800022d8:	02078263          	beqz	a5,800022fc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = element;
    800022dc:	00a7b423          	sd	a0,8(a5)
            tail = element;
    800022e0:	00005797          	auipc	a5,0x5
    800022e4:	caa7b823          	sd	a0,-848(a5) # 80006f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800022e8:	01813083          	ld	ra,24(sp)
    800022ec:	01013403          	ld	s0,16(sp)
    800022f0:	00813483          	ld	s1,8(sp)
    800022f4:	02010113          	addi	sp,sp,32
    800022f8:	00008067          	ret
        } else head = tail = element;
    800022fc:	00005797          	auipc	a5,0x5
    80002300:	c8c78793          	addi	a5,a5,-884 # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
    80002304:	00a7b423          	sd	a0,8(a5)
    80002308:	00a7b023          	sd	a0,0(a5)
    8000230c:	fddff06f          	j	800022e8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002310 <_ZN9Scheduler17deleteThreadQueueEv>:
void Scheduler::deleteThreadQueue() {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    while(get());
    80002320:	00000097          	auipc	ra,0x0
    80002324:	f1c080e7          	jalr	-228(ra) # 8000223c <_ZN9Scheduler3getEv>
    80002328:	fe051ce3          	bnez	a0,80002320 <_ZN9Scheduler17deleteThreadQueueEv+0x10>
}
    8000232c:	00813083          	ld	ra,8(sp)
    80002330:	00013403          	ld	s0,0(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00113423          	sd	ra,8(sp)
    80002344:	00813023          	sd	s0,0(sp)
    80002348:	01010413          	addi	s0,sp,16
    8000234c:	000105b7          	lui	a1,0x10
    80002350:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002354:	00100513          	li	a0,1
    80002358:	00000097          	auipc	ra,0x0
    8000235c:	ea4080e7          	jalr	-348(ra) # 800021fc <_Z41__static_initialization_and_destruction_0ii>
    80002360:	00813083          	ld	ra,8(sp)
    80002364:	00013403          	ld	s0,0(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    8000237c:	00050e63          	beqz	a0,80002398 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    80002380:	00053783          	ld	a5,0(a0)
    80002384:	00078a63          	beqz	a5,80002398 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    80002388:	00853683          	ld	a3,8(a0)
    8000238c:	01068713          	addi	a4,a3,16
    80002390:	00e50733          	add	a4,a0,a4
    80002394:	00e78863          	beq	a5,a4,800023a4 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    800023a4:	0087b703          	ld	a4,8(a5)
    800023a8:	00e686b3          	add	a3,a3,a4
    800023ac:	01068693          	addi	a3,a3,16
    800023b0:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    800023b4:	0007b783          	ld	a5,0(a5)
    800023b8:	00f53023          	sd	a5,0(a0)
    800023bc:	fddff06f          	j	80002398 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

00000000800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    800023cc:	02050063          	beqz	a0,800023ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800023d0:	00064e63          	bltz	a2,800023ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800023d4:	00100793          	li	a5,1
    800023d8:	00c7ca63          	blt	a5,a2,800023ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    800023dc:	00058e63          	beqz	a1,800023f8 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    800023e0:	0005b783          	ld	a5,0(a1)
    800023e4:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    800023e8:	00a5b023          	sd	a0,0(a1)
    }
}
    800023ec:	00813403          	ld	s0,8(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret
        if(code == 0) {
    800023f8:	00061e63          	bnez	a2,80002414 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    800023fc:	00005797          	auipc	a5,0x5
    80002400:	b9c78793          	addi	a5,a5,-1124 # 80006f98 <_ZN15MemoryAllocator17head_free_segmentE>
    80002404:	0007b703          	ld	a4,0(a5)
    80002408:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    8000240c:	00a7b023          	sd	a0,0(a5)
    80002410:	fddff06f          	j	800023ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    80002414:	00005797          	auipc	a5,0x5
    80002418:	b8478793          	addi	a5,a5,-1148 # 80006f98 <_ZN15MemoryAllocator17head_free_segmentE>
    8000241c:	0087b703          	ld	a4,8(a5)
    80002420:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    80002424:	00a7b423          	sd	a0,8(a5)
    80002428:	fc5ff06f          	j	800023ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

000000008000242c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00813423          	sd	s0,8(sp)
    80002434:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80002438:	02050063          	beqz	a0,80002458 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    8000243c:	00064e63          	bltz	a2,80002458 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80002440:	00100793          	li	a5,1
    80002444:	00c7ca63          	blt	a5,a2,80002458 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80002448:	00058e63          	beqz	a1,80002464 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    8000244c:	00053783          	ld	a5,0(a0)
    80002450:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    80002454:	00053023          	sd	zero,0(a0)
}
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    80002464:	00061a63          	bnez	a2,80002478 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    80002468:	00053783          	ld	a5,0(a0)
    8000246c:	00005717          	auipc	a4,0x5
    80002470:	b2f73623          	sd	a5,-1236(a4) # 80006f98 <_ZN15MemoryAllocator17head_free_segmentE>
    80002474:	fe1ff06f          	j	80002454 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    80002478:	00053783          	ld	a5,0(a0)
    8000247c:	00005717          	auipc	a4,0x5
    80002480:	b2f73223          	sd	a5,-1244(a4) # 80006fa0 <_ZN15MemoryAllocator17head_data_segmentE>
    80002484:	fd1ff06f          	j	80002454 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

0000000080002488 <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    80002488:	fd010113          	addi	sp,sp,-48
    8000248c:	02113423          	sd	ra,40(sp)
    80002490:	02813023          	sd	s0,32(sp)
    80002494:	00913c23          	sd	s1,24(sp)
    80002498:	01213823          	sd	s2,16(sp)
    8000249c:	01313423          	sd	s3,8(sp)
    800024a0:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    800024a4:	0c050a63          	beqz	a0,80002578 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    800024a8:	03f50513          	addi	a0,a0,63
    800024ac:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    800024b0:	00005497          	auipc	s1,0x5
    800024b4:	ae84b483          	ld	s1,-1304(s1) # 80006f98 <_ZN15MemoryAllocator17head_free_segmentE>
    800024b8:	00000993          	li	s3,0
    800024bc:	08048e63          	beqz	s1,80002558 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    800024c0:	0084b783          	ld	a5,8(s1)
    800024c4:	0127f863          	bgeu	a5,s2,800024d4 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    800024c8:	00048993          	mv	s3,s1
    800024cc:	0004b483          	ld	s1,0(s1)
    800024d0:	fedff06f          	j	800024bc <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    800024d4:	00000613          	li	a2,0
    800024d8:	00098593          	mv	a1,s3
    800024dc:	00048513          	mv	a0,s1
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	f4c080e7          	jalr	-180(ra) # 8000242c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    800024e8:	0084b783          	ld	a5,8(s1)
    800024ec:	41278733          	sub	a4,a5,s2
    800024f0:	00f00693          	li	a3,15
    800024f4:	02e6e463          	bltu	a3,a4,8000251c <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    800024f8:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    800024fc:	00005797          	auipc	a5,0x5
    80002500:	aa47b783          	ld	a5,-1372(a5) # 80006fa0 <_ZN15MemoryAllocator17head_data_segmentE>
    80002504:	00000593          	li	a1,0
    80002508:	02078e63          	beqz	a5,80002544 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    8000250c:	0297fc63          	bgeu	a5,s1,80002544 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80002510:	00078593          	mv	a1,a5
    80002514:	0007b783          	ld	a5,0(a5)
    80002518:	ff1ff06f          	j	80002508 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    8000251c:	01090513          	addi	a0,s2,16
    80002520:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    80002524:	ff070713          	addi	a4,a4,-16
    80002528:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    8000252c:	00000613          	li	a2,0
    80002530:	00098593          	mv	a1,s3
    80002534:	00000097          	auipc	ra,0x0
    80002538:	e8c080e7          	jalr	-372(ra) # 800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    8000253c:	00090793          	mv	a5,s2
    80002540:	fb9ff06f          	j	800024f8 <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    80002544:	00100613          	li	a2,1
    80002548:	00048513          	mv	a0,s1
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	e74080e7          	jalr	-396(ra) # 800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    80002554:	01048493          	addi	s1,s1,16
}
    80002558:	00048513          	mv	a0,s1
    8000255c:	02813083          	ld	ra,40(sp)
    80002560:	02013403          	ld	s0,32(sp)
    80002564:	01813483          	ld	s1,24(sp)
    80002568:	01013903          	ld	s2,16(sp)
    8000256c:	00813983          	ld	s3,8(sp)
    80002570:	03010113          	addi	sp,sp,48
    80002574:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    80002578:	00000493          	li	s1,0
    8000257c:	fddff06f          	j	80002558 <_ZN15MemoryAllocator9mem_allocEm+0xd0>

0000000080002580 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002580:	0c050863          	beqz	a0,80002650 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80002584:	00005797          	auipc	a5,0x5
    80002588:	96c7b783          	ld	a5,-1684(a5) # 80006ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000258c:	0007b783          	ld	a5,0(a5)
    80002590:	0cf56463          	bltu	a0,a5,80002658 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002594:	00005797          	auipc	a5,0x5
    80002598:	9847b783          	ld	a5,-1660(a5) # 80006f18 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000259c:	0007b783          	ld	a5,0(a5)
    800025a0:	0cf57063          	bgeu	a0,a5,80002660 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    800025a4:	fe010113          	addi	sp,sp,-32
    800025a8:	00113c23          	sd	ra,24(sp)
    800025ac:	00813823          	sd	s0,16(sp)
    800025b0:	00913423          	sd	s1,8(sp)
    800025b4:	01213023          	sd	s2,0(sp)
    800025b8:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    800025bc:	00005497          	auipc	s1,0x5
    800025c0:	9e44b483          	ld	s1,-1564(s1) # 80006fa0 <_ZN15MemoryAllocator17head_data_segmentE>
    800025c4:	00000593          	li	a1,0
    800025c8:	0a048063          	beqz	s1,80002668 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    800025cc:	01048793          	addi	a5,s1,16
    800025d0:	00a78a63          	beq	a5,a0,800025e4 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    800025d4:	0af56863          	bltu	a0,a5,80002684 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    800025d8:	00048593          	mv	a1,s1
    800025dc:	0004b483          	ld	s1,0(s1)
    800025e0:	fe9ff06f          	j	800025c8 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    800025e4:	00100613          	li	a2,1
    800025e8:	00048513          	mv	a0,s1
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	e40080e7          	jalr	-448(ra) # 8000242c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    800025f4:	00005917          	auipc	s2,0x5
    800025f8:	9a493903          	ld	s2,-1628(s2) # 80006f98 <_ZN15MemoryAllocator17head_free_segmentE>
    800025fc:	0080006f          	j	80002604 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80002600:	00078913          	mv	s2,a5
    80002604:	00090863          	beqz	s2,80002614 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002608:	00093783          	ld	a5,0(s2)
    8000260c:	00078463          	beqz	a5,80002614 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002610:	fe97e8e3          	bltu	a5,s1,80002600 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    80002614:	0124f463          	bgeu	s1,s2,8000261c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002618:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    8000261c:	00000613          	li	a2,0
    80002620:	00090593          	mv	a1,s2
    80002624:	00048513          	mv	a0,s1
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	d98080e7          	jalr	-616(ra) # 800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    80002630:	00048513          	mv	a0,s1
    80002634:	00000097          	auipc	ra,0x0
    80002638:	d3c080e7          	jalr	-708(ra) # 80002370 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    8000263c:	00090513          	mv	a0,s2
    80002640:	00000097          	auipc	ra,0x0
    80002644:	d30080e7          	jalr	-720(ra) # 80002370 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    80002648:	00000513          	li	a0,0
    8000264c:	0200006f          	j	8000266c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002650:	fff00513          	li	a0,-1
    80002654:	00008067          	ret
    80002658:	fff00513          	li	a0,-1
    8000265c:	00008067          	ret
    80002660:	fff00513          	li	a0,-1
}
    80002664:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002668:	ffe00513          	li	a0,-2
}
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	00013903          	ld	s2,0(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002684:	ffe00513          	li	a0,-2
    80002688:	fe5ff06f          	j	8000266c <_ZN15MemoryAllocator8mem_freeEPv+0xec>

000000008000268c <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00813423          	sd	s0,8(sp)
    80002694:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    80002698:	00005697          	auipc	a3,0x5
    8000269c:	8586b683          	ld	a3,-1960(a3) # 80006ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026a0:	0006b783          	ld	a5,0(a3)
    800026a4:	00005717          	auipc	a4,0x5
    800026a8:	8f470713          	addi	a4,a4,-1804 # 80006f98 <_ZN15MemoryAllocator17head_free_segmentE>
    800026ac:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    800026b0:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    800026b4:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    800026b8:	00005797          	auipc	a5,0x5
    800026bc:	8607b783          	ld	a5,-1952(a5) # 80006f18 <_GLOBAL_OFFSET_TABLE_+0x38>
    800026c0:	0007b783          	ld	a5,0(a5)
    800026c4:	0006b683          	ld	a3,0(a3)
    800026c8:	40d787b3          	sub	a5,a5,a3
    800026cc:	00073703          	ld	a4,0(a4)
    800026d0:	ff078793          	addi	a5,a5,-16
    800026d4:	00f73423          	sd	a5,8(a4)
}
    800026d8:	00813403          	ld	s0,8(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800026e4:	fe010113          	addi	sp,sp,-32
    800026e8:	00113c23          	sd	ra,24(sp)
    800026ec:	00813823          	sd	s0,16(sp)
    800026f0:	00913423          	sd	s1,8(sp)
    800026f4:	01213023          	sd	s2,0(sp)
    800026f8:	02010413          	addi	s0,sp,32
    800026fc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002700:	00100793          	li	a5,1
    80002704:	02a7f863          	bgeu	a5,a0,80002734 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002708:	00a00793          	li	a5,10
    8000270c:	02f577b3          	remu	a5,a0,a5
    80002710:	02078e63          	beqz	a5,8000274c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002714:	fff48513          	addi	a0,s1,-1
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	fcc080e7          	jalr	-52(ra) # 800026e4 <_ZL9fibonaccim>
    80002720:	00050913          	mv	s2,a0
    80002724:	ffe48513          	addi	a0,s1,-2
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	fbc080e7          	jalr	-68(ra) # 800026e4 <_ZL9fibonaccim>
    80002730:	00a90533          	add	a0,s2,a0
}
    80002734:	01813083          	ld	ra,24(sp)
    80002738:	01013403          	ld	s0,16(sp)
    8000273c:	00813483          	ld	s1,8(sp)
    80002740:	00013903          	ld	s2,0(sp)
    80002744:	02010113          	addi	sp,sp,32
    80002748:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	bd8080e7          	jalr	-1064(ra) # 80001324 <_Z15thread_dispatchv>
    80002754:	fc1ff06f          	j	80002714 <_ZL9fibonaccim+0x30>

0000000080002758 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002758:	fe010113          	addi	sp,sp,-32
    8000275c:	00113c23          	sd	ra,24(sp)
    80002760:	00813823          	sd	s0,16(sp)
    80002764:	00913423          	sd	s1,8(sp)
    80002768:	01213023          	sd	s2,0(sp)
    8000276c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002770:	00a00493          	li	s1,10
    80002774:	0400006f          	j	800027b4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002778:	00004517          	auipc	a0,0x4
    8000277c:	8e850513          	addi	a0,a0,-1816 # 80006060 <CONSOLE_STATUS+0x50>
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	05c080e7          	jalr	92(ra) # 800017dc <_Z11printStringPKc>
    80002788:	00000613          	li	a2,0
    8000278c:	00a00593          	li	a1,10
    80002790:	00048513          	mv	a0,s1
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	1f8080e7          	jalr	504(ra) # 8000198c <_Z8printIntiii>
    8000279c:	00004517          	auipc	a0,0x4
    800027a0:	8a450513          	addi	a0,a0,-1884 # 80006040 <CONSOLE_STATUS+0x30>
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	038080e7          	jalr	56(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 13; i++) {
    800027ac:	0014849b          	addiw	s1,s1,1
    800027b0:	0ff4f493          	andi	s1,s1,255
    800027b4:	00c00793          	li	a5,12
    800027b8:	fc97f0e3          	bgeu	a5,s1,80002778 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800027bc:	00004517          	auipc	a0,0x4
    800027c0:	acc50513          	addi	a0,a0,-1332 # 80006288 <CONSOLE_STATUS+0x278>
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	018080e7          	jalr	24(ra) # 800017dc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800027cc:	00500313          	li	t1,5
    thread_dispatch();
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	b54080e7          	jalr	-1196(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800027d8:	01000513          	li	a0,16
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	f08080e7          	jalr	-248(ra) # 800026e4 <_ZL9fibonaccim>
    800027e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800027e8:	00004517          	auipc	a0,0x4
    800027ec:	89050513          	addi	a0,a0,-1904 # 80006078 <CONSOLE_STATUS+0x68>
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	fec080e7          	jalr	-20(ra) # 800017dc <_Z11printStringPKc>
    800027f8:	00000613          	li	a2,0
    800027fc:	00a00593          	li	a1,10
    80002800:	0009051b          	sext.w	a0,s2
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	188080e7          	jalr	392(ra) # 8000198c <_Z8printIntiii>
    8000280c:	00004517          	auipc	a0,0x4
    80002810:	83450513          	addi	a0,a0,-1996 # 80006040 <CONSOLE_STATUS+0x30>
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	fc8080e7          	jalr	-56(ra) # 800017dc <_Z11printStringPKc>
    8000281c:	0400006f          	j	8000285c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002820:	00004517          	auipc	a0,0x4
    80002824:	84050513          	addi	a0,a0,-1984 # 80006060 <CONSOLE_STATUS+0x50>
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	fb4080e7          	jalr	-76(ra) # 800017dc <_Z11printStringPKc>
    80002830:	00000613          	li	a2,0
    80002834:	00a00593          	li	a1,10
    80002838:	00048513          	mv	a0,s1
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	150080e7          	jalr	336(ra) # 8000198c <_Z8printIntiii>
    80002844:	00003517          	auipc	a0,0x3
    80002848:	7fc50513          	addi	a0,a0,2044 # 80006040 <CONSOLE_STATUS+0x30>
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	f90080e7          	jalr	-112(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002854:	0014849b          	addiw	s1,s1,1
    80002858:	0ff4f493          	andi	s1,s1,255
    8000285c:	00f00793          	li	a5,15
    80002860:	fc97f0e3          	bgeu	a5,s1,80002820 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002864:	00004517          	auipc	a0,0x4
    80002868:	a3450513          	addi	a0,a0,-1484 # 80006298 <CONSOLE_STATUS+0x288>
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	f70080e7          	jalr	-144(ra) # 800017dc <_Z11printStringPKc>
    finishedD = true;
    80002874:	00100793          	li	a5,1
    80002878:	00004717          	auipc	a4,0x4
    8000287c:	72f70823          	sb	a5,1840(a4) # 80006fa8 <_ZL9finishedD>
    thread_dispatch();
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	aa4080e7          	jalr	-1372(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002888:	01813083          	ld	ra,24(sp)
    8000288c:	01013403          	ld	s0,16(sp)
    80002890:	00813483          	ld	s1,8(sp)
    80002894:	00013903          	ld	s2,0(sp)
    80002898:	02010113          	addi	sp,sp,32
    8000289c:	00008067          	ret

00000000800028a0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00113c23          	sd	ra,24(sp)
    800028a8:	00813823          	sd	s0,16(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	01213023          	sd	s2,0(sp)
    800028b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800028b8:	00000493          	li	s1,0
    800028bc:	0400006f          	j	800028fc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800028c0:	00003517          	auipc	a0,0x3
    800028c4:	77050513          	addi	a0,a0,1904 # 80006030 <CONSOLE_STATUS+0x20>
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	f14080e7          	jalr	-236(ra) # 800017dc <_Z11printStringPKc>
    800028d0:	00000613          	li	a2,0
    800028d4:	00a00593          	li	a1,10
    800028d8:	00048513          	mv	a0,s1
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	0b0080e7          	jalr	176(ra) # 8000198c <_Z8printIntiii>
    800028e4:	00003517          	auipc	a0,0x3
    800028e8:	75c50513          	addi	a0,a0,1884 # 80006040 <CONSOLE_STATUS+0x30>
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	ef0080e7          	jalr	-272(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 3; i++) {
    800028f4:	0014849b          	addiw	s1,s1,1
    800028f8:	0ff4f493          	andi	s1,s1,255
    800028fc:	00200793          	li	a5,2
    80002900:	fc97f0e3          	bgeu	a5,s1,800028c0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002904:	00004517          	auipc	a0,0x4
    80002908:	9a450513          	addi	a0,a0,-1628 # 800062a8 <CONSOLE_STATUS+0x298>
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	ed0080e7          	jalr	-304(ra) # 800017dc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002914:	00700313          	li	t1,7
    thread_dispatch();
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	a0c080e7          	jalr	-1524(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002920:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002924:	00003517          	auipc	a0,0x3
    80002928:	72450513          	addi	a0,a0,1828 # 80006048 <CONSOLE_STATUS+0x38>
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	eb0080e7          	jalr	-336(ra) # 800017dc <_Z11printStringPKc>
    80002934:	00000613          	li	a2,0
    80002938:	00a00593          	li	a1,10
    8000293c:	0009051b          	sext.w	a0,s2
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	04c080e7          	jalr	76(ra) # 8000198c <_Z8printIntiii>
    80002948:	00003517          	auipc	a0,0x3
    8000294c:	6f850513          	addi	a0,a0,1784 # 80006040 <CONSOLE_STATUS+0x30>
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	e8c080e7          	jalr	-372(ra) # 800017dc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002958:	00c00513          	li	a0,12
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	d88080e7          	jalr	-632(ra) # 800026e4 <_ZL9fibonaccim>
    80002964:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002968:	00003517          	auipc	a0,0x3
    8000296c:	6e850513          	addi	a0,a0,1768 # 80006050 <CONSOLE_STATUS+0x40>
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	e6c080e7          	jalr	-404(ra) # 800017dc <_Z11printStringPKc>
    80002978:	00000613          	li	a2,0
    8000297c:	00a00593          	li	a1,10
    80002980:	0009051b          	sext.w	a0,s2
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	008080e7          	jalr	8(ra) # 8000198c <_Z8printIntiii>
    8000298c:	00003517          	auipc	a0,0x3
    80002990:	6b450513          	addi	a0,a0,1716 # 80006040 <CONSOLE_STATUS+0x30>
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	e48080e7          	jalr	-440(ra) # 800017dc <_Z11printStringPKc>
    8000299c:	0400006f          	j	800029dc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800029a0:	00003517          	auipc	a0,0x3
    800029a4:	69050513          	addi	a0,a0,1680 # 80006030 <CONSOLE_STATUS+0x20>
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	e34080e7          	jalr	-460(ra) # 800017dc <_Z11printStringPKc>
    800029b0:	00000613          	li	a2,0
    800029b4:	00a00593          	li	a1,10
    800029b8:	00048513          	mv	a0,s1
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	fd0080e7          	jalr	-48(ra) # 8000198c <_Z8printIntiii>
    800029c4:	00003517          	auipc	a0,0x3
    800029c8:	67c50513          	addi	a0,a0,1660 # 80006040 <CONSOLE_STATUS+0x30>
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	e10080e7          	jalr	-496(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 6; i++) {
    800029d4:	0014849b          	addiw	s1,s1,1
    800029d8:	0ff4f493          	andi	s1,s1,255
    800029dc:	00500793          	li	a5,5
    800029e0:	fc97f0e3          	bgeu	a5,s1,800029a0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800029e4:	00004517          	auipc	a0,0x4
    800029e8:	8d450513          	addi	a0,a0,-1836 # 800062b8 <CONSOLE_STATUS+0x2a8>
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	df0080e7          	jalr	-528(ra) # 800017dc <_Z11printStringPKc>
    finishedC = true;
    800029f4:	00100793          	li	a5,1
    800029f8:	00004717          	auipc	a4,0x4
    800029fc:	5af708a3          	sb	a5,1457(a4) # 80006fa9 <_ZL9finishedC>
    thread_dispatch();
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	924080e7          	jalr	-1756(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002a08:	01813083          	ld	ra,24(sp)
    80002a0c:	01013403          	ld	s0,16(sp)
    80002a10:	00813483          	ld	s1,8(sp)
    80002a14:	00013903          	ld	s2,0(sp)
    80002a18:	02010113          	addi	sp,sp,32
    80002a1c:	00008067          	ret

0000000080002a20 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	01213023          	sd	s2,0(sp)
    80002a34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002a38:	00000913          	li	s2,0
    80002a3c:	0380006f          	j	80002a74 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002a40:	fffff097          	auipc	ra,0xfffff
    80002a44:	8e4080e7          	jalr	-1820(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a48:	00148493          	addi	s1,s1,1
    80002a4c:	000027b7          	lui	a5,0x2
    80002a50:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a54:	0097ee63          	bltu	a5,s1,80002a70 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a58:	00000713          	li	a4,0
    80002a5c:	000077b7          	lui	a5,0x7
    80002a60:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a64:	fce7eee3          	bltu	a5,a4,80002a40 <_ZL11workerBodyBPv+0x20>
    80002a68:	00170713          	addi	a4,a4,1
    80002a6c:	ff1ff06f          	j	80002a5c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002a70:	00190913          	addi	s2,s2,1
    80002a74:	00f00793          	li	a5,15
    80002a78:	0527e063          	bltu	a5,s2,80002ab8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002a7c:	00003517          	auipc	a0,0x3
    80002a80:	5ac50513          	addi	a0,a0,1452 # 80006028 <CONSOLE_STATUS+0x18>
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	d58080e7          	jalr	-680(ra) # 800017dc <_Z11printStringPKc>
    80002a8c:	00000613          	li	a2,0
    80002a90:	00a00593          	li	a1,10
    80002a94:	0009051b          	sext.w	a0,s2
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	ef4080e7          	jalr	-268(ra) # 8000198c <_Z8printIntiii>
    80002aa0:	00003517          	auipc	a0,0x3
    80002aa4:	5a050513          	addi	a0,a0,1440 # 80006040 <CONSOLE_STATUS+0x30>
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	d34080e7          	jalr	-716(ra) # 800017dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ab0:	00000493          	li	s1,0
    80002ab4:	f99ff06f          	j	80002a4c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002ab8:	00004517          	auipc	a0,0x4
    80002abc:	81050513          	addi	a0,a0,-2032 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	d1c080e7          	jalr	-740(ra) # 800017dc <_Z11printStringPKc>
    finishedB = true;
    80002ac8:	00100793          	li	a5,1
    80002acc:	00004717          	auipc	a4,0x4
    80002ad0:	4cf70f23          	sb	a5,1246(a4) # 80006faa <_ZL9finishedB>
    thread_dispatch();
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	850080e7          	jalr	-1968(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	00013903          	ld	s2,0(sp)
    80002aec:	02010113          	addi	sp,sp,32
    80002af0:	00008067          	ret

0000000080002af4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002af4:	fe010113          	addi	sp,sp,-32
    80002af8:	00113c23          	sd	ra,24(sp)
    80002afc:	00813823          	sd	s0,16(sp)
    80002b00:	00913423          	sd	s1,8(sp)
    80002b04:	01213023          	sd	s2,0(sp)
    80002b08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002b0c:	00000913          	li	s2,0
    80002b10:	0380006f          	j	80002b48 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	810080e7          	jalr	-2032(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b1c:	00148493          	addi	s1,s1,1
    80002b20:	000027b7          	lui	a5,0x2
    80002b24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b28:	0097ee63          	bltu	a5,s1,80002b44 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b2c:	00000713          	li	a4,0
    80002b30:	000077b7          	lui	a5,0x7
    80002b34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b38:	fce7eee3          	bltu	a5,a4,80002b14 <_ZL11workerBodyAPv+0x20>
    80002b3c:	00170713          	addi	a4,a4,1
    80002b40:	ff1ff06f          	j	80002b30 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002b44:	00190913          	addi	s2,s2,1
    80002b48:	00900793          	li	a5,9
    80002b4c:	0527e063          	bltu	a5,s2,80002b8c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002b50:	00003517          	auipc	a0,0x3
    80002b54:	4d050513          	addi	a0,a0,1232 # 80006020 <CONSOLE_STATUS+0x10>
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	c84080e7          	jalr	-892(ra) # 800017dc <_Z11printStringPKc>
    80002b60:	00000613          	li	a2,0
    80002b64:	00a00593          	li	a1,10
    80002b68:	0009051b          	sext.w	a0,s2
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	e20080e7          	jalr	-480(ra) # 8000198c <_Z8printIntiii>
    80002b74:	00003517          	auipc	a0,0x3
    80002b78:	4cc50513          	addi	a0,a0,1228 # 80006040 <CONSOLE_STATUS+0x30>
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	c60080e7          	jalr	-928(ra) # 800017dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b84:	00000493          	li	s1,0
    80002b88:	f99ff06f          	j	80002b20 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002b8c:	00003517          	auipc	a0,0x3
    80002b90:	72c50513          	addi	a0,a0,1836 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	c48080e7          	jalr	-952(ra) # 800017dc <_Z11printStringPKc>
    finishedA = true;
    80002b9c:	00100793          	li	a5,1
    80002ba0:	00004717          	auipc	a4,0x4
    80002ba4:	40f705a3          	sb	a5,1035(a4) # 80006fab <_ZL9finishedA>
}
    80002ba8:	01813083          	ld	ra,24(sp)
    80002bac:	01013403          	ld	s0,16(sp)
    80002bb0:	00813483          	ld	s1,8(sp)
    80002bb4:	00013903          	ld	s2,0(sp)
    80002bb8:	02010113          	addi	sp,sp,32
    80002bbc:	00008067          	ret

0000000080002bc0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002bc0:	fd010113          	addi	sp,sp,-48
    80002bc4:	02113423          	sd	ra,40(sp)
    80002bc8:	02813023          	sd	s0,32(sp)
    80002bcc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002bd0:	00000613          	li	a2,0
    80002bd4:	00000597          	auipc	a1,0x0
    80002bd8:	f2058593          	addi	a1,a1,-224 # 80002af4 <_ZL11workerBodyAPv>
    80002bdc:	fd040513          	addi	a0,s0,-48
    80002be0:	ffffe097          	auipc	ra,0xffffe
    80002be4:	6d0080e7          	jalr	1744(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002be8:	00003517          	auipc	a0,0x3
    80002bec:	6f050513          	addi	a0,a0,1776 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	bec080e7          	jalr	-1044(ra) # 800017dc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002bf8:	00000613          	li	a2,0
    80002bfc:	00000597          	auipc	a1,0x0
    80002c00:	e2458593          	addi	a1,a1,-476 # 80002a20 <_ZL11workerBodyBPv>
    80002c04:	fd840513          	addi	a0,s0,-40
    80002c08:	ffffe097          	auipc	ra,0xffffe
    80002c0c:	6a8080e7          	jalr	1704(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002c10:	00003517          	auipc	a0,0x3
    80002c14:	6e050513          	addi	a0,a0,1760 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	bc4080e7          	jalr	-1084(ra) # 800017dc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002c20:	00000613          	li	a2,0
    80002c24:	00000597          	auipc	a1,0x0
    80002c28:	c7c58593          	addi	a1,a1,-900 # 800028a0 <_ZL11workerBodyCPv>
    80002c2c:	fe040513          	addi	a0,s0,-32
    80002c30:	ffffe097          	auipc	ra,0xffffe
    80002c34:	680080e7          	jalr	1664(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002c38:	00003517          	auipc	a0,0x3
    80002c3c:	6d050513          	addi	a0,a0,1744 # 80006308 <CONSOLE_STATUS+0x2f8>
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	b9c080e7          	jalr	-1124(ra) # 800017dc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002c48:	00000613          	li	a2,0
    80002c4c:	00000597          	auipc	a1,0x0
    80002c50:	b0c58593          	addi	a1,a1,-1268 # 80002758 <_ZL11workerBodyDPv>
    80002c54:	fe840513          	addi	a0,s0,-24
    80002c58:	ffffe097          	auipc	ra,0xffffe
    80002c5c:	658080e7          	jalr	1624(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80002c60:	00003517          	auipc	a0,0x3
    80002c64:	6c050513          	addi	a0,a0,1728 # 80006320 <CONSOLE_STATUS+0x310>
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	b74080e7          	jalr	-1164(ra) # 800017dc <_Z11printStringPKc>
    80002c70:	00c0006f          	j	80002c7c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002c74:	ffffe097          	auipc	ra,0xffffe
    80002c78:	6b0080e7          	jalr	1712(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002c7c:	00004797          	auipc	a5,0x4
    80002c80:	32f7c783          	lbu	a5,815(a5) # 80006fab <_ZL9finishedA>
    80002c84:	fe0788e3          	beqz	a5,80002c74 <_Z18Threads_C_API_testv+0xb4>
    80002c88:	00004797          	auipc	a5,0x4
    80002c8c:	3227c783          	lbu	a5,802(a5) # 80006faa <_ZL9finishedB>
    80002c90:	fe0782e3          	beqz	a5,80002c74 <_Z18Threads_C_API_testv+0xb4>
    80002c94:	00004797          	auipc	a5,0x4
    80002c98:	3157c783          	lbu	a5,789(a5) # 80006fa9 <_ZL9finishedC>
    80002c9c:	fc078ce3          	beqz	a5,80002c74 <_Z18Threads_C_API_testv+0xb4>
    80002ca0:	00004797          	auipc	a5,0x4
    80002ca4:	3087c783          	lbu	a5,776(a5) # 80006fa8 <_ZL9finishedD>
    80002ca8:	fc0786e3          	beqz	a5,80002c74 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002cac:	02813083          	ld	ra,40(sp)
    80002cb0:	02013403          	ld	s0,32(sp)
    80002cb4:	03010113          	addi	sp,sp,48
    80002cb8:	00008067          	ret

0000000080002cbc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00113c23          	sd	ra,24(sp)
    80002cc4:	00813823          	sd	s0,16(sp)
    80002cc8:	00913423          	sd	s1,8(sp)
    80002ccc:	01213023          	sd	s2,0(sp)
    80002cd0:	02010413          	addi	s0,sp,32
    80002cd4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002cd8:	00100793          	li	a5,1
    80002cdc:	02a7f863          	bgeu	a5,a0,80002d0c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002ce0:	00a00793          	li	a5,10
    80002ce4:	02f577b3          	remu	a5,a0,a5
    80002ce8:	02078e63          	beqz	a5,80002d24 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002cec:	fff48513          	addi	a0,s1,-1
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	fcc080e7          	jalr	-52(ra) # 80002cbc <_ZL9fibonaccim>
    80002cf8:	00050913          	mv	s2,a0
    80002cfc:	ffe48513          	addi	a0,s1,-2
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	fbc080e7          	jalr	-68(ra) # 80002cbc <_ZL9fibonaccim>
    80002d08:	00a90533          	add	a0,s2,a0
}
    80002d0c:	01813083          	ld	ra,24(sp)
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	00013903          	ld	s2,0(sp)
    80002d1c:	02010113          	addi	sp,sp,32
    80002d20:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002d24:	ffffe097          	auipc	ra,0xffffe
    80002d28:	600080e7          	jalr	1536(ra) # 80001324 <_Z15thread_dispatchv>
    80002d2c:	fc1ff06f          	j	80002cec <_ZL9fibonaccim+0x30>

0000000080002d30 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002d30:	fe010113          	addi	sp,sp,-32
    80002d34:	00113c23          	sd	ra,24(sp)
    80002d38:	00813823          	sd	s0,16(sp)
    80002d3c:	00913423          	sd	s1,8(sp)
    80002d40:	01213023          	sd	s2,0(sp)
    80002d44:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002d48:	00a00493          	li	s1,10
    80002d4c:	0400006f          	j	80002d8c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d50:	00003517          	auipc	a0,0x3
    80002d54:	31050513          	addi	a0,a0,784 # 80006060 <CONSOLE_STATUS+0x50>
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	a84080e7          	jalr	-1404(ra) # 800017dc <_Z11printStringPKc>
    80002d60:	00000613          	li	a2,0
    80002d64:	00a00593          	li	a1,10
    80002d68:	00048513          	mv	a0,s1
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	c20080e7          	jalr	-992(ra) # 8000198c <_Z8printIntiii>
    80002d74:	00003517          	auipc	a0,0x3
    80002d78:	2cc50513          	addi	a0,a0,716 # 80006040 <CONSOLE_STATUS+0x30>
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	a60080e7          	jalr	-1440(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002d84:	0014849b          	addiw	s1,s1,1
    80002d88:	0ff4f493          	andi	s1,s1,255
    80002d8c:	00c00793          	li	a5,12
    80002d90:	fc97f0e3          	bgeu	a5,s1,80002d50 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002d94:	00003517          	auipc	a0,0x3
    80002d98:	4f450513          	addi	a0,a0,1268 # 80006288 <CONSOLE_STATUS+0x278>
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	a40080e7          	jalr	-1472(ra) # 800017dc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002da4:	00500313          	li	t1,5
    thread_dispatch();
    80002da8:	ffffe097          	auipc	ra,0xffffe
    80002dac:	57c080e7          	jalr	1404(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002db0:	01000513          	li	a0,16
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	f08080e7          	jalr	-248(ra) # 80002cbc <_ZL9fibonaccim>
    80002dbc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002dc0:	00003517          	auipc	a0,0x3
    80002dc4:	2b850513          	addi	a0,a0,696 # 80006078 <CONSOLE_STATUS+0x68>
    80002dc8:	fffff097          	auipc	ra,0xfffff
    80002dcc:	a14080e7          	jalr	-1516(ra) # 800017dc <_Z11printStringPKc>
    80002dd0:	00000613          	li	a2,0
    80002dd4:	00a00593          	li	a1,10
    80002dd8:	0009051b          	sext.w	a0,s2
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	bb0080e7          	jalr	-1104(ra) # 8000198c <_Z8printIntiii>
    80002de4:	00003517          	auipc	a0,0x3
    80002de8:	25c50513          	addi	a0,a0,604 # 80006040 <CONSOLE_STATUS+0x30>
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	9f0080e7          	jalr	-1552(ra) # 800017dc <_Z11printStringPKc>
    80002df4:	0400006f          	j	80002e34 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002df8:	00003517          	auipc	a0,0x3
    80002dfc:	26850513          	addi	a0,a0,616 # 80006060 <CONSOLE_STATUS+0x50>
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	9dc080e7          	jalr	-1572(ra) # 800017dc <_Z11printStringPKc>
    80002e08:	00000613          	li	a2,0
    80002e0c:	00a00593          	li	a1,10
    80002e10:	00048513          	mv	a0,s1
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	b78080e7          	jalr	-1160(ra) # 8000198c <_Z8printIntiii>
    80002e1c:	00003517          	auipc	a0,0x3
    80002e20:	22450513          	addi	a0,a0,548 # 80006040 <CONSOLE_STATUS+0x30>
    80002e24:	fffff097          	auipc	ra,0xfffff
    80002e28:	9b8080e7          	jalr	-1608(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e2c:	0014849b          	addiw	s1,s1,1
    80002e30:	0ff4f493          	andi	s1,s1,255
    80002e34:	00f00793          	li	a5,15
    80002e38:	fc97f0e3          	bgeu	a5,s1,80002df8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002e3c:	00003517          	auipc	a0,0x3
    80002e40:	45c50513          	addi	a0,a0,1116 # 80006298 <CONSOLE_STATUS+0x288>
    80002e44:	fffff097          	auipc	ra,0xfffff
    80002e48:	998080e7          	jalr	-1640(ra) # 800017dc <_Z11printStringPKc>
    finishedD = true;
    80002e4c:	00100793          	li	a5,1
    80002e50:	00004717          	auipc	a4,0x4
    80002e54:	14f70e23          	sb	a5,348(a4) # 80006fac <_ZL9finishedD>
    thread_dispatch();
    80002e58:	ffffe097          	auipc	ra,0xffffe
    80002e5c:	4cc080e7          	jalr	1228(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002e60:	01813083          	ld	ra,24(sp)
    80002e64:	01013403          	ld	s0,16(sp)
    80002e68:	00813483          	ld	s1,8(sp)
    80002e6c:	00013903          	ld	s2,0(sp)
    80002e70:	02010113          	addi	sp,sp,32
    80002e74:	00008067          	ret

0000000080002e78 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002e78:	fe010113          	addi	sp,sp,-32
    80002e7c:	00113c23          	sd	ra,24(sp)
    80002e80:	00813823          	sd	s0,16(sp)
    80002e84:	00913423          	sd	s1,8(sp)
    80002e88:	01213023          	sd	s2,0(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002e90:	00000493          	li	s1,0
    80002e94:	0400006f          	j	80002ed4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002e98:	00003517          	auipc	a0,0x3
    80002e9c:	19850513          	addi	a0,a0,408 # 80006030 <CONSOLE_STATUS+0x20>
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	93c080e7          	jalr	-1732(ra) # 800017dc <_Z11printStringPKc>
    80002ea8:	00000613          	li	a2,0
    80002eac:	00a00593          	li	a1,10
    80002eb0:	00048513          	mv	a0,s1
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	ad8080e7          	jalr	-1320(ra) # 8000198c <_Z8printIntiii>
    80002ebc:	00003517          	auipc	a0,0x3
    80002ec0:	18450513          	addi	a0,a0,388 # 80006040 <CONSOLE_STATUS+0x30>
    80002ec4:	fffff097          	auipc	ra,0xfffff
    80002ec8:	918080e7          	jalr	-1768(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002ecc:	0014849b          	addiw	s1,s1,1
    80002ed0:	0ff4f493          	andi	s1,s1,255
    80002ed4:	00200793          	li	a5,2
    80002ed8:	fc97f0e3          	bgeu	a5,s1,80002e98 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002edc:	00003517          	auipc	a0,0x3
    80002ee0:	3cc50513          	addi	a0,a0,972 # 800062a8 <CONSOLE_STATUS+0x298>
    80002ee4:	fffff097          	auipc	ra,0xfffff
    80002ee8:	8f8080e7          	jalr	-1800(ra) # 800017dc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002eec:	00700313          	li	t1,7
    thread_dispatch();
    80002ef0:	ffffe097          	auipc	ra,0xffffe
    80002ef4:	434080e7          	jalr	1076(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ef8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002efc:	00003517          	auipc	a0,0x3
    80002f00:	14c50513          	addi	a0,a0,332 # 80006048 <CONSOLE_STATUS+0x38>
    80002f04:	fffff097          	auipc	ra,0xfffff
    80002f08:	8d8080e7          	jalr	-1832(ra) # 800017dc <_Z11printStringPKc>
    80002f0c:	00000613          	li	a2,0
    80002f10:	00a00593          	li	a1,10
    80002f14:	0009051b          	sext.w	a0,s2
    80002f18:	fffff097          	auipc	ra,0xfffff
    80002f1c:	a74080e7          	jalr	-1420(ra) # 8000198c <_Z8printIntiii>
    80002f20:	00003517          	auipc	a0,0x3
    80002f24:	12050513          	addi	a0,a0,288 # 80006040 <CONSOLE_STATUS+0x30>
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	8b4080e7          	jalr	-1868(ra) # 800017dc <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002f30:	00c00513          	li	a0,12
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	d88080e7          	jalr	-632(ra) # 80002cbc <_ZL9fibonaccim>
    80002f3c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002f40:	00003517          	auipc	a0,0x3
    80002f44:	11050513          	addi	a0,a0,272 # 80006050 <CONSOLE_STATUS+0x40>
    80002f48:	fffff097          	auipc	ra,0xfffff
    80002f4c:	894080e7          	jalr	-1900(ra) # 800017dc <_Z11printStringPKc>
    80002f50:	00000613          	li	a2,0
    80002f54:	00a00593          	li	a1,10
    80002f58:	0009051b          	sext.w	a0,s2
    80002f5c:	fffff097          	auipc	ra,0xfffff
    80002f60:	a30080e7          	jalr	-1488(ra) # 8000198c <_Z8printIntiii>
    80002f64:	00003517          	auipc	a0,0x3
    80002f68:	0dc50513          	addi	a0,a0,220 # 80006040 <CONSOLE_STATUS+0x30>
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	870080e7          	jalr	-1936(ra) # 800017dc <_Z11printStringPKc>
    80002f74:	0400006f          	j	80002fb4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002f78:	00003517          	auipc	a0,0x3
    80002f7c:	0b850513          	addi	a0,a0,184 # 80006030 <CONSOLE_STATUS+0x20>
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	85c080e7          	jalr	-1956(ra) # 800017dc <_Z11printStringPKc>
    80002f88:	00000613          	li	a2,0
    80002f8c:	00a00593          	li	a1,10
    80002f90:	00048513          	mv	a0,s1
    80002f94:	fffff097          	auipc	ra,0xfffff
    80002f98:	9f8080e7          	jalr	-1544(ra) # 8000198c <_Z8printIntiii>
    80002f9c:	00003517          	auipc	a0,0x3
    80002fa0:	0a450513          	addi	a0,a0,164 # 80006040 <CONSOLE_STATUS+0x30>
    80002fa4:	fffff097          	auipc	ra,0xfffff
    80002fa8:	838080e7          	jalr	-1992(ra) # 800017dc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002fac:	0014849b          	addiw	s1,s1,1
    80002fb0:	0ff4f493          	andi	s1,s1,255
    80002fb4:	00500793          	li	a5,5
    80002fb8:	fc97f0e3          	bgeu	a5,s1,80002f78 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002fbc:	00003517          	auipc	a0,0x3
    80002fc0:	2fc50513          	addi	a0,a0,764 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	818080e7          	jalr	-2024(ra) # 800017dc <_Z11printStringPKc>
    finishedC = true;
    80002fcc:	00100793          	li	a5,1
    80002fd0:	00004717          	auipc	a4,0x4
    80002fd4:	fcf70ea3          	sb	a5,-35(a4) # 80006fad <_ZL9finishedC>
    thread_dispatch();
    80002fd8:	ffffe097          	auipc	ra,0xffffe
    80002fdc:	34c080e7          	jalr	844(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002fe0:	01813083          	ld	ra,24(sp)
    80002fe4:	01013403          	ld	s0,16(sp)
    80002fe8:	00813483          	ld	s1,8(sp)
    80002fec:	00013903          	ld	s2,0(sp)
    80002ff0:	02010113          	addi	sp,sp,32
    80002ff4:	00008067          	ret

0000000080002ff8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002ff8:	fe010113          	addi	sp,sp,-32
    80002ffc:	00113c23          	sd	ra,24(sp)
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	01213023          	sd	s2,0(sp)
    8000300c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003010:	00000913          	li	s2,0
    80003014:	0400006f          	j	80003054 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003018:	ffffe097          	auipc	ra,0xffffe
    8000301c:	30c080e7          	jalr	780(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003020:	00148493          	addi	s1,s1,1
    80003024:	000027b7          	lui	a5,0x2
    80003028:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000302c:	0097ee63          	bltu	a5,s1,80003048 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003030:	00000713          	li	a4,0
    80003034:	000077b7          	lui	a5,0x7
    80003038:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000303c:	fce7eee3          	bltu	a5,a4,80003018 <_ZL11workerBodyBPv+0x20>
    80003040:	00170713          	addi	a4,a4,1
    80003044:	ff1ff06f          	j	80003034 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003048:	00a00793          	li	a5,10
    8000304c:	04f90663          	beq	s2,a5,80003098 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003050:	00190913          	addi	s2,s2,1
    80003054:	00f00793          	li	a5,15
    80003058:	0527e463          	bltu	a5,s2,800030a0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000305c:	00003517          	auipc	a0,0x3
    80003060:	fcc50513          	addi	a0,a0,-52 # 80006028 <CONSOLE_STATUS+0x18>
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	778080e7          	jalr	1912(ra) # 800017dc <_Z11printStringPKc>
    8000306c:	00000613          	li	a2,0
    80003070:	00a00593          	li	a1,10
    80003074:	0009051b          	sext.w	a0,s2
    80003078:	fffff097          	auipc	ra,0xfffff
    8000307c:	914080e7          	jalr	-1772(ra) # 8000198c <_Z8printIntiii>
    80003080:	00003517          	auipc	a0,0x3
    80003084:	fc050513          	addi	a0,a0,-64 # 80006040 <CONSOLE_STATUS+0x30>
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	754080e7          	jalr	1876(ra) # 800017dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003090:	00000493          	li	s1,0
    80003094:	f91ff06f          	j	80003024 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003098:	14102ff3          	csrr	t6,sepc
    8000309c:	fb5ff06f          	j	80003050 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800030a0:	00003517          	auipc	a0,0x3
    800030a4:	22850513          	addi	a0,a0,552 # 800062c8 <CONSOLE_STATUS+0x2b8>
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	734080e7          	jalr	1844(ra) # 800017dc <_Z11printStringPKc>
    finishedB = true;
    800030b0:	00100793          	li	a5,1
    800030b4:	00004717          	auipc	a4,0x4
    800030b8:	eef70d23          	sb	a5,-262(a4) # 80006fae <_ZL9finishedB>
    thread_dispatch();
    800030bc:	ffffe097          	auipc	ra,0xffffe
    800030c0:	268080e7          	jalr	616(ra) # 80001324 <_Z15thread_dispatchv>
}
    800030c4:	01813083          	ld	ra,24(sp)
    800030c8:	01013403          	ld	s0,16(sp)
    800030cc:	00813483          	ld	s1,8(sp)
    800030d0:	00013903          	ld	s2,0(sp)
    800030d4:	02010113          	addi	sp,sp,32
    800030d8:	00008067          	ret

00000000800030dc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800030dc:	fe010113          	addi	sp,sp,-32
    800030e0:	00113c23          	sd	ra,24(sp)
    800030e4:	00813823          	sd	s0,16(sp)
    800030e8:	00913423          	sd	s1,8(sp)
    800030ec:	01213023          	sd	s2,0(sp)
    800030f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800030f4:	00000913          	li	s2,0
    800030f8:	0380006f          	j	80003130 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	228080e7          	jalr	552(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003104:	00148493          	addi	s1,s1,1
    80003108:	000027b7          	lui	a5,0x2
    8000310c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003110:	0097ee63          	bltu	a5,s1,8000312c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003114:	00000713          	li	a4,0
    80003118:	000077b7          	lui	a5,0x7
    8000311c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003120:	fce7eee3          	bltu	a5,a4,800030fc <_ZL11workerBodyAPv+0x20>
    80003124:	00170713          	addi	a4,a4,1
    80003128:	ff1ff06f          	j	80003118 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000312c:	00190913          	addi	s2,s2,1
    80003130:	00900793          	li	a5,9
    80003134:	0527e063          	bltu	a5,s2,80003174 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003138:	00003517          	auipc	a0,0x3
    8000313c:	ee850513          	addi	a0,a0,-280 # 80006020 <CONSOLE_STATUS+0x10>
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	69c080e7          	jalr	1692(ra) # 800017dc <_Z11printStringPKc>
    80003148:	00000613          	li	a2,0
    8000314c:	00a00593          	li	a1,10
    80003150:	0009051b          	sext.w	a0,s2
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	838080e7          	jalr	-1992(ra) # 8000198c <_Z8printIntiii>
    8000315c:	00003517          	auipc	a0,0x3
    80003160:	ee450513          	addi	a0,a0,-284 # 80006040 <CONSOLE_STATUS+0x30>
    80003164:	ffffe097          	auipc	ra,0xffffe
    80003168:	678080e7          	jalr	1656(ra) # 800017dc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000316c:	00000493          	li	s1,0
    80003170:	f99ff06f          	j	80003108 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003174:	00003517          	auipc	a0,0x3
    80003178:	14450513          	addi	a0,a0,324 # 800062b8 <CONSOLE_STATUS+0x2a8>
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	660080e7          	jalr	1632(ra) # 800017dc <_Z11printStringPKc>
    finishedA = true;
    80003184:	00100793          	li	a5,1
    80003188:	00004717          	auipc	a4,0x4
    8000318c:	e2f703a3          	sb	a5,-473(a4) # 80006faf <_ZL9finishedA>
}
    80003190:	01813083          	ld	ra,24(sp)
    80003194:	01013403          	ld	s0,16(sp)
    80003198:	00813483          	ld	s1,8(sp)
    8000319c:	00013903          	ld	s2,0(sp)
    800031a0:	02010113          	addi	sp,sp,32
    800031a4:	00008067          	ret

00000000800031a8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800031a8:	fd010113          	addi	sp,sp,-48
    800031ac:	02113423          	sd	ra,40(sp)
    800031b0:	02813023          	sd	s0,32(sp)
    800031b4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800031b8:	00000613          	li	a2,0
    800031bc:	00000597          	auipc	a1,0x0
    800031c0:	f2058593          	addi	a1,a1,-224 # 800030dc <_ZL11workerBodyAPv>
    800031c4:	fd040513          	addi	a0,s0,-48
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	0e8080e7          	jalr	232(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800031d0:	00003517          	auipc	a0,0x3
    800031d4:	10850513          	addi	a0,a0,264 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	604080e7          	jalr	1540(ra) # 800017dc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800031e0:	00000613          	li	a2,0
    800031e4:	00000597          	auipc	a1,0x0
    800031e8:	e1458593          	addi	a1,a1,-492 # 80002ff8 <_ZL11workerBodyBPv>
    800031ec:	fd840513          	addi	a0,s0,-40
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	0c0080e7          	jalr	192(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800031f8:	00003517          	auipc	a0,0x3
    800031fc:	0f850513          	addi	a0,a0,248 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	5dc080e7          	jalr	1500(ra) # 800017dc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003208:	00000613          	li	a2,0
    8000320c:	00000597          	auipc	a1,0x0
    80003210:	c6c58593          	addi	a1,a1,-916 # 80002e78 <_ZL11workerBodyCPv>
    80003214:	fe040513          	addi	a0,s0,-32
    80003218:	ffffe097          	auipc	ra,0xffffe
    8000321c:	098080e7          	jalr	152(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80003220:	00003517          	auipc	a0,0x3
    80003224:	0e850513          	addi	a0,a0,232 # 80006308 <CONSOLE_STATUS+0x2f8>
    80003228:	ffffe097          	auipc	ra,0xffffe
    8000322c:	5b4080e7          	jalr	1460(ra) # 800017dc <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003230:	00000613          	li	a2,0
    80003234:	00000597          	auipc	a1,0x0
    80003238:	afc58593          	addi	a1,a1,-1284 # 80002d30 <_ZL11workerBodyDPv>
    8000323c:	fe840513          	addi	a0,s0,-24
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	070080e7          	jalr	112(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80003248:	00003517          	auipc	a0,0x3
    8000324c:	0d850513          	addi	a0,a0,216 # 80006320 <CONSOLE_STATUS+0x310>
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	58c080e7          	jalr	1420(ra) # 800017dc <_Z11printStringPKc>
    80003258:	00c0006f          	j	80003264 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000325c:	ffffe097          	auipc	ra,0xffffe
    80003260:	0c8080e7          	jalr	200(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003264:	00004797          	auipc	a5,0x4
    80003268:	d4b7c783          	lbu	a5,-693(a5) # 80006faf <_ZL9finishedA>
    8000326c:	fe0788e3          	beqz	a5,8000325c <_Z16System_Mode_testv+0xb4>
    80003270:	00004797          	auipc	a5,0x4
    80003274:	d3e7c783          	lbu	a5,-706(a5) # 80006fae <_ZL9finishedB>
    80003278:	fe0782e3          	beqz	a5,8000325c <_Z16System_Mode_testv+0xb4>
    8000327c:	00004797          	auipc	a5,0x4
    80003280:	d317c783          	lbu	a5,-719(a5) # 80006fad <_ZL9finishedC>
    80003284:	fc078ce3          	beqz	a5,8000325c <_Z16System_Mode_testv+0xb4>
    80003288:	00004797          	auipc	a5,0x4
    8000328c:	d247c783          	lbu	a5,-732(a5) # 80006fac <_ZL9finishedD>
    80003290:	fc0786e3          	beqz	a5,8000325c <_Z16System_Mode_testv+0xb4>
    }

}
    80003294:	02813083          	ld	ra,40(sp)
    80003298:	02013403          	ld	s0,32(sp)
    8000329c:	03010113          	addi	sp,sp,48
    800032a0:	00008067          	ret

00000000800032a4 <start>:
    800032a4:	ff010113          	addi	sp,sp,-16
    800032a8:	00813423          	sd	s0,8(sp)
    800032ac:	01010413          	addi	s0,sp,16
    800032b0:	300027f3          	csrr	a5,mstatus
    800032b4:	ffffe737          	lui	a4,0xffffe
    800032b8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff65ef>
    800032bc:	00e7f7b3          	and	a5,a5,a4
    800032c0:	00001737          	lui	a4,0x1
    800032c4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800032c8:	00e7e7b3          	or	a5,a5,a4
    800032cc:	30079073          	csrw	mstatus,a5
    800032d0:	00000797          	auipc	a5,0x0
    800032d4:	16078793          	addi	a5,a5,352 # 80003430 <system_main>
    800032d8:	34179073          	csrw	mepc,a5
    800032dc:	00000793          	li	a5,0
    800032e0:	18079073          	csrw	satp,a5
    800032e4:	000107b7          	lui	a5,0x10
    800032e8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800032ec:	30279073          	csrw	medeleg,a5
    800032f0:	30379073          	csrw	mideleg,a5
    800032f4:	104027f3          	csrr	a5,sie
    800032f8:	2227e793          	ori	a5,a5,546
    800032fc:	10479073          	csrw	sie,a5
    80003300:	fff00793          	li	a5,-1
    80003304:	00a7d793          	srli	a5,a5,0xa
    80003308:	3b079073          	csrw	pmpaddr0,a5
    8000330c:	00f00793          	li	a5,15
    80003310:	3a079073          	csrw	pmpcfg0,a5
    80003314:	f14027f3          	csrr	a5,mhartid
    80003318:	0200c737          	lui	a4,0x200c
    8000331c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003320:	0007869b          	sext.w	a3,a5
    80003324:	00269713          	slli	a4,a3,0x2
    80003328:	000f4637          	lui	a2,0xf4
    8000332c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003330:	00d70733          	add	a4,a4,a3
    80003334:	0037979b          	slliw	a5,a5,0x3
    80003338:	020046b7          	lui	a3,0x2004
    8000333c:	00d787b3          	add	a5,a5,a3
    80003340:	00c585b3          	add	a1,a1,a2
    80003344:	00371693          	slli	a3,a4,0x3
    80003348:	00004717          	auipc	a4,0x4
    8000334c:	c6870713          	addi	a4,a4,-920 # 80006fb0 <timer_scratch>
    80003350:	00b7b023          	sd	a1,0(a5)
    80003354:	00d70733          	add	a4,a4,a3
    80003358:	00f73c23          	sd	a5,24(a4)
    8000335c:	02c73023          	sd	a2,32(a4)
    80003360:	34071073          	csrw	mscratch,a4
    80003364:	00000797          	auipc	a5,0x0
    80003368:	6ec78793          	addi	a5,a5,1772 # 80003a50 <timervec>
    8000336c:	30579073          	csrw	mtvec,a5
    80003370:	300027f3          	csrr	a5,mstatus
    80003374:	0087e793          	ori	a5,a5,8
    80003378:	30079073          	csrw	mstatus,a5
    8000337c:	304027f3          	csrr	a5,mie
    80003380:	0807e793          	ori	a5,a5,128
    80003384:	30479073          	csrw	mie,a5
    80003388:	f14027f3          	csrr	a5,mhartid
    8000338c:	0007879b          	sext.w	a5,a5
    80003390:	00078213          	mv	tp,a5
    80003394:	30200073          	mret
    80003398:	00813403          	ld	s0,8(sp)
    8000339c:	01010113          	addi	sp,sp,16
    800033a0:	00008067          	ret

00000000800033a4 <timerinit>:
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	f14027f3          	csrr	a5,mhartid
    800033b4:	0200c737          	lui	a4,0x200c
    800033b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800033bc:	0007869b          	sext.w	a3,a5
    800033c0:	00269713          	slli	a4,a3,0x2
    800033c4:	000f4637          	lui	a2,0xf4
    800033c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800033cc:	00d70733          	add	a4,a4,a3
    800033d0:	0037979b          	slliw	a5,a5,0x3
    800033d4:	020046b7          	lui	a3,0x2004
    800033d8:	00d787b3          	add	a5,a5,a3
    800033dc:	00c585b3          	add	a1,a1,a2
    800033e0:	00371693          	slli	a3,a4,0x3
    800033e4:	00004717          	auipc	a4,0x4
    800033e8:	bcc70713          	addi	a4,a4,-1076 # 80006fb0 <timer_scratch>
    800033ec:	00b7b023          	sd	a1,0(a5)
    800033f0:	00d70733          	add	a4,a4,a3
    800033f4:	00f73c23          	sd	a5,24(a4)
    800033f8:	02c73023          	sd	a2,32(a4)
    800033fc:	34071073          	csrw	mscratch,a4
    80003400:	00000797          	auipc	a5,0x0
    80003404:	65078793          	addi	a5,a5,1616 # 80003a50 <timervec>
    80003408:	30579073          	csrw	mtvec,a5
    8000340c:	300027f3          	csrr	a5,mstatus
    80003410:	0087e793          	ori	a5,a5,8
    80003414:	30079073          	csrw	mstatus,a5
    80003418:	304027f3          	csrr	a5,mie
    8000341c:	0807e793          	ori	a5,a5,128
    80003420:	30479073          	csrw	mie,a5
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <system_main>:
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	00113c23          	sd	ra,24(sp)
    80003440:	02010413          	addi	s0,sp,32
    80003444:	00000097          	auipc	ra,0x0
    80003448:	0c4080e7          	jalr	196(ra) # 80003508 <cpuid>
    8000344c:	00004497          	auipc	s1,0x4
    80003450:	af448493          	addi	s1,s1,-1292 # 80006f40 <started>
    80003454:	02050263          	beqz	a0,80003478 <system_main+0x48>
    80003458:	0004a783          	lw	a5,0(s1)
    8000345c:	0007879b          	sext.w	a5,a5
    80003460:	fe078ce3          	beqz	a5,80003458 <system_main+0x28>
    80003464:	0ff0000f          	fence
    80003468:	00003517          	auipc	a0,0x3
    8000346c:	f0050513          	addi	a0,a0,-256 # 80006368 <CONSOLE_STATUS+0x358>
    80003470:	00001097          	auipc	ra,0x1
    80003474:	a7c080e7          	jalr	-1412(ra) # 80003eec <panic>
    80003478:	00001097          	auipc	ra,0x1
    8000347c:	9d0080e7          	jalr	-1584(ra) # 80003e48 <consoleinit>
    80003480:	00001097          	auipc	ra,0x1
    80003484:	15c080e7          	jalr	348(ra) # 800045dc <printfinit>
    80003488:	00003517          	auipc	a0,0x3
    8000348c:	bb850513          	addi	a0,a0,-1096 # 80006040 <CONSOLE_STATUS+0x30>
    80003490:	00001097          	auipc	ra,0x1
    80003494:	ab8080e7          	jalr	-1352(ra) # 80003f48 <__printf>
    80003498:	00003517          	auipc	a0,0x3
    8000349c:	ea050513          	addi	a0,a0,-352 # 80006338 <CONSOLE_STATUS+0x328>
    800034a0:	00001097          	auipc	ra,0x1
    800034a4:	aa8080e7          	jalr	-1368(ra) # 80003f48 <__printf>
    800034a8:	00003517          	auipc	a0,0x3
    800034ac:	b9850513          	addi	a0,a0,-1128 # 80006040 <CONSOLE_STATUS+0x30>
    800034b0:	00001097          	auipc	ra,0x1
    800034b4:	a98080e7          	jalr	-1384(ra) # 80003f48 <__printf>
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	4b0080e7          	jalr	1200(ra) # 80004968 <kinit>
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	148080e7          	jalr	328(ra) # 80003608 <trapinit>
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	16c080e7          	jalr	364(ra) # 80003634 <trapinithart>
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	5c0080e7          	jalr	1472(ra) # 80003a90 <plicinit>
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	5e0080e7          	jalr	1504(ra) # 80003ab8 <plicinithart>
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	078080e7          	jalr	120(ra) # 80003558 <userinit>
    800034e8:	0ff0000f          	fence
    800034ec:	00100793          	li	a5,1
    800034f0:	00003517          	auipc	a0,0x3
    800034f4:	e6050513          	addi	a0,a0,-416 # 80006350 <CONSOLE_STATUS+0x340>
    800034f8:	00f4a023          	sw	a5,0(s1)
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	a4c080e7          	jalr	-1460(ra) # 80003f48 <__printf>
    80003504:	0000006f          	j	80003504 <system_main+0xd4>

0000000080003508 <cpuid>:
    80003508:	ff010113          	addi	sp,sp,-16
    8000350c:	00813423          	sd	s0,8(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	00020513          	mv	a0,tp
    80003518:	00813403          	ld	s0,8(sp)
    8000351c:	0005051b          	sext.w	a0,a0
    80003520:	01010113          	addi	sp,sp,16
    80003524:	00008067          	ret

0000000080003528 <mycpu>:
    80003528:	ff010113          	addi	sp,sp,-16
    8000352c:	00813423          	sd	s0,8(sp)
    80003530:	01010413          	addi	s0,sp,16
    80003534:	00020793          	mv	a5,tp
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	0007879b          	sext.w	a5,a5
    80003540:	00779793          	slli	a5,a5,0x7
    80003544:	00005517          	auipc	a0,0x5
    80003548:	a9c50513          	addi	a0,a0,-1380 # 80007fe0 <cpus>
    8000354c:	00f50533          	add	a0,a0,a5
    80003550:	01010113          	addi	sp,sp,16
    80003554:	00008067          	ret

0000000080003558 <userinit>:
    80003558:	ff010113          	addi	sp,sp,-16
    8000355c:	00813423          	sd	s0,8(sp)
    80003560:	01010413          	addi	s0,sp,16
    80003564:	00813403          	ld	s0,8(sp)
    80003568:	01010113          	addi	sp,sp,16
    8000356c:	ffffe317          	auipc	t1,0xffffe
    80003570:	66c30067          	jr	1644(t1) # 80001bd8 <main>

0000000080003574 <either_copyout>:
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00813023          	sd	s0,0(sp)
    8000357c:	00113423          	sd	ra,8(sp)
    80003580:	01010413          	addi	s0,sp,16
    80003584:	02051663          	bnez	a0,800035b0 <either_copyout+0x3c>
    80003588:	00058513          	mv	a0,a1
    8000358c:	00060593          	mv	a1,a2
    80003590:	0006861b          	sext.w	a2,a3
    80003594:	00002097          	auipc	ra,0x2
    80003598:	c60080e7          	jalr	-928(ra) # 800051f4 <__memmove>
    8000359c:	00813083          	ld	ra,8(sp)
    800035a0:	00013403          	ld	s0,0(sp)
    800035a4:	00000513          	li	a0,0
    800035a8:	01010113          	addi	sp,sp,16
    800035ac:	00008067          	ret
    800035b0:	00003517          	auipc	a0,0x3
    800035b4:	de050513          	addi	a0,a0,-544 # 80006390 <CONSOLE_STATUS+0x380>
    800035b8:	00001097          	auipc	ra,0x1
    800035bc:	934080e7          	jalr	-1740(ra) # 80003eec <panic>

00000000800035c0 <either_copyin>:
    800035c0:	ff010113          	addi	sp,sp,-16
    800035c4:	00813023          	sd	s0,0(sp)
    800035c8:	00113423          	sd	ra,8(sp)
    800035cc:	01010413          	addi	s0,sp,16
    800035d0:	02059463          	bnez	a1,800035f8 <either_copyin+0x38>
    800035d4:	00060593          	mv	a1,a2
    800035d8:	0006861b          	sext.w	a2,a3
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	c18080e7          	jalr	-1000(ra) # 800051f4 <__memmove>
    800035e4:	00813083          	ld	ra,8(sp)
    800035e8:	00013403          	ld	s0,0(sp)
    800035ec:	00000513          	li	a0,0
    800035f0:	01010113          	addi	sp,sp,16
    800035f4:	00008067          	ret
    800035f8:	00003517          	auipc	a0,0x3
    800035fc:	dc050513          	addi	a0,a0,-576 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80003600:	00001097          	auipc	ra,0x1
    80003604:	8ec080e7          	jalr	-1812(ra) # 80003eec <panic>

0000000080003608 <trapinit>:
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00813403          	ld	s0,8(sp)
    80003618:	00003597          	auipc	a1,0x3
    8000361c:	dc858593          	addi	a1,a1,-568 # 800063e0 <CONSOLE_STATUS+0x3d0>
    80003620:	00005517          	auipc	a0,0x5
    80003624:	a4050513          	addi	a0,a0,-1472 # 80008060 <tickslock>
    80003628:	01010113          	addi	sp,sp,16
    8000362c:	00001317          	auipc	t1,0x1
    80003630:	5cc30067          	jr	1484(t1) # 80004bf8 <initlock>

0000000080003634 <trapinithart>:
    80003634:	ff010113          	addi	sp,sp,-16
    80003638:	00813423          	sd	s0,8(sp)
    8000363c:	01010413          	addi	s0,sp,16
    80003640:	00000797          	auipc	a5,0x0
    80003644:	30078793          	addi	a5,a5,768 # 80003940 <kernelvec>
    80003648:	10579073          	csrw	stvec,a5
    8000364c:	00813403          	ld	s0,8(sp)
    80003650:	01010113          	addi	sp,sp,16
    80003654:	00008067          	ret

0000000080003658 <usertrap>:
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00813423          	sd	s0,8(sp)
    80003660:	01010413          	addi	s0,sp,16
    80003664:	00813403          	ld	s0,8(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret

0000000080003670 <usertrapret>:
    80003670:	ff010113          	addi	sp,sp,-16
    80003674:	00813423          	sd	s0,8(sp)
    80003678:	01010413          	addi	s0,sp,16
    8000367c:	00813403          	ld	s0,8(sp)
    80003680:	01010113          	addi	sp,sp,16
    80003684:	00008067          	ret

0000000080003688 <kerneltrap>:
    80003688:	fe010113          	addi	sp,sp,-32
    8000368c:	00813823          	sd	s0,16(sp)
    80003690:	00113c23          	sd	ra,24(sp)
    80003694:	00913423          	sd	s1,8(sp)
    80003698:	02010413          	addi	s0,sp,32
    8000369c:	142025f3          	csrr	a1,scause
    800036a0:	100027f3          	csrr	a5,sstatus
    800036a4:	0027f793          	andi	a5,a5,2
    800036a8:	10079c63          	bnez	a5,800037c0 <kerneltrap+0x138>
    800036ac:	142027f3          	csrr	a5,scause
    800036b0:	0207ce63          	bltz	a5,800036ec <kerneltrap+0x64>
    800036b4:	00003517          	auipc	a0,0x3
    800036b8:	d7450513          	addi	a0,a0,-652 # 80006428 <CONSOLE_STATUS+0x418>
    800036bc:	00001097          	auipc	ra,0x1
    800036c0:	88c080e7          	jalr	-1908(ra) # 80003f48 <__printf>
    800036c4:	141025f3          	csrr	a1,sepc
    800036c8:	14302673          	csrr	a2,stval
    800036cc:	00003517          	auipc	a0,0x3
    800036d0:	d6c50513          	addi	a0,a0,-660 # 80006438 <CONSOLE_STATUS+0x428>
    800036d4:	00001097          	auipc	ra,0x1
    800036d8:	874080e7          	jalr	-1932(ra) # 80003f48 <__printf>
    800036dc:	00003517          	auipc	a0,0x3
    800036e0:	d7450513          	addi	a0,a0,-652 # 80006450 <CONSOLE_STATUS+0x440>
    800036e4:	00001097          	auipc	ra,0x1
    800036e8:	808080e7          	jalr	-2040(ra) # 80003eec <panic>
    800036ec:	0ff7f713          	andi	a4,a5,255
    800036f0:	00900693          	li	a3,9
    800036f4:	04d70063          	beq	a4,a3,80003734 <kerneltrap+0xac>
    800036f8:	fff00713          	li	a4,-1
    800036fc:	03f71713          	slli	a4,a4,0x3f
    80003700:	00170713          	addi	a4,a4,1
    80003704:	fae798e3          	bne	a5,a4,800036b4 <kerneltrap+0x2c>
    80003708:	00000097          	auipc	ra,0x0
    8000370c:	e00080e7          	jalr	-512(ra) # 80003508 <cpuid>
    80003710:	06050663          	beqz	a0,8000377c <kerneltrap+0xf4>
    80003714:	144027f3          	csrr	a5,sip
    80003718:	ffd7f793          	andi	a5,a5,-3
    8000371c:	14479073          	csrw	sip,a5
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	01013403          	ld	s0,16(sp)
    80003728:	00813483          	ld	s1,8(sp)
    8000372c:	02010113          	addi	sp,sp,32
    80003730:	00008067          	ret
    80003734:	00000097          	auipc	ra,0x0
    80003738:	3d0080e7          	jalr	976(ra) # 80003b04 <plic_claim>
    8000373c:	00a00793          	li	a5,10
    80003740:	00050493          	mv	s1,a0
    80003744:	06f50863          	beq	a0,a5,800037b4 <kerneltrap+0x12c>
    80003748:	fc050ce3          	beqz	a0,80003720 <kerneltrap+0x98>
    8000374c:	00050593          	mv	a1,a0
    80003750:	00003517          	auipc	a0,0x3
    80003754:	cb850513          	addi	a0,a0,-840 # 80006408 <CONSOLE_STATUS+0x3f8>
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	7f0080e7          	jalr	2032(ra) # 80003f48 <__printf>
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	01813083          	ld	ra,24(sp)
    80003768:	00048513          	mv	a0,s1
    8000376c:	00813483          	ld	s1,8(sp)
    80003770:	02010113          	addi	sp,sp,32
    80003774:	00000317          	auipc	t1,0x0
    80003778:	3c830067          	jr	968(t1) # 80003b3c <plic_complete>
    8000377c:	00005517          	auipc	a0,0x5
    80003780:	8e450513          	addi	a0,a0,-1820 # 80008060 <tickslock>
    80003784:	00001097          	auipc	ra,0x1
    80003788:	498080e7          	jalr	1176(ra) # 80004c1c <acquire>
    8000378c:	00003717          	auipc	a4,0x3
    80003790:	7b870713          	addi	a4,a4,1976 # 80006f44 <ticks>
    80003794:	00072783          	lw	a5,0(a4)
    80003798:	00005517          	auipc	a0,0x5
    8000379c:	8c850513          	addi	a0,a0,-1848 # 80008060 <tickslock>
    800037a0:	0017879b          	addiw	a5,a5,1
    800037a4:	00f72023          	sw	a5,0(a4)
    800037a8:	00001097          	auipc	ra,0x1
    800037ac:	540080e7          	jalr	1344(ra) # 80004ce8 <release>
    800037b0:	f65ff06f          	j	80003714 <kerneltrap+0x8c>
    800037b4:	00001097          	auipc	ra,0x1
    800037b8:	09c080e7          	jalr	156(ra) # 80004850 <uartintr>
    800037bc:	fa5ff06f          	j	80003760 <kerneltrap+0xd8>
    800037c0:	00003517          	auipc	a0,0x3
    800037c4:	c2850513          	addi	a0,a0,-984 # 800063e8 <CONSOLE_STATUS+0x3d8>
    800037c8:	00000097          	auipc	ra,0x0
    800037cc:	724080e7          	jalr	1828(ra) # 80003eec <panic>

00000000800037d0 <clockintr>:
    800037d0:	fe010113          	addi	sp,sp,-32
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	02010413          	addi	s0,sp,32
    800037e4:	00005497          	auipc	s1,0x5
    800037e8:	87c48493          	addi	s1,s1,-1924 # 80008060 <tickslock>
    800037ec:	00048513          	mv	a0,s1
    800037f0:	00001097          	auipc	ra,0x1
    800037f4:	42c080e7          	jalr	1068(ra) # 80004c1c <acquire>
    800037f8:	00003717          	auipc	a4,0x3
    800037fc:	74c70713          	addi	a4,a4,1868 # 80006f44 <ticks>
    80003800:	00072783          	lw	a5,0(a4)
    80003804:	01013403          	ld	s0,16(sp)
    80003808:	01813083          	ld	ra,24(sp)
    8000380c:	00048513          	mv	a0,s1
    80003810:	0017879b          	addiw	a5,a5,1
    80003814:	00813483          	ld	s1,8(sp)
    80003818:	00f72023          	sw	a5,0(a4)
    8000381c:	02010113          	addi	sp,sp,32
    80003820:	00001317          	auipc	t1,0x1
    80003824:	4c830067          	jr	1224(t1) # 80004ce8 <release>

0000000080003828 <devintr>:
    80003828:	142027f3          	csrr	a5,scause
    8000382c:	00000513          	li	a0,0
    80003830:	0007c463          	bltz	a5,80003838 <devintr+0x10>
    80003834:	00008067          	ret
    80003838:	fe010113          	addi	sp,sp,-32
    8000383c:	00813823          	sd	s0,16(sp)
    80003840:	00113c23          	sd	ra,24(sp)
    80003844:	00913423          	sd	s1,8(sp)
    80003848:	02010413          	addi	s0,sp,32
    8000384c:	0ff7f713          	andi	a4,a5,255
    80003850:	00900693          	li	a3,9
    80003854:	04d70c63          	beq	a4,a3,800038ac <devintr+0x84>
    80003858:	fff00713          	li	a4,-1
    8000385c:	03f71713          	slli	a4,a4,0x3f
    80003860:	00170713          	addi	a4,a4,1
    80003864:	00e78c63          	beq	a5,a4,8000387c <devintr+0x54>
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	02010113          	addi	sp,sp,32
    80003878:	00008067          	ret
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	c8c080e7          	jalr	-884(ra) # 80003508 <cpuid>
    80003884:	06050663          	beqz	a0,800038f0 <devintr+0xc8>
    80003888:	144027f3          	csrr	a5,sip
    8000388c:	ffd7f793          	andi	a5,a5,-3
    80003890:	14479073          	csrw	sip,a5
    80003894:	01813083          	ld	ra,24(sp)
    80003898:	01013403          	ld	s0,16(sp)
    8000389c:	00813483          	ld	s1,8(sp)
    800038a0:	00200513          	li	a0,2
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	00008067          	ret
    800038ac:	00000097          	auipc	ra,0x0
    800038b0:	258080e7          	jalr	600(ra) # 80003b04 <plic_claim>
    800038b4:	00a00793          	li	a5,10
    800038b8:	00050493          	mv	s1,a0
    800038bc:	06f50663          	beq	a0,a5,80003928 <devintr+0x100>
    800038c0:	00100513          	li	a0,1
    800038c4:	fa0482e3          	beqz	s1,80003868 <devintr+0x40>
    800038c8:	00048593          	mv	a1,s1
    800038cc:	00003517          	auipc	a0,0x3
    800038d0:	b3c50513          	addi	a0,a0,-1220 # 80006408 <CONSOLE_STATUS+0x3f8>
    800038d4:	00000097          	auipc	ra,0x0
    800038d8:	674080e7          	jalr	1652(ra) # 80003f48 <__printf>
    800038dc:	00048513          	mv	a0,s1
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	25c080e7          	jalr	604(ra) # 80003b3c <plic_complete>
    800038e8:	00100513          	li	a0,1
    800038ec:	f7dff06f          	j	80003868 <devintr+0x40>
    800038f0:	00004517          	auipc	a0,0x4
    800038f4:	77050513          	addi	a0,a0,1904 # 80008060 <tickslock>
    800038f8:	00001097          	auipc	ra,0x1
    800038fc:	324080e7          	jalr	804(ra) # 80004c1c <acquire>
    80003900:	00003717          	auipc	a4,0x3
    80003904:	64470713          	addi	a4,a4,1604 # 80006f44 <ticks>
    80003908:	00072783          	lw	a5,0(a4)
    8000390c:	00004517          	auipc	a0,0x4
    80003910:	75450513          	addi	a0,a0,1876 # 80008060 <tickslock>
    80003914:	0017879b          	addiw	a5,a5,1
    80003918:	00f72023          	sw	a5,0(a4)
    8000391c:	00001097          	auipc	ra,0x1
    80003920:	3cc080e7          	jalr	972(ra) # 80004ce8 <release>
    80003924:	f65ff06f          	j	80003888 <devintr+0x60>
    80003928:	00001097          	auipc	ra,0x1
    8000392c:	f28080e7          	jalr	-216(ra) # 80004850 <uartintr>
    80003930:	fadff06f          	j	800038dc <devintr+0xb4>
	...

0000000080003940 <kernelvec>:
    80003940:	f0010113          	addi	sp,sp,-256
    80003944:	00113023          	sd	ra,0(sp)
    80003948:	00213423          	sd	sp,8(sp)
    8000394c:	00313823          	sd	gp,16(sp)
    80003950:	00413c23          	sd	tp,24(sp)
    80003954:	02513023          	sd	t0,32(sp)
    80003958:	02613423          	sd	t1,40(sp)
    8000395c:	02713823          	sd	t2,48(sp)
    80003960:	02813c23          	sd	s0,56(sp)
    80003964:	04913023          	sd	s1,64(sp)
    80003968:	04a13423          	sd	a0,72(sp)
    8000396c:	04b13823          	sd	a1,80(sp)
    80003970:	04c13c23          	sd	a2,88(sp)
    80003974:	06d13023          	sd	a3,96(sp)
    80003978:	06e13423          	sd	a4,104(sp)
    8000397c:	06f13823          	sd	a5,112(sp)
    80003980:	07013c23          	sd	a6,120(sp)
    80003984:	09113023          	sd	a7,128(sp)
    80003988:	09213423          	sd	s2,136(sp)
    8000398c:	09313823          	sd	s3,144(sp)
    80003990:	09413c23          	sd	s4,152(sp)
    80003994:	0b513023          	sd	s5,160(sp)
    80003998:	0b613423          	sd	s6,168(sp)
    8000399c:	0b713823          	sd	s7,176(sp)
    800039a0:	0b813c23          	sd	s8,184(sp)
    800039a4:	0d913023          	sd	s9,192(sp)
    800039a8:	0da13423          	sd	s10,200(sp)
    800039ac:	0db13823          	sd	s11,208(sp)
    800039b0:	0dc13c23          	sd	t3,216(sp)
    800039b4:	0fd13023          	sd	t4,224(sp)
    800039b8:	0fe13423          	sd	t5,232(sp)
    800039bc:	0ff13823          	sd	t6,240(sp)
    800039c0:	cc9ff0ef          	jal	ra,80003688 <kerneltrap>
    800039c4:	00013083          	ld	ra,0(sp)
    800039c8:	00813103          	ld	sp,8(sp)
    800039cc:	01013183          	ld	gp,16(sp)
    800039d0:	02013283          	ld	t0,32(sp)
    800039d4:	02813303          	ld	t1,40(sp)
    800039d8:	03013383          	ld	t2,48(sp)
    800039dc:	03813403          	ld	s0,56(sp)
    800039e0:	04013483          	ld	s1,64(sp)
    800039e4:	04813503          	ld	a0,72(sp)
    800039e8:	05013583          	ld	a1,80(sp)
    800039ec:	05813603          	ld	a2,88(sp)
    800039f0:	06013683          	ld	a3,96(sp)
    800039f4:	06813703          	ld	a4,104(sp)
    800039f8:	07013783          	ld	a5,112(sp)
    800039fc:	07813803          	ld	a6,120(sp)
    80003a00:	08013883          	ld	a7,128(sp)
    80003a04:	08813903          	ld	s2,136(sp)
    80003a08:	09013983          	ld	s3,144(sp)
    80003a0c:	09813a03          	ld	s4,152(sp)
    80003a10:	0a013a83          	ld	s5,160(sp)
    80003a14:	0a813b03          	ld	s6,168(sp)
    80003a18:	0b013b83          	ld	s7,176(sp)
    80003a1c:	0b813c03          	ld	s8,184(sp)
    80003a20:	0c013c83          	ld	s9,192(sp)
    80003a24:	0c813d03          	ld	s10,200(sp)
    80003a28:	0d013d83          	ld	s11,208(sp)
    80003a2c:	0d813e03          	ld	t3,216(sp)
    80003a30:	0e013e83          	ld	t4,224(sp)
    80003a34:	0e813f03          	ld	t5,232(sp)
    80003a38:	0f013f83          	ld	t6,240(sp)
    80003a3c:	10010113          	addi	sp,sp,256
    80003a40:	10200073          	sret
    80003a44:	00000013          	nop
    80003a48:	00000013          	nop
    80003a4c:	00000013          	nop

0000000080003a50 <timervec>:
    80003a50:	34051573          	csrrw	a0,mscratch,a0
    80003a54:	00b53023          	sd	a1,0(a0)
    80003a58:	00c53423          	sd	a2,8(a0)
    80003a5c:	00d53823          	sd	a3,16(a0)
    80003a60:	01853583          	ld	a1,24(a0)
    80003a64:	02053603          	ld	a2,32(a0)
    80003a68:	0005b683          	ld	a3,0(a1)
    80003a6c:	00c686b3          	add	a3,a3,a2
    80003a70:	00d5b023          	sd	a3,0(a1)
    80003a74:	00200593          	li	a1,2
    80003a78:	14459073          	csrw	sip,a1
    80003a7c:	01053683          	ld	a3,16(a0)
    80003a80:	00853603          	ld	a2,8(a0)
    80003a84:	00053583          	ld	a1,0(a0)
    80003a88:	34051573          	csrrw	a0,mscratch,a0
    80003a8c:	30200073          	mret

0000000080003a90 <plicinit>:
    80003a90:	ff010113          	addi	sp,sp,-16
    80003a94:	00813423          	sd	s0,8(sp)
    80003a98:	01010413          	addi	s0,sp,16
    80003a9c:	00813403          	ld	s0,8(sp)
    80003aa0:	0c0007b7          	lui	a5,0xc000
    80003aa4:	00100713          	li	a4,1
    80003aa8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003aac:	00e7a223          	sw	a4,4(a5)
    80003ab0:	01010113          	addi	sp,sp,16
    80003ab4:	00008067          	ret

0000000080003ab8 <plicinithart>:
    80003ab8:	ff010113          	addi	sp,sp,-16
    80003abc:	00813023          	sd	s0,0(sp)
    80003ac0:	00113423          	sd	ra,8(sp)
    80003ac4:	01010413          	addi	s0,sp,16
    80003ac8:	00000097          	auipc	ra,0x0
    80003acc:	a40080e7          	jalr	-1472(ra) # 80003508 <cpuid>
    80003ad0:	0085171b          	slliw	a4,a0,0x8
    80003ad4:	0c0027b7          	lui	a5,0xc002
    80003ad8:	00e787b3          	add	a5,a5,a4
    80003adc:	40200713          	li	a4,1026
    80003ae0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003ae4:	00813083          	ld	ra,8(sp)
    80003ae8:	00013403          	ld	s0,0(sp)
    80003aec:	00d5151b          	slliw	a0,a0,0xd
    80003af0:	0c2017b7          	lui	a5,0xc201
    80003af4:	00a78533          	add	a0,a5,a0
    80003af8:	00052023          	sw	zero,0(a0)
    80003afc:	01010113          	addi	sp,sp,16
    80003b00:	00008067          	ret

0000000080003b04 <plic_claim>:
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00813023          	sd	s0,0(sp)
    80003b0c:	00113423          	sd	ra,8(sp)
    80003b10:	01010413          	addi	s0,sp,16
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	9f4080e7          	jalr	-1548(ra) # 80003508 <cpuid>
    80003b1c:	00813083          	ld	ra,8(sp)
    80003b20:	00013403          	ld	s0,0(sp)
    80003b24:	00d5151b          	slliw	a0,a0,0xd
    80003b28:	0c2017b7          	lui	a5,0xc201
    80003b2c:	00a78533          	add	a0,a5,a0
    80003b30:	00452503          	lw	a0,4(a0)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret

0000000080003b3c <plic_complete>:
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00913423          	sd	s1,8(sp)
    80003b48:	00113c23          	sd	ra,24(sp)
    80003b4c:	02010413          	addi	s0,sp,32
    80003b50:	00050493          	mv	s1,a0
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	9b4080e7          	jalr	-1612(ra) # 80003508 <cpuid>
    80003b5c:	01813083          	ld	ra,24(sp)
    80003b60:	01013403          	ld	s0,16(sp)
    80003b64:	00d5179b          	slliw	a5,a0,0xd
    80003b68:	0c201737          	lui	a4,0xc201
    80003b6c:	00f707b3          	add	a5,a4,a5
    80003b70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003b74:	00813483          	ld	s1,8(sp)
    80003b78:	02010113          	addi	sp,sp,32
    80003b7c:	00008067          	ret

0000000080003b80 <consolewrite>:
    80003b80:	fb010113          	addi	sp,sp,-80
    80003b84:	04813023          	sd	s0,64(sp)
    80003b88:	04113423          	sd	ra,72(sp)
    80003b8c:	02913c23          	sd	s1,56(sp)
    80003b90:	03213823          	sd	s2,48(sp)
    80003b94:	03313423          	sd	s3,40(sp)
    80003b98:	03413023          	sd	s4,32(sp)
    80003b9c:	01513c23          	sd	s5,24(sp)
    80003ba0:	05010413          	addi	s0,sp,80
    80003ba4:	06c05c63          	blez	a2,80003c1c <consolewrite+0x9c>
    80003ba8:	00060993          	mv	s3,a2
    80003bac:	00050a13          	mv	s4,a0
    80003bb0:	00058493          	mv	s1,a1
    80003bb4:	00000913          	li	s2,0
    80003bb8:	fff00a93          	li	s5,-1
    80003bbc:	01c0006f          	j	80003bd8 <consolewrite+0x58>
    80003bc0:	fbf44503          	lbu	a0,-65(s0)
    80003bc4:	0019091b          	addiw	s2,s2,1
    80003bc8:	00148493          	addi	s1,s1,1
    80003bcc:	00001097          	auipc	ra,0x1
    80003bd0:	a9c080e7          	jalr	-1380(ra) # 80004668 <uartputc>
    80003bd4:	03298063          	beq	s3,s2,80003bf4 <consolewrite+0x74>
    80003bd8:	00048613          	mv	a2,s1
    80003bdc:	00100693          	li	a3,1
    80003be0:	000a0593          	mv	a1,s4
    80003be4:	fbf40513          	addi	a0,s0,-65
    80003be8:	00000097          	auipc	ra,0x0
    80003bec:	9d8080e7          	jalr	-1576(ra) # 800035c0 <either_copyin>
    80003bf0:	fd5518e3          	bne	a0,s5,80003bc0 <consolewrite+0x40>
    80003bf4:	04813083          	ld	ra,72(sp)
    80003bf8:	04013403          	ld	s0,64(sp)
    80003bfc:	03813483          	ld	s1,56(sp)
    80003c00:	02813983          	ld	s3,40(sp)
    80003c04:	02013a03          	ld	s4,32(sp)
    80003c08:	01813a83          	ld	s5,24(sp)
    80003c0c:	00090513          	mv	a0,s2
    80003c10:	03013903          	ld	s2,48(sp)
    80003c14:	05010113          	addi	sp,sp,80
    80003c18:	00008067          	ret
    80003c1c:	00000913          	li	s2,0
    80003c20:	fd5ff06f          	j	80003bf4 <consolewrite+0x74>

0000000080003c24 <consoleread>:
    80003c24:	f9010113          	addi	sp,sp,-112
    80003c28:	06813023          	sd	s0,96(sp)
    80003c2c:	04913c23          	sd	s1,88(sp)
    80003c30:	05213823          	sd	s2,80(sp)
    80003c34:	05313423          	sd	s3,72(sp)
    80003c38:	05413023          	sd	s4,64(sp)
    80003c3c:	03513c23          	sd	s5,56(sp)
    80003c40:	03613823          	sd	s6,48(sp)
    80003c44:	03713423          	sd	s7,40(sp)
    80003c48:	03813023          	sd	s8,32(sp)
    80003c4c:	06113423          	sd	ra,104(sp)
    80003c50:	01913c23          	sd	s9,24(sp)
    80003c54:	07010413          	addi	s0,sp,112
    80003c58:	00060b93          	mv	s7,a2
    80003c5c:	00050913          	mv	s2,a0
    80003c60:	00058c13          	mv	s8,a1
    80003c64:	00060b1b          	sext.w	s6,a2
    80003c68:	00004497          	auipc	s1,0x4
    80003c6c:	42048493          	addi	s1,s1,1056 # 80008088 <cons>
    80003c70:	00400993          	li	s3,4
    80003c74:	fff00a13          	li	s4,-1
    80003c78:	00a00a93          	li	s5,10
    80003c7c:	05705e63          	blez	s7,80003cd8 <consoleread+0xb4>
    80003c80:	09c4a703          	lw	a4,156(s1)
    80003c84:	0984a783          	lw	a5,152(s1)
    80003c88:	0007071b          	sext.w	a4,a4
    80003c8c:	08e78463          	beq	a5,a4,80003d14 <consoleread+0xf0>
    80003c90:	07f7f713          	andi	a4,a5,127
    80003c94:	00e48733          	add	a4,s1,a4
    80003c98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003c9c:	0017869b          	addiw	a3,a5,1
    80003ca0:	08d4ac23          	sw	a3,152(s1)
    80003ca4:	00070c9b          	sext.w	s9,a4
    80003ca8:	0b370663          	beq	a4,s3,80003d54 <consoleread+0x130>
    80003cac:	00100693          	li	a3,1
    80003cb0:	f9f40613          	addi	a2,s0,-97
    80003cb4:	000c0593          	mv	a1,s8
    80003cb8:	00090513          	mv	a0,s2
    80003cbc:	f8e40fa3          	sb	a4,-97(s0)
    80003cc0:	00000097          	auipc	ra,0x0
    80003cc4:	8b4080e7          	jalr	-1868(ra) # 80003574 <either_copyout>
    80003cc8:	01450863          	beq	a0,s4,80003cd8 <consoleread+0xb4>
    80003ccc:	001c0c13          	addi	s8,s8,1
    80003cd0:	fffb8b9b          	addiw	s7,s7,-1
    80003cd4:	fb5c94e3          	bne	s9,s5,80003c7c <consoleread+0x58>
    80003cd8:	000b851b          	sext.w	a0,s7
    80003cdc:	06813083          	ld	ra,104(sp)
    80003ce0:	06013403          	ld	s0,96(sp)
    80003ce4:	05813483          	ld	s1,88(sp)
    80003ce8:	05013903          	ld	s2,80(sp)
    80003cec:	04813983          	ld	s3,72(sp)
    80003cf0:	04013a03          	ld	s4,64(sp)
    80003cf4:	03813a83          	ld	s5,56(sp)
    80003cf8:	02813b83          	ld	s7,40(sp)
    80003cfc:	02013c03          	ld	s8,32(sp)
    80003d00:	01813c83          	ld	s9,24(sp)
    80003d04:	40ab053b          	subw	a0,s6,a0
    80003d08:	03013b03          	ld	s6,48(sp)
    80003d0c:	07010113          	addi	sp,sp,112
    80003d10:	00008067          	ret
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	1d8080e7          	jalr	472(ra) # 80004eec <push_on>
    80003d1c:	0984a703          	lw	a4,152(s1)
    80003d20:	09c4a783          	lw	a5,156(s1)
    80003d24:	0007879b          	sext.w	a5,a5
    80003d28:	fef70ce3          	beq	a4,a5,80003d20 <consoleread+0xfc>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	234080e7          	jalr	564(ra) # 80004f60 <pop_on>
    80003d34:	0984a783          	lw	a5,152(s1)
    80003d38:	07f7f713          	andi	a4,a5,127
    80003d3c:	00e48733          	add	a4,s1,a4
    80003d40:	01874703          	lbu	a4,24(a4)
    80003d44:	0017869b          	addiw	a3,a5,1
    80003d48:	08d4ac23          	sw	a3,152(s1)
    80003d4c:	00070c9b          	sext.w	s9,a4
    80003d50:	f5371ee3          	bne	a4,s3,80003cac <consoleread+0x88>
    80003d54:	000b851b          	sext.w	a0,s7
    80003d58:	f96bf2e3          	bgeu	s7,s6,80003cdc <consoleread+0xb8>
    80003d5c:	08f4ac23          	sw	a5,152(s1)
    80003d60:	f7dff06f          	j	80003cdc <consoleread+0xb8>

0000000080003d64 <consputc>:
    80003d64:	10000793          	li	a5,256
    80003d68:	00f50663          	beq	a0,a5,80003d74 <consputc+0x10>
    80003d6c:	00001317          	auipc	t1,0x1
    80003d70:	9f430067          	jr	-1548(t1) # 80004760 <uartputc_sync>
    80003d74:	ff010113          	addi	sp,sp,-16
    80003d78:	00113423          	sd	ra,8(sp)
    80003d7c:	00813023          	sd	s0,0(sp)
    80003d80:	01010413          	addi	s0,sp,16
    80003d84:	00800513          	li	a0,8
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	9d8080e7          	jalr	-1576(ra) # 80004760 <uartputc_sync>
    80003d90:	02000513          	li	a0,32
    80003d94:	00001097          	auipc	ra,0x1
    80003d98:	9cc080e7          	jalr	-1588(ra) # 80004760 <uartputc_sync>
    80003d9c:	00013403          	ld	s0,0(sp)
    80003da0:	00813083          	ld	ra,8(sp)
    80003da4:	00800513          	li	a0,8
    80003da8:	01010113          	addi	sp,sp,16
    80003dac:	00001317          	auipc	t1,0x1
    80003db0:	9b430067          	jr	-1612(t1) # 80004760 <uartputc_sync>

0000000080003db4 <consoleintr>:
    80003db4:	fe010113          	addi	sp,sp,-32
    80003db8:	00813823          	sd	s0,16(sp)
    80003dbc:	00913423          	sd	s1,8(sp)
    80003dc0:	01213023          	sd	s2,0(sp)
    80003dc4:	00113c23          	sd	ra,24(sp)
    80003dc8:	02010413          	addi	s0,sp,32
    80003dcc:	00004917          	auipc	s2,0x4
    80003dd0:	2bc90913          	addi	s2,s2,700 # 80008088 <cons>
    80003dd4:	00050493          	mv	s1,a0
    80003dd8:	00090513          	mv	a0,s2
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	e40080e7          	jalr	-448(ra) # 80004c1c <acquire>
    80003de4:	02048c63          	beqz	s1,80003e1c <consoleintr+0x68>
    80003de8:	0a092783          	lw	a5,160(s2)
    80003dec:	09892703          	lw	a4,152(s2)
    80003df0:	07f00693          	li	a3,127
    80003df4:	40e7873b          	subw	a4,a5,a4
    80003df8:	02e6e263          	bltu	a3,a4,80003e1c <consoleintr+0x68>
    80003dfc:	00d00713          	li	a4,13
    80003e00:	04e48063          	beq	s1,a4,80003e40 <consoleintr+0x8c>
    80003e04:	07f7f713          	andi	a4,a5,127
    80003e08:	00e90733          	add	a4,s2,a4
    80003e0c:	0017879b          	addiw	a5,a5,1
    80003e10:	0af92023          	sw	a5,160(s2)
    80003e14:	00970c23          	sb	s1,24(a4)
    80003e18:	08f92e23          	sw	a5,156(s2)
    80003e1c:	01013403          	ld	s0,16(sp)
    80003e20:	01813083          	ld	ra,24(sp)
    80003e24:	00813483          	ld	s1,8(sp)
    80003e28:	00013903          	ld	s2,0(sp)
    80003e2c:	00004517          	auipc	a0,0x4
    80003e30:	25c50513          	addi	a0,a0,604 # 80008088 <cons>
    80003e34:	02010113          	addi	sp,sp,32
    80003e38:	00001317          	auipc	t1,0x1
    80003e3c:	eb030067          	jr	-336(t1) # 80004ce8 <release>
    80003e40:	00a00493          	li	s1,10
    80003e44:	fc1ff06f          	j	80003e04 <consoleintr+0x50>

0000000080003e48 <consoleinit>:
    80003e48:	fe010113          	addi	sp,sp,-32
    80003e4c:	00113c23          	sd	ra,24(sp)
    80003e50:	00813823          	sd	s0,16(sp)
    80003e54:	00913423          	sd	s1,8(sp)
    80003e58:	02010413          	addi	s0,sp,32
    80003e5c:	00004497          	auipc	s1,0x4
    80003e60:	22c48493          	addi	s1,s1,556 # 80008088 <cons>
    80003e64:	00048513          	mv	a0,s1
    80003e68:	00002597          	auipc	a1,0x2
    80003e6c:	5f858593          	addi	a1,a1,1528 # 80006460 <CONSOLE_STATUS+0x450>
    80003e70:	00001097          	auipc	ra,0x1
    80003e74:	d88080e7          	jalr	-632(ra) # 80004bf8 <initlock>
    80003e78:	00000097          	auipc	ra,0x0
    80003e7c:	7ac080e7          	jalr	1964(ra) # 80004624 <uartinit>
    80003e80:	01813083          	ld	ra,24(sp)
    80003e84:	01013403          	ld	s0,16(sp)
    80003e88:	00000797          	auipc	a5,0x0
    80003e8c:	d9c78793          	addi	a5,a5,-612 # 80003c24 <consoleread>
    80003e90:	0af4bc23          	sd	a5,184(s1)
    80003e94:	00000797          	auipc	a5,0x0
    80003e98:	cec78793          	addi	a5,a5,-788 # 80003b80 <consolewrite>
    80003e9c:	0cf4b023          	sd	a5,192(s1)
    80003ea0:	00813483          	ld	s1,8(sp)
    80003ea4:	02010113          	addi	sp,sp,32
    80003ea8:	00008067          	ret

0000000080003eac <console_read>:
    80003eac:	ff010113          	addi	sp,sp,-16
    80003eb0:	00813423          	sd	s0,8(sp)
    80003eb4:	01010413          	addi	s0,sp,16
    80003eb8:	00813403          	ld	s0,8(sp)
    80003ebc:	00004317          	auipc	t1,0x4
    80003ec0:	28433303          	ld	t1,644(t1) # 80008140 <devsw+0x10>
    80003ec4:	01010113          	addi	sp,sp,16
    80003ec8:	00030067          	jr	t1

0000000080003ecc <console_write>:
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00813423          	sd	s0,8(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    80003ed8:	00813403          	ld	s0,8(sp)
    80003edc:	00004317          	auipc	t1,0x4
    80003ee0:	26c33303          	ld	t1,620(t1) # 80008148 <devsw+0x18>
    80003ee4:	01010113          	addi	sp,sp,16
    80003ee8:	00030067          	jr	t1

0000000080003eec <panic>:
    80003eec:	fe010113          	addi	sp,sp,-32
    80003ef0:	00113c23          	sd	ra,24(sp)
    80003ef4:	00813823          	sd	s0,16(sp)
    80003ef8:	00913423          	sd	s1,8(sp)
    80003efc:	02010413          	addi	s0,sp,32
    80003f00:	00050493          	mv	s1,a0
    80003f04:	00002517          	auipc	a0,0x2
    80003f08:	56450513          	addi	a0,a0,1380 # 80006468 <CONSOLE_STATUS+0x458>
    80003f0c:	00004797          	auipc	a5,0x4
    80003f10:	2c07ae23          	sw	zero,732(a5) # 800081e8 <pr+0x18>
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	034080e7          	jalr	52(ra) # 80003f48 <__printf>
    80003f1c:	00048513          	mv	a0,s1
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	028080e7          	jalr	40(ra) # 80003f48 <__printf>
    80003f28:	00002517          	auipc	a0,0x2
    80003f2c:	11850513          	addi	a0,a0,280 # 80006040 <CONSOLE_STATUS+0x30>
    80003f30:	00000097          	auipc	ra,0x0
    80003f34:	018080e7          	jalr	24(ra) # 80003f48 <__printf>
    80003f38:	00100793          	li	a5,1
    80003f3c:	00003717          	auipc	a4,0x3
    80003f40:	00f72623          	sw	a5,12(a4) # 80006f48 <panicked>
    80003f44:	0000006f          	j	80003f44 <panic+0x58>

0000000080003f48 <__printf>:
    80003f48:	f3010113          	addi	sp,sp,-208
    80003f4c:	08813023          	sd	s0,128(sp)
    80003f50:	07313423          	sd	s3,104(sp)
    80003f54:	09010413          	addi	s0,sp,144
    80003f58:	05813023          	sd	s8,64(sp)
    80003f5c:	08113423          	sd	ra,136(sp)
    80003f60:	06913c23          	sd	s1,120(sp)
    80003f64:	07213823          	sd	s2,112(sp)
    80003f68:	07413023          	sd	s4,96(sp)
    80003f6c:	05513c23          	sd	s5,88(sp)
    80003f70:	05613823          	sd	s6,80(sp)
    80003f74:	05713423          	sd	s7,72(sp)
    80003f78:	03913c23          	sd	s9,56(sp)
    80003f7c:	03a13823          	sd	s10,48(sp)
    80003f80:	03b13423          	sd	s11,40(sp)
    80003f84:	00004317          	auipc	t1,0x4
    80003f88:	24c30313          	addi	t1,t1,588 # 800081d0 <pr>
    80003f8c:	01832c03          	lw	s8,24(t1)
    80003f90:	00b43423          	sd	a1,8(s0)
    80003f94:	00c43823          	sd	a2,16(s0)
    80003f98:	00d43c23          	sd	a3,24(s0)
    80003f9c:	02e43023          	sd	a4,32(s0)
    80003fa0:	02f43423          	sd	a5,40(s0)
    80003fa4:	03043823          	sd	a6,48(s0)
    80003fa8:	03143c23          	sd	a7,56(s0)
    80003fac:	00050993          	mv	s3,a0
    80003fb0:	4a0c1663          	bnez	s8,8000445c <__printf+0x514>
    80003fb4:	60098c63          	beqz	s3,800045cc <__printf+0x684>
    80003fb8:	0009c503          	lbu	a0,0(s3)
    80003fbc:	00840793          	addi	a5,s0,8
    80003fc0:	f6f43c23          	sd	a5,-136(s0)
    80003fc4:	00000493          	li	s1,0
    80003fc8:	22050063          	beqz	a0,800041e8 <__printf+0x2a0>
    80003fcc:	00002a37          	lui	s4,0x2
    80003fd0:	00018ab7          	lui	s5,0x18
    80003fd4:	000f4b37          	lui	s6,0xf4
    80003fd8:	00989bb7          	lui	s7,0x989
    80003fdc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003fe0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003fe4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003fe8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003fec:	00148c9b          	addiw	s9,s1,1
    80003ff0:	02500793          	li	a5,37
    80003ff4:	01998933          	add	s2,s3,s9
    80003ff8:	38f51263          	bne	a0,a5,8000437c <__printf+0x434>
    80003ffc:	00094783          	lbu	a5,0(s2)
    80004000:	00078c9b          	sext.w	s9,a5
    80004004:	1e078263          	beqz	a5,800041e8 <__printf+0x2a0>
    80004008:	0024849b          	addiw	s1,s1,2
    8000400c:	07000713          	li	a4,112
    80004010:	00998933          	add	s2,s3,s1
    80004014:	38e78a63          	beq	a5,a4,800043a8 <__printf+0x460>
    80004018:	20f76863          	bltu	a4,a5,80004228 <__printf+0x2e0>
    8000401c:	42a78863          	beq	a5,a0,8000444c <__printf+0x504>
    80004020:	06400713          	li	a4,100
    80004024:	40e79663          	bne	a5,a4,80004430 <__printf+0x4e8>
    80004028:	f7843783          	ld	a5,-136(s0)
    8000402c:	0007a603          	lw	a2,0(a5)
    80004030:	00878793          	addi	a5,a5,8
    80004034:	f6f43c23          	sd	a5,-136(s0)
    80004038:	42064a63          	bltz	a2,8000446c <__printf+0x524>
    8000403c:	00a00713          	li	a4,10
    80004040:	02e677bb          	remuw	a5,a2,a4
    80004044:	00002d97          	auipc	s11,0x2
    80004048:	44cd8d93          	addi	s11,s11,1100 # 80006490 <digits>
    8000404c:	00900593          	li	a1,9
    80004050:	0006051b          	sext.w	a0,a2
    80004054:	00000c93          	li	s9,0
    80004058:	02079793          	slli	a5,a5,0x20
    8000405c:	0207d793          	srli	a5,a5,0x20
    80004060:	00fd87b3          	add	a5,s11,a5
    80004064:	0007c783          	lbu	a5,0(a5)
    80004068:	02e656bb          	divuw	a3,a2,a4
    8000406c:	f8f40023          	sb	a5,-128(s0)
    80004070:	14c5d863          	bge	a1,a2,800041c0 <__printf+0x278>
    80004074:	06300593          	li	a1,99
    80004078:	00100c93          	li	s9,1
    8000407c:	02e6f7bb          	remuw	a5,a3,a4
    80004080:	02079793          	slli	a5,a5,0x20
    80004084:	0207d793          	srli	a5,a5,0x20
    80004088:	00fd87b3          	add	a5,s11,a5
    8000408c:	0007c783          	lbu	a5,0(a5)
    80004090:	02e6d73b          	divuw	a4,a3,a4
    80004094:	f8f400a3          	sb	a5,-127(s0)
    80004098:	12a5f463          	bgeu	a1,a0,800041c0 <__printf+0x278>
    8000409c:	00a00693          	li	a3,10
    800040a0:	00900593          	li	a1,9
    800040a4:	02d777bb          	remuw	a5,a4,a3
    800040a8:	02079793          	slli	a5,a5,0x20
    800040ac:	0207d793          	srli	a5,a5,0x20
    800040b0:	00fd87b3          	add	a5,s11,a5
    800040b4:	0007c503          	lbu	a0,0(a5)
    800040b8:	02d757bb          	divuw	a5,a4,a3
    800040bc:	f8a40123          	sb	a0,-126(s0)
    800040c0:	48e5f263          	bgeu	a1,a4,80004544 <__printf+0x5fc>
    800040c4:	06300513          	li	a0,99
    800040c8:	02d7f5bb          	remuw	a1,a5,a3
    800040cc:	02059593          	slli	a1,a1,0x20
    800040d0:	0205d593          	srli	a1,a1,0x20
    800040d4:	00bd85b3          	add	a1,s11,a1
    800040d8:	0005c583          	lbu	a1,0(a1)
    800040dc:	02d7d7bb          	divuw	a5,a5,a3
    800040e0:	f8b401a3          	sb	a1,-125(s0)
    800040e4:	48e57263          	bgeu	a0,a4,80004568 <__printf+0x620>
    800040e8:	3e700513          	li	a0,999
    800040ec:	02d7f5bb          	remuw	a1,a5,a3
    800040f0:	02059593          	slli	a1,a1,0x20
    800040f4:	0205d593          	srli	a1,a1,0x20
    800040f8:	00bd85b3          	add	a1,s11,a1
    800040fc:	0005c583          	lbu	a1,0(a1)
    80004100:	02d7d7bb          	divuw	a5,a5,a3
    80004104:	f8b40223          	sb	a1,-124(s0)
    80004108:	46e57663          	bgeu	a0,a4,80004574 <__printf+0x62c>
    8000410c:	02d7f5bb          	remuw	a1,a5,a3
    80004110:	02059593          	slli	a1,a1,0x20
    80004114:	0205d593          	srli	a1,a1,0x20
    80004118:	00bd85b3          	add	a1,s11,a1
    8000411c:	0005c583          	lbu	a1,0(a1)
    80004120:	02d7d7bb          	divuw	a5,a5,a3
    80004124:	f8b402a3          	sb	a1,-123(s0)
    80004128:	46ea7863          	bgeu	s4,a4,80004598 <__printf+0x650>
    8000412c:	02d7f5bb          	remuw	a1,a5,a3
    80004130:	02059593          	slli	a1,a1,0x20
    80004134:	0205d593          	srli	a1,a1,0x20
    80004138:	00bd85b3          	add	a1,s11,a1
    8000413c:	0005c583          	lbu	a1,0(a1)
    80004140:	02d7d7bb          	divuw	a5,a5,a3
    80004144:	f8b40323          	sb	a1,-122(s0)
    80004148:	3eeaf863          	bgeu	s5,a4,80004538 <__printf+0x5f0>
    8000414c:	02d7f5bb          	remuw	a1,a5,a3
    80004150:	02059593          	slli	a1,a1,0x20
    80004154:	0205d593          	srli	a1,a1,0x20
    80004158:	00bd85b3          	add	a1,s11,a1
    8000415c:	0005c583          	lbu	a1,0(a1)
    80004160:	02d7d7bb          	divuw	a5,a5,a3
    80004164:	f8b403a3          	sb	a1,-121(s0)
    80004168:	42eb7e63          	bgeu	s6,a4,800045a4 <__printf+0x65c>
    8000416c:	02d7f5bb          	remuw	a1,a5,a3
    80004170:	02059593          	slli	a1,a1,0x20
    80004174:	0205d593          	srli	a1,a1,0x20
    80004178:	00bd85b3          	add	a1,s11,a1
    8000417c:	0005c583          	lbu	a1,0(a1)
    80004180:	02d7d7bb          	divuw	a5,a5,a3
    80004184:	f8b40423          	sb	a1,-120(s0)
    80004188:	42ebfc63          	bgeu	s7,a4,800045c0 <__printf+0x678>
    8000418c:	02079793          	slli	a5,a5,0x20
    80004190:	0207d793          	srli	a5,a5,0x20
    80004194:	00fd8db3          	add	s11,s11,a5
    80004198:	000dc703          	lbu	a4,0(s11)
    8000419c:	00a00793          	li	a5,10
    800041a0:	00900c93          	li	s9,9
    800041a4:	f8e404a3          	sb	a4,-119(s0)
    800041a8:	00065c63          	bgez	a2,800041c0 <__printf+0x278>
    800041ac:	f9040713          	addi	a4,s0,-112
    800041b0:	00f70733          	add	a4,a4,a5
    800041b4:	02d00693          	li	a3,45
    800041b8:	fed70823          	sb	a3,-16(a4)
    800041bc:	00078c93          	mv	s9,a5
    800041c0:	f8040793          	addi	a5,s0,-128
    800041c4:	01978cb3          	add	s9,a5,s9
    800041c8:	f7f40d13          	addi	s10,s0,-129
    800041cc:	000cc503          	lbu	a0,0(s9)
    800041d0:	fffc8c93          	addi	s9,s9,-1
    800041d4:	00000097          	auipc	ra,0x0
    800041d8:	b90080e7          	jalr	-1136(ra) # 80003d64 <consputc>
    800041dc:	ffac98e3          	bne	s9,s10,800041cc <__printf+0x284>
    800041e0:	00094503          	lbu	a0,0(s2)
    800041e4:	e00514e3          	bnez	a0,80003fec <__printf+0xa4>
    800041e8:	1a0c1663          	bnez	s8,80004394 <__printf+0x44c>
    800041ec:	08813083          	ld	ra,136(sp)
    800041f0:	08013403          	ld	s0,128(sp)
    800041f4:	07813483          	ld	s1,120(sp)
    800041f8:	07013903          	ld	s2,112(sp)
    800041fc:	06813983          	ld	s3,104(sp)
    80004200:	06013a03          	ld	s4,96(sp)
    80004204:	05813a83          	ld	s5,88(sp)
    80004208:	05013b03          	ld	s6,80(sp)
    8000420c:	04813b83          	ld	s7,72(sp)
    80004210:	04013c03          	ld	s8,64(sp)
    80004214:	03813c83          	ld	s9,56(sp)
    80004218:	03013d03          	ld	s10,48(sp)
    8000421c:	02813d83          	ld	s11,40(sp)
    80004220:	0d010113          	addi	sp,sp,208
    80004224:	00008067          	ret
    80004228:	07300713          	li	a4,115
    8000422c:	1ce78a63          	beq	a5,a4,80004400 <__printf+0x4b8>
    80004230:	07800713          	li	a4,120
    80004234:	1ee79e63          	bne	a5,a4,80004430 <__printf+0x4e8>
    80004238:	f7843783          	ld	a5,-136(s0)
    8000423c:	0007a703          	lw	a4,0(a5)
    80004240:	00878793          	addi	a5,a5,8
    80004244:	f6f43c23          	sd	a5,-136(s0)
    80004248:	28074263          	bltz	a4,800044cc <__printf+0x584>
    8000424c:	00002d97          	auipc	s11,0x2
    80004250:	244d8d93          	addi	s11,s11,580 # 80006490 <digits>
    80004254:	00f77793          	andi	a5,a4,15
    80004258:	00fd87b3          	add	a5,s11,a5
    8000425c:	0007c683          	lbu	a3,0(a5)
    80004260:	00f00613          	li	a2,15
    80004264:	0007079b          	sext.w	a5,a4
    80004268:	f8d40023          	sb	a3,-128(s0)
    8000426c:	0047559b          	srliw	a1,a4,0x4
    80004270:	0047569b          	srliw	a3,a4,0x4
    80004274:	00000c93          	li	s9,0
    80004278:	0ee65063          	bge	a2,a4,80004358 <__printf+0x410>
    8000427c:	00f6f693          	andi	a3,a3,15
    80004280:	00dd86b3          	add	a3,s11,a3
    80004284:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004288:	0087d79b          	srliw	a5,a5,0x8
    8000428c:	00100c93          	li	s9,1
    80004290:	f8d400a3          	sb	a3,-127(s0)
    80004294:	0cb67263          	bgeu	a2,a1,80004358 <__printf+0x410>
    80004298:	00f7f693          	andi	a3,a5,15
    8000429c:	00dd86b3          	add	a3,s11,a3
    800042a0:	0006c583          	lbu	a1,0(a3)
    800042a4:	00f00613          	li	a2,15
    800042a8:	0047d69b          	srliw	a3,a5,0x4
    800042ac:	f8b40123          	sb	a1,-126(s0)
    800042b0:	0047d593          	srli	a1,a5,0x4
    800042b4:	28f67e63          	bgeu	a2,a5,80004550 <__printf+0x608>
    800042b8:	00f6f693          	andi	a3,a3,15
    800042bc:	00dd86b3          	add	a3,s11,a3
    800042c0:	0006c503          	lbu	a0,0(a3)
    800042c4:	0087d813          	srli	a6,a5,0x8
    800042c8:	0087d69b          	srliw	a3,a5,0x8
    800042cc:	f8a401a3          	sb	a0,-125(s0)
    800042d0:	28b67663          	bgeu	a2,a1,8000455c <__printf+0x614>
    800042d4:	00f6f693          	andi	a3,a3,15
    800042d8:	00dd86b3          	add	a3,s11,a3
    800042dc:	0006c583          	lbu	a1,0(a3)
    800042e0:	00c7d513          	srli	a0,a5,0xc
    800042e4:	00c7d69b          	srliw	a3,a5,0xc
    800042e8:	f8b40223          	sb	a1,-124(s0)
    800042ec:	29067a63          	bgeu	a2,a6,80004580 <__printf+0x638>
    800042f0:	00f6f693          	andi	a3,a3,15
    800042f4:	00dd86b3          	add	a3,s11,a3
    800042f8:	0006c583          	lbu	a1,0(a3)
    800042fc:	0107d813          	srli	a6,a5,0x10
    80004300:	0107d69b          	srliw	a3,a5,0x10
    80004304:	f8b402a3          	sb	a1,-123(s0)
    80004308:	28a67263          	bgeu	a2,a0,8000458c <__printf+0x644>
    8000430c:	00f6f693          	andi	a3,a3,15
    80004310:	00dd86b3          	add	a3,s11,a3
    80004314:	0006c683          	lbu	a3,0(a3)
    80004318:	0147d79b          	srliw	a5,a5,0x14
    8000431c:	f8d40323          	sb	a3,-122(s0)
    80004320:	21067663          	bgeu	a2,a6,8000452c <__printf+0x5e4>
    80004324:	02079793          	slli	a5,a5,0x20
    80004328:	0207d793          	srli	a5,a5,0x20
    8000432c:	00fd8db3          	add	s11,s11,a5
    80004330:	000dc683          	lbu	a3,0(s11)
    80004334:	00800793          	li	a5,8
    80004338:	00700c93          	li	s9,7
    8000433c:	f8d403a3          	sb	a3,-121(s0)
    80004340:	00075c63          	bgez	a4,80004358 <__printf+0x410>
    80004344:	f9040713          	addi	a4,s0,-112
    80004348:	00f70733          	add	a4,a4,a5
    8000434c:	02d00693          	li	a3,45
    80004350:	fed70823          	sb	a3,-16(a4)
    80004354:	00078c93          	mv	s9,a5
    80004358:	f8040793          	addi	a5,s0,-128
    8000435c:	01978cb3          	add	s9,a5,s9
    80004360:	f7f40d13          	addi	s10,s0,-129
    80004364:	000cc503          	lbu	a0,0(s9)
    80004368:	fffc8c93          	addi	s9,s9,-1
    8000436c:	00000097          	auipc	ra,0x0
    80004370:	9f8080e7          	jalr	-1544(ra) # 80003d64 <consputc>
    80004374:	ff9d18e3          	bne	s10,s9,80004364 <__printf+0x41c>
    80004378:	0100006f          	j	80004388 <__printf+0x440>
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	9e8080e7          	jalr	-1560(ra) # 80003d64 <consputc>
    80004384:	000c8493          	mv	s1,s9
    80004388:	00094503          	lbu	a0,0(s2)
    8000438c:	c60510e3          	bnez	a0,80003fec <__printf+0xa4>
    80004390:	e40c0ee3          	beqz	s8,800041ec <__printf+0x2a4>
    80004394:	00004517          	auipc	a0,0x4
    80004398:	e3c50513          	addi	a0,a0,-452 # 800081d0 <pr>
    8000439c:	00001097          	auipc	ra,0x1
    800043a0:	94c080e7          	jalr	-1716(ra) # 80004ce8 <release>
    800043a4:	e49ff06f          	j	800041ec <__printf+0x2a4>
    800043a8:	f7843783          	ld	a5,-136(s0)
    800043ac:	03000513          	li	a0,48
    800043b0:	01000d13          	li	s10,16
    800043b4:	00878713          	addi	a4,a5,8
    800043b8:	0007bc83          	ld	s9,0(a5)
    800043bc:	f6e43c23          	sd	a4,-136(s0)
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	9a4080e7          	jalr	-1628(ra) # 80003d64 <consputc>
    800043c8:	07800513          	li	a0,120
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	998080e7          	jalr	-1640(ra) # 80003d64 <consputc>
    800043d4:	00002d97          	auipc	s11,0x2
    800043d8:	0bcd8d93          	addi	s11,s11,188 # 80006490 <digits>
    800043dc:	03ccd793          	srli	a5,s9,0x3c
    800043e0:	00fd87b3          	add	a5,s11,a5
    800043e4:	0007c503          	lbu	a0,0(a5)
    800043e8:	fffd0d1b          	addiw	s10,s10,-1
    800043ec:	004c9c93          	slli	s9,s9,0x4
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	974080e7          	jalr	-1676(ra) # 80003d64 <consputc>
    800043f8:	fe0d12e3          	bnez	s10,800043dc <__printf+0x494>
    800043fc:	f8dff06f          	j	80004388 <__printf+0x440>
    80004400:	f7843783          	ld	a5,-136(s0)
    80004404:	0007bc83          	ld	s9,0(a5)
    80004408:	00878793          	addi	a5,a5,8
    8000440c:	f6f43c23          	sd	a5,-136(s0)
    80004410:	000c9a63          	bnez	s9,80004424 <__printf+0x4dc>
    80004414:	1080006f          	j	8000451c <__printf+0x5d4>
    80004418:	001c8c93          	addi	s9,s9,1
    8000441c:	00000097          	auipc	ra,0x0
    80004420:	948080e7          	jalr	-1720(ra) # 80003d64 <consputc>
    80004424:	000cc503          	lbu	a0,0(s9)
    80004428:	fe0518e3          	bnez	a0,80004418 <__printf+0x4d0>
    8000442c:	f5dff06f          	j	80004388 <__printf+0x440>
    80004430:	02500513          	li	a0,37
    80004434:	00000097          	auipc	ra,0x0
    80004438:	930080e7          	jalr	-1744(ra) # 80003d64 <consputc>
    8000443c:	000c8513          	mv	a0,s9
    80004440:	00000097          	auipc	ra,0x0
    80004444:	924080e7          	jalr	-1756(ra) # 80003d64 <consputc>
    80004448:	f41ff06f          	j	80004388 <__printf+0x440>
    8000444c:	02500513          	li	a0,37
    80004450:	00000097          	auipc	ra,0x0
    80004454:	914080e7          	jalr	-1772(ra) # 80003d64 <consputc>
    80004458:	f31ff06f          	j	80004388 <__printf+0x440>
    8000445c:	00030513          	mv	a0,t1
    80004460:	00000097          	auipc	ra,0x0
    80004464:	7bc080e7          	jalr	1980(ra) # 80004c1c <acquire>
    80004468:	b4dff06f          	j	80003fb4 <__printf+0x6c>
    8000446c:	40c0053b          	negw	a0,a2
    80004470:	00a00713          	li	a4,10
    80004474:	02e576bb          	remuw	a3,a0,a4
    80004478:	00002d97          	auipc	s11,0x2
    8000447c:	018d8d93          	addi	s11,s11,24 # 80006490 <digits>
    80004480:	ff700593          	li	a1,-9
    80004484:	02069693          	slli	a3,a3,0x20
    80004488:	0206d693          	srli	a3,a3,0x20
    8000448c:	00dd86b3          	add	a3,s11,a3
    80004490:	0006c683          	lbu	a3,0(a3)
    80004494:	02e557bb          	divuw	a5,a0,a4
    80004498:	f8d40023          	sb	a3,-128(s0)
    8000449c:	10b65e63          	bge	a2,a1,800045b8 <__printf+0x670>
    800044a0:	06300593          	li	a1,99
    800044a4:	02e7f6bb          	remuw	a3,a5,a4
    800044a8:	02069693          	slli	a3,a3,0x20
    800044ac:	0206d693          	srli	a3,a3,0x20
    800044b0:	00dd86b3          	add	a3,s11,a3
    800044b4:	0006c683          	lbu	a3,0(a3)
    800044b8:	02e7d73b          	divuw	a4,a5,a4
    800044bc:	00200793          	li	a5,2
    800044c0:	f8d400a3          	sb	a3,-127(s0)
    800044c4:	bca5ece3          	bltu	a1,a0,8000409c <__printf+0x154>
    800044c8:	ce5ff06f          	j	800041ac <__printf+0x264>
    800044cc:	40e007bb          	negw	a5,a4
    800044d0:	00002d97          	auipc	s11,0x2
    800044d4:	fc0d8d93          	addi	s11,s11,-64 # 80006490 <digits>
    800044d8:	00f7f693          	andi	a3,a5,15
    800044dc:	00dd86b3          	add	a3,s11,a3
    800044e0:	0006c583          	lbu	a1,0(a3)
    800044e4:	ff100613          	li	a2,-15
    800044e8:	0047d69b          	srliw	a3,a5,0x4
    800044ec:	f8b40023          	sb	a1,-128(s0)
    800044f0:	0047d59b          	srliw	a1,a5,0x4
    800044f4:	0ac75e63          	bge	a4,a2,800045b0 <__printf+0x668>
    800044f8:	00f6f693          	andi	a3,a3,15
    800044fc:	00dd86b3          	add	a3,s11,a3
    80004500:	0006c603          	lbu	a2,0(a3)
    80004504:	00f00693          	li	a3,15
    80004508:	0087d79b          	srliw	a5,a5,0x8
    8000450c:	f8c400a3          	sb	a2,-127(s0)
    80004510:	d8b6e4e3          	bltu	a3,a1,80004298 <__printf+0x350>
    80004514:	00200793          	li	a5,2
    80004518:	e2dff06f          	j	80004344 <__printf+0x3fc>
    8000451c:	00002c97          	auipc	s9,0x2
    80004520:	f54c8c93          	addi	s9,s9,-172 # 80006470 <CONSOLE_STATUS+0x460>
    80004524:	02800513          	li	a0,40
    80004528:	ef1ff06f          	j	80004418 <__printf+0x4d0>
    8000452c:	00700793          	li	a5,7
    80004530:	00600c93          	li	s9,6
    80004534:	e0dff06f          	j	80004340 <__printf+0x3f8>
    80004538:	00700793          	li	a5,7
    8000453c:	00600c93          	li	s9,6
    80004540:	c69ff06f          	j	800041a8 <__printf+0x260>
    80004544:	00300793          	li	a5,3
    80004548:	00200c93          	li	s9,2
    8000454c:	c5dff06f          	j	800041a8 <__printf+0x260>
    80004550:	00300793          	li	a5,3
    80004554:	00200c93          	li	s9,2
    80004558:	de9ff06f          	j	80004340 <__printf+0x3f8>
    8000455c:	00400793          	li	a5,4
    80004560:	00300c93          	li	s9,3
    80004564:	dddff06f          	j	80004340 <__printf+0x3f8>
    80004568:	00400793          	li	a5,4
    8000456c:	00300c93          	li	s9,3
    80004570:	c39ff06f          	j	800041a8 <__printf+0x260>
    80004574:	00500793          	li	a5,5
    80004578:	00400c93          	li	s9,4
    8000457c:	c2dff06f          	j	800041a8 <__printf+0x260>
    80004580:	00500793          	li	a5,5
    80004584:	00400c93          	li	s9,4
    80004588:	db9ff06f          	j	80004340 <__printf+0x3f8>
    8000458c:	00600793          	li	a5,6
    80004590:	00500c93          	li	s9,5
    80004594:	dadff06f          	j	80004340 <__printf+0x3f8>
    80004598:	00600793          	li	a5,6
    8000459c:	00500c93          	li	s9,5
    800045a0:	c09ff06f          	j	800041a8 <__printf+0x260>
    800045a4:	00800793          	li	a5,8
    800045a8:	00700c93          	li	s9,7
    800045ac:	bfdff06f          	j	800041a8 <__printf+0x260>
    800045b0:	00100793          	li	a5,1
    800045b4:	d91ff06f          	j	80004344 <__printf+0x3fc>
    800045b8:	00100793          	li	a5,1
    800045bc:	bf1ff06f          	j	800041ac <__printf+0x264>
    800045c0:	00900793          	li	a5,9
    800045c4:	00800c93          	li	s9,8
    800045c8:	be1ff06f          	j	800041a8 <__printf+0x260>
    800045cc:	00002517          	auipc	a0,0x2
    800045d0:	eac50513          	addi	a0,a0,-340 # 80006478 <CONSOLE_STATUS+0x468>
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	918080e7          	jalr	-1768(ra) # 80003eec <panic>

00000000800045dc <printfinit>:
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00813823          	sd	s0,16(sp)
    800045e4:	00913423          	sd	s1,8(sp)
    800045e8:	00113c23          	sd	ra,24(sp)
    800045ec:	02010413          	addi	s0,sp,32
    800045f0:	00004497          	auipc	s1,0x4
    800045f4:	be048493          	addi	s1,s1,-1056 # 800081d0 <pr>
    800045f8:	00048513          	mv	a0,s1
    800045fc:	00002597          	auipc	a1,0x2
    80004600:	e8c58593          	addi	a1,a1,-372 # 80006488 <CONSOLE_STATUS+0x478>
    80004604:	00000097          	auipc	ra,0x0
    80004608:	5f4080e7          	jalr	1524(ra) # 80004bf8 <initlock>
    8000460c:	01813083          	ld	ra,24(sp)
    80004610:	01013403          	ld	s0,16(sp)
    80004614:	0004ac23          	sw	zero,24(s1)
    80004618:	00813483          	ld	s1,8(sp)
    8000461c:	02010113          	addi	sp,sp,32
    80004620:	00008067          	ret

0000000080004624 <uartinit>:
    80004624:	ff010113          	addi	sp,sp,-16
    80004628:	00813423          	sd	s0,8(sp)
    8000462c:	01010413          	addi	s0,sp,16
    80004630:	100007b7          	lui	a5,0x10000
    80004634:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004638:	f8000713          	li	a4,-128
    8000463c:	00e781a3          	sb	a4,3(a5)
    80004640:	00300713          	li	a4,3
    80004644:	00e78023          	sb	a4,0(a5)
    80004648:	000780a3          	sb	zero,1(a5)
    8000464c:	00e781a3          	sb	a4,3(a5)
    80004650:	00700693          	li	a3,7
    80004654:	00d78123          	sb	a3,2(a5)
    80004658:	00e780a3          	sb	a4,1(a5)
    8000465c:	00813403          	ld	s0,8(sp)
    80004660:	01010113          	addi	sp,sp,16
    80004664:	00008067          	ret

0000000080004668 <uartputc>:
    80004668:	00003797          	auipc	a5,0x3
    8000466c:	8e07a783          	lw	a5,-1824(a5) # 80006f48 <panicked>
    80004670:	00078463          	beqz	a5,80004678 <uartputc+0x10>
    80004674:	0000006f          	j	80004674 <uartputc+0xc>
    80004678:	fd010113          	addi	sp,sp,-48
    8000467c:	02813023          	sd	s0,32(sp)
    80004680:	00913c23          	sd	s1,24(sp)
    80004684:	01213823          	sd	s2,16(sp)
    80004688:	01313423          	sd	s3,8(sp)
    8000468c:	02113423          	sd	ra,40(sp)
    80004690:	03010413          	addi	s0,sp,48
    80004694:	00003917          	auipc	s2,0x3
    80004698:	8bc90913          	addi	s2,s2,-1860 # 80006f50 <uart_tx_r>
    8000469c:	00093783          	ld	a5,0(s2)
    800046a0:	00003497          	auipc	s1,0x3
    800046a4:	8b848493          	addi	s1,s1,-1864 # 80006f58 <uart_tx_w>
    800046a8:	0004b703          	ld	a4,0(s1)
    800046ac:	02078693          	addi	a3,a5,32
    800046b0:	00050993          	mv	s3,a0
    800046b4:	02e69c63          	bne	a3,a4,800046ec <uartputc+0x84>
    800046b8:	00001097          	auipc	ra,0x1
    800046bc:	834080e7          	jalr	-1996(ra) # 80004eec <push_on>
    800046c0:	00093783          	ld	a5,0(s2)
    800046c4:	0004b703          	ld	a4,0(s1)
    800046c8:	02078793          	addi	a5,a5,32
    800046cc:	00e79463          	bne	a5,a4,800046d4 <uartputc+0x6c>
    800046d0:	0000006f          	j	800046d0 <uartputc+0x68>
    800046d4:	00001097          	auipc	ra,0x1
    800046d8:	88c080e7          	jalr	-1908(ra) # 80004f60 <pop_on>
    800046dc:	00093783          	ld	a5,0(s2)
    800046e0:	0004b703          	ld	a4,0(s1)
    800046e4:	02078693          	addi	a3,a5,32
    800046e8:	fce688e3          	beq	a3,a4,800046b8 <uartputc+0x50>
    800046ec:	01f77693          	andi	a3,a4,31
    800046f0:	00004597          	auipc	a1,0x4
    800046f4:	b0058593          	addi	a1,a1,-1280 # 800081f0 <uart_tx_buf>
    800046f8:	00d586b3          	add	a3,a1,a3
    800046fc:	00170713          	addi	a4,a4,1
    80004700:	01368023          	sb	s3,0(a3)
    80004704:	00e4b023          	sd	a4,0(s1)
    80004708:	10000637          	lui	a2,0x10000
    8000470c:	02f71063          	bne	a4,a5,8000472c <uartputc+0xc4>
    80004710:	0340006f          	j	80004744 <uartputc+0xdc>
    80004714:	00074703          	lbu	a4,0(a4)
    80004718:	00f93023          	sd	a5,0(s2)
    8000471c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004720:	00093783          	ld	a5,0(s2)
    80004724:	0004b703          	ld	a4,0(s1)
    80004728:	00f70e63          	beq	a4,a5,80004744 <uartputc+0xdc>
    8000472c:	00564683          	lbu	a3,5(a2)
    80004730:	01f7f713          	andi	a4,a5,31
    80004734:	00e58733          	add	a4,a1,a4
    80004738:	0206f693          	andi	a3,a3,32
    8000473c:	00178793          	addi	a5,a5,1
    80004740:	fc069ae3          	bnez	a3,80004714 <uartputc+0xac>
    80004744:	02813083          	ld	ra,40(sp)
    80004748:	02013403          	ld	s0,32(sp)
    8000474c:	01813483          	ld	s1,24(sp)
    80004750:	01013903          	ld	s2,16(sp)
    80004754:	00813983          	ld	s3,8(sp)
    80004758:	03010113          	addi	sp,sp,48
    8000475c:	00008067          	ret

0000000080004760 <uartputc_sync>:
    80004760:	ff010113          	addi	sp,sp,-16
    80004764:	00813423          	sd	s0,8(sp)
    80004768:	01010413          	addi	s0,sp,16
    8000476c:	00002717          	auipc	a4,0x2
    80004770:	7dc72703          	lw	a4,2012(a4) # 80006f48 <panicked>
    80004774:	02071663          	bnez	a4,800047a0 <uartputc_sync+0x40>
    80004778:	00050793          	mv	a5,a0
    8000477c:	100006b7          	lui	a3,0x10000
    80004780:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004784:	02077713          	andi	a4,a4,32
    80004788:	fe070ce3          	beqz	a4,80004780 <uartputc_sync+0x20>
    8000478c:	0ff7f793          	andi	a5,a5,255
    80004790:	00f68023          	sb	a5,0(a3)
    80004794:	00813403          	ld	s0,8(sp)
    80004798:	01010113          	addi	sp,sp,16
    8000479c:	00008067          	ret
    800047a0:	0000006f          	j	800047a0 <uartputc_sync+0x40>

00000000800047a4 <uartstart>:
    800047a4:	ff010113          	addi	sp,sp,-16
    800047a8:	00813423          	sd	s0,8(sp)
    800047ac:	01010413          	addi	s0,sp,16
    800047b0:	00002617          	auipc	a2,0x2
    800047b4:	7a060613          	addi	a2,a2,1952 # 80006f50 <uart_tx_r>
    800047b8:	00002517          	auipc	a0,0x2
    800047bc:	7a050513          	addi	a0,a0,1952 # 80006f58 <uart_tx_w>
    800047c0:	00063783          	ld	a5,0(a2)
    800047c4:	00053703          	ld	a4,0(a0)
    800047c8:	04f70263          	beq	a4,a5,8000480c <uartstart+0x68>
    800047cc:	100005b7          	lui	a1,0x10000
    800047d0:	00004817          	auipc	a6,0x4
    800047d4:	a2080813          	addi	a6,a6,-1504 # 800081f0 <uart_tx_buf>
    800047d8:	01c0006f          	j	800047f4 <uartstart+0x50>
    800047dc:	0006c703          	lbu	a4,0(a3)
    800047e0:	00f63023          	sd	a5,0(a2)
    800047e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800047e8:	00063783          	ld	a5,0(a2)
    800047ec:	00053703          	ld	a4,0(a0)
    800047f0:	00f70e63          	beq	a4,a5,8000480c <uartstart+0x68>
    800047f4:	01f7f713          	andi	a4,a5,31
    800047f8:	00e806b3          	add	a3,a6,a4
    800047fc:	0055c703          	lbu	a4,5(a1)
    80004800:	00178793          	addi	a5,a5,1
    80004804:	02077713          	andi	a4,a4,32
    80004808:	fc071ae3          	bnez	a4,800047dc <uartstart+0x38>
    8000480c:	00813403          	ld	s0,8(sp)
    80004810:	01010113          	addi	sp,sp,16
    80004814:	00008067          	ret

0000000080004818 <uartgetc>:
    80004818:	ff010113          	addi	sp,sp,-16
    8000481c:	00813423          	sd	s0,8(sp)
    80004820:	01010413          	addi	s0,sp,16
    80004824:	10000737          	lui	a4,0x10000
    80004828:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000482c:	0017f793          	andi	a5,a5,1
    80004830:	00078c63          	beqz	a5,80004848 <uartgetc+0x30>
    80004834:	00074503          	lbu	a0,0(a4)
    80004838:	0ff57513          	andi	a0,a0,255
    8000483c:	00813403          	ld	s0,8(sp)
    80004840:	01010113          	addi	sp,sp,16
    80004844:	00008067          	ret
    80004848:	fff00513          	li	a0,-1
    8000484c:	ff1ff06f          	j	8000483c <uartgetc+0x24>

0000000080004850 <uartintr>:
    80004850:	100007b7          	lui	a5,0x10000
    80004854:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004858:	0017f793          	andi	a5,a5,1
    8000485c:	0a078463          	beqz	a5,80004904 <uartintr+0xb4>
    80004860:	fe010113          	addi	sp,sp,-32
    80004864:	00813823          	sd	s0,16(sp)
    80004868:	00913423          	sd	s1,8(sp)
    8000486c:	00113c23          	sd	ra,24(sp)
    80004870:	02010413          	addi	s0,sp,32
    80004874:	100004b7          	lui	s1,0x10000
    80004878:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000487c:	0ff57513          	andi	a0,a0,255
    80004880:	fffff097          	auipc	ra,0xfffff
    80004884:	534080e7          	jalr	1332(ra) # 80003db4 <consoleintr>
    80004888:	0054c783          	lbu	a5,5(s1)
    8000488c:	0017f793          	andi	a5,a5,1
    80004890:	fe0794e3          	bnez	a5,80004878 <uartintr+0x28>
    80004894:	00002617          	auipc	a2,0x2
    80004898:	6bc60613          	addi	a2,a2,1724 # 80006f50 <uart_tx_r>
    8000489c:	00002517          	auipc	a0,0x2
    800048a0:	6bc50513          	addi	a0,a0,1724 # 80006f58 <uart_tx_w>
    800048a4:	00063783          	ld	a5,0(a2)
    800048a8:	00053703          	ld	a4,0(a0)
    800048ac:	04f70263          	beq	a4,a5,800048f0 <uartintr+0xa0>
    800048b0:	100005b7          	lui	a1,0x10000
    800048b4:	00004817          	auipc	a6,0x4
    800048b8:	93c80813          	addi	a6,a6,-1732 # 800081f0 <uart_tx_buf>
    800048bc:	01c0006f          	j	800048d8 <uartintr+0x88>
    800048c0:	0006c703          	lbu	a4,0(a3)
    800048c4:	00f63023          	sd	a5,0(a2)
    800048c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800048cc:	00063783          	ld	a5,0(a2)
    800048d0:	00053703          	ld	a4,0(a0)
    800048d4:	00f70e63          	beq	a4,a5,800048f0 <uartintr+0xa0>
    800048d8:	01f7f713          	andi	a4,a5,31
    800048dc:	00e806b3          	add	a3,a6,a4
    800048e0:	0055c703          	lbu	a4,5(a1)
    800048e4:	00178793          	addi	a5,a5,1
    800048e8:	02077713          	andi	a4,a4,32
    800048ec:	fc071ae3          	bnez	a4,800048c0 <uartintr+0x70>
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	02010113          	addi	sp,sp,32
    80004900:	00008067          	ret
    80004904:	00002617          	auipc	a2,0x2
    80004908:	64c60613          	addi	a2,a2,1612 # 80006f50 <uart_tx_r>
    8000490c:	00002517          	auipc	a0,0x2
    80004910:	64c50513          	addi	a0,a0,1612 # 80006f58 <uart_tx_w>
    80004914:	00063783          	ld	a5,0(a2)
    80004918:	00053703          	ld	a4,0(a0)
    8000491c:	04f70263          	beq	a4,a5,80004960 <uartintr+0x110>
    80004920:	100005b7          	lui	a1,0x10000
    80004924:	00004817          	auipc	a6,0x4
    80004928:	8cc80813          	addi	a6,a6,-1844 # 800081f0 <uart_tx_buf>
    8000492c:	01c0006f          	j	80004948 <uartintr+0xf8>
    80004930:	0006c703          	lbu	a4,0(a3)
    80004934:	00f63023          	sd	a5,0(a2)
    80004938:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000493c:	00063783          	ld	a5,0(a2)
    80004940:	00053703          	ld	a4,0(a0)
    80004944:	02f70063          	beq	a4,a5,80004964 <uartintr+0x114>
    80004948:	01f7f713          	andi	a4,a5,31
    8000494c:	00e806b3          	add	a3,a6,a4
    80004950:	0055c703          	lbu	a4,5(a1)
    80004954:	00178793          	addi	a5,a5,1
    80004958:	02077713          	andi	a4,a4,32
    8000495c:	fc071ae3          	bnez	a4,80004930 <uartintr+0xe0>
    80004960:	00008067          	ret
    80004964:	00008067          	ret

0000000080004968 <kinit>:
    80004968:	fc010113          	addi	sp,sp,-64
    8000496c:	02913423          	sd	s1,40(sp)
    80004970:	fffff7b7          	lui	a5,0xfffff
    80004974:	00005497          	auipc	s1,0x5
    80004978:	89b48493          	addi	s1,s1,-1893 # 8000920f <end+0xfff>
    8000497c:	02813823          	sd	s0,48(sp)
    80004980:	01313c23          	sd	s3,24(sp)
    80004984:	00f4f4b3          	and	s1,s1,a5
    80004988:	02113c23          	sd	ra,56(sp)
    8000498c:	03213023          	sd	s2,32(sp)
    80004990:	01413823          	sd	s4,16(sp)
    80004994:	01513423          	sd	s5,8(sp)
    80004998:	04010413          	addi	s0,sp,64
    8000499c:	000017b7          	lui	a5,0x1
    800049a0:	01100993          	li	s3,17
    800049a4:	00f487b3          	add	a5,s1,a5
    800049a8:	01b99993          	slli	s3,s3,0x1b
    800049ac:	06f9e063          	bltu	s3,a5,80004a0c <kinit+0xa4>
    800049b0:	00004a97          	auipc	s5,0x4
    800049b4:	860a8a93          	addi	s5,s5,-1952 # 80008210 <end>
    800049b8:	0754ec63          	bltu	s1,s5,80004a30 <kinit+0xc8>
    800049bc:	0734fa63          	bgeu	s1,s3,80004a30 <kinit+0xc8>
    800049c0:	00088a37          	lui	s4,0x88
    800049c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800049c8:	00002917          	auipc	s2,0x2
    800049cc:	59890913          	addi	s2,s2,1432 # 80006f60 <kmem>
    800049d0:	00ca1a13          	slli	s4,s4,0xc
    800049d4:	0140006f          	j	800049e8 <kinit+0x80>
    800049d8:	000017b7          	lui	a5,0x1
    800049dc:	00f484b3          	add	s1,s1,a5
    800049e0:	0554e863          	bltu	s1,s5,80004a30 <kinit+0xc8>
    800049e4:	0534f663          	bgeu	s1,s3,80004a30 <kinit+0xc8>
    800049e8:	00001637          	lui	a2,0x1
    800049ec:	00100593          	li	a1,1
    800049f0:	00048513          	mv	a0,s1
    800049f4:	00000097          	auipc	ra,0x0
    800049f8:	5e4080e7          	jalr	1508(ra) # 80004fd8 <__memset>
    800049fc:	00093783          	ld	a5,0(s2)
    80004a00:	00f4b023          	sd	a5,0(s1)
    80004a04:	00993023          	sd	s1,0(s2)
    80004a08:	fd4498e3          	bne	s1,s4,800049d8 <kinit+0x70>
    80004a0c:	03813083          	ld	ra,56(sp)
    80004a10:	03013403          	ld	s0,48(sp)
    80004a14:	02813483          	ld	s1,40(sp)
    80004a18:	02013903          	ld	s2,32(sp)
    80004a1c:	01813983          	ld	s3,24(sp)
    80004a20:	01013a03          	ld	s4,16(sp)
    80004a24:	00813a83          	ld	s5,8(sp)
    80004a28:	04010113          	addi	sp,sp,64
    80004a2c:	00008067          	ret
    80004a30:	00002517          	auipc	a0,0x2
    80004a34:	a7850513          	addi	a0,a0,-1416 # 800064a8 <digits+0x18>
    80004a38:	fffff097          	auipc	ra,0xfffff
    80004a3c:	4b4080e7          	jalr	1204(ra) # 80003eec <panic>

0000000080004a40 <freerange>:
    80004a40:	fc010113          	addi	sp,sp,-64
    80004a44:	000017b7          	lui	a5,0x1
    80004a48:	02913423          	sd	s1,40(sp)
    80004a4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004a50:	009504b3          	add	s1,a0,s1
    80004a54:	fffff537          	lui	a0,0xfffff
    80004a58:	02813823          	sd	s0,48(sp)
    80004a5c:	02113c23          	sd	ra,56(sp)
    80004a60:	03213023          	sd	s2,32(sp)
    80004a64:	01313c23          	sd	s3,24(sp)
    80004a68:	01413823          	sd	s4,16(sp)
    80004a6c:	01513423          	sd	s5,8(sp)
    80004a70:	01613023          	sd	s6,0(sp)
    80004a74:	04010413          	addi	s0,sp,64
    80004a78:	00a4f4b3          	and	s1,s1,a0
    80004a7c:	00f487b3          	add	a5,s1,a5
    80004a80:	06f5e463          	bltu	a1,a5,80004ae8 <freerange+0xa8>
    80004a84:	00003a97          	auipc	s5,0x3
    80004a88:	78ca8a93          	addi	s5,s5,1932 # 80008210 <end>
    80004a8c:	0954e263          	bltu	s1,s5,80004b10 <freerange+0xd0>
    80004a90:	01100993          	li	s3,17
    80004a94:	01b99993          	slli	s3,s3,0x1b
    80004a98:	0734fc63          	bgeu	s1,s3,80004b10 <freerange+0xd0>
    80004a9c:	00058a13          	mv	s4,a1
    80004aa0:	00002917          	auipc	s2,0x2
    80004aa4:	4c090913          	addi	s2,s2,1216 # 80006f60 <kmem>
    80004aa8:	00002b37          	lui	s6,0x2
    80004aac:	0140006f          	j	80004ac0 <freerange+0x80>
    80004ab0:	000017b7          	lui	a5,0x1
    80004ab4:	00f484b3          	add	s1,s1,a5
    80004ab8:	0554ec63          	bltu	s1,s5,80004b10 <freerange+0xd0>
    80004abc:	0534fa63          	bgeu	s1,s3,80004b10 <freerange+0xd0>
    80004ac0:	00001637          	lui	a2,0x1
    80004ac4:	00100593          	li	a1,1
    80004ac8:	00048513          	mv	a0,s1
    80004acc:	00000097          	auipc	ra,0x0
    80004ad0:	50c080e7          	jalr	1292(ra) # 80004fd8 <__memset>
    80004ad4:	00093703          	ld	a4,0(s2)
    80004ad8:	016487b3          	add	a5,s1,s6
    80004adc:	00e4b023          	sd	a4,0(s1)
    80004ae0:	00993023          	sd	s1,0(s2)
    80004ae4:	fcfa76e3          	bgeu	s4,a5,80004ab0 <freerange+0x70>
    80004ae8:	03813083          	ld	ra,56(sp)
    80004aec:	03013403          	ld	s0,48(sp)
    80004af0:	02813483          	ld	s1,40(sp)
    80004af4:	02013903          	ld	s2,32(sp)
    80004af8:	01813983          	ld	s3,24(sp)
    80004afc:	01013a03          	ld	s4,16(sp)
    80004b00:	00813a83          	ld	s5,8(sp)
    80004b04:	00013b03          	ld	s6,0(sp)
    80004b08:	04010113          	addi	sp,sp,64
    80004b0c:	00008067          	ret
    80004b10:	00002517          	auipc	a0,0x2
    80004b14:	99850513          	addi	a0,a0,-1640 # 800064a8 <digits+0x18>
    80004b18:	fffff097          	auipc	ra,0xfffff
    80004b1c:	3d4080e7          	jalr	980(ra) # 80003eec <panic>

0000000080004b20 <kfree>:
    80004b20:	fe010113          	addi	sp,sp,-32
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00113c23          	sd	ra,24(sp)
    80004b2c:	00913423          	sd	s1,8(sp)
    80004b30:	02010413          	addi	s0,sp,32
    80004b34:	03451793          	slli	a5,a0,0x34
    80004b38:	04079c63          	bnez	a5,80004b90 <kfree+0x70>
    80004b3c:	00003797          	auipc	a5,0x3
    80004b40:	6d478793          	addi	a5,a5,1748 # 80008210 <end>
    80004b44:	00050493          	mv	s1,a0
    80004b48:	04f56463          	bltu	a0,a5,80004b90 <kfree+0x70>
    80004b4c:	01100793          	li	a5,17
    80004b50:	01b79793          	slli	a5,a5,0x1b
    80004b54:	02f57e63          	bgeu	a0,a5,80004b90 <kfree+0x70>
    80004b58:	00001637          	lui	a2,0x1
    80004b5c:	00100593          	li	a1,1
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	478080e7          	jalr	1144(ra) # 80004fd8 <__memset>
    80004b68:	00002797          	auipc	a5,0x2
    80004b6c:	3f878793          	addi	a5,a5,1016 # 80006f60 <kmem>
    80004b70:	0007b703          	ld	a4,0(a5)
    80004b74:	01813083          	ld	ra,24(sp)
    80004b78:	01013403          	ld	s0,16(sp)
    80004b7c:	00e4b023          	sd	a4,0(s1)
    80004b80:	0097b023          	sd	s1,0(a5)
    80004b84:	00813483          	ld	s1,8(sp)
    80004b88:	02010113          	addi	sp,sp,32
    80004b8c:	00008067          	ret
    80004b90:	00002517          	auipc	a0,0x2
    80004b94:	91850513          	addi	a0,a0,-1768 # 800064a8 <digits+0x18>
    80004b98:	fffff097          	auipc	ra,0xfffff
    80004b9c:	354080e7          	jalr	852(ra) # 80003eec <panic>

0000000080004ba0 <kalloc>:
    80004ba0:	fe010113          	addi	sp,sp,-32
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	00002797          	auipc	a5,0x2
    80004bb8:	3ac78793          	addi	a5,a5,940 # 80006f60 <kmem>
    80004bbc:	0007b483          	ld	s1,0(a5)
    80004bc0:	02048063          	beqz	s1,80004be0 <kalloc+0x40>
    80004bc4:	0004b703          	ld	a4,0(s1)
    80004bc8:	00001637          	lui	a2,0x1
    80004bcc:	00500593          	li	a1,5
    80004bd0:	00048513          	mv	a0,s1
    80004bd4:	00e7b023          	sd	a4,0(a5)
    80004bd8:	00000097          	auipc	ra,0x0
    80004bdc:	400080e7          	jalr	1024(ra) # 80004fd8 <__memset>
    80004be0:	01813083          	ld	ra,24(sp)
    80004be4:	01013403          	ld	s0,16(sp)
    80004be8:	00048513          	mv	a0,s1
    80004bec:	00813483          	ld	s1,8(sp)
    80004bf0:	02010113          	addi	sp,sp,32
    80004bf4:	00008067          	ret

0000000080004bf8 <initlock>:
    80004bf8:	ff010113          	addi	sp,sp,-16
    80004bfc:	00813423          	sd	s0,8(sp)
    80004c00:	01010413          	addi	s0,sp,16
    80004c04:	00813403          	ld	s0,8(sp)
    80004c08:	00b53423          	sd	a1,8(a0)
    80004c0c:	00052023          	sw	zero,0(a0)
    80004c10:	00053823          	sd	zero,16(a0)
    80004c14:	01010113          	addi	sp,sp,16
    80004c18:	00008067          	ret

0000000080004c1c <acquire>:
    80004c1c:	fe010113          	addi	sp,sp,-32
    80004c20:	00813823          	sd	s0,16(sp)
    80004c24:	00913423          	sd	s1,8(sp)
    80004c28:	00113c23          	sd	ra,24(sp)
    80004c2c:	01213023          	sd	s2,0(sp)
    80004c30:	02010413          	addi	s0,sp,32
    80004c34:	00050493          	mv	s1,a0
    80004c38:	10002973          	csrr	s2,sstatus
    80004c3c:	100027f3          	csrr	a5,sstatus
    80004c40:	ffd7f793          	andi	a5,a5,-3
    80004c44:	10079073          	csrw	sstatus,a5
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	8e0080e7          	jalr	-1824(ra) # 80003528 <mycpu>
    80004c50:	07852783          	lw	a5,120(a0)
    80004c54:	06078e63          	beqz	a5,80004cd0 <acquire+0xb4>
    80004c58:	fffff097          	auipc	ra,0xfffff
    80004c5c:	8d0080e7          	jalr	-1840(ra) # 80003528 <mycpu>
    80004c60:	07852783          	lw	a5,120(a0)
    80004c64:	0004a703          	lw	a4,0(s1)
    80004c68:	0017879b          	addiw	a5,a5,1
    80004c6c:	06f52c23          	sw	a5,120(a0)
    80004c70:	04071063          	bnez	a4,80004cb0 <acquire+0x94>
    80004c74:	00100713          	li	a4,1
    80004c78:	00070793          	mv	a5,a4
    80004c7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004c80:	0007879b          	sext.w	a5,a5
    80004c84:	fe079ae3          	bnez	a5,80004c78 <acquire+0x5c>
    80004c88:	0ff0000f          	fence
    80004c8c:	fffff097          	auipc	ra,0xfffff
    80004c90:	89c080e7          	jalr	-1892(ra) # 80003528 <mycpu>
    80004c94:	01813083          	ld	ra,24(sp)
    80004c98:	01013403          	ld	s0,16(sp)
    80004c9c:	00a4b823          	sd	a0,16(s1)
    80004ca0:	00013903          	ld	s2,0(sp)
    80004ca4:	00813483          	ld	s1,8(sp)
    80004ca8:	02010113          	addi	sp,sp,32
    80004cac:	00008067          	ret
    80004cb0:	0104b903          	ld	s2,16(s1)
    80004cb4:	fffff097          	auipc	ra,0xfffff
    80004cb8:	874080e7          	jalr	-1932(ra) # 80003528 <mycpu>
    80004cbc:	faa91ce3          	bne	s2,a0,80004c74 <acquire+0x58>
    80004cc0:	00001517          	auipc	a0,0x1
    80004cc4:	7f050513          	addi	a0,a0,2032 # 800064b0 <digits+0x20>
    80004cc8:	fffff097          	auipc	ra,0xfffff
    80004ccc:	224080e7          	jalr	548(ra) # 80003eec <panic>
    80004cd0:	00195913          	srli	s2,s2,0x1
    80004cd4:	fffff097          	auipc	ra,0xfffff
    80004cd8:	854080e7          	jalr	-1964(ra) # 80003528 <mycpu>
    80004cdc:	00197913          	andi	s2,s2,1
    80004ce0:	07252e23          	sw	s2,124(a0)
    80004ce4:	f75ff06f          	j	80004c58 <acquire+0x3c>

0000000080004ce8 <release>:
    80004ce8:	fe010113          	addi	sp,sp,-32
    80004cec:	00813823          	sd	s0,16(sp)
    80004cf0:	00113c23          	sd	ra,24(sp)
    80004cf4:	00913423          	sd	s1,8(sp)
    80004cf8:	01213023          	sd	s2,0(sp)
    80004cfc:	02010413          	addi	s0,sp,32
    80004d00:	00052783          	lw	a5,0(a0)
    80004d04:	00079a63          	bnez	a5,80004d18 <release+0x30>
    80004d08:	00001517          	auipc	a0,0x1
    80004d0c:	7b050513          	addi	a0,a0,1968 # 800064b8 <digits+0x28>
    80004d10:	fffff097          	auipc	ra,0xfffff
    80004d14:	1dc080e7          	jalr	476(ra) # 80003eec <panic>
    80004d18:	01053903          	ld	s2,16(a0)
    80004d1c:	00050493          	mv	s1,a0
    80004d20:	fffff097          	auipc	ra,0xfffff
    80004d24:	808080e7          	jalr	-2040(ra) # 80003528 <mycpu>
    80004d28:	fea910e3          	bne	s2,a0,80004d08 <release+0x20>
    80004d2c:	0004b823          	sd	zero,16(s1)
    80004d30:	0ff0000f          	fence
    80004d34:	0f50000f          	fence	iorw,ow
    80004d38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004d3c:	ffffe097          	auipc	ra,0xffffe
    80004d40:	7ec080e7          	jalr	2028(ra) # 80003528 <mycpu>
    80004d44:	100027f3          	csrr	a5,sstatus
    80004d48:	0027f793          	andi	a5,a5,2
    80004d4c:	04079a63          	bnez	a5,80004da0 <release+0xb8>
    80004d50:	07852783          	lw	a5,120(a0)
    80004d54:	02f05e63          	blez	a5,80004d90 <release+0xa8>
    80004d58:	fff7871b          	addiw	a4,a5,-1
    80004d5c:	06e52c23          	sw	a4,120(a0)
    80004d60:	00071c63          	bnez	a4,80004d78 <release+0x90>
    80004d64:	07c52783          	lw	a5,124(a0)
    80004d68:	00078863          	beqz	a5,80004d78 <release+0x90>
    80004d6c:	100027f3          	csrr	a5,sstatus
    80004d70:	0027e793          	ori	a5,a5,2
    80004d74:	10079073          	csrw	sstatus,a5
    80004d78:	01813083          	ld	ra,24(sp)
    80004d7c:	01013403          	ld	s0,16(sp)
    80004d80:	00813483          	ld	s1,8(sp)
    80004d84:	00013903          	ld	s2,0(sp)
    80004d88:	02010113          	addi	sp,sp,32
    80004d8c:	00008067          	ret
    80004d90:	00001517          	auipc	a0,0x1
    80004d94:	74850513          	addi	a0,a0,1864 # 800064d8 <digits+0x48>
    80004d98:	fffff097          	auipc	ra,0xfffff
    80004d9c:	154080e7          	jalr	340(ra) # 80003eec <panic>
    80004da0:	00001517          	auipc	a0,0x1
    80004da4:	72050513          	addi	a0,a0,1824 # 800064c0 <digits+0x30>
    80004da8:	fffff097          	auipc	ra,0xfffff
    80004dac:	144080e7          	jalr	324(ra) # 80003eec <panic>

0000000080004db0 <holding>:
    80004db0:	00052783          	lw	a5,0(a0)
    80004db4:	00079663          	bnez	a5,80004dc0 <holding+0x10>
    80004db8:	00000513          	li	a0,0
    80004dbc:	00008067          	ret
    80004dc0:	fe010113          	addi	sp,sp,-32
    80004dc4:	00813823          	sd	s0,16(sp)
    80004dc8:	00913423          	sd	s1,8(sp)
    80004dcc:	00113c23          	sd	ra,24(sp)
    80004dd0:	02010413          	addi	s0,sp,32
    80004dd4:	01053483          	ld	s1,16(a0)
    80004dd8:	ffffe097          	auipc	ra,0xffffe
    80004ddc:	750080e7          	jalr	1872(ra) # 80003528 <mycpu>
    80004de0:	01813083          	ld	ra,24(sp)
    80004de4:	01013403          	ld	s0,16(sp)
    80004de8:	40a48533          	sub	a0,s1,a0
    80004dec:	00153513          	seqz	a0,a0
    80004df0:	00813483          	ld	s1,8(sp)
    80004df4:	02010113          	addi	sp,sp,32
    80004df8:	00008067          	ret

0000000080004dfc <push_off>:
    80004dfc:	fe010113          	addi	sp,sp,-32
    80004e00:	00813823          	sd	s0,16(sp)
    80004e04:	00113c23          	sd	ra,24(sp)
    80004e08:	00913423          	sd	s1,8(sp)
    80004e0c:	02010413          	addi	s0,sp,32
    80004e10:	100024f3          	csrr	s1,sstatus
    80004e14:	100027f3          	csrr	a5,sstatus
    80004e18:	ffd7f793          	andi	a5,a5,-3
    80004e1c:	10079073          	csrw	sstatus,a5
    80004e20:	ffffe097          	auipc	ra,0xffffe
    80004e24:	708080e7          	jalr	1800(ra) # 80003528 <mycpu>
    80004e28:	07852783          	lw	a5,120(a0)
    80004e2c:	02078663          	beqz	a5,80004e58 <push_off+0x5c>
    80004e30:	ffffe097          	auipc	ra,0xffffe
    80004e34:	6f8080e7          	jalr	1784(ra) # 80003528 <mycpu>
    80004e38:	07852783          	lw	a5,120(a0)
    80004e3c:	01813083          	ld	ra,24(sp)
    80004e40:	01013403          	ld	s0,16(sp)
    80004e44:	0017879b          	addiw	a5,a5,1
    80004e48:	06f52c23          	sw	a5,120(a0)
    80004e4c:	00813483          	ld	s1,8(sp)
    80004e50:	02010113          	addi	sp,sp,32
    80004e54:	00008067          	ret
    80004e58:	0014d493          	srli	s1,s1,0x1
    80004e5c:	ffffe097          	auipc	ra,0xffffe
    80004e60:	6cc080e7          	jalr	1740(ra) # 80003528 <mycpu>
    80004e64:	0014f493          	andi	s1,s1,1
    80004e68:	06952e23          	sw	s1,124(a0)
    80004e6c:	fc5ff06f          	j	80004e30 <push_off+0x34>

0000000080004e70 <pop_off>:
    80004e70:	ff010113          	addi	sp,sp,-16
    80004e74:	00813023          	sd	s0,0(sp)
    80004e78:	00113423          	sd	ra,8(sp)
    80004e7c:	01010413          	addi	s0,sp,16
    80004e80:	ffffe097          	auipc	ra,0xffffe
    80004e84:	6a8080e7          	jalr	1704(ra) # 80003528 <mycpu>
    80004e88:	100027f3          	csrr	a5,sstatus
    80004e8c:	0027f793          	andi	a5,a5,2
    80004e90:	04079663          	bnez	a5,80004edc <pop_off+0x6c>
    80004e94:	07852783          	lw	a5,120(a0)
    80004e98:	02f05a63          	blez	a5,80004ecc <pop_off+0x5c>
    80004e9c:	fff7871b          	addiw	a4,a5,-1
    80004ea0:	06e52c23          	sw	a4,120(a0)
    80004ea4:	00071c63          	bnez	a4,80004ebc <pop_off+0x4c>
    80004ea8:	07c52783          	lw	a5,124(a0)
    80004eac:	00078863          	beqz	a5,80004ebc <pop_off+0x4c>
    80004eb0:	100027f3          	csrr	a5,sstatus
    80004eb4:	0027e793          	ori	a5,a5,2
    80004eb8:	10079073          	csrw	sstatus,a5
    80004ebc:	00813083          	ld	ra,8(sp)
    80004ec0:	00013403          	ld	s0,0(sp)
    80004ec4:	01010113          	addi	sp,sp,16
    80004ec8:	00008067          	ret
    80004ecc:	00001517          	auipc	a0,0x1
    80004ed0:	60c50513          	addi	a0,a0,1548 # 800064d8 <digits+0x48>
    80004ed4:	fffff097          	auipc	ra,0xfffff
    80004ed8:	018080e7          	jalr	24(ra) # 80003eec <panic>
    80004edc:	00001517          	auipc	a0,0x1
    80004ee0:	5e450513          	addi	a0,a0,1508 # 800064c0 <digits+0x30>
    80004ee4:	fffff097          	auipc	ra,0xfffff
    80004ee8:	008080e7          	jalr	8(ra) # 80003eec <panic>

0000000080004eec <push_on>:
    80004eec:	fe010113          	addi	sp,sp,-32
    80004ef0:	00813823          	sd	s0,16(sp)
    80004ef4:	00113c23          	sd	ra,24(sp)
    80004ef8:	00913423          	sd	s1,8(sp)
    80004efc:	02010413          	addi	s0,sp,32
    80004f00:	100024f3          	csrr	s1,sstatus
    80004f04:	100027f3          	csrr	a5,sstatus
    80004f08:	0027e793          	ori	a5,a5,2
    80004f0c:	10079073          	csrw	sstatus,a5
    80004f10:	ffffe097          	auipc	ra,0xffffe
    80004f14:	618080e7          	jalr	1560(ra) # 80003528 <mycpu>
    80004f18:	07852783          	lw	a5,120(a0)
    80004f1c:	02078663          	beqz	a5,80004f48 <push_on+0x5c>
    80004f20:	ffffe097          	auipc	ra,0xffffe
    80004f24:	608080e7          	jalr	1544(ra) # 80003528 <mycpu>
    80004f28:	07852783          	lw	a5,120(a0)
    80004f2c:	01813083          	ld	ra,24(sp)
    80004f30:	01013403          	ld	s0,16(sp)
    80004f34:	0017879b          	addiw	a5,a5,1
    80004f38:	06f52c23          	sw	a5,120(a0)
    80004f3c:	00813483          	ld	s1,8(sp)
    80004f40:	02010113          	addi	sp,sp,32
    80004f44:	00008067          	ret
    80004f48:	0014d493          	srli	s1,s1,0x1
    80004f4c:	ffffe097          	auipc	ra,0xffffe
    80004f50:	5dc080e7          	jalr	1500(ra) # 80003528 <mycpu>
    80004f54:	0014f493          	andi	s1,s1,1
    80004f58:	06952e23          	sw	s1,124(a0)
    80004f5c:	fc5ff06f          	j	80004f20 <push_on+0x34>

0000000080004f60 <pop_on>:
    80004f60:	ff010113          	addi	sp,sp,-16
    80004f64:	00813023          	sd	s0,0(sp)
    80004f68:	00113423          	sd	ra,8(sp)
    80004f6c:	01010413          	addi	s0,sp,16
    80004f70:	ffffe097          	auipc	ra,0xffffe
    80004f74:	5b8080e7          	jalr	1464(ra) # 80003528 <mycpu>
    80004f78:	100027f3          	csrr	a5,sstatus
    80004f7c:	0027f793          	andi	a5,a5,2
    80004f80:	04078463          	beqz	a5,80004fc8 <pop_on+0x68>
    80004f84:	07852783          	lw	a5,120(a0)
    80004f88:	02f05863          	blez	a5,80004fb8 <pop_on+0x58>
    80004f8c:	fff7879b          	addiw	a5,a5,-1
    80004f90:	06f52c23          	sw	a5,120(a0)
    80004f94:	07853783          	ld	a5,120(a0)
    80004f98:	00079863          	bnez	a5,80004fa8 <pop_on+0x48>
    80004f9c:	100027f3          	csrr	a5,sstatus
    80004fa0:	ffd7f793          	andi	a5,a5,-3
    80004fa4:	10079073          	csrw	sstatus,a5
    80004fa8:	00813083          	ld	ra,8(sp)
    80004fac:	00013403          	ld	s0,0(sp)
    80004fb0:	01010113          	addi	sp,sp,16
    80004fb4:	00008067          	ret
    80004fb8:	00001517          	auipc	a0,0x1
    80004fbc:	54850513          	addi	a0,a0,1352 # 80006500 <digits+0x70>
    80004fc0:	fffff097          	auipc	ra,0xfffff
    80004fc4:	f2c080e7          	jalr	-212(ra) # 80003eec <panic>
    80004fc8:	00001517          	auipc	a0,0x1
    80004fcc:	51850513          	addi	a0,a0,1304 # 800064e0 <digits+0x50>
    80004fd0:	fffff097          	auipc	ra,0xfffff
    80004fd4:	f1c080e7          	jalr	-228(ra) # 80003eec <panic>

0000000080004fd8 <__memset>:
    80004fd8:	ff010113          	addi	sp,sp,-16
    80004fdc:	00813423          	sd	s0,8(sp)
    80004fe0:	01010413          	addi	s0,sp,16
    80004fe4:	1a060e63          	beqz	a2,800051a0 <__memset+0x1c8>
    80004fe8:	40a007b3          	neg	a5,a0
    80004fec:	0077f793          	andi	a5,a5,7
    80004ff0:	00778693          	addi	a3,a5,7
    80004ff4:	00b00813          	li	a6,11
    80004ff8:	0ff5f593          	andi	a1,a1,255
    80004ffc:	fff6071b          	addiw	a4,a2,-1
    80005000:	1b06e663          	bltu	a3,a6,800051ac <__memset+0x1d4>
    80005004:	1cd76463          	bltu	a4,a3,800051cc <__memset+0x1f4>
    80005008:	1a078e63          	beqz	a5,800051c4 <__memset+0x1ec>
    8000500c:	00b50023          	sb	a1,0(a0)
    80005010:	00100713          	li	a4,1
    80005014:	1ae78463          	beq	a5,a4,800051bc <__memset+0x1e4>
    80005018:	00b500a3          	sb	a1,1(a0)
    8000501c:	00200713          	li	a4,2
    80005020:	1ae78a63          	beq	a5,a4,800051d4 <__memset+0x1fc>
    80005024:	00b50123          	sb	a1,2(a0)
    80005028:	00300713          	li	a4,3
    8000502c:	18e78463          	beq	a5,a4,800051b4 <__memset+0x1dc>
    80005030:	00b501a3          	sb	a1,3(a0)
    80005034:	00400713          	li	a4,4
    80005038:	1ae78263          	beq	a5,a4,800051dc <__memset+0x204>
    8000503c:	00b50223          	sb	a1,4(a0)
    80005040:	00500713          	li	a4,5
    80005044:	1ae78063          	beq	a5,a4,800051e4 <__memset+0x20c>
    80005048:	00b502a3          	sb	a1,5(a0)
    8000504c:	00700713          	li	a4,7
    80005050:	18e79e63          	bne	a5,a4,800051ec <__memset+0x214>
    80005054:	00b50323          	sb	a1,6(a0)
    80005058:	00700e93          	li	t4,7
    8000505c:	00859713          	slli	a4,a1,0x8
    80005060:	00e5e733          	or	a4,a1,a4
    80005064:	01059e13          	slli	t3,a1,0x10
    80005068:	01c76e33          	or	t3,a4,t3
    8000506c:	01859313          	slli	t1,a1,0x18
    80005070:	006e6333          	or	t1,t3,t1
    80005074:	02059893          	slli	a7,a1,0x20
    80005078:	40f60e3b          	subw	t3,a2,a5
    8000507c:	011368b3          	or	a7,t1,a7
    80005080:	02859813          	slli	a6,a1,0x28
    80005084:	0108e833          	or	a6,a7,a6
    80005088:	03059693          	slli	a3,a1,0x30
    8000508c:	003e589b          	srliw	a7,t3,0x3
    80005090:	00d866b3          	or	a3,a6,a3
    80005094:	03859713          	slli	a4,a1,0x38
    80005098:	00389813          	slli	a6,a7,0x3
    8000509c:	00f507b3          	add	a5,a0,a5
    800050a0:	00e6e733          	or	a4,a3,a4
    800050a4:	000e089b          	sext.w	a7,t3
    800050a8:	00f806b3          	add	a3,a6,a5
    800050ac:	00e7b023          	sd	a4,0(a5)
    800050b0:	00878793          	addi	a5,a5,8
    800050b4:	fed79ce3          	bne	a5,a3,800050ac <__memset+0xd4>
    800050b8:	ff8e7793          	andi	a5,t3,-8
    800050bc:	0007871b          	sext.w	a4,a5
    800050c0:	01d787bb          	addw	a5,a5,t4
    800050c4:	0ce88e63          	beq	a7,a4,800051a0 <__memset+0x1c8>
    800050c8:	00f50733          	add	a4,a0,a5
    800050cc:	00b70023          	sb	a1,0(a4)
    800050d0:	0017871b          	addiw	a4,a5,1
    800050d4:	0cc77663          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    800050d8:	00e50733          	add	a4,a0,a4
    800050dc:	00b70023          	sb	a1,0(a4)
    800050e0:	0027871b          	addiw	a4,a5,2
    800050e4:	0ac77e63          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    800050e8:	00e50733          	add	a4,a0,a4
    800050ec:	00b70023          	sb	a1,0(a4)
    800050f0:	0037871b          	addiw	a4,a5,3
    800050f4:	0ac77663          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    800050f8:	00e50733          	add	a4,a0,a4
    800050fc:	00b70023          	sb	a1,0(a4)
    80005100:	0047871b          	addiw	a4,a5,4
    80005104:	08c77e63          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005108:	00e50733          	add	a4,a0,a4
    8000510c:	00b70023          	sb	a1,0(a4)
    80005110:	0057871b          	addiw	a4,a5,5
    80005114:	08c77663          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005118:	00e50733          	add	a4,a0,a4
    8000511c:	00b70023          	sb	a1,0(a4)
    80005120:	0067871b          	addiw	a4,a5,6
    80005124:	06c77e63          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005128:	00e50733          	add	a4,a0,a4
    8000512c:	00b70023          	sb	a1,0(a4)
    80005130:	0077871b          	addiw	a4,a5,7
    80005134:	06c77663          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005138:	00e50733          	add	a4,a0,a4
    8000513c:	00b70023          	sb	a1,0(a4)
    80005140:	0087871b          	addiw	a4,a5,8
    80005144:	04c77e63          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005148:	00e50733          	add	a4,a0,a4
    8000514c:	00b70023          	sb	a1,0(a4)
    80005150:	0097871b          	addiw	a4,a5,9
    80005154:	04c77663          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005158:	00e50733          	add	a4,a0,a4
    8000515c:	00b70023          	sb	a1,0(a4)
    80005160:	00a7871b          	addiw	a4,a5,10
    80005164:	02c77e63          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005168:	00e50733          	add	a4,a0,a4
    8000516c:	00b70023          	sb	a1,0(a4)
    80005170:	00b7871b          	addiw	a4,a5,11
    80005174:	02c77663          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005178:	00e50733          	add	a4,a0,a4
    8000517c:	00b70023          	sb	a1,0(a4)
    80005180:	00c7871b          	addiw	a4,a5,12
    80005184:	00c77e63          	bgeu	a4,a2,800051a0 <__memset+0x1c8>
    80005188:	00e50733          	add	a4,a0,a4
    8000518c:	00b70023          	sb	a1,0(a4)
    80005190:	00d7879b          	addiw	a5,a5,13
    80005194:	00c7f663          	bgeu	a5,a2,800051a0 <__memset+0x1c8>
    80005198:	00f507b3          	add	a5,a0,a5
    8000519c:	00b78023          	sb	a1,0(a5)
    800051a0:	00813403          	ld	s0,8(sp)
    800051a4:	01010113          	addi	sp,sp,16
    800051a8:	00008067          	ret
    800051ac:	00b00693          	li	a3,11
    800051b0:	e55ff06f          	j	80005004 <__memset+0x2c>
    800051b4:	00300e93          	li	t4,3
    800051b8:	ea5ff06f          	j	8000505c <__memset+0x84>
    800051bc:	00100e93          	li	t4,1
    800051c0:	e9dff06f          	j	8000505c <__memset+0x84>
    800051c4:	00000e93          	li	t4,0
    800051c8:	e95ff06f          	j	8000505c <__memset+0x84>
    800051cc:	00000793          	li	a5,0
    800051d0:	ef9ff06f          	j	800050c8 <__memset+0xf0>
    800051d4:	00200e93          	li	t4,2
    800051d8:	e85ff06f          	j	8000505c <__memset+0x84>
    800051dc:	00400e93          	li	t4,4
    800051e0:	e7dff06f          	j	8000505c <__memset+0x84>
    800051e4:	00500e93          	li	t4,5
    800051e8:	e75ff06f          	j	8000505c <__memset+0x84>
    800051ec:	00600e93          	li	t4,6
    800051f0:	e6dff06f          	j	8000505c <__memset+0x84>

00000000800051f4 <__memmove>:
    800051f4:	ff010113          	addi	sp,sp,-16
    800051f8:	00813423          	sd	s0,8(sp)
    800051fc:	01010413          	addi	s0,sp,16
    80005200:	0e060863          	beqz	a2,800052f0 <__memmove+0xfc>
    80005204:	fff6069b          	addiw	a3,a2,-1
    80005208:	0006881b          	sext.w	a6,a3
    8000520c:	0ea5e863          	bltu	a1,a0,800052fc <__memmove+0x108>
    80005210:	00758713          	addi	a4,a1,7
    80005214:	00a5e7b3          	or	a5,a1,a0
    80005218:	40a70733          	sub	a4,a4,a0
    8000521c:	0077f793          	andi	a5,a5,7
    80005220:	00f73713          	sltiu	a4,a4,15
    80005224:	00174713          	xori	a4,a4,1
    80005228:	0017b793          	seqz	a5,a5
    8000522c:	00e7f7b3          	and	a5,a5,a4
    80005230:	10078863          	beqz	a5,80005340 <__memmove+0x14c>
    80005234:	00900793          	li	a5,9
    80005238:	1107f463          	bgeu	a5,a6,80005340 <__memmove+0x14c>
    8000523c:	0036581b          	srliw	a6,a2,0x3
    80005240:	fff8081b          	addiw	a6,a6,-1
    80005244:	02081813          	slli	a6,a6,0x20
    80005248:	01d85893          	srli	a7,a6,0x1d
    8000524c:	00858813          	addi	a6,a1,8
    80005250:	00058793          	mv	a5,a1
    80005254:	00050713          	mv	a4,a0
    80005258:	01088833          	add	a6,a7,a6
    8000525c:	0007b883          	ld	a7,0(a5)
    80005260:	00878793          	addi	a5,a5,8
    80005264:	00870713          	addi	a4,a4,8
    80005268:	ff173c23          	sd	a7,-8(a4)
    8000526c:	ff0798e3          	bne	a5,a6,8000525c <__memmove+0x68>
    80005270:	ff867713          	andi	a4,a2,-8
    80005274:	02071793          	slli	a5,a4,0x20
    80005278:	0207d793          	srli	a5,a5,0x20
    8000527c:	00f585b3          	add	a1,a1,a5
    80005280:	40e686bb          	subw	a3,a3,a4
    80005284:	00f507b3          	add	a5,a0,a5
    80005288:	06e60463          	beq	a2,a4,800052f0 <__memmove+0xfc>
    8000528c:	0005c703          	lbu	a4,0(a1)
    80005290:	00e78023          	sb	a4,0(a5)
    80005294:	04068e63          	beqz	a3,800052f0 <__memmove+0xfc>
    80005298:	0015c603          	lbu	a2,1(a1)
    8000529c:	00100713          	li	a4,1
    800052a0:	00c780a3          	sb	a2,1(a5)
    800052a4:	04e68663          	beq	a3,a4,800052f0 <__memmove+0xfc>
    800052a8:	0025c603          	lbu	a2,2(a1)
    800052ac:	00200713          	li	a4,2
    800052b0:	00c78123          	sb	a2,2(a5)
    800052b4:	02e68e63          	beq	a3,a4,800052f0 <__memmove+0xfc>
    800052b8:	0035c603          	lbu	a2,3(a1)
    800052bc:	00300713          	li	a4,3
    800052c0:	00c781a3          	sb	a2,3(a5)
    800052c4:	02e68663          	beq	a3,a4,800052f0 <__memmove+0xfc>
    800052c8:	0045c603          	lbu	a2,4(a1)
    800052cc:	00400713          	li	a4,4
    800052d0:	00c78223          	sb	a2,4(a5)
    800052d4:	00e68e63          	beq	a3,a4,800052f0 <__memmove+0xfc>
    800052d8:	0055c603          	lbu	a2,5(a1)
    800052dc:	00500713          	li	a4,5
    800052e0:	00c782a3          	sb	a2,5(a5)
    800052e4:	00e68663          	beq	a3,a4,800052f0 <__memmove+0xfc>
    800052e8:	0065c703          	lbu	a4,6(a1)
    800052ec:	00e78323          	sb	a4,6(a5)
    800052f0:	00813403          	ld	s0,8(sp)
    800052f4:	01010113          	addi	sp,sp,16
    800052f8:	00008067          	ret
    800052fc:	02061713          	slli	a4,a2,0x20
    80005300:	02075713          	srli	a4,a4,0x20
    80005304:	00e587b3          	add	a5,a1,a4
    80005308:	f0f574e3          	bgeu	a0,a5,80005210 <__memmove+0x1c>
    8000530c:	02069613          	slli	a2,a3,0x20
    80005310:	02065613          	srli	a2,a2,0x20
    80005314:	fff64613          	not	a2,a2
    80005318:	00e50733          	add	a4,a0,a4
    8000531c:	00c78633          	add	a2,a5,a2
    80005320:	fff7c683          	lbu	a3,-1(a5)
    80005324:	fff78793          	addi	a5,a5,-1
    80005328:	fff70713          	addi	a4,a4,-1
    8000532c:	00d70023          	sb	a3,0(a4)
    80005330:	fec798e3          	bne	a5,a2,80005320 <__memmove+0x12c>
    80005334:	00813403          	ld	s0,8(sp)
    80005338:	01010113          	addi	sp,sp,16
    8000533c:	00008067          	ret
    80005340:	02069713          	slli	a4,a3,0x20
    80005344:	02075713          	srli	a4,a4,0x20
    80005348:	00170713          	addi	a4,a4,1
    8000534c:	00e50733          	add	a4,a0,a4
    80005350:	00050793          	mv	a5,a0
    80005354:	0005c683          	lbu	a3,0(a1)
    80005358:	00178793          	addi	a5,a5,1
    8000535c:	00158593          	addi	a1,a1,1
    80005360:	fed78fa3          	sb	a3,-1(a5)
    80005364:	fee798e3          	bne	a5,a4,80005354 <__memmove+0x160>
    80005368:	f89ff06f          	j	800052f0 <__memmove+0xfc>

000000008000536c <__putc>:
    8000536c:	fe010113          	addi	sp,sp,-32
    80005370:	00813823          	sd	s0,16(sp)
    80005374:	00113c23          	sd	ra,24(sp)
    80005378:	02010413          	addi	s0,sp,32
    8000537c:	00050793          	mv	a5,a0
    80005380:	fef40593          	addi	a1,s0,-17
    80005384:	00100613          	li	a2,1
    80005388:	00000513          	li	a0,0
    8000538c:	fef407a3          	sb	a5,-17(s0)
    80005390:	fffff097          	auipc	ra,0xfffff
    80005394:	b3c080e7          	jalr	-1220(ra) # 80003ecc <console_write>
    80005398:	01813083          	ld	ra,24(sp)
    8000539c:	01013403          	ld	s0,16(sp)
    800053a0:	02010113          	addi	sp,sp,32
    800053a4:	00008067          	ret

00000000800053a8 <__getc>:
    800053a8:	fe010113          	addi	sp,sp,-32
    800053ac:	00813823          	sd	s0,16(sp)
    800053b0:	00113c23          	sd	ra,24(sp)
    800053b4:	02010413          	addi	s0,sp,32
    800053b8:	fe840593          	addi	a1,s0,-24
    800053bc:	00100613          	li	a2,1
    800053c0:	00000513          	li	a0,0
    800053c4:	fffff097          	auipc	ra,0xfffff
    800053c8:	ae8080e7          	jalr	-1304(ra) # 80003eac <console_read>
    800053cc:	fe844503          	lbu	a0,-24(s0)
    800053d0:	01813083          	ld	ra,24(sp)
    800053d4:	01013403          	ld	s0,16(sp)
    800053d8:	02010113          	addi	sp,sp,32
    800053dc:	00008067          	ret

00000000800053e0 <console_handler>:
    800053e0:	fe010113          	addi	sp,sp,-32
    800053e4:	00813823          	sd	s0,16(sp)
    800053e8:	00113c23          	sd	ra,24(sp)
    800053ec:	00913423          	sd	s1,8(sp)
    800053f0:	02010413          	addi	s0,sp,32
    800053f4:	14202773          	csrr	a4,scause
    800053f8:	100027f3          	csrr	a5,sstatus
    800053fc:	0027f793          	andi	a5,a5,2
    80005400:	06079e63          	bnez	a5,8000547c <console_handler+0x9c>
    80005404:	00074c63          	bltz	a4,8000541c <console_handler+0x3c>
    80005408:	01813083          	ld	ra,24(sp)
    8000540c:	01013403          	ld	s0,16(sp)
    80005410:	00813483          	ld	s1,8(sp)
    80005414:	02010113          	addi	sp,sp,32
    80005418:	00008067          	ret
    8000541c:	0ff77713          	andi	a4,a4,255
    80005420:	00900793          	li	a5,9
    80005424:	fef712e3          	bne	a4,a5,80005408 <console_handler+0x28>
    80005428:	ffffe097          	auipc	ra,0xffffe
    8000542c:	6dc080e7          	jalr	1756(ra) # 80003b04 <plic_claim>
    80005430:	00a00793          	li	a5,10
    80005434:	00050493          	mv	s1,a0
    80005438:	02f50c63          	beq	a0,a5,80005470 <console_handler+0x90>
    8000543c:	fc0506e3          	beqz	a0,80005408 <console_handler+0x28>
    80005440:	00050593          	mv	a1,a0
    80005444:	00001517          	auipc	a0,0x1
    80005448:	fc450513          	addi	a0,a0,-60 # 80006408 <CONSOLE_STATUS+0x3f8>
    8000544c:	fffff097          	auipc	ra,0xfffff
    80005450:	afc080e7          	jalr	-1284(ra) # 80003f48 <__printf>
    80005454:	01013403          	ld	s0,16(sp)
    80005458:	01813083          	ld	ra,24(sp)
    8000545c:	00048513          	mv	a0,s1
    80005460:	00813483          	ld	s1,8(sp)
    80005464:	02010113          	addi	sp,sp,32
    80005468:	ffffe317          	auipc	t1,0xffffe
    8000546c:	6d430067          	jr	1748(t1) # 80003b3c <plic_complete>
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	3e0080e7          	jalr	992(ra) # 80004850 <uartintr>
    80005478:	fddff06f          	j	80005454 <console_handler+0x74>
    8000547c:	00001517          	auipc	a0,0x1
    80005480:	08c50513          	addi	a0,a0,140 # 80006508 <digits+0x78>
    80005484:	fffff097          	auipc	ra,0xfffff
    80005488:	a68080e7          	jalr	-1432(ra) # 80003eec <panic>
	...
