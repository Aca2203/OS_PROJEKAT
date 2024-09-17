
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	ec813103          	ld	sp,-312(sp) # 80006ec8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	25c030ef          	jal	ra,80003278 <start>

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
    800011a4:	551000ef          	jal	ra,80001ef4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001348:	fe010113          	addi	sp,sp,-32
    8000134c:	00113c23          	sd	ra,24(sp)
    80001350:	00813823          	sd	s0,16(sp)
    80001354:	00913423          	sd	s1,8(sp)
    80001358:	01213023          	sd	s2,0(sp)
    8000135c:	02010413          	addi	s0,sp,32
    80001360:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001364:	00100793          	li	a5,1
    80001368:	02a7f663          	bgeu	a5,a0,80001394 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) { TCB::yield(); }
    8000136c:	00357793          	andi	a5,a0,3
    80001370:	02078e63          	beqz	a5,800013ac <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001374:	fff48513          	addi	a0,s1,-1
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	fd0080e7          	jalr	-48(ra) # 80001348 <_ZL9fibonaccim>
    80001380:	00050913          	mv	s2,a0
    80001384:	ffe48513          	addi	a0,s1,-2
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	fc0080e7          	jalr	-64(ra) # 80001348 <_ZL9fibonaccim>
    80001390:	00a90533          	add	a0,s2,a0
}
    80001394:	01813083          	ld	ra,24(sp)
    80001398:	01013403          	ld	s0,16(sp)
    8000139c:	00813483          	ld	s1,8(sp)
    800013a0:	00013903          	ld	s2,0(sp)
    800013a4:	02010113          	addi	sp,sp,32
    800013a8:	00008067          	ret
    if (n % 4 == 0) { TCB::yield(); }
    800013ac:	00001097          	auipc	ra,0x1
    800013b0:	998080e7          	jalr	-1640(ra) # 80001d44 <_ZN3TCB5yieldEv>
    800013b4:	fc1ff06f          	j	80001374 <_ZL9fibonaccim+0x2c>

00000000800013b8 <_Z11workerBodyAPv>:
{
    800013b8:	fe010113          	addi	sp,sp,-32
    800013bc:	00113c23          	sd	ra,24(sp)
    800013c0:	00813823          	sd	s0,16(sp)
    800013c4:	00913423          	sd	s1,8(sp)
    800013c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800013cc:	00000493          	li	s1,0
    800013d0:	0300006f          	j	80001400 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800013d4:	00168693          	addi	a3,a3,1
    800013d8:	000027b7          	lui	a5,0x2
    800013dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013e0:	00d7ee63          	bltu	a5,a3,800013fc <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013e4:	00000713          	li	a4,0
    800013e8:	000077b7          	lui	a5,0x7
    800013ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013f0:	fee7e2e3          	bltu	a5,a4,800013d4 <_Z11workerBodyAPv+0x1c>
    800013f4:	00170713          	addi	a4,a4,1
    800013f8:	ff1ff06f          	j	800013e8 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800013fc:	00148493          	addi	s1,s1,1
    80001400:	00900793          	li	a5,9
    80001404:	0497e463          	bltu	a5,s1,8000144c <_Z11workerBodyAPv+0x94>
        printString("A: i=");
    80001408:	00005517          	auipc	a0,0x5
    8000140c:	c1850513          	addi	a0,a0,-1000 # 80006020 <CONSOLE_STATUS+0x10>
    80001410:	00000097          	auipc	ra,0x0
    80001414:	370080e7          	jalr	880(ra) # 80001780 <_Z11printStringPKc>
        printInt(i);
    80001418:	00000613          	li	a2,0
    8000141c:	00a00593          	li	a1,10
    80001420:	0004851b          	sext.w	a0,s1
    80001424:	00000097          	auipc	ra,0x0
    80001428:	50c080e7          	jalr	1292(ra) # 80001930 <_Z8printIntiii>
        printString("\n");
    8000142c:	00005517          	auipc	a0,0x5
    80001430:	c1450513          	addi	a0,a0,-1004 # 80006040 <CONSOLE_STATUS+0x30>
    80001434:	00000097          	auipc	ra,0x0
    80001438:	34c080e7          	jalr	844(ra) # 80001780 <_Z11printStringPKc>
        thread_exit();
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	eb4080e7          	jalr	-332(ra) # 800012f0 <_Z11thread_exitv>
        for (uint64 j = 0; j < 10000; j++)
    80001444:	00000693          	li	a3,0
    80001448:	f91ff06f          	j	800013d8 <_Z11workerBodyAPv+0x20>
}
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z11workerBodyBPv>:
{
    80001460:	fe010113          	addi	sp,sp,-32
    80001464:	00113c23          	sd	ra,24(sp)
    80001468:	00813823          	sd	s0,16(sp)
    8000146c:	00913423          	sd	s1,8(sp)
    80001470:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001474:	00000493          	li	s1,0
    80001478:	0300006f          	j	800014a8 <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000147c:	00168693          	addi	a3,a3,1
    80001480:	000027b7          	lui	a5,0x2
    80001484:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001488:	00d7ee63          	bltu	a5,a3,800014a4 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000148c:	00000713          	li	a4,0
    80001490:	000077b7          	lui	a5,0x7
    80001494:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001498:	fee7e2e3          	bltu	a5,a4,8000147c <_Z11workerBodyBPv+0x1c>
    8000149c:	00170713          	addi	a4,a4,1
    800014a0:	ff1ff06f          	j	80001490 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800014a4:	00148493          	addi	s1,s1,1
    800014a8:	00f00793          	li	a5,15
    800014ac:	0497e063          	bltu	a5,s1,800014ec <_Z11workerBodyBPv+0x8c>
        printString("B: i=");
    800014b0:	00005517          	auipc	a0,0x5
    800014b4:	b7850513          	addi	a0,a0,-1160 # 80006028 <CONSOLE_STATUS+0x18>
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	2c8080e7          	jalr	712(ra) # 80001780 <_Z11printStringPKc>
        printInt(i);
    800014c0:	00000613          	li	a2,0
    800014c4:	00a00593          	li	a1,10
    800014c8:	0004851b          	sext.w	a0,s1
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	464080e7          	jalr	1124(ra) # 80001930 <_Z8printIntiii>
        printString("\n");
    800014d4:	00005517          	auipc	a0,0x5
    800014d8:	b6c50513          	addi	a0,a0,-1172 # 80006040 <CONSOLE_STATUS+0x30>
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	2a4080e7          	jalr	676(ra) # 80001780 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800014e4:	00000693          	li	a3,0
    800014e8:	f99ff06f          	j	80001480 <_Z11workerBodyBPv+0x20>
}
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	00813483          	ld	s1,8(sp)
    800014f8:	02010113          	addi	sp,sp,32
    800014fc:	00008067          	ret

0000000080001500 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    80001500:	fe010113          	addi	sp,sp,-32
    80001504:	00113c23          	sd	ra,24(sp)
    80001508:	00813823          	sd	s0,16(sp)
    8000150c:	00913423          	sd	s1,8(sp)
    80001510:	01213023          	sd	s2,0(sp)
    80001514:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001518:	00000493          	li	s1,0
    8000151c:	0400006f          	j	8000155c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001520:	00005517          	auipc	a0,0x5
    80001524:	b1050513          	addi	a0,a0,-1264 # 80006030 <CONSOLE_STATUS+0x20>
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	258080e7          	jalr	600(ra) # 80001780 <_Z11printStringPKc>
        printInt(i);
    80001530:	00000613          	li	a2,0
    80001534:	00a00593          	li	a1,10
    80001538:	00048513          	mv	a0,s1
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	3f4080e7          	jalr	1012(ra) # 80001930 <_Z8printIntiii>
        printString("\n");
    80001544:	00005517          	auipc	a0,0x5
    80001548:	afc50513          	addi	a0,a0,-1284 # 80006040 <CONSOLE_STATUS+0x30>
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	234080e7          	jalr	564(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001554:	0014849b          	addiw	s1,s1,1
    80001558:	0ff4f493          	andi	s1,s1,255
    8000155c:	00200793          	li	a5,2
    80001560:	fc97f0e3          	bgeu	a5,s1,80001520 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    80001564:	00005517          	auipc	a0,0x5
    80001568:	ad450513          	addi	a0,a0,-1324 # 80006038 <CONSOLE_STATUS+0x28>
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	214080e7          	jalr	532(ra) # 80001780 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001574:	00700313          	li	t1,7
    TCB::yield();
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	7cc080e7          	jalr	1996(ra) # 80001d44 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001580:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001584:	00005517          	auipc	a0,0x5
    80001588:	ac450513          	addi	a0,a0,-1340 # 80006048 <CONSOLE_STATUS+0x38>
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	1f4080e7          	jalr	500(ra) # 80001780 <_Z11printStringPKc>
    printInt(t1);
    80001594:	00000613          	li	a2,0
    80001598:	00a00593          	li	a1,10
    8000159c:	0009051b          	sext.w	a0,s2
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	390080e7          	jalr	912(ra) # 80001930 <_Z8printIntiii>
    printString("\n");
    800015a8:	00005517          	auipc	a0,0x5
    800015ac:	a9850513          	addi	a0,a0,-1384 # 80006040 <CONSOLE_STATUS+0x30>
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	1d0080e7          	jalr	464(ra) # 80001780 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015b8:	00c00513          	li	a0,12
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	d8c080e7          	jalr	-628(ra) # 80001348 <_ZL9fibonaccim>
    800015c4:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800015c8:	00005517          	auipc	a0,0x5
    800015cc:	a8850513          	addi	a0,a0,-1400 # 80006050 <CONSOLE_STATUS+0x40>
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	1b0080e7          	jalr	432(ra) # 80001780 <_Z11printStringPKc>
    printInt(result);
    800015d8:	00000613          	li	a2,0
    800015dc:	00a00593          	li	a1,10
    800015e0:	0009051b          	sext.w	a0,s2
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	34c080e7          	jalr	844(ra) # 80001930 <_Z8printIntiii>
    printString("\n");
    800015ec:	00005517          	auipc	a0,0x5
    800015f0:	a5450513          	addi	a0,a0,-1452 # 80006040 <CONSOLE_STATUS+0x30>
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	18c080e7          	jalr	396(ra) # 80001780 <_Z11printStringPKc>
    800015fc:	0400006f          	j	8000163c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001600:	00005517          	auipc	a0,0x5
    80001604:	a3050513          	addi	a0,a0,-1488 # 80006030 <CONSOLE_STATUS+0x20>
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	178080e7          	jalr	376(ra) # 80001780 <_Z11printStringPKc>
        printInt(i);
    80001610:	00000613          	li	a2,0
    80001614:	00a00593          	li	a1,10
    80001618:	00048513          	mv	a0,s1
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	314080e7          	jalr	788(ra) # 80001930 <_Z8printIntiii>
        printString("\n");
    80001624:	00005517          	auipc	a0,0x5
    80001628:	a1c50513          	addi	a0,a0,-1508 # 80006040 <CONSOLE_STATUS+0x30>
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	154080e7          	jalr	340(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001634:	0014849b          	addiw	s1,s1,1
    80001638:	0ff4f493          	andi	s1,s1,255
    8000163c:	00500793          	li	a5,5
    80001640:	fc97f0e3          	bgeu	a5,s1,80001600 <_Z11workerBodyCPv+0x100>
    }
    //TCB::running->setFinished(true);
    //TCB::yield();
}
    80001644:	01813083          	ld	ra,24(sp)
    80001648:	01013403          	ld	s0,16(sp)
    8000164c:	00813483          	ld	s1,8(sp)
    80001650:	00013903          	ld	s2,0(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	01213023          	sd	s2,0(sp)
    80001670:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001674:	00a00493          	li	s1,10
    80001678:	0400006f          	j	800016b8 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    8000167c:	00005517          	auipc	a0,0x5
    80001680:	9e450513          	addi	a0,a0,-1564 # 80006060 <CONSOLE_STATUS+0x50>
    80001684:	00000097          	auipc	ra,0x0
    80001688:	0fc080e7          	jalr	252(ra) # 80001780 <_Z11printStringPKc>
        printInt(i);
    8000168c:	00000613          	li	a2,0
    80001690:	00a00593          	li	a1,10
    80001694:	00048513          	mv	a0,s1
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	298080e7          	jalr	664(ra) # 80001930 <_Z8printIntiii>
        printString("\n");
    800016a0:	00005517          	auipc	a0,0x5
    800016a4:	9a050513          	addi	a0,a0,-1632 # 80006040 <CONSOLE_STATUS+0x30>
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	0d8080e7          	jalr	216(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 13; i++)
    800016b0:	0014849b          	addiw	s1,s1,1
    800016b4:	0ff4f493          	andi	s1,s1,255
    800016b8:	00c00793          	li	a5,12
    800016bc:	fc97f0e3          	bgeu	a5,s1,8000167c <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    800016c0:	00005517          	auipc	a0,0x5
    800016c4:	9a850513          	addi	a0,a0,-1624 # 80006068 <CONSOLE_STATUS+0x58>
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	0b8080e7          	jalr	184(ra) # 80001780 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800016d0:	00500313          	li	t1,5
    TCB::yield();
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	670080e7          	jalr	1648(ra) # 80001d44 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(23);
    800016dc:	01700513          	li	a0,23
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	c68080e7          	jalr	-920(ra) # 80001348 <_ZL9fibonaccim>
    800016e8:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800016ec:	00005517          	auipc	a0,0x5
    800016f0:	98c50513          	addi	a0,a0,-1652 # 80006078 <CONSOLE_STATUS+0x68>
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	08c080e7          	jalr	140(ra) # 80001780 <_Z11printStringPKc>
    printInt(result);
    800016fc:	00000613          	li	a2,0
    80001700:	00a00593          	li	a1,10
    80001704:	0009051b          	sext.w	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	228080e7          	jalr	552(ra) # 80001930 <_Z8printIntiii>
    printString("\n");
    80001710:	00005517          	auipc	a0,0x5
    80001714:	93050513          	addi	a0,a0,-1744 # 80006040 <CONSOLE_STATUS+0x30>
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	068080e7          	jalr	104(ra) # 80001780 <_Z11printStringPKc>
    80001720:	0400006f          	j	80001760 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001724:	00005517          	auipc	a0,0x5
    80001728:	93c50513          	addi	a0,a0,-1732 # 80006060 <CONSOLE_STATUS+0x50>
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	054080e7          	jalr	84(ra) # 80001780 <_Z11printStringPKc>
        printInt(i);
    80001734:	00000613          	li	a2,0
    80001738:	00a00593          	li	a1,10
    8000173c:	00048513          	mv	a0,s1
    80001740:	00000097          	auipc	ra,0x0
    80001744:	1f0080e7          	jalr	496(ra) # 80001930 <_Z8printIntiii>
        printString("\n");
    80001748:	00005517          	auipc	a0,0x5
    8000174c:	8f850513          	addi	a0,a0,-1800 # 80006040 <CONSOLE_STATUS+0x30>
    80001750:	00000097          	auipc	ra,0x0
    80001754:	030080e7          	jalr	48(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001758:	0014849b          	addiw	s1,s1,1
    8000175c:	0ff4f493          	andi	s1,s1,255
    80001760:	00f00793          	li	a5,15
    80001764:	fc97f0e3          	bgeu	a5,s1,80001724 <_Z11workerBodyDPv+0xc8>
    }
    // TCB::running->setFinished(true);
    // TCB::yield();
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	02010413          	addi	s0,sp,32
    80001794:	00050493          	mv	s1,a0
    LOCK();
    80001798:	00100613          	li	a2,1
    8000179c:	00000593          	li	a1,0
    800017a0:	00005517          	auipc	a0,0x5
    800017a4:	79050513          	addi	a0,a0,1936 # 80006f30 <lockPrint>
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	950080e7          	jalr	-1712(ra) # 800010f8 <copy_and_swap>
    800017b0:	00050863          	beqz	a0,800017c0 <_Z11printStringPKc+0x40>
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	b70080e7          	jalr	-1168(ra) # 80001324 <_Z15thread_dispatchv>
    800017bc:	fddff06f          	j	80001798 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800017c0:	0004c503          	lbu	a0,0(s1)
    800017c4:	00050a63          	beqz	a0,800017d8 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    800017c8:	00004097          	auipc	ra,0x4
    800017cc:	b74080e7          	jalr	-1164(ra) # 8000533c <__putc>
        string++;
    800017d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800017d4:	fedff06f          	j	800017c0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800017d8:	00000613          	li	a2,0
    800017dc:	00100593          	li	a1,1
    800017e0:	00005517          	auipc	a0,0x5
    800017e4:	75050513          	addi	a0,a0,1872 # 80006f30 <lockPrint>
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	910080e7          	jalr	-1776(ra) # 800010f8 <copy_and_swap>
    800017f0:	fe0514e3          	bnez	a0,800017d8 <_Z11printStringPKc+0x58>
}
    800017f4:	01813083          	ld	ra,24(sp)
    800017f8:	01013403          	ld	s0,16(sp)
    800017fc:	00813483          	ld	s1,8(sp)
    80001800:	02010113          	addi	sp,sp,32
    80001804:	00008067          	ret

0000000080001808 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001808:	fd010113          	addi	sp,sp,-48
    8000180c:	02113423          	sd	ra,40(sp)
    80001810:	02813023          	sd	s0,32(sp)
    80001814:	00913c23          	sd	s1,24(sp)
    80001818:	01213823          	sd	s2,16(sp)
    8000181c:	01313423          	sd	s3,8(sp)
    80001820:	01413023          	sd	s4,0(sp)
    80001824:	03010413          	addi	s0,sp,48
    80001828:	00050993          	mv	s3,a0
    8000182c:	00058a13          	mv	s4,a1
    LOCK();
    80001830:	00100613          	li	a2,1
    80001834:	00000593          	li	a1,0
    80001838:	00005517          	auipc	a0,0x5
    8000183c:	6f850513          	addi	a0,a0,1784 # 80006f30 <lockPrint>
    80001840:	00000097          	auipc	ra,0x0
    80001844:	8b8080e7          	jalr	-1864(ra) # 800010f8 <copy_and_swap>
    80001848:	00050863          	beqz	a0,80001858 <_Z9getStringPci+0x50>
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	ad8080e7          	jalr	-1320(ra) # 80001324 <_Z15thread_dispatchv>
    80001854:	fddff06f          	j	80001830 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001858:	00000913          	li	s2,0
    8000185c:	00090493          	mv	s1,s2
    80001860:	0019091b          	addiw	s2,s2,1
    80001864:	03495a63          	bge	s2,s4,80001898 <_Z9getStringPci+0x90>
        cc = __getc();
    80001868:	00004097          	auipc	ra,0x4
    8000186c:	b10080e7          	jalr	-1264(ra) # 80005378 <__getc>
        if(cc < 1)
    80001870:	02050463          	beqz	a0,80001898 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80001874:	009984b3          	add	s1,s3,s1
    80001878:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000187c:	00a00793          	li	a5,10
    80001880:	00f50a63          	beq	a0,a5,80001894 <_Z9getStringPci+0x8c>
    80001884:	00d00793          	li	a5,13
    80001888:	fcf51ae3          	bne	a0,a5,8000185c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000188c:	00090493          	mv	s1,s2
    80001890:	0080006f          	j	80001898 <_Z9getStringPci+0x90>
    80001894:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001898:	009984b3          	add	s1,s3,s1
    8000189c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800018a0:	00000613          	li	a2,0
    800018a4:	00100593          	li	a1,1
    800018a8:	00005517          	auipc	a0,0x5
    800018ac:	68850513          	addi	a0,a0,1672 # 80006f30 <lockPrint>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	848080e7          	jalr	-1976(ra) # 800010f8 <copy_and_swap>
    800018b8:	fe0514e3          	bnez	a0,800018a0 <_Z9getStringPci+0x98>
    return buf;
}
    800018bc:	00098513          	mv	a0,s3
    800018c0:	02813083          	ld	ra,40(sp)
    800018c4:	02013403          	ld	s0,32(sp)
    800018c8:	01813483          	ld	s1,24(sp)
    800018cc:	01013903          	ld	s2,16(sp)
    800018d0:	00813983          	ld	s3,8(sp)
    800018d4:	00013a03          	ld	s4,0(sp)
    800018d8:	03010113          	addi	sp,sp,48
    800018dc:	00008067          	ret

00000000800018e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00813423          	sd	s0,8(sp)
    800018e8:	01010413          	addi	s0,sp,16
    800018ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800018f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800018f4:	0006c603          	lbu	a2,0(a3)
    800018f8:	fd06071b          	addiw	a4,a2,-48
    800018fc:	0ff77713          	andi	a4,a4,255
    80001900:	00900793          	li	a5,9
    80001904:	02e7e063          	bltu	a5,a4,80001924 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001908:	0025179b          	slliw	a5,a0,0x2
    8000190c:	00a787bb          	addw	a5,a5,a0
    80001910:	0017979b          	slliw	a5,a5,0x1
    80001914:	00168693          	addi	a3,a3,1
    80001918:	00c787bb          	addw	a5,a5,a2
    8000191c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001920:	fd5ff06f          	j	800018f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001924:	00813403          	ld	s0,8(sp)
    80001928:	01010113          	addi	sp,sp,16
    8000192c:	00008067          	ret

0000000080001930 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001930:	fc010113          	addi	sp,sp,-64
    80001934:	02113c23          	sd	ra,56(sp)
    80001938:	02813823          	sd	s0,48(sp)
    8000193c:	02913423          	sd	s1,40(sp)
    80001940:	03213023          	sd	s2,32(sp)
    80001944:	01313c23          	sd	s3,24(sp)
    80001948:	04010413          	addi	s0,sp,64
    8000194c:	00050493          	mv	s1,a0
    80001950:	00058913          	mv	s2,a1
    80001954:	00060993          	mv	s3,a2
    LOCK();
    80001958:	00100613          	li	a2,1
    8000195c:	00000593          	li	a1,0
    80001960:	00005517          	auipc	a0,0x5
    80001964:	5d050513          	addi	a0,a0,1488 # 80006f30 <lockPrint>
    80001968:	fffff097          	auipc	ra,0xfffff
    8000196c:	790080e7          	jalr	1936(ra) # 800010f8 <copy_and_swap>
    80001970:	00050863          	beqz	a0,80001980 <_Z8printIntiii+0x50>
    80001974:	00000097          	auipc	ra,0x0
    80001978:	9b0080e7          	jalr	-1616(ra) # 80001324 <_Z15thread_dispatchv>
    8000197c:	fddff06f          	j	80001958 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001980:	00098463          	beqz	s3,80001988 <_Z8printIntiii+0x58>
    80001984:	0804c463          	bltz	s1,80001a0c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001988:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000198c:	00000593          	li	a1,0
    }

    i = 0;
    80001990:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001994:	0009079b          	sext.w	a5,s2
    80001998:	0325773b          	remuw	a4,a0,s2
    8000199c:	00048613          	mv	a2,s1
    800019a0:	0014849b          	addiw	s1,s1,1
    800019a4:	02071693          	slli	a3,a4,0x20
    800019a8:	0206d693          	srli	a3,a3,0x20
    800019ac:	00005717          	auipc	a4,0x5
    800019b0:	4d470713          	addi	a4,a4,1236 # 80006e80 <digits>
    800019b4:	00d70733          	add	a4,a4,a3
    800019b8:	00074683          	lbu	a3,0(a4)
    800019bc:	fd040713          	addi	a4,s0,-48
    800019c0:	00c70733          	add	a4,a4,a2
    800019c4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800019c8:	0005071b          	sext.w	a4,a0
    800019cc:	0325553b          	divuw	a0,a0,s2
    800019d0:	fcf772e3          	bgeu	a4,a5,80001994 <_Z8printIntiii+0x64>
    if(neg)
    800019d4:	00058c63          	beqz	a1,800019ec <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800019d8:	fd040793          	addi	a5,s0,-48
    800019dc:	009784b3          	add	s1,a5,s1
    800019e0:	02d00793          	li	a5,45
    800019e4:	fef48823          	sb	a5,-16(s1)
    800019e8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800019ec:	fff4849b          	addiw	s1,s1,-1
    800019f0:	0204c463          	bltz	s1,80001a18 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    800019f4:	fd040793          	addi	a5,s0,-48
    800019f8:	009787b3          	add	a5,a5,s1
    800019fc:	ff07c503          	lbu	a0,-16(a5)
    80001a00:	00004097          	auipc	ra,0x4
    80001a04:	93c080e7          	jalr	-1732(ra) # 8000533c <__putc>
    80001a08:	fe5ff06f          	j	800019ec <_Z8printIntiii+0xbc>
        x = -xx;
    80001a0c:	4090053b          	negw	a0,s1
        neg = 1;
    80001a10:	00100593          	li	a1,1
        x = -xx;
    80001a14:	f7dff06f          	j	80001990 <_Z8printIntiii+0x60>

    UNLOCK();
    80001a18:	00000613          	li	a2,0
    80001a1c:	00100593          	li	a1,1
    80001a20:	00005517          	auipc	a0,0x5
    80001a24:	51050513          	addi	a0,a0,1296 # 80006f30 <lockPrint>
    80001a28:	fffff097          	auipc	ra,0xfffff
    80001a2c:	6d0080e7          	jalr	1744(ra) # 800010f8 <copy_and_swap>
    80001a30:	fe0514e3          	bnez	a0,80001a18 <_Z8printIntiii+0xe8>
    80001a34:	03813083          	ld	ra,56(sp)
    80001a38:	03013403          	ld	s0,48(sp)
    80001a3c:	02813483          	ld	s1,40(sp)
    80001a40:	02013903          	ld	s2,32(sp)
    80001a44:	01813983          	ld	s3,24(sp)
    80001a48:	04010113          	addi	sp,sp,64
    80001a4c:	00008067          	ret

0000000080001a50 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80001a50:	fe010113          	addi	sp,sp,-32
    80001a54:	00113c23          	sd	ra,24(sp)
    80001a58:	00813823          	sd	s0,16(sp)
    80001a5c:	00913423          	sd	s1,8(sp)
    80001a60:	01213023          	sd	s2,0(sp)
    80001a64:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80001a68:	00004517          	auipc	a0,0x4
    80001a6c:	62050513          	addi	a0,a0,1568 # 80006088 <CONSOLE_STATUS+0x78>
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	d10080e7          	jalr	-752(ra) # 80001780 <_Z11printStringPKc>
    int test = __getc() - '0';
    80001a78:	00004097          	auipc	ra,0x4
    80001a7c:	900080e7          	jalr	-1792(ra) # 80005378 <__getc>
    80001a80:	0005091b          	sext.w	s2,a0
    80001a84:	fd05049b          	addiw	s1,a0,-48
    __getc(); // Enter posle broja
    80001a88:	00004097          	auipc	ra,0x4
    80001a8c:	8f0080e7          	jalr	-1808(ra) # 80005378 <__getc>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80001a90:	fcd9071b          	addiw	a4,s2,-51
    80001a94:	00100793          	li	a5,1
    80001a98:	04e7f263          	bgeu	a5,a4,80001adc <_Z8userMainv+0x8c>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80001a9c:	fcb9091b          	addiw	s2,s2,-53
    80001aa0:	00100793          	li	a5,1
    80001aa4:	0727f063          	bgeu	a5,s2,80001b04 <_Z8userMainv+0xb4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001aa8:	00600793          	li	a5,6
    80001aac:	0697c663          	blt	a5,s1,80001b18 <_Z8userMainv+0xc8>
    80001ab0:	00300793          	li	a5,3
    80001ab4:	02f4dc63          	bge	s1,a5,80001aec <_Z8userMainv+0x9c>
    80001ab8:	00100793          	li	a5,1
    80001abc:	08f48863          	beq	s1,a5,80001b4c <_Z8userMainv+0xfc>
    80001ac0:	00200793          	li	a5,2
    80001ac4:	0af49263          	bne	s1,a5,80001b68 <_Z8userMainv+0x118>
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            //Threads_CPP_API_test();
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001ac8:	00004517          	auipc	a0,0x4
    80001acc:	68050513          	addi	a0,a0,1664 # 80006148 <CONSOLE_STATUS+0x138>
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	cb0080e7          	jalr	-848(ra) # 80001780 <_Z11printStringPKc>
#endif
            break;
    80001ad8:	0140006f          	j	80001aec <_Z8userMainv+0x9c>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	5cc50513          	addi	a0,a0,1484 # 800060a8 <CONSOLE_STATUS+0x98>
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	c9c080e7          	jalr	-868(ra) # 80001780 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001aec:	01813083          	ld	ra,24(sp)
    80001af0:	01013403          	ld	s0,16(sp)
    80001af4:	00813483          	ld	s1,8(sp)
    80001af8:	00013903          	ld	s2,0(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80001b04:	00004517          	auipc	a0,0x4
    80001b08:	5d450513          	addi	a0,a0,1492 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	c74080e7          	jalr	-908(ra) # 80001780 <_Z11printStringPKc>
            return;
    80001b14:	fd9ff06f          	j	80001aec <_Z8userMainv+0x9c>
    switch (test) {
    80001b18:	00700793          	li	a5,7
    80001b1c:	04f49663          	bne	s1,a5,80001b68 <_Z8userMainv+0x118>
            System_Mode_test();
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	65c080e7          	jalr	1628(ra) # 8000317c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001b28:	00004517          	auipc	a0,0x4
    80001b2c:	66050513          	addi	a0,a0,1632 # 80006188 <CONSOLE_STATUS+0x178>
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	c50080e7          	jalr	-944(ra) # 80001780 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001b38:	00004517          	auipc	a0,0x4
    80001b3c:	67050513          	addi	a0,a0,1648 # 800061a8 <CONSOLE_STATUS+0x198>
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	c40080e7          	jalr	-960(ra) # 80001780 <_Z11printStringPKc>
            break;
    80001b48:	fa5ff06f          	j	80001aec <_Z8userMainv+0x9c>
            Threads_C_API_test();
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	048080e7          	jalr	72(ra) # 80002b94 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001b54:	00004517          	auipc	a0,0x4
    80001b58:	5b450513          	addi	a0,a0,1460 # 80006108 <CONSOLE_STATUS+0xf8>
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	c24080e7          	jalr	-988(ra) # 80001780 <_Z11printStringPKc>
            break;
    80001b64:	f89ff06f          	j	80001aec <_Z8userMainv+0x9c>
            printString("Niste uneli odgovarajuci broj za test\n");
    80001b68:	00004517          	auipc	a0,0x4
    80001b6c:	69850513          	addi	a0,a0,1688 # 80006200 <CONSOLE_STATUS+0x1f0>
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	c10080e7          	jalr	-1008(ra) # 80001780 <_Z11printStringPKc>
    80001b78:	f75ff06f          	j	80001aec <_Z8userMainv+0x9c>

0000000080001b7c <main>:
#include "../h/printing.hpp"
#include "../h/riscv.hpp"

extern void userMain();

int main() {
    80001b7c:	fd010113          	addi	sp,sp,-48
    80001b80:	02113423          	sd	ra,40(sp)
    80001b84:	02813023          	sd	s0,32(sp)
    80001b88:	00913c23          	sd	s1,24(sp)
    80001b8c:	01213823          	sd	s2,16(sp)
    80001b90:	03010413          	addi	s0,sp,48
    MemoryAllocator::initFreeSegment();
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	acc080e7          	jalr	-1332(ra) # 80002660 <_ZN15MemoryAllocator15initFreeSegmentEv>

    thread_t threads[2];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001b9c:	00005797          	auipc	a5,0x5
    80001ba0:	31c7b783          	ld	a5,796(a5) # 80006eb8 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile("csrw stvec, %0" : : "r"(stvec));
    80001ba4:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80001ba8:	00200793          	li	a5,2
    80001bac:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_create(&threads[0], nullptr, nullptr);
    80001bb0:	00000613          	li	a2,0
    80001bb4:	00000593          	li	a1,0
    80001bb8:	fd040513          	addi	a0,s0,-48
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	6f4080e7          	jalr	1780(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[1], reinterpret_cast<void (*) (void *)>(userMain), nullptr);
    80001bc4:	00000613          	li	a2,0
    80001bc8:	00005597          	auipc	a1,0x5
    80001bcc:	2e05b583          	ld	a1,736(a1) # 80006ea8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bd0:	fd840513          	addi	a0,s0,-40
    80001bd4:	fffff097          	auipc	ra,0xfffff
    80001bd8:	6dc080e7          	jalr	1756(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!(threads[1]->isFinished())) thread_dispatch();
    80001bdc:	fd843783          	ld	a5,-40(s0)

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }
    80001be0:	0307c783          	lbu	a5,48(a5)
    80001be4:	00079863          	bnez	a5,80001bf4 <main+0x78>
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	73c080e7          	jalr	1852(ra) # 80001324 <_Z15thread_dispatchv>
    80001bf0:	fedff06f          	j	80001bdc <main+0x60>

    for(auto &thread : threads) {
    80001bf4:	fd040493          	addi	s1,s0,-48
    80001bf8:	0140006f          	j	80001c0c <main+0x90>
        delete thread;
    80001bfc:	00090513          	mv	a0,s2
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	27c080e7          	jalr	636(ra) # 80001e7c <_ZdlPv>
    for(auto &thread : threads) {
    80001c08:	00848493          	addi	s1,s1,8
    80001c0c:	fe040793          	addi	a5,s0,-32
    80001c10:	02f48063          	beq	s1,a5,80001c30 <main+0xb4>
        delete thread;
    80001c14:	0004b903          	ld	s2,0(s1)
    80001c18:	fe0908e3          	beqz	s2,80001c08 <main+0x8c>
    ~TCB(){ delete[] stack; }
    80001c1c:	01093503          	ld	a0,16(s2)
    80001c20:	fc050ee3          	beqz	a0,80001bfc <main+0x80>
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	280080e7          	jalr	640(ra) # 80001ea4 <_ZdaPv>
    80001c2c:	fd1ff06f          	j	80001bfc <main+0x80>
    }

    Scheduler::deleteThreadQueue();
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	6b4080e7          	jalr	1716(ra) # 800022e4 <_ZN9Scheduler17deleteThreadQueueEv>

    printString("Proces zavrsen\n");
    80001c38:	00004517          	auipc	a0,0x4
    80001c3c:	5f050513          	addi	a0,a0,1520 # 80006228 <CONSOLE_STATUS+0x218>
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	b40080e7          	jalr	-1216(ra) # 80001780 <_Z11printStringPKc>

    return 0;
    80001c48:	00000513          	li	a0,0
    80001c4c:	02813083          	ld	ra,40(sp)
    80001c50:	02013403          	ld	s0,32(sp)
    80001c54:	01813483          	ld	s1,24(sp)
    80001c58:	01013903          	ld	s2,16(sp)
    80001c5c:	03010113          	addi	sp,sp,48
    80001c60:	00008067          	ret

0000000080001c64 <_ZN3TCB12createThreadEPFvPvES0_>:
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body, void* arg) {
    80001c64:	fd010113          	addi	sp,sp,-48
    80001c68:	02113423          	sd	ra,40(sp)
    80001c6c:	02813023          	sd	s0,32(sp)
    80001c70:	00913c23          	sd	s1,24(sp)
    80001c74:	01213823          	sd	s2,16(sp)
    80001c78:	01313423          	sd	s3,8(sp)
    80001c7c:	03010413          	addi	s0,sp,48
    80001c80:	00050913          	mv	s2,a0
    80001c84:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001c88:	03800513          	li	a0,56
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	1a0080e7          	jalr	416(ra) # 80001e2c <_Znwm>
    80001c94:	00050493          	mv	s1,a0
        context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
        }),
        time_slice(DEFAULT_TIME_SLICE),
        finished(false) {
    80001c98:	01253023          	sd	s2,0(a0)
    80001c9c:	01353423          	sd	s3,8(a0)
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001ca0:	00090a63          	beqz	s2,80001cb4 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001ca4:	00008537          	lui	a0,0x8
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	1ac080e7          	jalr	428(ra) # 80001e54 <_Znam>
    80001cb0:	0080006f          	j	80001cb8 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001cb4:	00000513          	li	a0,0
        finished(false) {
    80001cb8:	00a4b823          	sd	a0,16(s1)
    80001cbc:	00000797          	auipc	a5,0x0
    80001cc0:	0ac78793          	addi	a5,a5,172 # 80001d68 <_ZN3TCB13threadWrapperEv>
    80001cc4:	00f4bc23          	sd	a5,24(s1)
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001cc8:	02050863          	beqz	a0,80001cf8 <_ZN3TCB12createThreadEPFvPvES0_+0x94>
    80001ccc:	000087b7          	lui	a5,0x8
    80001cd0:	00f507b3          	add	a5,a0,a5
        finished(false) {
    80001cd4:	02f4b023          	sd	a5,32(s1)
    80001cd8:	00200793          	li	a5,2
    80001cdc:	02f4b423          	sd	a5,40(s1)
    80001ce0:	02048823          	sb	zero,48(s1)
        if(body != nullptr) Scheduler::put(this);
    80001ce4:	00090e63          	beqz	s2,80001d00 <_ZN3TCB12createThreadEPFvPvES0_+0x9c>
    80001ce8:	00048513          	mv	a0,s1
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	58c080e7          	jalr	1420(ra) # 80002278 <_ZN9Scheduler3putEP3TCB>
    80001cf4:	0140006f          	j	80001d08 <_ZN3TCB12createThreadEPFvPvES0_+0xa4>
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001cf8:	00000793          	li	a5,0
    80001cfc:	fd9ff06f          	j	80001cd4 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
        else TCB::running = this;
    80001d00:	00005797          	auipc	a5,0x5
    80001d04:	2297bc23          	sd	s1,568(a5) # 80006f38 <_ZN3TCB7runningE>
}
    80001d08:	00048513          	mv	a0,s1
    80001d0c:	02813083          	ld	ra,40(sp)
    80001d10:	02013403          	ld	s0,32(sp)
    80001d14:	01813483          	ld	s1,24(sp)
    80001d18:	01013903          	ld	s2,16(sp)
    80001d1c:	00813983          	ld	s3,8(sp)
    80001d20:	03010113          	addi	sp,sp,48
    80001d24:	00008067          	ret
    80001d28:	00050913          	mv	s2,a0
    return new TCB(body, arg);
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	14c080e7          	jalr	332(ra) # 80001e7c <_ZdlPv>
    80001d38:	00090513          	mv	a0,s2
    80001d3c:	00006097          	auipc	ra,0x6
    80001d40:	2fc080e7          	jalr	764(ra) # 80008038 <_Unwind_Resume>

0000000080001d44 <_ZN3TCB5yieldEv>:

void TCB::yield() {
    80001d44:	ff010113          	addi	sp,sp,-16
    80001d48:	00813423          	sd	s0,8(sp)
    80001d4c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001d50:	00000793          	li	a5,0
    80001d54:	00078513          	mv	a0,a5
    Riscv::w_a0(0);
    __asm__ volatile("ecall");
    80001d58:	00000073          	ecall
}
    80001d5c:	00813403          	ld	s0,8(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00113c23          	sd	ra,24(sp)
    80001d70:	00813823          	sd	s0,16(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	150080e7          	jalr	336(ra) # 80001ecc <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001d84:	00005497          	auipc	s1,0x5
    80001d88:	1b448493          	addi	s1,s1,436 # 80006f38 <_ZN3TCB7runningE>
    80001d8c:	0004b783          	ld	a5,0(s1)
    80001d90:	0007b703          	ld	a4,0(a5)
    80001d94:	0087b503          	ld	a0,8(a5)
    80001d98:	000700e7          	jalr	a4
    running->setFinished(true);
    80001d9c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished) { this->finished = finished; }
    80001da0:	00100713          	li	a4,1
    80001da4:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	f9c080e7          	jalr	-100(ra) # 80001d44 <_ZN3TCB5yieldEv>
    80001db0:	01813083          	ld	ra,24(sp)
    80001db4:	01013403          	ld	s0,16(sp)
    80001db8:	00813483          	ld	s1,8(sp)
    80001dbc:	02010113          	addi	sp,sp,32
    80001dc0:	00008067          	ret

0000000080001dc4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001dc4:	fe010113          	addi	sp,sp,-32
    80001dc8:	00113c23          	sd	ra,24(sp)
    80001dcc:	00813823          	sd	s0,16(sp)
    80001dd0:	00913423          	sd	s1,8(sp)
    80001dd4:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001dd8:	00005497          	auipc	s1,0x5
    80001ddc:	1604b483          	ld	s1,352(s1) # 80006f38 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001de0:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()){ Scheduler::put(old); }
    80001de4:	02078c63          	beqz	a5,80001e1c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	428080e7          	jalr	1064(ra) # 80002210 <_ZN9Scheduler3getEv>
    80001df0:	00005797          	auipc	a5,0x5
    80001df4:	14a7b423          	sd	a0,328(a5) # 80006f38 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001df8:	01850593          	addi	a1,a0,24 # 8018 <_entry-0x7fff7fe8>
    80001dfc:	01848513          	addi	a0,s1,24
    80001e00:	fffff097          	auipc	ra,0xfffff
    80001e04:	430080e7          	jalr	1072(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e08:	01813083          	ld	ra,24(sp)
    80001e0c:	01013403          	ld	s0,16(sp)
    80001e10:	00813483          	ld	s1,8(sp)
    80001e14:	02010113          	addi	sp,sp,32
    80001e18:	00008067          	ret
    if(!old->isFinished()){ Scheduler::put(old); }
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	458080e7          	jalr	1112(ra) # 80002278 <_ZN9Scheduler3putEP3TCB>
    80001e28:	fc1ff06f          	j	80001de8 <_ZN3TCB8dispatchEv+0x24>

0000000080001e2c <_Znwm>:
#include "../h/syscall_cpp.hpp"

void *operator new (size_t size){
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00113423          	sd	ra,8(sp)
    80001e34:	00813023          	sd	s0,0(sp)
    80001e38:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	620080e7          	jalr	1568(ra) # 8000245c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret

0000000080001e54 <_Znam>:

void *operator new[] (size_t size){
    80001e54:	ff010113          	addi	sp,sp,-16
    80001e58:	00113423          	sd	ra,8(sp)
    80001e5c:	00813023          	sd	s0,0(sp)
    80001e60:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	5f8080e7          	jalr	1528(ra) # 8000245c <_ZN15MemoryAllocator9mem_allocEm>
}
    80001e6c:	00813083          	ld	ra,8(sp)
    80001e70:	00013403          	ld	s0,0(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret

0000000080001e7c <_ZdlPv>:

void operator delete (void *ptr) noexcept {
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00113423          	sd	ra,8(sp)
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	6c8080e7          	jalr	1736(ra) # 80002554 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZdaPv>:

void operator delete[] (void *ptr) noexcept {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	6a0080e7          	jalr	1696(ra) # 80002554 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001ebc:	00813083          	ld	ra,8(sp)
    80001ec0:	00013403          	ld	s0,0(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN5Riscv10popSppSpieEv>:

#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"

void Riscv::popSppSpie() {
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00813423          	sd	s0,8(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001ed8:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001edc:	10000793          	li	a5,256
    80001ee0:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
    80001ee4:	10200073          	sret
}
    80001ee8:	00813403          	ld	s0,8(sp)
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret

0000000080001ef4 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void *);

void Riscv::handleSupervisorTrap() {
    80001ef4:	f8010113          	addi	sp,sp,-128
    80001ef8:	06113c23          	sd	ra,120(sp)
    80001efc:	06813823          	sd	s0,112(sp)
    80001f00:	06913423          	sd	s1,104(sp)
    80001f04:	07213023          	sd	s2,96(sp)
    80001f08:	05313c23          	sd	s3,88(sp)
    80001f0c:	08010413          	addi	s0,sp,128
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001f10:	142027f3          	csrr	a5,scause
    80001f14:	f8f43023          	sd	a5,-128(s0)
    return scause;
    80001f18:	f8043703          	ld	a4,-128(s0)
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001f1c:	ff870693          	addi	a3,a4,-8
    80001f20:	00100793          	li	a5,1
    80001f24:	12d7f463          	bgeu	a5,a3,8000204c <_ZN5Riscv20handleSupervisorTrapEv+0x158>
        }

        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x8000000000000001UL) {
    80001f28:	fff00793          	li	a5,-1
    80001f2c:	03f79793          	slli	a5,a5,0x3f
    80001f30:	00178793          	addi	a5,a5,1
    80001f34:	20f70e63          	beq	a4,a5,80002150 <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    80001f38:	fff00793          	li	a5,-1
    80001f3c:	03f79793          	slli	a5,a5,0x3f
    80001f40:	00978793          	addi	a5,a5,9
    80001f44:	26f70c63          	beq	a4,a5,800021bc <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001f48:	141027f3          	csrr	a5,sepc
    80001f4c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001f50:	fc843483          	ld	s1,-56(s0)
        console_handler();
        mc_sip(SIP_SEIP);
    } else {
        // Neocekivani razlog prekida
        uint64 sepc = r_sepc();
        printString("Vrednost sepc:");
    80001f54:	00004517          	auipc	a0,0x4
    80001f58:	2e450513          	addi	a0,a0,740 # 80006238 <CONSOLE_STATUS+0x228>
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	824080e7          	jalr	-2012(ra) # 80001780 <_Z11printStringPKc>
        printInt(sepc);
    80001f64:	00000613          	li	a2,0
    80001f68:	00a00593          	li	a1,10
    80001f6c:	0004851b          	sext.w	a0,s1
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	9c0080e7          	jalr	-1600(ra) # 80001930 <_Z8printIntiii>
        printString(" ");
    80001f78:	00004517          	auipc	a0,0x4
    80001f7c:	30850513          	addi	a0,a0,776 # 80006280 <CONSOLE_STATUS+0x270>
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	800080e7          	jalr	-2048(ra) # 80001780 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    80001f88:	105027f3          	csrr	a5,stvec
    80001f8c:	fcf43023          	sd	a5,-64(s0)
    return stvec;
    80001f90:	fc043483          	ld	s1,-64(s0)
        uint64 stvec = r_stvec();
        printString("Vrednost stvec:");
    80001f94:	00004517          	auipc	a0,0x4
    80001f98:	2b450513          	addi	a0,a0,692 # 80006248 <CONSOLE_STATUS+0x238>
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	7e4080e7          	jalr	2020(ra) # 80001780 <_Z11printStringPKc>
        printInt(stvec);
    80001fa4:	00000613          	li	a2,0
    80001fa8:	00a00593          	li	a1,10
    80001fac:	0004851b          	sext.w	a0,s1
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	980080e7          	jalr	-1664(ra) # 80001930 <_Z8printIntiii>
        printString(" ");
    80001fb8:	00004517          	auipc	a0,0x4
    80001fbc:	2c850513          	addi	a0,a0,712 # 80006280 <CONSOLE_STATUS+0x270>
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	7c0080e7          	jalr	1984(ra) # 80001780 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001fc8:	100027f3          	csrr	a5,sstatus
    80001fcc:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001fd0:	fb843483          	ld	s1,-72(s0)
        uint64 sstatus = r_sstatus();
        printString("Vrednost sstatus:");
    80001fd4:	00004517          	auipc	a0,0x4
    80001fd8:	28450513          	addi	a0,a0,644 # 80006258 <CONSOLE_STATUS+0x248>
    80001fdc:	fffff097          	auipc	ra,0xfffff
    80001fe0:	7a4080e7          	jalr	1956(ra) # 80001780 <_Z11printStringPKc>
        printInt(sstatus);
    80001fe4:	00000613          	li	a2,0
    80001fe8:	00a00593          	li	a1,10
    80001fec:	0004851b          	sext.w	a0,s1
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	940080e7          	jalr	-1728(ra) # 80001930 <_Z8printIntiii>
        printString(" ");
    80001ff8:	00004517          	auipc	a0,0x4
    80001ffc:	28850513          	addi	a0,a0,648 # 80006280 <CONSOLE_STATUS+0x270>
    80002000:	fffff097          	auipc	ra,0xfffff
    80002004:	780080e7          	jalr	1920(ra) # 80001780 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80002008:	142027f3          	csrr	a5,scause
    8000200c:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002010:	fb043483          	ld	s1,-80(s0)
        uint64 scause = r_scause();
        printString("Vrednost scause: ");
    80002014:	00004517          	auipc	a0,0x4
    80002018:	25c50513          	addi	a0,a0,604 # 80006270 <CONSOLE_STATUS+0x260>
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	764080e7          	jalr	1892(ra) # 80001780 <_Z11printStringPKc>
        printInt(scause);
    80002024:	00000613          	li	a2,0
    80002028:	00a00593          	li	a1,10
    8000202c:	0004851b          	sext.w	a0,s1
    80002030:	00000097          	auipc	ra,0x0
    80002034:	900080e7          	jalr	-1792(ra) # 80001930 <_Z8printIntiii>
        printString("\n");
    80002038:	00004517          	auipc	a0,0x4
    8000203c:	00850513          	addi	a0,a0,8 # 80006040 <CONSOLE_STATUS+0x30>
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	740080e7          	jalr	1856(ra) # 80001780 <_Z11printStringPKc>
    }
}
    80002048:	0b80006f          	j	80002100 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000204c:	141027f3          	csrr	a5,sepc
    80002050:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002054:	f9843483          	ld	s1,-104(s0)
        uint64 sepc = r_sepc() + 4;
    80002058:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000205c:	100027f3          	csrr	a5,sstatus
    80002060:	f8f43823          	sd	a5,-112(s0)
    return sstatus;
    80002064:	f9043903          	ld	s2,-112(s0)
        TCB::timeSliceCounter = 0;
    80002068:	00005797          	auipc	a5,0x5
    8000206c:	e587b783          	ld	a5,-424(a5) # 80006ec0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002070:	0007b023          	sd	zero,0(a5)
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80002074:	00050793          	mv	a5,a0
    80002078:	f8f43423          	sd	a5,-120(s0)
    return a0;
    8000207c:	f8843783          	ld	a5,-120(s0)
        switch (code) {
    80002080:	01100713          	li	a4,17
    80002084:	08e78c63          	beq	a5,a4,8000211c <_ZN5Riscv20handleSupervisorTrapEv+0x228>
    80002088:	02f76663          	bltu	a4,a5,800020b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    8000208c:	00100713          	li	a4,1
    80002090:	04e78663          	beq	a5,a4,800020dc <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
    80002094:	00200713          	li	a4,2
    80002098:	04e79c63          	bne	a5,a4,800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    8000209c:	00058513          	mv	a0,a1
                ret = MemoryAllocator::mem_free(ptr);
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	4b4080e7          	jalr	1204(ra) # 80002554 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    800020a8:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    800020ac:	04a42823          	sw	a0,80(s0)
                break;
    800020b0:	0400006f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        switch (code) {
    800020b4:	01200713          	li	a4,18
    800020b8:	02e79c63          	bne	a5,a4,800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                TCB::running->setFinished(true);
    800020bc:	00005797          	auipc	a5,0x5
    800020c0:	e147b783          	ld	a5,-492(a5) # 80006ed0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020c4:	0007b783          	ld	a5,0(a5)
    void setFinished(bool finished) { this->finished = finished; }
    800020c8:	00100713          	li	a4,1
    800020cc:	02e78823          	sb	a4,48(a5)
                __asm__ volatile("li a0, 0");
    800020d0:	00000513          	li	a0,0
                __asm__ volatile("sw a0, 80(x8)");
    800020d4:	04a42823          	sw	a0,80(s0)
                break;
    800020d8:	0180006f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                __asm__ volatile("mv %0, a1" : "=r" (size));
    800020dc:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	37c080e7          	jalr	892(ra) # 8000245c <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800020e8:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    800020ec:	04a42823          	sw	a0,80(s0)
        TCB::dispatch();
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	cd4080e7          	jalr	-812(ra) # 80001dc4 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    800020f8:	10093073          	csrc	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    800020fc:	14149073          	csrw	sepc,s1
}
    80002100:	07813083          	ld	ra,120(sp)
    80002104:	07013403          	ld	s0,112(sp)
    80002108:	06813483          	ld	s1,104(sp)
    8000210c:	06013903          	ld	s2,96(sp)
    80002110:	05813983          	ld	s3,88(sp)
    80002114:	08010113          	addi	sp,sp,128
    80002118:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    8000211c:	00058993          	mv	s3,a1
                __asm__ volatile("mv %0, a2" : "=r" (body));
    80002120:	00060513          	mv	a0,a2
                __asm__ volatile("mv %0, a7" : "=r" (arg));
    80002124:	00088593          	mv	a1,a7
                *handle = TCB::createThread(body, arg);
    80002128:	00000097          	auipc	ra,0x0
    8000212c:	b3c080e7          	jalr	-1220(ra) # 80001c64 <_ZN3TCB12createThreadEPFvPvES0_>
    80002130:	00a9b023          	sd	a0,0(s3)
                if(*handle != nullptr) {
    80002134:	00050863          	beqz	a0,80002144 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                    __asm__ volatile("li a0, 0");
    80002138:	00000513          	li	a0,0
                    __asm__ volatile("sw a0, 80(x8)");
    8000213c:	04a42823          	sw	a0,80(s0)
    80002140:	fb1ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    __asm__ volatile("li a0, -1");
    80002144:	fff00513          	li	a0,-1
                    __asm__ volatile("sw a0, 80(x8)");
    80002148:	04a42823          	sw	a0,80(s0)
    8000214c:	fa5ff06f          	j	800020f0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        if(++TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80002150:	00005717          	auipc	a4,0x5
    80002154:	d7073703          	ld	a4,-656(a4) # 80006ec0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002158:	00073783          	ld	a5,0(a4)
    8000215c:	00178793          	addi	a5,a5,1
    80002160:	00f73023          	sd	a5,0(a4)
    80002164:	00005717          	auipc	a4,0x5
    80002168:	d6c73703          	ld	a4,-660(a4) # 80006ed0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000216c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return time_slice; }
    80002170:	02873703          	ld	a4,40(a4)
    80002174:	00e7f863          	bgeu	a5,a4,80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x290>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002178:	00200793          	li	a5,2
    8000217c:	1447b073          	csrc	sip,a5
}
    80002180:	f81ff06f          	j	80002100 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80002184:	141027f3          	csrr	a5,sepc
    80002188:	faf43423          	sd	a5,-88(s0)
    return sepc;
    8000218c:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80002190:	100027f3          	csrr	a5,sstatus
    80002194:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002198:	fa043903          	ld	s2,-96(s0)
            TCB::timeSliceCounter = 0;
    8000219c:	00005797          	auipc	a5,0x5
    800021a0:	d247b783          	ld	a5,-732(a5) # 80006ec0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800021a4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	c1c080e7          	jalr	-996(ra) # 80001dc4 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    800021b0:	10093073          	csrc	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    800021b4:	14149073          	csrw	sepc,s1
}
    800021b8:	fc1ff06f          	j	80002178 <_ZN5Riscv20handleSupervisorTrapEv+0x284>
        console_handler();
    800021bc:	00003097          	auipc	ra,0x3
    800021c0:	1f4080e7          	jalr	500(ra) # 800053b0 <console_handler>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    800021c4:	20000793          	li	a5,512
    800021c8:	1447b073          	csrc	sip,a5
}
    800021cc:	f35ff06f          	j	80002100 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>

00000000800021d0 <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

void Scheduler::deleteThreadQueue() {
    while(get());
}
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00813423          	sd	s0,8(sp)
    800021d8:	01010413          	addi	s0,sp,16
    800021dc:	00100793          	li	a5,1
    800021e0:	00f50863          	beq	a0,a5,800021f0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800021e4:	00813403          	ld	s0,8(sp)
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00008067          	ret
    800021f0:	000107b7          	lui	a5,0x10
    800021f4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021f8:	fef596e3          	bne	a1,a5,800021e4 <_Z41__static_initialization_and_destruction_0ii+0x14>

#include "MemoryAllocator.hpp"

template <typename T> class List {
public:
    List() : head(0), tail(0) {}
    800021fc:	00005797          	auipc	a5,0x5
    80002200:	d4c78793          	addi	a5,a5,-692 # 80006f48 <_ZN9Scheduler16readyThreadQueueE>
    80002204:	0007b023          	sd	zero,0(a5)
    80002208:	0007b423          	sd	zero,8(a5)
    8000220c:	fd9ff06f          	j	800021e4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002210 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80002210:	fe010113          	addi	sp,sp,-32
    80002214:	00113c23          	sd	ra,24(sp)
    80002218:	00813823          	sd	s0,16(sp)
    8000221c:	00913423          	sd	s1,8(sp)
    80002220:	02010413          	addi	s0,sp,32
            tail = element;
        } else head = tail = element;
    }

    T* removeFirst() {
        if(!head) return nullptr;
    80002224:	00005517          	auipc	a0,0x5
    80002228:	d2453503          	ld	a0,-732(a0) # 80006f48 <_ZN9Scheduler16readyThreadQueueE>
    8000222c:	04050263          	beqz	a0,80002270 <_ZN9Scheduler3getEv+0x60>
        Element* element = head;
        head = head->next;
    80002230:	00853783          	ld	a5,8(a0)
    80002234:	00005717          	auipc	a4,0x5
    80002238:	d0f73a23          	sd	a5,-748(a4) # 80006f48 <_ZN9Scheduler16readyThreadQueueE>
        if(!head) tail = nullptr;
    8000223c:	02078463          	beqz	a5,80002264 <_ZN9Scheduler3getEv+0x54>

        T* result = element->item;
    80002240:	00053483          	ld	s1,0(a0)
        void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void* ptr){
            MemoryAllocator::mem_free(ptr);
    80002244:	00000097          	auipc	ra,0x0
    80002248:	310080e7          	jalr	784(ra) # 80002554 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000224c:	00048513          	mv	a0,s1
    80002250:	01813083          	ld	ra,24(sp)
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	00813483          	ld	s1,8(sp)
    8000225c:	02010113          	addi	sp,sp,32
    80002260:	00008067          	ret
        if(!head) tail = nullptr;
    80002264:	00005797          	auipc	a5,0x5
    80002268:	ce07b623          	sd	zero,-788(a5) # 80006f50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000226c:	fd5ff06f          	j	80002240 <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    80002270:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002274:	fd9ff06f          	j	8000224c <_ZN9Scheduler3getEv+0x3c>

0000000080002278 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002278:	fe010113          	addi	sp,sp,-32
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	00813823          	sd	s0,16(sp)
    80002284:	00913423          	sd	s1,8(sp)
    80002288:	02010413          	addi	s0,sp,32
    8000228c:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80002290:	01000513          	li	a0,16
    80002294:	00000097          	auipc	ra,0x0
    80002298:	1c8080e7          	jalr	456(ra) # 8000245c <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    8000229c:	00953023          	sd	s1,0(a0)
    800022a0:	00053423          	sd	zero,8(a0)
        if(tail) {
    800022a4:	00005797          	auipc	a5,0x5
    800022a8:	cac7b783          	ld	a5,-852(a5) # 80006f50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800022ac:	02078263          	beqz	a5,800022d0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = element;
    800022b0:	00a7b423          	sd	a0,8(a5)
            tail = element;
    800022b4:	00005797          	auipc	a5,0x5
    800022b8:	c8a7be23          	sd	a0,-868(a5) # 80006f50 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800022bc:	01813083          	ld	ra,24(sp)
    800022c0:	01013403          	ld	s0,16(sp)
    800022c4:	00813483          	ld	s1,8(sp)
    800022c8:	02010113          	addi	sp,sp,32
    800022cc:	00008067          	ret
        } else head = tail = element;
    800022d0:	00005797          	auipc	a5,0x5
    800022d4:	c7878793          	addi	a5,a5,-904 # 80006f48 <_ZN9Scheduler16readyThreadQueueE>
    800022d8:	00a7b423          	sd	a0,8(a5)
    800022dc:	00a7b023          	sd	a0,0(a5)
    800022e0:	fddff06f          	j	800022bc <_ZN9Scheduler3putEP3TCB+0x44>

00000000800022e4 <_ZN9Scheduler17deleteThreadQueueEv>:
void Scheduler::deleteThreadQueue() {
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00113423          	sd	ra,8(sp)
    800022ec:	00813023          	sd	s0,0(sp)
    800022f0:	01010413          	addi	s0,sp,16
    while(get());
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	f1c080e7          	jalr	-228(ra) # 80002210 <_ZN9Scheduler3getEv>
    800022fc:	fe051ce3          	bnez	a0,800022f4 <_ZN9Scheduler17deleteThreadQueueEv+0x10>
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret

0000000080002310 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    80002320:	000105b7          	lui	a1,0x10
    80002324:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002328:	00100513          	li	a0,1
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	ea4080e7          	jalr	-348(ra) # 800021d0 <_Z41__static_initialization_and_destruction_0ii>
    80002334:	00813083          	ld	ra,8(sp)
    80002338:	00013403          	ld	s0,0(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    80002350:	00050e63          	beqz	a0,8000236c <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    80002354:	00053783          	ld	a5,0(a0)
    80002358:	00078a63          	beqz	a5,8000236c <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    8000235c:	00853683          	ld	a3,8(a0)
    80002360:	01068713          	addi	a4,a3,16
    80002364:	00e50733          	add	a4,a0,a4
    80002368:	00e78863          	beq	a5,a4,80002378 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    8000236c:	00813403          	ld	s0,8(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    80002378:	0087b703          	ld	a4,8(a5)
    8000237c:	00e686b3          	add	a3,a3,a4
    80002380:	01068693          	addi	a3,a3,16
    80002384:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    80002388:	0007b783          	ld	a5,0(a5)
    8000238c:	00f53023          	sd	a5,0(a0)
    80002390:	fddff06f          	j	8000236c <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

0000000080002394 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813423          	sd	s0,8(sp)
    8000239c:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    800023a0:	02050063          	beqz	a0,800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800023a4:	00064e63          	bltz	a2,800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800023a8:	00100793          	li	a5,1
    800023ac:	00c7ca63          	blt	a5,a2,800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    800023b0:	00058e63          	beqz	a1,800023cc <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    800023b4:	0005b783          	ld	a5,0(a1)
    800023b8:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    800023bc:	00a5b023          	sd	a0,0(a1)
    }
}
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret
        if(code == 0) {
    800023cc:	00061e63          	bnez	a2,800023e8 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    800023d0:	00005797          	auipc	a5,0x5
    800023d4:	b8878793          	addi	a5,a5,-1144 # 80006f58 <_ZN15MemoryAllocator17head_free_segmentE>
    800023d8:	0007b703          	ld	a4,0(a5)
    800023dc:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    800023e0:	00a7b023          	sd	a0,0(a5)
    800023e4:	fddff06f          	j	800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    800023e8:	00005797          	auipc	a5,0x5
    800023ec:	b7078793          	addi	a5,a5,-1168 # 80006f58 <_ZN15MemoryAllocator17head_free_segmentE>
    800023f0:	0087b703          	ld	a4,8(a5)
    800023f4:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    800023f8:	00a7b423          	sd	a0,8(a5)
    800023fc:	fc5ff06f          	j	800023c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

0000000080002400 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    8000240c:	02050063          	beqz	a0,8000242c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80002410:	00064e63          	bltz	a2,8000242c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80002414:	00100793          	li	a5,1
    80002418:	00c7ca63          	blt	a5,a2,8000242c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    8000241c:	00058e63          	beqz	a1,80002438 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    80002420:	00053783          	ld	a5,0(a0)
    80002424:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    80002428:	00053023          	sd	zero,0(a0)
}
    8000242c:	00813403          	ld	s0,8(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    80002438:	00061a63          	bnez	a2,8000244c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    8000243c:	00053783          	ld	a5,0(a0)
    80002440:	00005717          	auipc	a4,0x5
    80002444:	b0f73c23          	sd	a5,-1256(a4) # 80006f58 <_ZN15MemoryAllocator17head_free_segmentE>
    80002448:	fe1ff06f          	j	80002428 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    8000244c:	00053783          	ld	a5,0(a0)
    80002450:	00005717          	auipc	a4,0x5
    80002454:	b0f73823          	sd	a5,-1264(a4) # 80006f60 <_ZN15MemoryAllocator17head_data_segmentE>
    80002458:	fd1ff06f          	j	80002428 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

000000008000245c <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    8000245c:	fd010113          	addi	sp,sp,-48
    80002460:	02113423          	sd	ra,40(sp)
    80002464:	02813023          	sd	s0,32(sp)
    80002468:	00913c23          	sd	s1,24(sp)
    8000246c:	01213823          	sd	s2,16(sp)
    80002470:	01313423          	sd	s3,8(sp)
    80002474:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    80002478:	0c050a63          	beqz	a0,8000254c <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    8000247c:	03f50513          	addi	a0,a0,63
    80002480:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80002484:	00005497          	auipc	s1,0x5
    80002488:	ad44b483          	ld	s1,-1324(s1) # 80006f58 <_ZN15MemoryAllocator17head_free_segmentE>
    8000248c:	00000993          	li	s3,0
    80002490:	08048e63          	beqz	s1,8000252c <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    80002494:	0084b783          	ld	a5,8(s1)
    80002498:	0127f863          	bgeu	a5,s2,800024a8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    8000249c:	00048993          	mv	s3,s1
    800024a0:	0004b483          	ld	s1,0(s1)
    800024a4:	fedff06f          	j	80002490 <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    800024a8:	00000613          	li	a2,0
    800024ac:	00098593          	mv	a1,s3
    800024b0:	00048513          	mv	a0,s1
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	f4c080e7          	jalr	-180(ra) # 80002400 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    800024bc:	0084b783          	ld	a5,8(s1)
    800024c0:	41278733          	sub	a4,a5,s2
    800024c4:	00f00693          	li	a3,15
    800024c8:	02e6e463          	bltu	a3,a4,800024f0 <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    800024cc:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    800024d0:	00005797          	auipc	a5,0x5
    800024d4:	a907b783          	ld	a5,-1392(a5) # 80006f60 <_ZN15MemoryAllocator17head_data_segmentE>
    800024d8:	00000593          	li	a1,0
    800024dc:	02078e63          	beqz	a5,80002518 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    800024e0:	0297fc63          	bgeu	a5,s1,80002518 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    800024e4:	00078593          	mv	a1,a5
    800024e8:	0007b783          	ld	a5,0(a5)
    800024ec:	ff1ff06f          	j	800024dc <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    800024f0:	01090513          	addi	a0,s2,16
    800024f4:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    800024f8:	ff070713          	addi	a4,a4,-16
    800024fc:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    80002500:	00000613          	li	a2,0
    80002504:	00098593          	mv	a1,s3
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	e8c080e7          	jalr	-372(ra) # 80002394 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    80002510:	00090793          	mv	a5,s2
    80002514:	fb9ff06f          	j	800024cc <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    80002518:	00100613          	li	a2,1
    8000251c:	00048513          	mv	a0,s1
    80002520:	00000097          	auipc	ra,0x0
    80002524:	e74080e7          	jalr	-396(ra) # 80002394 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    80002528:	01048493          	addi	s1,s1,16
}
    8000252c:	00048513          	mv	a0,s1
    80002530:	02813083          	ld	ra,40(sp)
    80002534:	02013403          	ld	s0,32(sp)
    80002538:	01813483          	ld	s1,24(sp)
    8000253c:	01013903          	ld	s2,16(sp)
    80002540:	00813983          	ld	s3,8(sp)
    80002544:	03010113          	addi	sp,sp,48
    80002548:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    8000254c:	00000493          	li	s1,0
    80002550:	fddff06f          	j	8000252c <_ZN15MemoryAllocator9mem_allocEm+0xd0>

0000000080002554 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002554:	0c050863          	beqz	a0,80002624 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80002558:	00005797          	auipc	a5,0x5
    8000255c:	9587b783          	ld	a5,-1704(a5) # 80006eb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002560:	0007b783          	ld	a5,0(a5)
    80002564:	0cf56463          	bltu	a0,a5,8000262c <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002568:	00005797          	auipc	a5,0x5
    8000256c:	9707b783          	ld	a5,-1680(a5) # 80006ed8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002570:	0007b783          	ld	a5,0(a5)
    80002574:	0cf57063          	bgeu	a0,a5,80002634 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    80002578:	fe010113          	addi	sp,sp,-32
    8000257c:	00113c23          	sd	ra,24(sp)
    80002580:	00813823          	sd	s0,16(sp)
    80002584:	00913423          	sd	s1,8(sp)
    80002588:	01213023          	sd	s2,0(sp)
    8000258c:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80002590:	00005497          	auipc	s1,0x5
    80002594:	9d04b483          	ld	s1,-1584(s1) # 80006f60 <_ZN15MemoryAllocator17head_data_segmentE>
    80002598:	00000593          	li	a1,0
    8000259c:	0a048063          	beqz	s1,8000263c <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    800025a0:	01048793          	addi	a5,s1,16
    800025a4:	00a78a63          	beq	a5,a0,800025b8 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    800025a8:	0af56863          	bltu	a0,a5,80002658 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    800025ac:	00048593          	mv	a1,s1
    800025b0:	0004b483          	ld	s1,0(s1)
    800025b4:	fe9ff06f          	j	8000259c <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    800025b8:	00100613          	li	a2,1
    800025bc:	00048513          	mv	a0,s1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	e40080e7          	jalr	-448(ra) # 80002400 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    800025c8:	00005917          	auipc	s2,0x5
    800025cc:	99093903          	ld	s2,-1648(s2) # 80006f58 <_ZN15MemoryAllocator17head_free_segmentE>
    800025d0:	0080006f          	j	800025d8 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    800025d4:	00078913          	mv	s2,a5
    800025d8:	00090863          	beqz	s2,800025e8 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    800025dc:	00093783          	ld	a5,0(s2)
    800025e0:	00078463          	beqz	a5,800025e8 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    800025e4:	fe97e8e3          	bltu	a5,s1,800025d4 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    800025e8:	0124f463          	bgeu	s1,s2,800025f0 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    800025ec:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    800025f0:	00000613          	li	a2,0
    800025f4:	00090593          	mv	a1,s2
    800025f8:	00048513          	mv	a0,s1
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	d98080e7          	jalr	-616(ra) # 80002394 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    80002604:	00048513          	mv	a0,s1
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	d3c080e7          	jalr	-708(ra) # 80002344 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    80002610:	00090513          	mv	a0,s2
    80002614:	00000097          	auipc	ra,0x0
    80002618:	d30080e7          	jalr	-720(ra) # 80002344 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    8000261c:	00000513          	li	a0,0
    80002620:	0200006f          	j	80002640 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002624:	fff00513          	li	a0,-1
    80002628:	00008067          	ret
    8000262c:	fff00513          	li	a0,-1
    80002630:	00008067          	ret
    80002634:	fff00513          	li	a0,-1
}
    80002638:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    8000263c:	ffe00513          	li	a0,-2
}
    80002640:	01813083          	ld	ra,24(sp)
    80002644:	01013403          	ld	s0,16(sp)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	00013903          	ld	s2,0(sp)
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002658:	ffe00513          	li	a0,-2
    8000265c:	fe5ff06f          	j	80002640 <_ZN15MemoryAllocator8mem_freeEPv+0xec>

0000000080002660 <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00813423          	sd	s0,8(sp)
    80002668:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    8000266c:	00005697          	auipc	a3,0x5
    80002670:	8446b683          	ld	a3,-1980(a3) # 80006eb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002674:	0006b783          	ld	a5,0(a3)
    80002678:	00005717          	auipc	a4,0x5
    8000267c:	8e070713          	addi	a4,a4,-1824 # 80006f58 <_ZN15MemoryAllocator17head_free_segmentE>
    80002680:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    80002684:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    80002688:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    8000268c:	00005797          	auipc	a5,0x5
    80002690:	84c7b783          	ld	a5,-1972(a5) # 80006ed8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002694:	0007b783          	ld	a5,0(a5)
    80002698:	0006b683          	ld	a3,0(a3)
    8000269c:	40d787b3          	sub	a5,a5,a3
    800026a0:	00073703          	ld	a4,0(a4)
    800026a4:	ff078793          	addi	a5,a5,-16
    800026a8:	00f73423          	sd	a5,8(a4)
}
    800026ac:	00813403          	ld	s0,8(sp)
    800026b0:	01010113          	addi	sp,sp,16
    800026b4:	00008067          	ret

00000000800026b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800026b8:	fe010113          	addi	sp,sp,-32
    800026bc:	00113c23          	sd	ra,24(sp)
    800026c0:	00813823          	sd	s0,16(sp)
    800026c4:	00913423          	sd	s1,8(sp)
    800026c8:	01213023          	sd	s2,0(sp)
    800026cc:	02010413          	addi	s0,sp,32
    800026d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800026d4:	00100793          	li	a5,1
    800026d8:	02a7f863          	bgeu	a5,a0,80002708 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800026dc:	00a00793          	li	a5,10
    800026e0:	02f577b3          	remu	a5,a0,a5
    800026e4:	02078e63          	beqz	a5,80002720 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800026e8:	fff48513          	addi	a0,s1,-1
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	fcc080e7          	jalr	-52(ra) # 800026b8 <_ZL9fibonaccim>
    800026f4:	00050913          	mv	s2,a0
    800026f8:	ffe48513          	addi	a0,s1,-2
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	fbc080e7          	jalr	-68(ra) # 800026b8 <_ZL9fibonaccim>
    80002704:	00a90533          	add	a0,s2,a0
}
    80002708:	01813083          	ld	ra,24(sp)
    8000270c:	01013403          	ld	s0,16(sp)
    80002710:	00813483          	ld	s1,8(sp)
    80002714:	00013903          	ld	s2,0(sp)
    80002718:	02010113          	addi	sp,sp,32
    8000271c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	c04080e7          	jalr	-1020(ra) # 80001324 <_Z15thread_dispatchv>
    80002728:	fc1ff06f          	j	800026e8 <_ZL9fibonaccim+0x30>

000000008000272c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00113c23          	sd	ra,24(sp)
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00913423          	sd	s1,8(sp)
    8000273c:	01213023          	sd	s2,0(sp)
    80002740:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002744:	00a00493          	li	s1,10
    80002748:	0400006f          	j	80002788 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000274c:	00004517          	auipc	a0,0x4
    80002750:	91450513          	addi	a0,a0,-1772 # 80006060 <CONSOLE_STATUS+0x50>
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	02c080e7          	jalr	44(ra) # 80001780 <_Z11printStringPKc>
    8000275c:	00000613          	li	a2,0
    80002760:	00a00593          	li	a1,10
    80002764:	00048513          	mv	a0,s1
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	1c8080e7          	jalr	456(ra) # 80001930 <_Z8printIntiii>
    80002770:	00004517          	auipc	a0,0x4
    80002774:	8d050513          	addi	a0,a0,-1840 # 80006040 <CONSOLE_STATUS+0x30>
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	008080e7          	jalr	8(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002780:	0014849b          	addiw	s1,s1,1
    80002784:	0ff4f493          	andi	s1,s1,255
    80002788:	00c00793          	li	a5,12
    8000278c:	fc97f0e3          	bgeu	a5,s1,8000274c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002790:	00004517          	auipc	a0,0x4
    80002794:	af850513          	addi	a0,a0,-1288 # 80006288 <CONSOLE_STATUS+0x278>
    80002798:	fffff097          	auipc	ra,0xfffff
    8000279c:	fe8080e7          	jalr	-24(ra) # 80001780 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800027a0:	00500313          	li	t1,5
    thread_dispatch();
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	b80080e7          	jalr	-1152(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800027ac:	01000513          	li	a0,16
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	f08080e7          	jalr	-248(ra) # 800026b8 <_ZL9fibonaccim>
    800027b8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800027bc:	00004517          	auipc	a0,0x4
    800027c0:	8bc50513          	addi	a0,a0,-1860 # 80006078 <CONSOLE_STATUS+0x68>
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	fbc080e7          	jalr	-68(ra) # 80001780 <_Z11printStringPKc>
    800027cc:	00000613          	li	a2,0
    800027d0:	00a00593          	li	a1,10
    800027d4:	0009051b          	sext.w	a0,s2
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	158080e7          	jalr	344(ra) # 80001930 <_Z8printIntiii>
    800027e0:	00004517          	auipc	a0,0x4
    800027e4:	86050513          	addi	a0,a0,-1952 # 80006040 <CONSOLE_STATUS+0x30>
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	f98080e7          	jalr	-104(ra) # 80001780 <_Z11printStringPKc>
    800027f0:	0400006f          	j	80002830 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800027f4:	00004517          	auipc	a0,0x4
    800027f8:	86c50513          	addi	a0,a0,-1940 # 80006060 <CONSOLE_STATUS+0x50>
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	f84080e7          	jalr	-124(ra) # 80001780 <_Z11printStringPKc>
    80002804:	00000613          	li	a2,0
    80002808:	00a00593          	li	a1,10
    8000280c:	00048513          	mv	a0,s1
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	120080e7          	jalr	288(ra) # 80001930 <_Z8printIntiii>
    80002818:	00004517          	auipc	a0,0x4
    8000281c:	82850513          	addi	a0,a0,-2008 # 80006040 <CONSOLE_STATUS+0x30>
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	f60080e7          	jalr	-160(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002828:	0014849b          	addiw	s1,s1,1
    8000282c:	0ff4f493          	andi	s1,s1,255
    80002830:	00f00793          	li	a5,15
    80002834:	fc97f0e3          	bgeu	a5,s1,800027f4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002838:	00004517          	auipc	a0,0x4
    8000283c:	a6050513          	addi	a0,a0,-1440 # 80006298 <CONSOLE_STATUS+0x288>
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	f40080e7          	jalr	-192(ra) # 80001780 <_Z11printStringPKc>
    finishedD = true;
    80002848:	00100793          	li	a5,1
    8000284c:	00004717          	auipc	a4,0x4
    80002850:	70f70e23          	sb	a5,1820(a4) # 80006f68 <_ZL9finishedD>
    thread_dispatch();
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	ad0080e7          	jalr	-1328(ra) # 80001324 <_Z15thread_dispatchv>
}
    8000285c:	01813083          	ld	ra,24(sp)
    80002860:	01013403          	ld	s0,16(sp)
    80002864:	00813483          	ld	s1,8(sp)
    80002868:	00013903          	ld	s2,0(sp)
    8000286c:	02010113          	addi	sp,sp,32
    80002870:	00008067          	ret

0000000080002874 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002874:	fe010113          	addi	sp,sp,-32
    80002878:	00113c23          	sd	ra,24(sp)
    8000287c:	00813823          	sd	s0,16(sp)
    80002880:	00913423          	sd	s1,8(sp)
    80002884:	01213023          	sd	s2,0(sp)
    80002888:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000288c:	00000493          	li	s1,0
    80002890:	0400006f          	j	800028d0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002894:	00003517          	auipc	a0,0x3
    80002898:	79c50513          	addi	a0,a0,1948 # 80006030 <CONSOLE_STATUS+0x20>
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	ee4080e7          	jalr	-284(ra) # 80001780 <_Z11printStringPKc>
    800028a4:	00000613          	li	a2,0
    800028a8:	00a00593          	li	a1,10
    800028ac:	00048513          	mv	a0,s1
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	080080e7          	jalr	128(ra) # 80001930 <_Z8printIntiii>
    800028b8:	00003517          	auipc	a0,0x3
    800028bc:	78850513          	addi	a0,a0,1928 # 80006040 <CONSOLE_STATUS+0x30>
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	ec0080e7          	jalr	-320(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800028c8:	0014849b          	addiw	s1,s1,1
    800028cc:	0ff4f493          	andi	s1,s1,255
    800028d0:	00200793          	li	a5,2
    800028d4:	fc97f0e3          	bgeu	a5,s1,80002894 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800028d8:	00004517          	auipc	a0,0x4
    800028dc:	9d050513          	addi	a0,a0,-1584 # 800062a8 <CONSOLE_STATUS+0x298>
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	ea0080e7          	jalr	-352(ra) # 80001780 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800028e8:	00700313          	li	t1,7
    thread_dispatch();
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	a38080e7          	jalr	-1480(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800028f4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800028f8:	00003517          	auipc	a0,0x3
    800028fc:	75050513          	addi	a0,a0,1872 # 80006048 <CONSOLE_STATUS+0x38>
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	e80080e7          	jalr	-384(ra) # 80001780 <_Z11printStringPKc>
    80002908:	00000613          	li	a2,0
    8000290c:	00a00593          	li	a1,10
    80002910:	0009051b          	sext.w	a0,s2
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	01c080e7          	jalr	28(ra) # 80001930 <_Z8printIntiii>
    8000291c:	00003517          	auipc	a0,0x3
    80002920:	72450513          	addi	a0,a0,1828 # 80006040 <CONSOLE_STATUS+0x30>
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	e5c080e7          	jalr	-420(ra) # 80001780 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000292c:	00c00513          	li	a0,12
    80002930:	00000097          	auipc	ra,0x0
    80002934:	d88080e7          	jalr	-632(ra) # 800026b8 <_ZL9fibonaccim>
    80002938:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000293c:	00003517          	auipc	a0,0x3
    80002940:	71450513          	addi	a0,a0,1812 # 80006050 <CONSOLE_STATUS+0x40>
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	e3c080e7          	jalr	-452(ra) # 80001780 <_Z11printStringPKc>
    8000294c:	00000613          	li	a2,0
    80002950:	00a00593          	li	a1,10
    80002954:	0009051b          	sext.w	a0,s2
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	fd8080e7          	jalr	-40(ra) # 80001930 <_Z8printIntiii>
    80002960:	00003517          	auipc	a0,0x3
    80002964:	6e050513          	addi	a0,a0,1760 # 80006040 <CONSOLE_STATUS+0x30>
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	e18080e7          	jalr	-488(ra) # 80001780 <_Z11printStringPKc>
    80002970:	0400006f          	j	800029b0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002974:	00003517          	auipc	a0,0x3
    80002978:	6bc50513          	addi	a0,a0,1724 # 80006030 <CONSOLE_STATUS+0x20>
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	e04080e7          	jalr	-508(ra) # 80001780 <_Z11printStringPKc>
    80002984:	00000613          	li	a2,0
    80002988:	00a00593          	li	a1,10
    8000298c:	00048513          	mv	a0,s1
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	fa0080e7          	jalr	-96(ra) # 80001930 <_Z8printIntiii>
    80002998:	00003517          	auipc	a0,0x3
    8000299c:	6a850513          	addi	a0,a0,1704 # 80006040 <CONSOLE_STATUS+0x30>
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	de0080e7          	jalr	-544(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800029a8:	0014849b          	addiw	s1,s1,1
    800029ac:	0ff4f493          	andi	s1,s1,255
    800029b0:	00500793          	li	a5,5
    800029b4:	fc97f0e3          	bgeu	a5,s1,80002974 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800029b8:	00004517          	auipc	a0,0x4
    800029bc:	90050513          	addi	a0,a0,-1792 # 800062b8 <CONSOLE_STATUS+0x2a8>
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	dc0080e7          	jalr	-576(ra) # 80001780 <_Z11printStringPKc>
    finishedC = true;
    800029c8:	00100793          	li	a5,1
    800029cc:	00004717          	auipc	a4,0x4
    800029d0:	58f70ea3          	sb	a5,1437(a4) # 80006f69 <_ZL9finishedC>
    thread_dispatch();
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	950080e7          	jalr	-1712(ra) # 80001324 <_Z15thread_dispatchv>
}
    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	00813483          	ld	s1,8(sp)
    800029e8:	00013903          	ld	s2,0(sp)
    800029ec:	02010113          	addi	sp,sp,32
    800029f0:	00008067          	ret

00000000800029f4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800029f4:	fe010113          	addi	sp,sp,-32
    800029f8:	00113c23          	sd	ra,24(sp)
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	00913423          	sd	s1,8(sp)
    80002a04:	01213023          	sd	s2,0(sp)
    80002a08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002a0c:	00000913          	li	s2,0
    80002a10:	0380006f          	j	80002a48 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002a14:	fffff097          	auipc	ra,0xfffff
    80002a18:	910080e7          	jalr	-1776(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a1c:	00148493          	addi	s1,s1,1
    80002a20:	000027b7          	lui	a5,0x2
    80002a24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a28:	0097ee63          	bltu	a5,s1,80002a44 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a2c:	00000713          	li	a4,0
    80002a30:	000077b7          	lui	a5,0x7
    80002a34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a38:	fce7eee3          	bltu	a5,a4,80002a14 <_ZL11workerBodyBPv+0x20>
    80002a3c:	00170713          	addi	a4,a4,1
    80002a40:	ff1ff06f          	j	80002a30 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002a44:	00190913          	addi	s2,s2,1
    80002a48:	00f00793          	li	a5,15
    80002a4c:	0527e063          	bltu	a5,s2,80002a8c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002a50:	00003517          	auipc	a0,0x3
    80002a54:	5d850513          	addi	a0,a0,1496 # 80006028 <CONSOLE_STATUS+0x18>
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	d28080e7          	jalr	-728(ra) # 80001780 <_Z11printStringPKc>
    80002a60:	00000613          	li	a2,0
    80002a64:	00a00593          	li	a1,10
    80002a68:	0009051b          	sext.w	a0,s2
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	ec4080e7          	jalr	-316(ra) # 80001930 <_Z8printIntiii>
    80002a74:	00003517          	auipc	a0,0x3
    80002a78:	5cc50513          	addi	a0,a0,1484 # 80006040 <CONSOLE_STATUS+0x30>
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	d04080e7          	jalr	-764(ra) # 80001780 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a84:	00000493          	li	s1,0
    80002a88:	f99ff06f          	j	80002a20 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002a8c:	00004517          	auipc	a0,0x4
    80002a90:	83c50513          	addi	a0,a0,-1988 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	cec080e7          	jalr	-788(ra) # 80001780 <_Z11printStringPKc>
    finishedB = true;
    80002a9c:	00100793          	li	a5,1
    80002aa0:	00004717          	auipc	a4,0x4
    80002aa4:	4cf70523          	sb	a5,1226(a4) # 80006f6a <_ZL9finishedB>
    thread_dispatch();
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	87c080e7          	jalr	-1924(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002ab0:	01813083          	ld	ra,24(sp)
    80002ab4:	01013403          	ld	s0,16(sp)
    80002ab8:	00813483          	ld	s1,8(sp)
    80002abc:	00013903          	ld	s2,0(sp)
    80002ac0:	02010113          	addi	sp,sp,32
    80002ac4:	00008067          	ret

0000000080002ac8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002ac8:	fe010113          	addi	sp,sp,-32
    80002acc:	00113c23          	sd	ra,24(sp)
    80002ad0:	00813823          	sd	s0,16(sp)
    80002ad4:	00913423          	sd	s1,8(sp)
    80002ad8:	01213023          	sd	s2,0(sp)
    80002adc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002ae0:	00000913          	li	s2,0
    80002ae4:	0380006f          	j	80002b1c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	83c080e7          	jalr	-1988(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002af0:	00148493          	addi	s1,s1,1
    80002af4:	000027b7          	lui	a5,0x2
    80002af8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002afc:	0097ee63          	bltu	a5,s1,80002b18 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b00:	00000713          	li	a4,0
    80002b04:	000077b7          	lui	a5,0x7
    80002b08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b0c:	fce7eee3          	bltu	a5,a4,80002ae8 <_ZL11workerBodyAPv+0x20>
    80002b10:	00170713          	addi	a4,a4,1
    80002b14:	ff1ff06f          	j	80002b04 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002b18:	00190913          	addi	s2,s2,1
    80002b1c:	00900793          	li	a5,9
    80002b20:	0527e063          	bltu	a5,s2,80002b60 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002b24:	00003517          	auipc	a0,0x3
    80002b28:	4fc50513          	addi	a0,a0,1276 # 80006020 <CONSOLE_STATUS+0x10>
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	c54080e7          	jalr	-940(ra) # 80001780 <_Z11printStringPKc>
    80002b34:	00000613          	li	a2,0
    80002b38:	00a00593          	li	a1,10
    80002b3c:	0009051b          	sext.w	a0,s2
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	df0080e7          	jalr	-528(ra) # 80001930 <_Z8printIntiii>
    80002b48:	00003517          	auipc	a0,0x3
    80002b4c:	4f850513          	addi	a0,a0,1272 # 80006040 <CONSOLE_STATUS+0x30>
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	c30080e7          	jalr	-976(ra) # 80001780 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b58:	00000493          	li	s1,0
    80002b5c:	f99ff06f          	j	80002af4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002b60:	00003517          	auipc	a0,0x3
    80002b64:	75850513          	addi	a0,a0,1880 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	c18080e7          	jalr	-1000(ra) # 80001780 <_Z11printStringPKc>
    finishedA = true;
    80002b70:	00100793          	li	a5,1
    80002b74:	00004717          	auipc	a4,0x4
    80002b78:	3ef70ba3          	sb	a5,1015(a4) # 80006f6b <_ZL9finishedA>
}
    80002b7c:	01813083          	ld	ra,24(sp)
    80002b80:	01013403          	ld	s0,16(sp)
    80002b84:	00813483          	ld	s1,8(sp)
    80002b88:	00013903          	ld	s2,0(sp)
    80002b8c:	02010113          	addi	sp,sp,32
    80002b90:	00008067          	ret

0000000080002b94 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002b94:	fd010113          	addi	sp,sp,-48
    80002b98:	02113423          	sd	ra,40(sp)
    80002b9c:	02813023          	sd	s0,32(sp)
    80002ba0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002ba4:	00000613          	li	a2,0
    80002ba8:	00000597          	auipc	a1,0x0
    80002bac:	f2058593          	addi	a1,a1,-224 # 80002ac8 <_ZL11workerBodyAPv>
    80002bb0:	fd040513          	addi	a0,s0,-48
    80002bb4:	ffffe097          	auipc	ra,0xffffe
    80002bb8:	6fc080e7          	jalr	1788(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002bbc:	00003517          	auipc	a0,0x3
    80002bc0:	71c50513          	addi	a0,a0,1820 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	bbc080e7          	jalr	-1092(ra) # 80001780 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002bcc:	00000613          	li	a2,0
    80002bd0:	00000597          	auipc	a1,0x0
    80002bd4:	e2458593          	addi	a1,a1,-476 # 800029f4 <_ZL11workerBodyBPv>
    80002bd8:	fd840513          	addi	a0,s0,-40
    80002bdc:	ffffe097          	auipc	ra,0xffffe
    80002be0:	6d4080e7          	jalr	1748(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002be4:	00003517          	auipc	a0,0x3
    80002be8:	70c50513          	addi	a0,a0,1804 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80002bec:	fffff097          	auipc	ra,0xfffff
    80002bf0:	b94080e7          	jalr	-1132(ra) # 80001780 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002bf4:	00000613          	li	a2,0
    80002bf8:	00000597          	auipc	a1,0x0
    80002bfc:	c7c58593          	addi	a1,a1,-900 # 80002874 <_ZL11workerBodyCPv>
    80002c00:	fe040513          	addi	a0,s0,-32
    80002c04:	ffffe097          	auipc	ra,0xffffe
    80002c08:	6ac080e7          	jalr	1708(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002c0c:	00003517          	auipc	a0,0x3
    80002c10:	6fc50513          	addi	a0,a0,1788 # 80006308 <CONSOLE_STATUS+0x2f8>
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	b6c080e7          	jalr	-1172(ra) # 80001780 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002c1c:	00000613          	li	a2,0
    80002c20:	00000597          	auipc	a1,0x0
    80002c24:	b0c58593          	addi	a1,a1,-1268 # 8000272c <_ZL11workerBodyDPv>
    80002c28:	fe840513          	addi	a0,s0,-24
    80002c2c:	ffffe097          	auipc	ra,0xffffe
    80002c30:	684080e7          	jalr	1668(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80002c34:	00003517          	auipc	a0,0x3
    80002c38:	6ec50513          	addi	a0,a0,1772 # 80006320 <CONSOLE_STATUS+0x310>
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	b44080e7          	jalr	-1212(ra) # 80001780 <_Z11printStringPKc>
    80002c44:	00c0006f          	j	80002c50 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002c48:	ffffe097          	auipc	ra,0xffffe
    80002c4c:	6dc080e7          	jalr	1756(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002c50:	00004797          	auipc	a5,0x4
    80002c54:	31b7c783          	lbu	a5,795(a5) # 80006f6b <_ZL9finishedA>
    80002c58:	fe0788e3          	beqz	a5,80002c48 <_Z18Threads_C_API_testv+0xb4>
    80002c5c:	00004797          	auipc	a5,0x4
    80002c60:	30e7c783          	lbu	a5,782(a5) # 80006f6a <_ZL9finishedB>
    80002c64:	fe0782e3          	beqz	a5,80002c48 <_Z18Threads_C_API_testv+0xb4>
    80002c68:	00004797          	auipc	a5,0x4
    80002c6c:	3017c783          	lbu	a5,769(a5) # 80006f69 <_ZL9finishedC>
    80002c70:	fc078ce3          	beqz	a5,80002c48 <_Z18Threads_C_API_testv+0xb4>
    80002c74:	00004797          	auipc	a5,0x4
    80002c78:	2f47c783          	lbu	a5,756(a5) # 80006f68 <_ZL9finishedD>
    80002c7c:	fc0786e3          	beqz	a5,80002c48 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002c80:	02813083          	ld	ra,40(sp)
    80002c84:	02013403          	ld	s0,32(sp)
    80002c88:	03010113          	addi	sp,sp,48
    80002c8c:	00008067          	ret

0000000080002c90 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002c90:	fe010113          	addi	sp,sp,-32
    80002c94:	00113c23          	sd	ra,24(sp)
    80002c98:	00813823          	sd	s0,16(sp)
    80002c9c:	00913423          	sd	s1,8(sp)
    80002ca0:	01213023          	sd	s2,0(sp)
    80002ca4:	02010413          	addi	s0,sp,32
    80002ca8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002cac:	00100793          	li	a5,1
    80002cb0:	02a7f863          	bgeu	a5,a0,80002ce0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002cb4:	00a00793          	li	a5,10
    80002cb8:	02f577b3          	remu	a5,a0,a5
    80002cbc:	02078e63          	beqz	a5,80002cf8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002cc0:	fff48513          	addi	a0,s1,-1
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	fcc080e7          	jalr	-52(ra) # 80002c90 <_ZL9fibonaccim>
    80002ccc:	00050913          	mv	s2,a0
    80002cd0:	ffe48513          	addi	a0,s1,-2
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	fbc080e7          	jalr	-68(ra) # 80002c90 <_ZL9fibonaccim>
    80002cdc:	00a90533          	add	a0,s2,a0
}
    80002ce0:	01813083          	ld	ra,24(sp)
    80002ce4:	01013403          	ld	s0,16(sp)
    80002ce8:	00813483          	ld	s1,8(sp)
    80002cec:	00013903          	ld	s2,0(sp)
    80002cf0:	02010113          	addi	sp,sp,32
    80002cf4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002cf8:	ffffe097          	auipc	ra,0xffffe
    80002cfc:	62c080e7          	jalr	1580(ra) # 80001324 <_Z15thread_dispatchv>
    80002d00:	fc1ff06f          	j	80002cc0 <_ZL9fibonaccim+0x30>

0000000080002d04 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002d04:	fe010113          	addi	sp,sp,-32
    80002d08:	00113c23          	sd	ra,24(sp)
    80002d0c:	00813823          	sd	s0,16(sp)
    80002d10:	00913423          	sd	s1,8(sp)
    80002d14:	01213023          	sd	s2,0(sp)
    80002d18:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002d1c:	00a00493          	li	s1,10
    80002d20:	0400006f          	j	80002d60 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d24:	00003517          	auipc	a0,0x3
    80002d28:	33c50513          	addi	a0,a0,828 # 80006060 <CONSOLE_STATUS+0x50>
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	a54080e7          	jalr	-1452(ra) # 80001780 <_Z11printStringPKc>
    80002d34:	00000613          	li	a2,0
    80002d38:	00a00593          	li	a1,10
    80002d3c:	00048513          	mv	a0,s1
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	bf0080e7          	jalr	-1040(ra) # 80001930 <_Z8printIntiii>
    80002d48:	00003517          	auipc	a0,0x3
    80002d4c:	2f850513          	addi	a0,a0,760 # 80006040 <CONSOLE_STATUS+0x30>
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	a30080e7          	jalr	-1488(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002d58:	0014849b          	addiw	s1,s1,1
    80002d5c:	0ff4f493          	andi	s1,s1,255
    80002d60:	00c00793          	li	a5,12
    80002d64:	fc97f0e3          	bgeu	a5,s1,80002d24 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002d68:	00003517          	auipc	a0,0x3
    80002d6c:	52050513          	addi	a0,a0,1312 # 80006288 <CONSOLE_STATUS+0x278>
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	a10080e7          	jalr	-1520(ra) # 80001780 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002d78:	00500313          	li	t1,5
    thread_dispatch();
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	5a8080e7          	jalr	1448(ra) # 80001324 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002d84:	01000513          	li	a0,16
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	f08080e7          	jalr	-248(ra) # 80002c90 <_ZL9fibonaccim>
    80002d90:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002d94:	00003517          	auipc	a0,0x3
    80002d98:	2e450513          	addi	a0,a0,740 # 80006078 <CONSOLE_STATUS+0x68>
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	9e4080e7          	jalr	-1564(ra) # 80001780 <_Z11printStringPKc>
    80002da4:	00000613          	li	a2,0
    80002da8:	00a00593          	li	a1,10
    80002dac:	0009051b          	sext.w	a0,s2
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	b80080e7          	jalr	-1152(ra) # 80001930 <_Z8printIntiii>
    80002db8:	00003517          	auipc	a0,0x3
    80002dbc:	28850513          	addi	a0,a0,648 # 80006040 <CONSOLE_STATUS+0x30>
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	9c0080e7          	jalr	-1600(ra) # 80001780 <_Z11printStringPKc>
    80002dc8:	0400006f          	j	80002e08 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002dcc:	00003517          	auipc	a0,0x3
    80002dd0:	29450513          	addi	a0,a0,660 # 80006060 <CONSOLE_STATUS+0x50>
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	9ac080e7          	jalr	-1620(ra) # 80001780 <_Z11printStringPKc>
    80002ddc:	00000613          	li	a2,0
    80002de0:	00a00593          	li	a1,10
    80002de4:	00048513          	mv	a0,s1
    80002de8:	fffff097          	auipc	ra,0xfffff
    80002dec:	b48080e7          	jalr	-1208(ra) # 80001930 <_Z8printIntiii>
    80002df0:	00003517          	auipc	a0,0x3
    80002df4:	25050513          	addi	a0,a0,592 # 80006040 <CONSOLE_STATUS+0x30>
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	988080e7          	jalr	-1656(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e00:	0014849b          	addiw	s1,s1,1
    80002e04:	0ff4f493          	andi	s1,s1,255
    80002e08:	00f00793          	li	a5,15
    80002e0c:	fc97f0e3          	bgeu	a5,s1,80002dcc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002e10:	00003517          	auipc	a0,0x3
    80002e14:	48850513          	addi	a0,a0,1160 # 80006298 <CONSOLE_STATUS+0x288>
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	968080e7          	jalr	-1688(ra) # 80001780 <_Z11printStringPKc>
    finishedD = true;
    80002e20:	00100793          	li	a5,1
    80002e24:	00004717          	auipc	a4,0x4
    80002e28:	14f70423          	sb	a5,328(a4) # 80006f6c <_ZL9finishedD>
    thread_dispatch();
    80002e2c:	ffffe097          	auipc	ra,0xffffe
    80002e30:	4f8080e7          	jalr	1272(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002e34:	01813083          	ld	ra,24(sp)
    80002e38:	01013403          	ld	s0,16(sp)
    80002e3c:	00813483          	ld	s1,8(sp)
    80002e40:	00013903          	ld	s2,0(sp)
    80002e44:	02010113          	addi	sp,sp,32
    80002e48:	00008067          	ret

0000000080002e4c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002e4c:	fe010113          	addi	sp,sp,-32
    80002e50:	00113c23          	sd	ra,24(sp)
    80002e54:	00813823          	sd	s0,16(sp)
    80002e58:	00913423          	sd	s1,8(sp)
    80002e5c:	01213023          	sd	s2,0(sp)
    80002e60:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002e64:	00000493          	li	s1,0
    80002e68:	0400006f          	j	80002ea8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002e6c:	00003517          	auipc	a0,0x3
    80002e70:	1c450513          	addi	a0,a0,452 # 80006030 <CONSOLE_STATUS+0x20>
    80002e74:	fffff097          	auipc	ra,0xfffff
    80002e78:	90c080e7          	jalr	-1780(ra) # 80001780 <_Z11printStringPKc>
    80002e7c:	00000613          	li	a2,0
    80002e80:	00a00593          	li	a1,10
    80002e84:	00048513          	mv	a0,s1
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	aa8080e7          	jalr	-1368(ra) # 80001930 <_Z8printIntiii>
    80002e90:	00003517          	auipc	a0,0x3
    80002e94:	1b050513          	addi	a0,a0,432 # 80006040 <CONSOLE_STATUS+0x30>
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	8e8080e7          	jalr	-1816(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002ea0:	0014849b          	addiw	s1,s1,1
    80002ea4:	0ff4f493          	andi	s1,s1,255
    80002ea8:	00200793          	li	a5,2
    80002eac:	fc97f0e3          	bgeu	a5,s1,80002e6c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002eb0:	00003517          	auipc	a0,0x3
    80002eb4:	3f850513          	addi	a0,a0,1016 # 800062a8 <CONSOLE_STATUS+0x298>
    80002eb8:	fffff097          	auipc	ra,0xfffff
    80002ebc:	8c8080e7          	jalr	-1848(ra) # 80001780 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002ec0:	00700313          	li	t1,7
    thread_dispatch();
    80002ec4:	ffffe097          	auipc	ra,0xffffe
    80002ec8:	460080e7          	jalr	1120(ra) # 80001324 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ecc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002ed0:	00003517          	auipc	a0,0x3
    80002ed4:	17850513          	addi	a0,a0,376 # 80006048 <CONSOLE_STATUS+0x38>
    80002ed8:	fffff097          	auipc	ra,0xfffff
    80002edc:	8a8080e7          	jalr	-1880(ra) # 80001780 <_Z11printStringPKc>
    80002ee0:	00000613          	li	a2,0
    80002ee4:	00a00593          	li	a1,10
    80002ee8:	0009051b          	sext.w	a0,s2
    80002eec:	fffff097          	auipc	ra,0xfffff
    80002ef0:	a44080e7          	jalr	-1468(ra) # 80001930 <_Z8printIntiii>
    80002ef4:	00003517          	auipc	a0,0x3
    80002ef8:	14c50513          	addi	a0,a0,332 # 80006040 <CONSOLE_STATUS+0x30>
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	884080e7          	jalr	-1916(ra) # 80001780 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002f04:	00c00513          	li	a0,12
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	d88080e7          	jalr	-632(ra) # 80002c90 <_ZL9fibonaccim>
    80002f10:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002f14:	00003517          	auipc	a0,0x3
    80002f18:	13c50513          	addi	a0,a0,316 # 80006050 <CONSOLE_STATUS+0x40>
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	864080e7          	jalr	-1948(ra) # 80001780 <_Z11printStringPKc>
    80002f24:	00000613          	li	a2,0
    80002f28:	00a00593          	li	a1,10
    80002f2c:	0009051b          	sext.w	a0,s2
    80002f30:	fffff097          	auipc	ra,0xfffff
    80002f34:	a00080e7          	jalr	-1536(ra) # 80001930 <_Z8printIntiii>
    80002f38:	00003517          	auipc	a0,0x3
    80002f3c:	10850513          	addi	a0,a0,264 # 80006040 <CONSOLE_STATUS+0x30>
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	840080e7          	jalr	-1984(ra) # 80001780 <_Z11printStringPKc>
    80002f48:	0400006f          	j	80002f88 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002f4c:	00003517          	auipc	a0,0x3
    80002f50:	0e450513          	addi	a0,a0,228 # 80006030 <CONSOLE_STATUS+0x20>
    80002f54:	fffff097          	auipc	ra,0xfffff
    80002f58:	82c080e7          	jalr	-2004(ra) # 80001780 <_Z11printStringPKc>
    80002f5c:	00000613          	li	a2,0
    80002f60:	00a00593          	li	a1,10
    80002f64:	00048513          	mv	a0,s1
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	9c8080e7          	jalr	-1592(ra) # 80001930 <_Z8printIntiii>
    80002f70:	00003517          	auipc	a0,0x3
    80002f74:	0d050513          	addi	a0,a0,208 # 80006040 <CONSOLE_STATUS+0x30>
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	808080e7          	jalr	-2040(ra) # 80001780 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002f80:	0014849b          	addiw	s1,s1,1
    80002f84:	0ff4f493          	andi	s1,s1,255
    80002f88:	00500793          	li	a5,5
    80002f8c:	fc97f0e3          	bgeu	a5,s1,80002f4c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002f90:	00003517          	auipc	a0,0x3
    80002f94:	32850513          	addi	a0,a0,808 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	7e8080e7          	jalr	2024(ra) # 80001780 <_Z11printStringPKc>
    finishedC = true;
    80002fa0:	00100793          	li	a5,1
    80002fa4:	00004717          	auipc	a4,0x4
    80002fa8:	fcf704a3          	sb	a5,-55(a4) # 80006f6d <_ZL9finishedC>
    thread_dispatch();
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	378080e7          	jalr	888(ra) # 80001324 <_Z15thread_dispatchv>
}
    80002fb4:	01813083          	ld	ra,24(sp)
    80002fb8:	01013403          	ld	s0,16(sp)
    80002fbc:	00813483          	ld	s1,8(sp)
    80002fc0:	00013903          	ld	s2,0(sp)
    80002fc4:	02010113          	addi	sp,sp,32
    80002fc8:	00008067          	ret

0000000080002fcc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	01213023          	sd	s2,0(sp)
    80002fe0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002fe4:	00000913          	li	s2,0
    80002fe8:	0400006f          	j	80003028 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80002fec:	ffffe097          	auipc	ra,0xffffe
    80002ff0:	338080e7          	jalr	824(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002ff4:	00148493          	addi	s1,s1,1
    80002ff8:	000027b7          	lui	a5,0x2
    80002ffc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003000:	0097ee63          	bltu	a5,s1,8000301c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003004:	00000713          	li	a4,0
    80003008:	000077b7          	lui	a5,0x7
    8000300c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003010:	fce7eee3          	bltu	a5,a4,80002fec <_ZL11workerBodyBPv+0x20>
    80003014:	00170713          	addi	a4,a4,1
    80003018:	ff1ff06f          	j	80003008 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000301c:	00a00793          	li	a5,10
    80003020:	04f90663          	beq	s2,a5,8000306c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003024:	00190913          	addi	s2,s2,1
    80003028:	00f00793          	li	a5,15
    8000302c:	0527e463          	bltu	a5,s2,80003074 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003030:	00003517          	auipc	a0,0x3
    80003034:	ff850513          	addi	a0,a0,-8 # 80006028 <CONSOLE_STATUS+0x18>
    80003038:	ffffe097          	auipc	ra,0xffffe
    8000303c:	748080e7          	jalr	1864(ra) # 80001780 <_Z11printStringPKc>
    80003040:	00000613          	li	a2,0
    80003044:	00a00593          	li	a1,10
    80003048:	0009051b          	sext.w	a0,s2
    8000304c:	fffff097          	auipc	ra,0xfffff
    80003050:	8e4080e7          	jalr	-1820(ra) # 80001930 <_Z8printIntiii>
    80003054:	00003517          	auipc	a0,0x3
    80003058:	fec50513          	addi	a0,a0,-20 # 80006040 <CONSOLE_STATUS+0x30>
    8000305c:	ffffe097          	auipc	ra,0xffffe
    80003060:	724080e7          	jalr	1828(ra) # 80001780 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003064:	00000493          	li	s1,0
    80003068:	f91ff06f          	j	80002ff8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000306c:	14102ff3          	csrr	t6,sepc
    80003070:	fb5ff06f          	j	80003024 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003074:	00003517          	auipc	a0,0x3
    80003078:	25450513          	addi	a0,a0,596 # 800062c8 <CONSOLE_STATUS+0x2b8>
    8000307c:	ffffe097          	auipc	ra,0xffffe
    80003080:	704080e7          	jalr	1796(ra) # 80001780 <_Z11printStringPKc>
    finishedB = true;
    80003084:	00100793          	li	a5,1
    80003088:	00004717          	auipc	a4,0x4
    8000308c:	eef70323          	sb	a5,-282(a4) # 80006f6e <_ZL9finishedB>
    thread_dispatch();
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	294080e7          	jalr	660(ra) # 80001324 <_Z15thread_dispatchv>
}
    80003098:	01813083          	ld	ra,24(sp)
    8000309c:	01013403          	ld	s0,16(sp)
    800030a0:	00813483          	ld	s1,8(sp)
    800030a4:	00013903          	ld	s2,0(sp)
    800030a8:	02010113          	addi	sp,sp,32
    800030ac:	00008067          	ret

00000000800030b0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800030b0:	fe010113          	addi	sp,sp,-32
    800030b4:	00113c23          	sd	ra,24(sp)
    800030b8:	00813823          	sd	s0,16(sp)
    800030bc:	00913423          	sd	s1,8(sp)
    800030c0:	01213023          	sd	s2,0(sp)
    800030c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800030c8:	00000913          	li	s2,0
    800030cc:	0380006f          	j	80003104 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800030d0:	ffffe097          	auipc	ra,0xffffe
    800030d4:	254080e7          	jalr	596(ra) # 80001324 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800030d8:	00148493          	addi	s1,s1,1
    800030dc:	000027b7          	lui	a5,0x2
    800030e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800030e4:	0097ee63          	bltu	a5,s1,80003100 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800030e8:	00000713          	li	a4,0
    800030ec:	000077b7          	lui	a5,0x7
    800030f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800030f4:	fce7eee3          	bltu	a5,a4,800030d0 <_ZL11workerBodyAPv+0x20>
    800030f8:	00170713          	addi	a4,a4,1
    800030fc:	ff1ff06f          	j	800030ec <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003100:	00190913          	addi	s2,s2,1
    80003104:	00900793          	li	a5,9
    80003108:	0527e063          	bltu	a5,s2,80003148 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000310c:	00003517          	auipc	a0,0x3
    80003110:	f1450513          	addi	a0,a0,-236 # 80006020 <CONSOLE_STATUS+0x10>
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	66c080e7          	jalr	1644(ra) # 80001780 <_Z11printStringPKc>
    8000311c:	00000613          	li	a2,0
    80003120:	00a00593          	li	a1,10
    80003124:	0009051b          	sext.w	a0,s2
    80003128:	fffff097          	auipc	ra,0xfffff
    8000312c:	808080e7          	jalr	-2040(ra) # 80001930 <_Z8printIntiii>
    80003130:	00003517          	auipc	a0,0x3
    80003134:	f1050513          	addi	a0,a0,-240 # 80006040 <CONSOLE_STATUS+0x30>
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	648080e7          	jalr	1608(ra) # 80001780 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003140:	00000493          	li	s1,0
    80003144:	f99ff06f          	j	800030dc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003148:	00003517          	auipc	a0,0x3
    8000314c:	17050513          	addi	a0,a0,368 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	630080e7          	jalr	1584(ra) # 80001780 <_Z11printStringPKc>
    finishedA = true;
    80003158:	00100793          	li	a5,1
    8000315c:	00004717          	auipc	a4,0x4
    80003160:	e0f709a3          	sb	a5,-493(a4) # 80006f6f <_ZL9finishedA>
}
    80003164:	01813083          	ld	ra,24(sp)
    80003168:	01013403          	ld	s0,16(sp)
    8000316c:	00813483          	ld	s1,8(sp)
    80003170:	00013903          	ld	s2,0(sp)
    80003174:	02010113          	addi	sp,sp,32
    80003178:	00008067          	ret

000000008000317c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000317c:	fd010113          	addi	sp,sp,-48
    80003180:	02113423          	sd	ra,40(sp)
    80003184:	02813023          	sd	s0,32(sp)
    80003188:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000318c:	00000613          	li	a2,0
    80003190:	00000597          	auipc	a1,0x0
    80003194:	f2058593          	addi	a1,a1,-224 # 800030b0 <_ZL11workerBodyAPv>
    80003198:	fd040513          	addi	a0,s0,-48
    8000319c:	ffffe097          	auipc	ra,0xffffe
    800031a0:	114080e7          	jalr	276(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800031a4:	00003517          	auipc	a0,0x3
    800031a8:	13450513          	addi	a0,a0,308 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800031ac:	ffffe097          	auipc	ra,0xffffe
    800031b0:	5d4080e7          	jalr	1492(ra) # 80001780 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800031b4:	00000613          	li	a2,0
    800031b8:	00000597          	auipc	a1,0x0
    800031bc:	e1458593          	addi	a1,a1,-492 # 80002fcc <_ZL11workerBodyBPv>
    800031c0:	fd840513          	addi	a0,s0,-40
    800031c4:	ffffe097          	auipc	ra,0xffffe
    800031c8:	0ec080e7          	jalr	236(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800031cc:	00003517          	auipc	a0,0x3
    800031d0:	12450513          	addi	a0,a0,292 # 800062f0 <CONSOLE_STATUS+0x2e0>
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	5ac080e7          	jalr	1452(ra) # 80001780 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800031dc:	00000613          	li	a2,0
    800031e0:	00000597          	auipc	a1,0x0
    800031e4:	c6c58593          	addi	a1,a1,-916 # 80002e4c <_ZL11workerBodyCPv>
    800031e8:	fe040513          	addi	a0,s0,-32
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	0c4080e7          	jalr	196(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800031f4:	00003517          	auipc	a0,0x3
    800031f8:	11450513          	addi	a0,a0,276 # 80006308 <CONSOLE_STATUS+0x2f8>
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	584080e7          	jalr	1412(ra) # 80001780 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003204:	00000613          	li	a2,0
    80003208:	00000597          	auipc	a1,0x0
    8000320c:	afc58593          	addi	a1,a1,-1284 # 80002d04 <_ZL11workerBodyDPv>
    80003210:	fe840513          	addi	a0,s0,-24
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	09c080e7          	jalr	156(ra) # 800012b0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000321c:	00003517          	auipc	a0,0x3
    80003220:	10450513          	addi	a0,a0,260 # 80006320 <CONSOLE_STATUS+0x310>
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	55c080e7          	jalr	1372(ra) # 80001780 <_Z11printStringPKc>
    8000322c:	00c0006f          	j	80003238 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003230:	ffffe097          	auipc	ra,0xffffe
    80003234:	0f4080e7          	jalr	244(ra) # 80001324 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003238:	00004797          	auipc	a5,0x4
    8000323c:	d377c783          	lbu	a5,-713(a5) # 80006f6f <_ZL9finishedA>
    80003240:	fe0788e3          	beqz	a5,80003230 <_Z16System_Mode_testv+0xb4>
    80003244:	00004797          	auipc	a5,0x4
    80003248:	d2a7c783          	lbu	a5,-726(a5) # 80006f6e <_ZL9finishedB>
    8000324c:	fe0782e3          	beqz	a5,80003230 <_Z16System_Mode_testv+0xb4>
    80003250:	00004797          	auipc	a5,0x4
    80003254:	d1d7c783          	lbu	a5,-739(a5) # 80006f6d <_ZL9finishedC>
    80003258:	fc078ce3          	beqz	a5,80003230 <_Z16System_Mode_testv+0xb4>
    8000325c:	00004797          	auipc	a5,0x4
    80003260:	d107c783          	lbu	a5,-752(a5) # 80006f6c <_ZL9finishedD>
    80003264:	fc0786e3          	beqz	a5,80003230 <_Z16System_Mode_testv+0xb4>
    }

}
    80003268:	02813083          	ld	ra,40(sp)
    8000326c:	02013403          	ld	s0,32(sp)
    80003270:	03010113          	addi	sp,sp,48
    80003274:	00008067          	ret

0000000080003278 <start>:
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00813423          	sd	s0,8(sp)
    80003280:	01010413          	addi	s0,sp,16
    80003284:	300027f3          	csrr	a5,mstatus
    80003288:	ffffe737          	lui	a4,0xffffe
    8000328c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff662f>
    80003290:	00e7f7b3          	and	a5,a5,a4
    80003294:	00001737          	lui	a4,0x1
    80003298:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000329c:	00e7e7b3          	or	a5,a5,a4
    800032a0:	30079073          	csrw	mstatus,a5
    800032a4:	00000797          	auipc	a5,0x0
    800032a8:	16078793          	addi	a5,a5,352 # 80003404 <system_main>
    800032ac:	34179073          	csrw	mepc,a5
    800032b0:	00000793          	li	a5,0
    800032b4:	18079073          	csrw	satp,a5
    800032b8:	000107b7          	lui	a5,0x10
    800032bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800032c0:	30279073          	csrw	medeleg,a5
    800032c4:	30379073          	csrw	mideleg,a5
    800032c8:	104027f3          	csrr	a5,sie
    800032cc:	2227e793          	ori	a5,a5,546
    800032d0:	10479073          	csrw	sie,a5
    800032d4:	fff00793          	li	a5,-1
    800032d8:	00a7d793          	srli	a5,a5,0xa
    800032dc:	3b079073          	csrw	pmpaddr0,a5
    800032e0:	00f00793          	li	a5,15
    800032e4:	3a079073          	csrw	pmpcfg0,a5
    800032e8:	f14027f3          	csrr	a5,mhartid
    800032ec:	0200c737          	lui	a4,0x200c
    800032f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800032f4:	0007869b          	sext.w	a3,a5
    800032f8:	00269713          	slli	a4,a3,0x2
    800032fc:	000f4637          	lui	a2,0xf4
    80003300:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003304:	00d70733          	add	a4,a4,a3
    80003308:	0037979b          	slliw	a5,a5,0x3
    8000330c:	020046b7          	lui	a3,0x2004
    80003310:	00d787b3          	add	a5,a5,a3
    80003314:	00c585b3          	add	a1,a1,a2
    80003318:	00371693          	slli	a3,a4,0x3
    8000331c:	00004717          	auipc	a4,0x4
    80003320:	c5470713          	addi	a4,a4,-940 # 80006f70 <timer_scratch>
    80003324:	00b7b023          	sd	a1,0(a5)
    80003328:	00d70733          	add	a4,a4,a3
    8000332c:	00f73c23          	sd	a5,24(a4)
    80003330:	02c73023          	sd	a2,32(a4)
    80003334:	34071073          	csrw	mscratch,a4
    80003338:	00000797          	auipc	a5,0x0
    8000333c:	6e878793          	addi	a5,a5,1768 # 80003a20 <timervec>
    80003340:	30579073          	csrw	mtvec,a5
    80003344:	300027f3          	csrr	a5,mstatus
    80003348:	0087e793          	ori	a5,a5,8
    8000334c:	30079073          	csrw	mstatus,a5
    80003350:	304027f3          	csrr	a5,mie
    80003354:	0807e793          	ori	a5,a5,128
    80003358:	30479073          	csrw	mie,a5
    8000335c:	f14027f3          	csrr	a5,mhartid
    80003360:	0007879b          	sext.w	a5,a5
    80003364:	00078213          	mv	tp,a5
    80003368:	30200073          	mret
    8000336c:	00813403          	ld	s0,8(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <timerinit>:
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00813423          	sd	s0,8(sp)
    80003380:	01010413          	addi	s0,sp,16
    80003384:	f14027f3          	csrr	a5,mhartid
    80003388:	0200c737          	lui	a4,0x200c
    8000338c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003390:	0007869b          	sext.w	a3,a5
    80003394:	00269713          	slli	a4,a3,0x2
    80003398:	000f4637          	lui	a2,0xf4
    8000339c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800033a0:	00d70733          	add	a4,a4,a3
    800033a4:	0037979b          	slliw	a5,a5,0x3
    800033a8:	020046b7          	lui	a3,0x2004
    800033ac:	00d787b3          	add	a5,a5,a3
    800033b0:	00c585b3          	add	a1,a1,a2
    800033b4:	00371693          	slli	a3,a4,0x3
    800033b8:	00004717          	auipc	a4,0x4
    800033bc:	bb870713          	addi	a4,a4,-1096 # 80006f70 <timer_scratch>
    800033c0:	00b7b023          	sd	a1,0(a5)
    800033c4:	00d70733          	add	a4,a4,a3
    800033c8:	00f73c23          	sd	a5,24(a4)
    800033cc:	02c73023          	sd	a2,32(a4)
    800033d0:	34071073          	csrw	mscratch,a4
    800033d4:	00000797          	auipc	a5,0x0
    800033d8:	64c78793          	addi	a5,a5,1612 # 80003a20 <timervec>
    800033dc:	30579073          	csrw	mtvec,a5
    800033e0:	300027f3          	csrr	a5,mstatus
    800033e4:	0087e793          	ori	a5,a5,8
    800033e8:	30079073          	csrw	mstatus,a5
    800033ec:	304027f3          	csrr	a5,mie
    800033f0:	0807e793          	ori	a5,a5,128
    800033f4:	30479073          	csrw	mie,a5
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <system_main>:
    80003404:	fe010113          	addi	sp,sp,-32
    80003408:	00813823          	sd	s0,16(sp)
    8000340c:	00913423          	sd	s1,8(sp)
    80003410:	00113c23          	sd	ra,24(sp)
    80003414:	02010413          	addi	s0,sp,32
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	0c4080e7          	jalr	196(ra) # 800034dc <cpuid>
    80003420:	00004497          	auipc	s1,0x4
    80003424:	ae048493          	addi	s1,s1,-1312 # 80006f00 <started>
    80003428:	02050263          	beqz	a0,8000344c <system_main+0x48>
    8000342c:	0004a783          	lw	a5,0(s1)
    80003430:	0007879b          	sext.w	a5,a5
    80003434:	fe078ce3          	beqz	a5,8000342c <system_main+0x28>
    80003438:	0ff0000f          	fence
    8000343c:	00003517          	auipc	a0,0x3
    80003440:	f2c50513          	addi	a0,a0,-212 # 80006368 <CONSOLE_STATUS+0x358>
    80003444:	00001097          	auipc	ra,0x1
    80003448:	a78080e7          	jalr	-1416(ra) # 80003ebc <panic>
    8000344c:	00001097          	auipc	ra,0x1
    80003450:	9cc080e7          	jalr	-1588(ra) # 80003e18 <consoleinit>
    80003454:	00001097          	auipc	ra,0x1
    80003458:	158080e7          	jalr	344(ra) # 800045ac <printfinit>
    8000345c:	00003517          	auipc	a0,0x3
    80003460:	be450513          	addi	a0,a0,-1052 # 80006040 <CONSOLE_STATUS+0x30>
    80003464:	00001097          	auipc	ra,0x1
    80003468:	ab4080e7          	jalr	-1356(ra) # 80003f18 <__printf>
    8000346c:	00003517          	auipc	a0,0x3
    80003470:	ecc50513          	addi	a0,a0,-308 # 80006338 <CONSOLE_STATUS+0x328>
    80003474:	00001097          	auipc	ra,0x1
    80003478:	aa4080e7          	jalr	-1372(ra) # 80003f18 <__printf>
    8000347c:	00003517          	auipc	a0,0x3
    80003480:	bc450513          	addi	a0,a0,-1084 # 80006040 <CONSOLE_STATUS+0x30>
    80003484:	00001097          	auipc	ra,0x1
    80003488:	a94080e7          	jalr	-1388(ra) # 80003f18 <__printf>
    8000348c:	00001097          	auipc	ra,0x1
    80003490:	4ac080e7          	jalr	1196(ra) # 80004938 <kinit>
    80003494:	00000097          	auipc	ra,0x0
    80003498:	148080e7          	jalr	328(ra) # 800035dc <trapinit>
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	16c080e7          	jalr	364(ra) # 80003608 <trapinithart>
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	5bc080e7          	jalr	1468(ra) # 80003a60 <plicinit>
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	5dc080e7          	jalr	1500(ra) # 80003a88 <plicinithart>
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	078080e7          	jalr	120(ra) # 8000352c <userinit>
    800034bc:	0ff0000f          	fence
    800034c0:	00100793          	li	a5,1
    800034c4:	00003517          	auipc	a0,0x3
    800034c8:	e8c50513          	addi	a0,a0,-372 # 80006350 <CONSOLE_STATUS+0x340>
    800034cc:	00f4a023          	sw	a5,0(s1)
    800034d0:	00001097          	auipc	ra,0x1
    800034d4:	a48080e7          	jalr	-1464(ra) # 80003f18 <__printf>
    800034d8:	0000006f          	j	800034d8 <system_main+0xd4>

00000000800034dc <cpuid>:
    800034dc:	ff010113          	addi	sp,sp,-16
    800034e0:	00813423          	sd	s0,8(sp)
    800034e4:	01010413          	addi	s0,sp,16
    800034e8:	00020513          	mv	a0,tp
    800034ec:	00813403          	ld	s0,8(sp)
    800034f0:	0005051b          	sext.w	a0,a0
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret

00000000800034fc <mycpu>:
    800034fc:	ff010113          	addi	sp,sp,-16
    80003500:	00813423          	sd	s0,8(sp)
    80003504:	01010413          	addi	s0,sp,16
    80003508:	00020793          	mv	a5,tp
    8000350c:	00813403          	ld	s0,8(sp)
    80003510:	0007879b          	sext.w	a5,a5
    80003514:	00779793          	slli	a5,a5,0x7
    80003518:	00005517          	auipc	a0,0x5
    8000351c:	a8850513          	addi	a0,a0,-1400 # 80007fa0 <cpus>
    80003520:	00f50533          	add	a0,a0,a5
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00008067          	ret

000000008000352c <userinit>:
    8000352c:	ff010113          	addi	sp,sp,-16
    80003530:	00813423          	sd	s0,8(sp)
    80003534:	01010413          	addi	s0,sp,16
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	01010113          	addi	sp,sp,16
    80003540:	ffffe317          	auipc	t1,0xffffe
    80003544:	63c30067          	jr	1596(t1) # 80001b7c <main>

0000000080003548 <either_copyout>:
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00813023          	sd	s0,0(sp)
    80003550:	00113423          	sd	ra,8(sp)
    80003554:	01010413          	addi	s0,sp,16
    80003558:	02051663          	bnez	a0,80003584 <either_copyout+0x3c>
    8000355c:	00058513          	mv	a0,a1
    80003560:	00060593          	mv	a1,a2
    80003564:	0006861b          	sext.w	a2,a3
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	c5c080e7          	jalr	-932(ra) # 800051c4 <__memmove>
    80003570:	00813083          	ld	ra,8(sp)
    80003574:	00013403          	ld	s0,0(sp)
    80003578:	00000513          	li	a0,0
    8000357c:	01010113          	addi	sp,sp,16
    80003580:	00008067          	ret
    80003584:	00003517          	auipc	a0,0x3
    80003588:	e0c50513          	addi	a0,a0,-500 # 80006390 <CONSOLE_STATUS+0x380>
    8000358c:	00001097          	auipc	ra,0x1
    80003590:	930080e7          	jalr	-1744(ra) # 80003ebc <panic>

0000000080003594 <either_copyin>:
    80003594:	ff010113          	addi	sp,sp,-16
    80003598:	00813023          	sd	s0,0(sp)
    8000359c:	00113423          	sd	ra,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    800035a4:	02059463          	bnez	a1,800035cc <either_copyin+0x38>
    800035a8:	00060593          	mv	a1,a2
    800035ac:	0006861b          	sext.w	a2,a3
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	c14080e7          	jalr	-1004(ra) # 800051c4 <__memmove>
    800035b8:	00813083          	ld	ra,8(sp)
    800035bc:	00013403          	ld	s0,0(sp)
    800035c0:	00000513          	li	a0,0
    800035c4:	01010113          	addi	sp,sp,16
    800035c8:	00008067          	ret
    800035cc:	00003517          	auipc	a0,0x3
    800035d0:	dec50513          	addi	a0,a0,-532 # 800063b8 <CONSOLE_STATUS+0x3a8>
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	8e8080e7          	jalr	-1816(ra) # 80003ebc <panic>

00000000800035dc <trapinit>:
    800035dc:	ff010113          	addi	sp,sp,-16
    800035e0:	00813423          	sd	s0,8(sp)
    800035e4:	01010413          	addi	s0,sp,16
    800035e8:	00813403          	ld	s0,8(sp)
    800035ec:	00003597          	auipc	a1,0x3
    800035f0:	df458593          	addi	a1,a1,-524 # 800063e0 <CONSOLE_STATUS+0x3d0>
    800035f4:	00005517          	auipc	a0,0x5
    800035f8:	a2c50513          	addi	a0,a0,-1492 # 80008020 <tickslock>
    800035fc:	01010113          	addi	sp,sp,16
    80003600:	00001317          	auipc	t1,0x1
    80003604:	5c830067          	jr	1480(t1) # 80004bc8 <initlock>

0000000080003608 <trapinithart>:
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00000797          	auipc	a5,0x0
    80003618:	2fc78793          	addi	a5,a5,764 # 80003910 <kernelvec>
    8000361c:	10579073          	csrw	stvec,a5
    80003620:	00813403          	ld	s0,8(sp)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret

000000008000362c <usertrap>:
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00813423          	sd	s0,8(sp)
    80003634:	01010413          	addi	s0,sp,16
    80003638:	00813403          	ld	s0,8(sp)
    8000363c:	01010113          	addi	sp,sp,16
    80003640:	00008067          	ret

0000000080003644 <usertrapret>:
    80003644:	ff010113          	addi	sp,sp,-16
    80003648:	00813423          	sd	s0,8(sp)
    8000364c:	01010413          	addi	s0,sp,16
    80003650:	00813403          	ld	s0,8(sp)
    80003654:	01010113          	addi	sp,sp,16
    80003658:	00008067          	ret

000000008000365c <kerneltrap>:
    8000365c:	fe010113          	addi	sp,sp,-32
    80003660:	00813823          	sd	s0,16(sp)
    80003664:	00113c23          	sd	ra,24(sp)
    80003668:	00913423          	sd	s1,8(sp)
    8000366c:	02010413          	addi	s0,sp,32
    80003670:	142025f3          	csrr	a1,scause
    80003674:	100027f3          	csrr	a5,sstatus
    80003678:	0027f793          	andi	a5,a5,2
    8000367c:	10079c63          	bnez	a5,80003794 <kerneltrap+0x138>
    80003680:	142027f3          	csrr	a5,scause
    80003684:	0207ce63          	bltz	a5,800036c0 <kerneltrap+0x64>
    80003688:	00003517          	auipc	a0,0x3
    8000368c:	da050513          	addi	a0,a0,-608 # 80006428 <CONSOLE_STATUS+0x418>
    80003690:	00001097          	auipc	ra,0x1
    80003694:	888080e7          	jalr	-1912(ra) # 80003f18 <__printf>
    80003698:	141025f3          	csrr	a1,sepc
    8000369c:	14302673          	csrr	a2,stval
    800036a0:	00003517          	auipc	a0,0x3
    800036a4:	d9850513          	addi	a0,a0,-616 # 80006438 <CONSOLE_STATUS+0x428>
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	870080e7          	jalr	-1936(ra) # 80003f18 <__printf>
    800036b0:	00003517          	auipc	a0,0x3
    800036b4:	da050513          	addi	a0,a0,-608 # 80006450 <CONSOLE_STATUS+0x440>
    800036b8:	00001097          	auipc	ra,0x1
    800036bc:	804080e7          	jalr	-2044(ra) # 80003ebc <panic>
    800036c0:	0ff7f713          	andi	a4,a5,255
    800036c4:	00900693          	li	a3,9
    800036c8:	04d70063          	beq	a4,a3,80003708 <kerneltrap+0xac>
    800036cc:	fff00713          	li	a4,-1
    800036d0:	03f71713          	slli	a4,a4,0x3f
    800036d4:	00170713          	addi	a4,a4,1
    800036d8:	fae798e3          	bne	a5,a4,80003688 <kerneltrap+0x2c>
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	e00080e7          	jalr	-512(ra) # 800034dc <cpuid>
    800036e4:	06050663          	beqz	a0,80003750 <kerneltrap+0xf4>
    800036e8:	144027f3          	csrr	a5,sip
    800036ec:	ffd7f793          	andi	a5,a5,-3
    800036f0:	14479073          	csrw	sip,a5
    800036f4:	01813083          	ld	ra,24(sp)
    800036f8:	01013403          	ld	s0,16(sp)
    800036fc:	00813483          	ld	s1,8(sp)
    80003700:	02010113          	addi	sp,sp,32
    80003704:	00008067          	ret
    80003708:	00000097          	auipc	ra,0x0
    8000370c:	3cc080e7          	jalr	972(ra) # 80003ad4 <plic_claim>
    80003710:	00a00793          	li	a5,10
    80003714:	00050493          	mv	s1,a0
    80003718:	06f50863          	beq	a0,a5,80003788 <kerneltrap+0x12c>
    8000371c:	fc050ce3          	beqz	a0,800036f4 <kerneltrap+0x98>
    80003720:	00050593          	mv	a1,a0
    80003724:	00003517          	auipc	a0,0x3
    80003728:	ce450513          	addi	a0,a0,-796 # 80006408 <CONSOLE_STATUS+0x3f8>
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	7ec080e7          	jalr	2028(ra) # 80003f18 <__printf>
    80003734:	01013403          	ld	s0,16(sp)
    80003738:	01813083          	ld	ra,24(sp)
    8000373c:	00048513          	mv	a0,s1
    80003740:	00813483          	ld	s1,8(sp)
    80003744:	02010113          	addi	sp,sp,32
    80003748:	00000317          	auipc	t1,0x0
    8000374c:	3c430067          	jr	964(t1) # 80003b0c <plic_complete>
    80003750:	00005517          	auipc	a0,0x5
    80003754:	8d050513          	addi	a0,a0,-1840 # 80008020 <tickslock>
    80003758:	00001097          	auipc	ra,0x1
    8000375c:	494080e7          	jalr	1172(ra) # 80004bec <acquire>
    80003760:	00003717          	auipc	a4,0x3
    80003764:	7a470713          	addi	a4,a4,1956 # 80006f04 <ticks>
    80003768:	00072783          	lw	a5,0(a4)
    8000376c:	00005517          	auipc	a0,0x5
    80003770:	8b450513          	addi	a0,a0,-1868 # 80008020 <tickslock>
    80003774:	0017879b          	addiw	a5,a5,1
    80003778:	00f72023          	sw	a5,0(a4)
    8000377c:	00001097          	auipc	ra,0x1
    80003780:	53c080e7          	jalr	1340(ra) # 80004cb8 <release>
    80003784:	f65ff06f          	j	800036e8 <kerneltrap+0x8c>
    80003788:	00001097          	auipc	ra,0x1
    8000378c:	098080e7          	jalr	152(ra) # 80004820 <uartintr>
    80003790:	fa5ff06f          	j	80003734 <kerneltrap+0xd8>
    80003794:	00003517          	auipc	a0,0x3
    80003798:	c5450513          	addi	a0,a0,-940 # 800063e8 <CONSOLE_STATUS+0x3d8>
    8000379c:	00000097          	auipc	ra,0x0
    800037a0:	720080e7          	jalr	1824(ra) # 80003ebc <panic>

00000000800037a4 <clockintr>:
    800037a4:	fe010113          	addi	sp,sp,-32
    800037a8:	00813823          	sd	s0,16(sp)
    800037ac:	00913423          	sd	s1,8(sp)
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	02010413          	addi	s0,sp,32
    800037b8:	00005497          	auipc	s1,0x5
    800037bc:	86848493          	addi	s1,s1,-1944 # 80008020 <tickslock>
    800037c0:	00048513          	mv	a0,s1
    800037c4:	00001097          	auipc	ra,0x1
    800037c8:	428080e7          	jalr	1064(ra) # 80004bec <acquire>
    800037cc:	00003717          	auipc	a4,0x3
    800037d0:	73870713          	addi	a4,a4,1848 # 80006f04 <ticks>
    800037d4:	00072783          	lw	a5,0(a4)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	01813083          	ld	ra,24(sp)
    800037e0:	00048513          	mv	a0,s1
    800037e4:	0017879b          	addiw	a5,a5,1
    800037e8:	00813483          	ld	s1,8(sp)
    800037ec:	00f72023          	sw	a5,0(a4)
    800037f0:	02010113          	addi	sp,sp,32
    800037f4:	00001317          	auipc	t1,0x1
    800037f8:	4c430067          	jr	1220(t1) # 80004cb8 <release>

00000000800037fc <devintr>:
    800037fc:	142027f3          	csrr	a5,scause
    80003800:	00000513          	li	a0,0
    80003804:	0007c463          	bltz	a5,8000380c <devintr+0x10>
    80003808:	00008067          	ret
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00113c23          	sd	ra,24(sp)
    80003818:	00913423          	sd	s1,8(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	0ff7f713          	andi	a4,a5,255
    80003824:	00900693          	li	a3,9
    80003828:	04d70c63          	beq	a4,a3,80003880 <devintr+0x84>
    8000382c:	fff00713          	li	a4,-1
    80003830:	03f71713          	slli	a4,a4,0x3f
    80003834:	00170713          	addi	a4,a4,1
    80003838:	00e78c63          	beq	a5,a4,80003850 <devintr+0x54>
    8000383c:	01813083          	ld	ra,24(sp)
    80003840:	01013403          	ld	s0,16(sp)
    80003844:	00813483          	ld	s1,8(sp)
    80003848:	02010113          	addi	sp,sp,32
    8000384c:	00008067          	ret
    80003850:	00000097          	auipc	ra,0x0
    80003854:	c8c080e7          	jalr	-884(ra) # 800034dc <cpuid>
    80003858:	06050663          	beqz	a0,800038c4 <devintr+0xc8>
    8000385c:	144027f3          	csrr	a5,sip
    80003860:	ffd7f793          	andi	a5,a5,-3
    80003864:	14479073          	csrw	sip,a5
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	00200513          	li	a0,2
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret
    80003880:	00000097          	auipc	ra,0x0
    80003884:	254080e7          	jalr	596(ra) # 80003ad4 <plic_claim>
    80003888:	00a00793          	li	a5,10
    8000388c:	00050493          	mv	s1,a0
    80003890:	06f50663          	beq	a0,a5,800038fc <devintr+0x100>
    80003894:	00100513          	li	a0,1
    80003898:	fa0482e3          	beqz	s1,8000383c <devintr+0x40>
    8000389c:	00048593          	mv	a1,s1
    800038a0:	00003517          	auipc	a0,0x3
    800038a4:	b6850513          	addi	a0,a0,-1176 # 80006408 <CONSOLE_STATUS+0x3f8>
    800038a8:	00000097          	auipc	ra,0x0
    800038ac:	670080e7          	jalr	1648(ra) # 80003f18 <__printf>
    800038b0:	00048513          	mv	a0,s1
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	258080e7          	jalr	600(ra) # 80003b0c <plic_complete>
    800038bc:	00100513          	li	a0,1
    800038c0:	f7dff06f          	j	8000383c <devintr+0x40>
    800038c4:	00004517          	auipc	a0,0x4
    800038c8:	75c50513          	addi	a0,a0,1884 # 80008020 <tickslock>
    800038cc:	00001097          	auipc	ra,0x1
    800038d0:	320080e7          	jalr	800(ra) # 80004bec <acquire>
    800038d4:	00003717          	auipc	a4,0x3
    800038d8:	63070713          	addi	a4,a4,1584 # 80006f04 <ticks>
    800038dc:	00072783          	lw	a5,0(a4)
    800038e0:	00004517          	auipc	a0,0x4
    800038e4:	74050513          	addi	a0,a0,1856 # 80008020 <tickslock>
    800038e8:	0017879b          	addiw	a5,a5,1
    800038ec:	00f72023          	sw	a5,0(a4)
    800038f0:	00001097          	auipc	ra,0x1
    800038f4:	3c8080e7          	jalr	968(ra) # 80004cb8 <release>
    800038f8:	f65ff06f          	j	8000385c <devintr+0x60>
    800038fc:	00001097          	auipc	ra,0x1
    80003900:	f24080e7          	jalr	-220(ra) # 80004820 <uartintr>
    80003904:	fadff06f          	j	800038b0 <devintr+0xb4>
	...

0000000080003910 <kernelvec>:
    80003910:	f0010113          	addi	sp,sp,-256
    80003914:	00113023          	sd	ra,0(sp)
    80003918:	00213423          	sd	sp,8(sp)
    8000391c:	00313823          	sd	gp,16(sp)
    80003920:	00413c23          	sd	tp,24(sp)
    80003924:	02513023          	sd	t0,32(sp)
    80003928:	02613423          	sd	t1,40(sp)
    8000392c:	02713823          	sd	t2,48(sp)
    80003930:	02813c23          	sd	s0,56(sp)
    80003934:	04913023          	sd	s1,64(sp)
    80003938:	04a13423          	sd	a0,72(sp)
    8000393c:	04b13823          	sd	a1,80(sp)
    80003940:	04c13c23          	sd	a2,88(sp)
    80003944:	06d13023          	sd	a3,96(sp)
    80003948:	06e13423          	sd	a4,104(sp)
    8000394c:	06f13823          	sd	a5,112(sp)
    80003950:	07013c23          	sd	a6,120(sp)
    80003954:	09113023          	sd	a7,128(sp)
    80003958:	09213423          	sd	s2,136(sp)
    8000395c:	09313823          	sd	s3,144(sp)
    80003960:	09413c23          	sd	s4,152(sp)
    80003964:	0b513023          	sd	s5,160(sp)
    80003968:	0b613423          	sd	s6,168(sp)
    8000396c:	0b713823          	sd	s7,176(sp)
    80003970:	0b813c23          	sd	s8,184(sp)
    80003974:	0d913023          	sd	s9,192(sp)
    80003978:	0da13423          	sd	s10,200(sp)
    8000397c:	0db13823          	sd	s11,208(sp)
    80003980:	0dc13c23          	sd	t3,216(sp)
    80003984:	0fd13023          	sd	t4,224(sp)
    80003988:	0fe13423          	sd	t5,232(sp)
    8000398c:	0ff13823          	sd	t6,240(sp)
    80003990:	ccdff0ef          	jal	ra,8000365c <kerneltrap>
    80003994:	00013083          	ld	ra,0(sp)
    80003998:	00813103          	ld	sp,8(sp)
    8000399c:	01013183          	ld	gp,16(sp)
    800039a0:	02013283          	ld	t0,32(sp)
    800039a4:	02813303          	ld	t1,40(sp)
    800039a8:	03013383          	ld	t2,48(sp)
    800039ac:	03813403          	ld	s0,56(sp)
    800039b0:	04013483          	ld	s1,64(sp)
    800039b4:	04813503          	ld	a0,72(sp)
    800039b8:	05013583          	ld	a1,80(sp)
    800039bc:	05813603          	ld	a2,88(sp)
    800039c0:	06013683          	ld	a3,96(sp)
    800039c4:	06813703          	ld	a4,104(sp)
    800039c8:	07013783          	ld	a5,112(sp)
    800039cc:	07813803          	ld	a6,120(sp)
    800039d0:	08013883          	ld	a7,128(sp)
    800039d4:	08813903          	ld	s2,136(sp)
    800039d8:	09013983          	ld	s3,144(sp)
    800039dc:	09813a03          	ld	s4,152(sp)
    800039e0:	0a013a83          	ld	s5,160(sp)
    800039e4:	0a813b03          	ld	s6,168(sp)
    800039e8:	0b013b83          	ld	s7,176(sp)
    800039ec:	0b813c03          	ld	s8,184(sp)
    800039f0:	0c013c83          	ld	s9,192(sp)
    800039f4:	0c813d03          	ld	s10,200(sp)
    800039f8:	0d013d83          	ld	s11,208(sp)
    800039fc:	0d813e03          	ld	t3,216(sp)
    80003a00:	0e013e83          	ld	t4,224(sp)
    80003a04:	0e813f03          	ld	t5,232(sp)
    80003a08:	0f013f83          	ld	t6,240(sp)
    80003a0c:	10010113          	addi	sp,sp,256
    80003a10:	10200073          	sret
    80003a14:	00000013          	nop
    80003a18:	00000013          	nop
    80003a1c:	00000013          	nop

0000000080003a20 <timervec>:
    80003a20:	34051573          	csrrw	a0,mscratch,a0
    80003a24:	00b53023          	sd	a1,0(a0)
    80003a28:	00c53423          	sd	a2,8(a0)
    80003a2c:	00d53823          	sd	a3,16(a0)
    80003a30:	01853583          	ld	a1,24(a0)
    80003a34:	02053603          	ld	a2,32(a0)
    80003a38:	0005b683          	ld	a3,0(a1)
    80003a3c:	00c686b3          	add	a3,a3,a2
    80003a40:	00d5b023          	sd	a3,0(a1)
    80003a44:	00200593          	li	a1,2
    80003a48:	14459073          	csrw	sip,a1
    80003a4c:	01053683          	ld	a3,16(a0)
    80003a50:	00853603          	ld	a2,8(a0)
    80003a54:	00053583          	ld	a1,0(a0)
    80003a58:	34051573          	csrrw	a0,mscratch,a0
    80003a5c:	30200073          	mret

0000000080003a60 <plicinit>:
    80003a60:	ff010113          	addi	sp,sp,-16
    80003a64:	00813423          	sd	s0,8(sp)
    80003a68:	01010413          	addi	s0,sp,16
    80003a6c:	00813403          	ld	s0,8(sp)
    80003a70:	0c0007b7          	lui	a5,0xc000
    80003a74:	00100713          	li	a4,1
    80003a78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003a7c:	00e7a223          	sw	a4,4(a5)
    80003a80:	01010113          	addi	sp,sp,16
    80003a84:	00008067          	ret

0000000080003a88 <plicinithart>:
    80003a88:	ff010113          	addi	sp,sp,-16
    80003a8c:	00813023          	sd	s0,0(sp)
    80003a90:	00113423          	sd	ra,8(sp)
    80003a94:	01010413          	addi	s0,sp,16
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	a44080e7          	jalr	-1468(ra) # 800034dc <cpuid>
    80003aa0:	0085171b          	slliw	a4,a0,0x8
    80003aa4:	0c0027b7          	lui	a5,0xc002
    80003aa8:	00e787b3          	add	a5,a5,a4
    80003aac:	40200713          	li	a4,1026
    80003ab0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003ab4:	00813083          	ld	ra,8(sp)
    80003ab8:	00013403          	ld	s0,0(sp)
    80003abc:	00d5151b          	slliw	a0,a0,0xd
    80003ac0:	0c2017b7          	lui	a5,0xc201
    80003ac4:	00a78533          	add	a0,a5,a0
    80003ac8:	00052023          	sw	zero,0(a0)
    80003acc:	01010113          	addi	sp,sp,16
    80003ad0:	00008067          	ret

0000000080003ad4 <plic_claim>:
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00813023          	sd	s0,0(sp)
    80003adc:	00113423          	sd	ra,8(sp)
    80003ae0:	01010413          	addi	s0,sp,16
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	9f8080e7          	jalr	-1544(ra) # 800034dc <cpuid>
    80003aec:	00813083          	ld	ra,8(sp)
    80003af0:	00013403          	ld	s0,0(sp)
    80003af4:	00d5151b          	slliw	a0,a0,0xd
    80003af8:	0c2017b7          	lui	a5,0xc201
    80003afc:	00a78533          	add	a0,a5,a0
    80003b00:	00452503          	lw	a0,4(a0)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <plic_complete>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00813823          	sd	s0,16(sp)
    80003b14:	00913423          	sd	s1,8(sp)
    80003b18:	00113c23          	sd	ra,24(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00050493          	mv	s1,a0
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	9b8080e7          	jalr	-1608(ra) # 800034dc <cpuid>
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	00d5179b          	slliw	a5,a0,0xd
    80003b38:	0c201737          	lui	a4,0xc201
    80003b3c:	00f707b3          	add	a5,a4,a5
    80003b40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003b44:	00813483          	ld	s1,8(sp)
    80003b48:	02010113          	addi	sp,sp,32
    80003b4c:	00008067          	ret

0000000080003b50 <consolewrite>:
    80003b50:	fb010113          	addi	sp,sp,-80
    80003b54:	04813023          	sd	s0,64(sp)
    80003b58:	04113423          	sd	ra,72(sp)
    80003b5c:	02913c23          	sd	s1,56(sp)
    80003b60:	03213823          	sd	s2,48(sp)
    80003b64:	03313423          	sd	s3,40(sp)
    80003b68:	03413023          	sd	s4,32(sp)
    80003b6c:	01513c23          	sd	s5,24(sp)
    80003b70:	05010413          	addi	s0,sp,80
    80003b74:	06c05c63          	blez	a2,80003bec <consolewrite+0x9c>
    80003b78:	00060993          	mv	s3,a2
    80003b7c:	00050a13          	mv	s4,a0
    80003b80:	00058493          	mv	s1,a1
    80003b84:	00000913          	li	s2,0
    80003b88:	fff00a93          	li	s5,-1
    80003b8c:	01c0006f          	j	80003ba8 <consolewrite+0x58>
    80003b90:	fbf44503          	lbu	a0,-65(s0)
    80003b94:	0019091b          	addiw	s2,s2,1
    80003b98:	00148493          	addi	s1,s1,1
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	a9c080e7          	jalr	-1380(ra) # 80004638 <uartputc>
    80003ba4:	03298063          	beq	s3,s2,80003bc4 <consolewrite+0x74>
    80003ba8:	00048613          	mv	a2,s1
    80003bac:	00100693          	li	a3,1
    80003bb0:	000a0593          	mv	a1,s4
    80003bb4:	fbf40513          	addi	a0,s0,-65
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	9dc080e7          	jalr	-1572(ra) # 80003594 <either_copyin>
    80003bc0:	fd5518e3          	bne	a0,s5,80003b90 <consolewrite+0x40>
    80003bc4:	04813083          	ld	ra,72(sp)
    80003bc8:	04013403          	ld	s0,64(sp)
    80003bcc:	03813483          	ld	s1,56(sp)
    80003bd0:	02813983          	ld	s3,40(sp)
    80003bd4:	02013a03          	ld	s4,32(sp)
    80003bd8:	01813a83          	ld	s5,24(sp)
    80003bdc:	00090513          	mv	a0,s2
    80003be0:	03013903          	ld	s2,48(sp)
    80003be4:	05010113          	addi	sp,sp,80
    80003be8:	00008067          	ret
    80003bec:	00000913          	li	s2,0
    80003bf0:	fd5ff06f          	j	80003bc4 <consolewrite+0x74>

0000000080003bf4 <consoleread>:
    80003bf4:	f9010113          	addi	sp,sp,-112
    80003bf8:	06813023          	sd	s0,96(sp)
    80003bfc:	04913c23          	sd	s1,88(sp)
    80003c00:	05213823          	sd	s2,80(sp)
    80003c04:	05313423          	sd	s3,72(sp)
    80003c08:	05413023          	sd	s4,64(sp)
    80003c0c:	03513c23          	sd	s5,56(sp)
    80003c10:	03613823          	sd	s6,48(sp)
    80003c14:	03713423          	sd	s7,40(sp)
    80003c18:	03813023          	sd	s8,32(sp)
    80003c1c:	06113423          	sd	ra,104(sp)
    80003c20:	01913c23          	sd	s9,24(sp)
    80003c24:	07010413          	addi	s0,sp,112
    80003c28:	00060b93          	mv	s7,a2
    80003c2c:	00050913          	mv	s2,a0
    80003c30:	00058c13          	mv	s8,a1
    80003c34:	00060b1b          	sext.w	s6,a2
    80003c38:	00004497          	auipc	s1,0x4
    80003c3c:	41048493          	addi	s1,s1,1040 # 80008048 <cons>
    80003c40:	00400993          	li	s3,4
    80003c44:	fff00a13          	li	s4,-1
    80003c48:	00a00a93          	li	s5,10
    80003c4c:	05705e63          	blez	s7,80003ca8 <consoleread+0xb4>
    80003c50:	09c4a703          	lw	a4,156(s1)
    80003c54:	0984a783          	lw	a5,152(s1)
    80003c58:	0007071b          	sext.w	a4,a4
    80003c5c:	08e78463          	beq	a5,a4,80003ce4 <consoleread+0xf0>
    80003c60:	07f7f713          	andi	a4,a5,127
    80003c64:	00e48733          	add	a4,s1,a4
    80003c68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003c6c:	0017869b          	addiw	a3,a5,1
    80003c70:	08d4ac23          	sw	a3,152(s1)
    80003c74:	00070c9b          	sext.w	s9,a4
    80003c78:	0b370663          	beq	a4,s3,80003d24 <consoleread+0x130>
    80003c7c:	00100693          	li	a3,1
    80003c80:	f9f40613          	addi	a2,s0,-97
    80003c84:	000c0593          	mv	a1,s8
    80003c88:	00090513          	mv	a0,s2
    80003c8c:	f8e40fa3          	sb	a4,-97(s0)
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	8b8080e7          	jalr	-1864(ra) # 80003548 <either_copyout>
    80003c98:	01450863          	beq	a0,s4,80003ca8 <consoleread+0xb4>
    80003c9c:	001c0c13          	addi	s8,s8,1
    80003ca0:	fffb8b9b          	addiw	s7,s7,-1
    80003ca4:	fb5c94e3          	bne	s9,s5,80003c4c <consoleread+0x58>
    80003ca8:	000b851b          	sext.w	a0,s7
    80003cac:	06813083          	ld	ra,104(sp)
    80003cb0:	06013403          	ld	s0,96(sp)
    80003cb4:	05813483          	ld	s1,88(sp)
    80003cb8:	05013903          	ld	s2,80(sp)
    80003cbc:	04813983          	ld	s3,72(sp)
    80003cc0:	04013a03          	ld	s4,64(sp)
    80003cc4:	03813a83          	ld	s5,56(sp)
    80003cc8:	02813b83          	ld	s7,40(sp)
    80003ccc:	02013c03          	ld	s8,32(sp)
    80003cd0:	01813c83          	ld	s9,24(sp)
    80003cd4:	40ab053b          	subw	a0,s6,a0
    80003cd8:	03013b03          	ld	s6,48(sp)
    80003cdc:	07010113          	addi	sp,sp,112
    80003ce0:	00008067          	ret
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	1d8080e7          	jalr	472(ra) # 80004ebc <push_on>
    80003cec:	0984a703          	lw	a4,152(s1)
    80003cf0:	09c4a783          	lw	a5,156(s1)
    80003cf4:	0007879b          	sext.w	a5,a5
    80003cf8:	fef70ce3          	beq	a4,a5,80003cf0 <consoleread+0xfc>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	234080e7          	jalr	564(ra) # 80004f30 <pop_on>
    80003d04:	0984a783          	lw	a5,152(s1)
    80003d08:	07f7f713          	andi	a4,a5,127
    80003d0c:	00e48733          	add	a4,s1,a4
    80003d10:	01874703          	lbu	a4,24(a4)
    80003d14:	0017869b          	addiw	a3,a5,1
    80003d18:	08d4ac23          	sw	a3,152(s1)
    80003d1c:	00070c9b          	sext.w	s9,a4
    80003d20:	f5371ee3          	bne	a4,s3,80003c7c <consoleread+0x88>
    80003d24:	000b851b          	sext.w	a0,s7
    80003d28:	f96bf2e3          	bgeu	s7,s6,80003cac <consoleread+0xb8>
    80003d2c:	08f4ac23          	sw	a5,152(s1)
    80003d30:	f7dff06f          	j	80003cac <consoleread+0xb8>

0000000080003d34 <consputc>:
    80003d34:	10000793          	li	a5,256
    80003d38:	00f50663          	beq	a0,a5,80003d44 <consputc+0x10>
    80003d3c:	00001317          	auipc	t1,0x1
    80003d40:	9f430067          	jr	-1548(t1) # 80004730 <uartputc_sync>
    80003d44:	ff010113          	addi	sp,sp,-16
    80003d48:	00113423          	sd	ra,8(sp)
    80003d4c:	00813023          	sd	s0,0(sp)
    80003d50:	01010413          	addi	s0,sp,16
    80003d54:	00800513          	li	a0,8
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	9d8080e7          	jalr	-1576(ra) # 80004730 <uartputc_sync>
    80003d60:	02000513          	li	a0,32
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	9cc080e7          	jalr	-1588(ra) # 80004730 <uartputc_sync>
    80003d6c:	00013403          	ld	s0,0(sp)
    80003d70:	00813083          	ld	ra,8(sp)
    80003d74:	00800513          	li	a0,8
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00001317          	auipc	t1,0x1
    80003d80:	9b430067          	jr	-1612(t1) # 80004730 <uartputc_sync>

0000000080003d84 <consoleintr>:
    80003d84:	fe010113          	addi	sp,sp,-32
    80003d88:	00813823          	sd	s0,16(sp)
    80003d8c:	00913423          	sd	s1,8(sp)
    80003d90:	01213023          	sd	s2,0(sp)
    80003d94:	00113c23          	sd	ra,24(sp)
    80003d98:	02010413          	addi	s0,sp,32
    80003d9c:	00004917          	auipc	s2,0x4
    80003da0:	2ac90913          	addi	s2,s2,684 # 80008048 <cons>
    80003da4:	00050493          	mv	s1,a0
    80003da8:	00090513          	mv	a0,s2
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	e40080e7          	jalr	-448(ra) # 80004bec <acquire>
    80003db4:	02048c63          	beqz	s1,80003dec <consoleintr+0x68>
    80003db8:	0a092783          	lw	a5,160(s2)
    80003dbc:	09892703          	lw	a4,152(s2)
    80003dc0:	07f00693          	li	a3,127
    80003dc4:	40e7873b          	subw	a4,a5,a4
    80003dc8:	02e6e263          	bltu	a3,a4,80003dec <consoleintr+0x68>
    80003dcc:	00d00713          	li	a4,13
    80003dd0:	04e48063          	beq	s1,a4,80003e10 <consoleintr+0x8c>
    80003dd4:	07f7f713          	andi	a4,a5,127
    80003dd8:	00e90733          	add	a4,s2,a4
    80003ddc:	0017879b          	addiw	a5,a5,1
    80003de0:	0af92023          	sw	a5,160(s2)
    80003de4:	00970c23          	sb	s1,24(a4)
    80003de8:	08f92e23          	sw	a5,156(s2)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	01813083          	ld	ra,24(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	00013903          	ld	s2,0(sp)
    80003dfc:	00004517          	auipc	a0,0x4
    80003e00:	24c50513          	addi	a0,a0,588 # 80008048 <cons>
    80003e04:	02010113          	addi	sp,sp,32
    80003e08:	00001317          	auipc	t1,0x1
    80003e0c:	eb030067          	jr	-336(t1) # 80004cb8 <release>
    80003e10:	00a00493          	li	s1,10
    80003e14:	fc1ff06f          	j	80003dd4 <consoleintr+0x50>

0000000080003e18 <consoleinit>:
    80003e18:	fe010113          	addi	sp,sp,-32
    80003e1c:	00113c23          	sd	ra,24(sp)
    80003e20:	00813823          	sd	s0,16(sp)
    80003e24:	00913423          	sd	s1,8(sp)
    80003e28:	02010413          	addi	s0,sp,32
    80003e2c:	00004497          	auipc	s1,0x4
    80003e30:	21c48493          	addi	s1,s1,540 # 80008048 <cons>
    80003e34:	00048513          	mv	a0,s1
    80003e38:	00002597          	auipc	a1,0x2
    80003e3c:	62858593          	addi	a1,a1,1576 # 80006460 <CONSOLE_STATUS+0x450>
    80003e40:	00001097          	auipc	ra,0x1
    80003e44:	d88080e7          	jalr	-632(ra) # 80004bc8 <initlock>
    80003e48:	00000097          	auipc	ra,0x0
    80003e4c:	7ac080e7          	jalr	1964(ra) # 800045f4 <uartinit>
    80003e50:	01813083          	ld	ra,24(sp)
    80003e54:	01013403          	ld	s0,16(sp)
    80003e58:	00000797          	auipc	a5,0x0
    80003e5c:	d9c78793          	addi	a5,a5,-612 # 80003bf4 <consoleread>
    80003e60:	0af4bc23          	sd	a5,184(s1)
    80003e64:	00000797          	auipc	a5,0x0
    80003e68:	cec78793          	addi	a5,a5,-788 # 80003b50 <consolewrite>
    80003e6c:	0cf4b023          	sd	a5,192(s1)
    80003e70:	00813483          	ld	s1,8(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret

0000000080003e7c <console_read>:
    80003e7c:	ff010113          	addi	sp,sp,-16
    80003e80:	00813423          	sd	s0,8(sp)
    80003e84:	01010413          	addi	s0,sp,16
    80003e88:	00813403          	ld	s0,8(sp)
    80003e8c:	00004317          	auipc	t1,0x4
    80003e90:	27433303          	ld	t1,628(t1) # 80008100 <devsw+0x10>
    80003e94:	01010113          	addi	sp,sp,16
    80003e98:	00030067          	jr	t1

0000000080003e9c <console_write>:
    80003e9c:	ff010113          	addi	sp,sp,-16
    80003ea0:	00813423          	sd	s0,8(sp)
    80003ea4:	01010413          	addi	s0,sp,16
    80003ea8:	00813403          	ld	s0,8(sp)
    80003eac:	00004317          	auipc	t1,0x4
    80003eb0:	25c33303          	ld	t1,604(t1) # 80008108 <devsw+0x18>
    80003eb4:	01010113          	addi	sp,sp,16
    80003eb8:	00030067          	jr	t1

0000000080003ebc <panic>:
    80003ebc:	fe010113          	addi	sp,sp,-32
    80003ec0:	00113c23          	sd	ra,24(sp)
    80003ec4:	00813823          	sd	s0,16(sp)
    80003ec8:	00913423          	sd	s1,8(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    80003ed0:	00050493          	mv	s1,a0
    80003ed4:	00002517          	auipc	a0,0x2
    80003ed8:	59450513          	addi	a0,a0,1428 # 80006468 <CONSOLE_STATUS+0x458>
    80003edc:	00004797          	auipc	a5,0x4
    80003ee0:	2c07a623          	sw	zero,716(a5) # 800081a8 <pr+0x18>
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	034080e7          	jalr	52(ra) # 80003f18 <__printf>
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	00000097          	auipc	ra,0x0
    80003ef4:	028080e7          	jalr	40(ra) # 80003f18 <__printf>
    80003ef8:	00002517          	auipc	a0,0x2
    80003efc:	14850513          	addi	a0,a0,328 # 80006040 <CONSOLE_STATUS+0x30>
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	018080e7          	jalr	24(ra) # 80003f18 <__printf>
    80003f08:	00100793          	li	a5,1
    80003f0c:	00003717          	auipc	a4,0x3
    80003f10:	fef72e23          	sw	a5,-4(a4) # 80006f08 <panicked>
    80003f14:	0000006f          	j	80003f14 <panic+0x58>

0000000080003f18 <__printf>:
    80003f18:	f3010113          	addi	sp,sp,-208
    80003f1c:	08813023          	sd	s0,128(sp)
    80003f20:	07313423          	sd	s3,104(sp)
    80003f24:	09010413          	addi	s0,sp,144
    80003f28:	05813023          	sd	s8,64(sp)
    80003f2c:	08113423          	sd	ra,136(sp)
    80003f30:	06913c23          	sd	s1,120(sp)
    80003f34:	07213823          	sd	s2,112(sp)
    80003f38:	07413023          	sd	s4,96(sp)
    80003f3c:	05513c23          	sd	s5,88(sp)
    80003f40:	05613823          	sd	s6,80(sp)
    80003f44:	05713423          	sd	s7,72(sp)
    80003f48:	03913c23          	sd	s9,56(sp)
    80003f4c:	03a13823          	sd	s10,48(sp)
    80003f50:	03b13423          	sd	s11,40(sp)
    80003f54:	00004317          	auipc	t1,0x4
    80003f58:	23c30313          	addi	t1,t1,572 # 80008190 <pr>
    80003f5c:	01832c03          	lw	s8,24(t1)
    80003f60:	00b43423          	sd	a1,8(s0)
    80003f64:	00c43823          	sd	a2,16(s0)
    80003f68:	00d43c23          	sd	a3,24(s0)
    80003f6c:	02e43023          	sd	a4,32(s0)
    80003f70:	02f43423          	sd	a5,40(s0)
    80003f74:	03043823          	sd	a6,48(s0)
    80003f78:	03143c23          	sd	a7,56(s0)
    80003f7c:	00050993          	mv	s3,a0
    80003f80:	4a0c1663          	bnez	s8,8000442c <__printf+0x514>
    80003f84:	60098c63          	beqz	s3,8000459c <__printf+0x684>
    80003f88:	0009c503          	lbu	a0,0(s3)
    80003f8c:	00840793          	addi	a5,s0,8
    80003f90:	f6f43c23          	sd	a5,-136(s0)
    80003f94:	00000493          	li	s1,0
    80003f98:	22050063          	beqz	a0,800041b8 <__printf+0x2a0>
    80003f9c:	00002a37          	lui	s4,0x2
    80003fa0:	00018ab7          	lui	s5,0x18
    80003fa4:	000f4b37          	lui	s6,0xf4
    80003fa8:	00989bb7          	lui	s7,0x989
    80003fac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003fb0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003fb4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003fb8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003fbc:	00148c9b          	addiw	s9,s1,1
    80003fc0:	02500793          	li	a5,37
    80003fc4:	01998933          	add	s2,s3,s9
    80003fc8:	38f51263          	bne	a0,a5,8000434c <__printf+0x434>
    80003fcc:	00094783          	lbu	a5,0(s2)
    80003fd0:	00078c9b          	sext.w	s9,a5
    80003fd4:	1e078263          	beqz	a5,800041b8 <__printf+0x2a0>
    80003fd8:	0024849b          	addiw	s1,s1,2
    80003fdc:	07000713          	li	a4,112
    80003fe0:	00998933          	add	s2,s3,s1
    80003fe4:	38e78a63          	beq	a5,a4,80004378 <__printf+0x460>
    80003fe8:	20f76863          	bltu	a4,a5,800041f8 <__printf+0x2e0>
    80003fec:	42a78863          	beq	a5,a0,8000441c <__printf+0x504>
    80003ff0:	06400713          	li	a4,100
    80003ff4:	40e79663          	bne	a5,a4,80004400 <__printf+0x4e8>
    80003ff8:	f7843783          	ld	a5,-136(s0)
    80003ffc:	0007a603          	lw	a2,0(a5)
    80004000:	00878793          	addi	a5,a5,8
    80004004:	f6f43c23          	sd	a5,-136(s0)
    80004008:	42064a63          	bltz	a2,8000443c <__printf+0x524>
    8000400c:	00a00713          	li	a4,10
    80004010:	02e677bb          	remuw	a5,a2,a4
    80004014:	00002d97          	auipc	s11,0x2
    80004018:	47cd8d93          	addi	s11,s11,1148 # 80006490 <digits>
    8000401c:	00900593          	li	a1,9
    80004020:	0006051b          	sext.w	a0,a2
    80004024:	00000c93          	li	s9,0
    80004028:	02079793          	slli	a5,a5,0x20
    8000402c:	0207d793          	srli	a5,a5,0x20
    80004030:	00fd87b3          	add	a5,s11,a5
    80004034:	0007c783          	lbu	a5,0(a5)
    80004038:	02e656bb          	divuw	a3,a2,a4
    8000403c:	f8f40023          	sb	a5,-128(s0)
    80004040:	14c5d863          	bge	a1,a2,80004190 <__printf+0x278>
    80004044:	06300593          	li	a1,99
    80004048:	00100c93          	li	s9,1
    8000404c:	02e6f7bb          	remuw	a5,a3,a4
    80004050:	02079793          	slli	a5,a5,0x20
    80004054:	0207d793          	srli	a5,a5,0x20
    80004058:	00fd87b3          	add	a5,s11,a5
    8000405c:	0007c783          	lbu	a5,0(a5)
    80004060:	02e6d73b          	divuw	a4,a3,a4
    80004064:	f8f400a3          	sb	a5,-127(s0)
    80004068:	12a5f463          	bgeu	a1,a0,80004190 <__printf+0x278>
    8000406c:	00a00693          	li	a3,10
    80004070:	00900593          	li	a1,9
    80004074:	02d777bb          	remuw	a5,a4,a3
    80004078:	02079793          	slli	a5,a5,0x20
    8000407c:	0207d793          	srli	a5,a5,0x20
    80004080:	00fd87b3          	add	a5,s11,a5
    80004084:	0007c503          	lbu	a0,0(a5)
    80004088:	02d757bb          	divuw	a5,a4,a3
    8000408c:	f8a40123          	sb	a0,-126(s0)
    80004090:	48e5f263          	bgeu	a1,a4,80004514 <__printf+0x5fc>
    80004094:	06300513          	li	a0,99
    80004098:	02d7f5bb          	remuw	a1,a5,a3
    8000409c:	02059593          	slli	a1,a1,0x20
    800040a0:	0205d593          	srli	a1,a1,0x20
    800040a4:	00bd85b3          	add	a1,s11,a1
    800040a8:	0005c583          	lbu	a1,0(a1)
    800040ac:	02d7d7bb          	divuw	a5,a5,a3
    800040b0:	f8b401a3          	sb	a1,-125(s0)
    800040b4:	48e57263          	bgeu	a0,a4,80004538 <__printf+0x620>
    800040b8:	3e700513          	li	a0,999
    800040bc:	02d7f5bb          	remuw	a1,a5,a3
    800040c0:	02059593          	slli	a1,a1,0x20
    800040c4:	0205d593          	srli	a1,a1,0x20
    800040c8:	00bd85b3          	add	a1,s11,a1
    800040cc:	0005c583          	lbu	a1,0(a1)
    800040d0:	02d7d7bb          	divuw	a5,a5,a3
    800040d4:	f8b40223          	sb	a1,-124(s0)
    800040d8:	46e57663          	bgeu	a0,a4,80004544 <__printf+0x62c>
    800040dc:	02d7f5bb          	remuw	a1,a5,a3
    800040e0:	02059593          	slli	a1,a1,0x20
    800040e4:	0205d593          	srli	a1,a1,0x20
    800040e8:	00bd85b3          	add	a1,s11,a1
    800040ec:	0005c583          	lbu	a1,0(a1)
    800040f0:	02d7d7bb          	divuw	a5,a5,a3
    800040f4:	f8b402a3          	sb	a1,-123(s0)
    800040f8:	46ea7863          	bgeu	s4,a4,80004568 <__printf+0x650>
    800040fc:	02d7f5bb          	remuw	a1,a5,a3
    80004100:	02059593          	slli	a1,a1,0x20
    80004104:	0205d593          	srli	a1,a1,0x20
    80004108:	00bd85b3          	add	a1,s11,a1
    8000410c:	0005c583          	lbu	a1,0(a1)
    80004110:	02d7d7bb          	divuw	a5,a5,a3
    80004114:	f8b40323          	sb	a1,-122(s0)
    80004118:	3eeaf863          	bgeu	s5,a4,80004508 <__printf+0x5f0>
    8000411c:	02d7f5bb          	remuw	a1,a5,a3
    80004120:	02059593          	slli	a1,a1,0x20
    80004124:	0205d593          	srli	a1,a1,0x20
    80004128:	00bd85b3          	add	a1,s11,a1
    8000412c:	0005c583          	lbu	a1,0(a1)
    80004130:	02d7d7bb          	divuw	a5,a5,a3
    80004134:	f8b403a3          	sb	a1,-121(s0)
    80004138:	42eb7e63          	bgeu	s6,a4,80004574 <__printf+0x65c>
    8000413c:	02d7f5bb          	remuw	a1,a5,a3
    80004140:	02059593          	slli	a1,a1,0x20
    80004144:	0205d593          	srli	a1,a1,0x20
    80004148:	00bd85b3          	add	a1,s11,a1
    8000414c:	0005c583          	lbu	a1,0(a1)
    80004150:	02d7d7bb          	divuw	a5,a5,a3
    80004154:	f8b40423          	sb	a1,-120(s0)
    80004158:	42ebfc63          	bgeu	s7,a4,80004590 <__printf+0x678>
    8000415c:	02079793          	slli	a5,a5,0x20
    80004160:	0207d793          	srli	a5,a5,0x20
    80004164:	00fd8db3          	add	s11,s11,a5
    80004168:	000dc703          	lbu	a4,0(s11)
    8000416c:	00a00793          	li	a5,10
    80004170:	00900c93          	li	s9,9
    80004174:	f8e404a3          	sb	a4,-119(s0)
    80004178:	00065c63          	bgez	a2,80004190 <__printf+0x278>
    8000417c:	f9040713          	addi	a4,s0,-112
    80004180:	00f70733          	add	a4,a4,a5
    80004184:	02d00693          	li	a3,45
    80004188:	fed70823          	sb	a3,-16(a4)
    8000418c:	00078c93          	mv	s9,a5
    80004190:	f8040793          	addi	a5,s0,-128
    80004194:	01978cb3          	add	s9,a5,s9
    80004198:	f7f40d13          	addi	s10,s0,-129
    8000419c:	000cc503          	lbu	a0,0(s9)
    800041a0:	fffc8c93          	addi	s9,s9,-1
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	b90080e7          	jalr	-1136(ra) # 80003d34 <consputc>
    800041ac:	ffac98e3          	bne	s9,s10,8000419c <__printf+0x284>
    800041b0:	00094503          	lbu	a0,0(s2)
    800041b4:	e00514e3          	bnez	a0,80003fbc <__printf+0xa4>
    800041b8:	1a0c1663          	bnez	s8,80004364 <__printf+0x44c>
    800041bc:	08813083          	ld	ra,136(sp)
    800041c0:	08013403          	ld	s0,128(sp)
    800041c4:	07813483          	ld	s1,120(sp)
    800041c8:	07013903          	ld	s2,112(sp)
    800041cc:	06813983          	ld	s3,104(sp)
    800041d0:	06013a03          	ld	s4,96(sp)
    800041d4:	05813a83          	ld	s5,88(sp)
    800041d8:	05013b03          	ld	s6,80(sp)
    800041dc:	04813b83          	ld	s7,72(sp)
    800041e0:	04013c03          	ld	s8,64(sp)
    800041e4:	03813c83          	ld	s9,56(sp)
    800041e8:	03013d03          	ld	s10,48(sp)
    800041ec:	02813d83          	ld	s11,40(sp)
    800041f0:	0d010113          	addi	sp,sp,208
    800041f4:	00008067          	ret
    800041f8:	07300713          	li	a4,115
    800041fc:	1ce78a63          	beq	a5,a4,800043d0 <__printf+0x4b8>
    80004200:	07800713          	li	a4,120
    80004204:	1ee79e63          	bne	a5,a4,80004400 <__printf+0x4e8>
    80004208:	f7843783          	ld	a5,-136(s0)
    8000420c:	0007a703          	lw	a4,0(a5)
    80004210:	00878793          	addi	a5,a5,8
    80004214:	f6f43c23          	sd	a5,-136(s0)
    80004218:	28074263          	bltz	a4,8000449c <__printf+0x584>
    8000421c:	00002d97          	auipc	s11,0x2
    80004220:	274d8d93          	addi	s11,s11,628 # 80006490 <digits>
    80004224:	00f77793          	andi	a5,a4,15
    80004228:	00fd87b3          	add	a5,s11,a5
    8000422c:	0007c683          	lbu	a3,0(a5)
    80004230:	00f00613          	li	a2,15
    80004234:	0007079b          	sext.w	a5,a4
    80004238:	f8d40023          	sb	a3,-128(s0)
    8000423c:	0047559b          	srliw	a1,a4,0x4
    80004240:	0047569b          	srliw	a3,a4,0x4
    80004244:	00000c93          	li	s9,0
    80004248:	0ee65063          	bge	a2,a4,80004328 <__printf+0x410>
    8000424c:	00f6f693          	andi	a3,a3,15
    80004250:	00dd86b3          	add	a3,s11,a3
    80004254:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004258:	0087d79b          	srliw	a5,a5,0x8
    8000425c:	00100c93          	li	s9,1
    80004260:	f8d400a3          	sb	a3,-127(s0)
    80004264:	0cb67263          	bgeu	a2,a1,80004328 <__printf+0x410>
    80004268:	00f7f693          	andi	a3,a5,15
    8000426c:	00dd86b3          	add	a3,s11,a3
    80004270:	0006c583          	lbu	a1,0(a3)
    80004274:	00f00613          	li	a2,15
    80004278:	0047d69b          	srliw	a3,a5,0x4
    8000427c:	f8b40123          	sb	a1,-126(s0)
    80004280:	0047d593          	srli	a1,a5,0x4
    80004284:	28f67e63          	bgeu	a2,a5,80004520 <__printf+0x608>
    80004288:	00f6f693          	andi	a3,a3,15
    8000428c:	00dd86b3          	add	a3,s11,a3
    80004290:	0006c503          	lbu	a0,0(a3)
    80004294:	0087d813          	srli	a6,a5,0x8
    80004298:	0087d69b          	srliw	a3,a5,0x8
    8000429c:	f8a401a3          	sb	a0,-125(s0)
    800042a0:	28b67663          	bgeu	a2,a1,8000452c <__printf+0x614>
    800042a4:	00f6f693          	andi	a3,a3,15
    800042a8:	00dd86b3          	add	a3,s11,a3
    800042ac:	0006c583          	lbu	a1,0(a3)
    800042b0:	00c7d513          	srli	a0,a5,0xc
    800042b4:	00c7d69b          	srliw	a3,a5,0xc
    800042b8:	f8b40223          	sb	a1,-124(s0)
    800042bc:	29067a63          	bgeu	a2,a6,80004550 <__printf+0x638>
    800042c0:	00f6f693          	andi	a3,a3,15
    800042c4:	00dd86b3          	add	a3,s11,a3
    800042c8:	0006c583          	lbu	a1,0(a3)
    800042cc:	0107d813          	srli	a6,a5,0x10
    800042d0:	0107d69b          	srliw	a3,a5,0x10
    800042d4:	f8b402a3          	sb	a1,-123(s0)
    800042d8:	28a67263          	bgeu	a2,a0,8000455c <__printf+0x644>
    800042dc:	00f6f693          	andi	a3,a3,15
    800042e0:	00dd86b3          	add	a3,s11,a3
    800042e4:	0006c683          	lbu	a3,0(a3)
    800042e8:	0147d79b          	srliw	a5,a5,0x14
    800042ec:	f8d40323          	sb	a3,-122(s0)
    800042f0:	21067663          	bgeu	a2,a6,800044fc <__printf+0x5e4>
    800042f4:	02079793          	slli	a5,a5,0x20
    800042f8:	0207d793          	srli	a5,a5,0x20
    800042fc:	00fd8db3          	add	s11,s11,a5
    80004300:	000dc683          	lbu	a3,0(s11)
    80004304:	00800793          	li	a5,8
    80004308:	00700c93          	li	s9,7
    8000430c:	f8d403a3          	sb	a3,-121(s0)
    80004310:	00075c63          	bgez	a4,80004328 <__printf+0x410>
    80004314:	f9040713          	addi	a4,s0,-112
    80004318:	00f70733          	add	a4,a4,a5
    8000431c:	02d00693          	li	a3,45
    80004320:	fed70823          	sb	a3,-16(a4)
    80004324:	00078c93          	mv	s9,a5
    80004328:	f8040793          	addi	a5,s0,-128
    8000432c:	01978cb3          	add	s9,a5,s9
    80004330:	f7f40d13          	addi	s10,s0,-129
    80004334:	000cc503          	lbu	a0,0(s9)
    80004338:	fffc8c93          	addi	s9,s9,-1
    8000433c:	00000097          	auipc	ra,0x0
    80004340:	9f8080e7          	jalr	-1544(ra) # 80003d34 <consputc>
    80004344:	ff9d18e3          	bne	s10,s9,80004334 <__printf+0x41c>
    80004348:	0100006f          	j	80004358 <__printf+0x440>
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	9e8080e7          	jalr	-1560(ra) # 80003d34 <consputc>
    80004354:	000c8493          	mv	s1,s9
    80004358:	00094503          	lbu	a0,0(s2)
    8000435c:	c60510e3          	bnez	a0,80003fbc <__printf+0xa4>
    80004360:	e40c0ee3          	beqz	s8,800041bc <__printf+0x2a4>
    80004364:	00004517          	auipc	a0,0x4
    80004368:	e2c50513          	addi	a0,a0,-468 # 80008190 <pr>
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	94c080e7          	jalr	-1716(ra) # 80004cb8 <release>
    80004374:	e49ff06f          	j	800041bc <__printf+0x2a4>
    80004378:	f7843783          	ld	a5,-136(s0)
    8000437c:	03000513          	li	a0,48
    80004380:	01000d13          	li	s10,16
    80004384:	00878713          	addi	a4,a5,8
    80004388:	0007bc83          	ld	s9,0(a5)
    8000438c:	f6e43c23          	sd	a4,-136(s0)
    80004390:	00000097          	auipc	ra,0x0
    80004394:	9a4080e7          	jalr	-1628(ra) # 80003d34 <consputc>
    80004398:	07800513          	li	a0,120
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	998080e7          	jalr	-1640(ra) # 80003d34 <consputc>
    800043a4:	00002d97          	auipc	s11,0x2
    800043a8:	0ecd8d93          	addi	s11,s11,236 # 80006490 <digits>
    800043ac:	03ccd793          	srli	a5,s9,0x3c
    800043b0:	00fd87b3          	add	a5,s11,a5
    800043b4:	0007c503          	lbu	a0,0(a5)
    800043b8:	fffd0d1b          	addiw	s10,s10,-1
    800043bc:	004c9c93          	slli	s9,s9,0x4
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	974080e7          	jalr	-1676(ra) # 80003d34 <consputc>
    800043c8:	fe0d12e3          	bnez	s10,800043ac <__printf+0x494>
    800043cc:	f8dff06f          	j	80004358 <__printf+0x440>
    800043d0:	f7843783          	ld	a5,-136(s0)
    800043d4:	0007bc83          	ld	s9,0(a5)
    800043d8:	00878793          	addi	a5,a5,8
    800043dc:	f6f43c23          	sd	a5,-136(s0)
    800043e0:	000c9a63          	bnez	s9,800043f4 <__printf+0x4dc>
    800043e4:	1080006f          	j	800044ec <__printf+0x5d4>
    800043e8:	001c8c93          	addi	s9,s9,1
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	948080e7          	jalr	-1720(ra) # 80003d34 <consputc>
    800043f4:	000cc503          	lbu	a0,0(s9)
    800043f8:	fe0518e3          	bnez	a0,800043e8 <__printf+0x4d0>
    800043fc:	f5dff06f          	j	80004358 <__printf+0x440>
    80004400:	02500513          	li	a0,37
    80004404:	00000097          	auipc	ra,0x0
    80004408:	930080e7          	jalr	-1744(ra) # 80003d34 <consputc>
    8000440c:	000c8513          	mv	a0,s9
    80004410:	00000097          	auipc	ra,0x0
    80004414:	924080e7          	jalr	-1756(ra) # 80003d34 <consputc>
    80004418:	f41ff06f          	j	80004358 <__printf+0x440>
    8000441c:	02500513          	li	a0,37
    80004420:	00000097          	auipc	ra,0x0
    80004424:	914080e7          	jalr	-1772(ra) # 80003d34 <consputc>
    80004428:	f31ff06f          	j	80004358 <__printf+0x440>
    8000442c:	00030513          	mv	a0,t1
    80004430:	00000097          	auipc	ra,0x0
    80004434:	7bc080e7          	jalr	1980(ra) # 80004bec <acquire>
    80004438:	b4dff06f          	j	80003f84 <__printf+0x6c>
    8000443c:	40c0053b          	negw	a0,a2
    80004440:	00a00713          	li	a4,10
    80004444:	02e576bb          	remuw	a3,a0,a4
    80004448:	00002d97          	auipc	s11,0x2
    8000444c:	048d8d93          	addi	s11,s11,72 # 80006490 <digits>
    80004450:	ff700593          	li	a1,-9
    80004454:	02069693          	slli	a3,a3,0x20
    80004458:	0206d693          	srli	a3,a3,0x20
    8000445c:	00dd86b3          	add	a3,s11,a3
    80004460:	0006c683          	lbu	a3,0(a3)
    80004464:	02e557bb          	divuw	a5,a0,a4
    80004468:	f8d40023          	sb	a3,-128(s0)
    8000446c:	10b65e63          	bge	a2,a1,80004588 <__printf+0x670>
    80004470:	06300593          	li	a1,99
    80004474:	02e7f6bb          	remuw	a3,a5,a4
    80004478:	02069693          	slli	a3,a3,0x20
    8000447c:	0206d693          	srli	a3,a3,0x20
    80004480:	00dd86b3          	add	a3,s11,a3
    80004484:	0006c683          	lbu	a3,0(a3)
    80004488:	02e7d73b          	divuw	a4,a5,a4
    8000448c:	00200793          	li	a5,2
    80004490:	f8d400a3          	sb	a3,-127(s0)
    80004494:	bca5ece3          	bltu	a1,a0,8000406c <__printf+0x154>
    80004498:	ce5ff06f          	j	8000417c <__printf+0x264>
    8000449c:	40e007bb          	negw	a5,a4
    800044a0:	00002d97          	auipc	s11,0x2
    800044a4:	ff0d8d93          	addi	s11,s11,-16 # 80006490 <digits>
    800044a8:	00f7f693          	andi	a3,a5,15
    800044ac:	00dd86b3          	add	a3,s11,a3
    800044b0:	0006c583          	lbu	a1,0(a3)
    800044b4:	ff100613          	li	a2,-15
    800044b8:	0047d69b          	srliw	a3,a5,0x4
    800044bc:	f8b40023          	sb	a1,-128(s0)
    800044c0:	0047d59b          	srliw	a1,a5,0x4
    800044c4:	0ac75e63          	bge	a4,a2,80004580 <__printf+0x668>
    800044c8:	00f6f693          	andi	a3,a3,15
    800044cc:	00dd86b3          	add	a3,s11,a3
    800044d0:	0006c603          	lbu	a2,0(a3)
    800044d4:	00f00693          	li	a3,15
    800044d8:	0087d79b          	srliw	a5,a5,0x8
    800044dc:	f8c400a3          	sb	a2,-127(s0)
    800044e0:	d8b6e4e3          	bltu	a3,a1,80004268 <__printf+0x350>
    800044e4:	00200793          	li	a5,2
    800044e8:	e2dff06f          	j	80004314 <__printf+0x3fc>
    800044ec:	00002c97          	auipc	s9,0x2
    800044f0:	f84c8c93          	addi	s9,s9,-124 # 80006470 <CONSOLE_STATUS+0x460>
    800044f4:	02800513          	li	a0,40
    800044f8:	ef1ff06f          	j	800043e8 <__printf+0x4d0>
    800044fc:	00700793          	li	a5,7
    80004500:	00600c93          	li	s9,6
    80004504:	e0dff06f          	j	80004310 <__printf+0x3f8>
    80004508:	00700793          	li	a5,7
    8000450c:	00600c93          	li	s9,6
    80004510:	c69ff06f          	j	80004178 <__printf+0x260>
    80004514:	00300793          	li	a5,3
    80004518:	00200c93          	li	s9,2
    8000451c:	c5dff06f          	j	80004178 <__printf+0x260>
    80004520:	00300793          	li	a5,3
    80004524:	00200c93          	li	s9,2
    80004528:	de9ff06f          	j	80004310 <__printf+0x3f8>
    8000452c:	00400793          	li	a5,4
    80004530:	00300c93          	li	s9,3
    80004534:	dddff06f          	j	80004310 <__printf+0x3f8>
    80004538:	00400793          	li	a5,4
    8000453c:	00300c93          	li	s9,3
    80004540:	c39ff06f          	j	80004178 <__printf+0x260>
    80004544:	00500793          	li	a5,5
    80004548:	00400c93          	li	s9,4
    8000454c:	c2dff06f          	j	80004178 <__printf+0x260>
    80004550:	00500793          	li	a5,5
    80004554:	00400c93          	li	s9,4
    80004558:	db9ff06f          	j	80004310 <__printf+0x3f8>
    8000455c:	00600793          	li	a5,6
    80004560:	00500c93          	li	s9,5
    80004564:	dadff06f          	j	80004310 <__printf+0x3f8>
    80004568:	00600793          	li	a5,6
    8000456c:	00500c93          	li	s9,5
    80004570:	c09ff06f          	j	80004178 <__printf+0x260>
    80004574:	00800793          	li	a5,8
    80004578:	00700c93          	li	s9,7
    8000457c:	bfdff06f          	j	80004178 <__printf+0x260>
    80004580:	00100793          	li	a5,1
    80004584:	d91ff06f          	j	80004314 <__printf+0x3fc>
    80004588:	00100793          	li	a5,1
    8000458c:	bf1ff06f          	j	8000417c <__printf+0x264>
    80004590:	00900793          	li	a5,9
    80004594:	00800c93          	li	s9,8
    80004598:	be1ff06f          	j	80004178 <__printf+0x260>
    8000459c:	00002517          	auipc	a0,0x2
    800045a0:	edc50513          	addi	a0,a0,-292 # 80006478 <CONSOLE_STATUS+0x468>
    800045a4:	00000097          	auipc	ra,0x0
    800045a8:	918080e7          	jalr	-1768(ra) # 80003ebc <panic>

00000000800045ac <printfinit>:
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00813823          	sd	s0,16(sp)
    800045b4:	00913423          	sd	s1,8(sp)
    800045b8:	00113c23          	sd	ra,24(sp)
    800045bc:	02010413          	addi	s0,sp,32
    800045c0:	00004497          	auipc	s1,0x4
    800045c4:	bd048493          	addi	s1,s1,-1072 # 80008190 <pr>
    800045c8:	00048513          	mv	a0,s1
    800045cc:	00002597          	auipc	a1,0x2
    800045d0:	ebc58593          	addi	a1,a1,-324 # 80006488 <CONSOLE_STATUS+0x478>
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	5f4080e7          	jalr	1524(ra) # 80004bc8 <initlock>
    800045dc:	01813083          	ld	ra,24(sp)
    800045e0:	01013403          	ld	s0,16(sp)
    800045e4:	0004ac23          	sw	zero,24(s1)
    800045e8:	00813483          	ld	s1,8(sp)
    800045ec:	02010113          	addi	sp,sp,32
    800045f0:	00008067          	ret

00000000800045f4 <uartinit>:
    800045f4:	ff010113          	addi	sp,sp,-16
    800045f8:	00813423          	sd	s0,8(sp)
    800045fc:	01010413          	addi	s0,sp,16
    80004600:	100007b7          	lui	a5,0x10000
    80004604:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004608:	f8000713          	li	a4,-128
    8000460c:	00e781a3          	sb	a4,3(a5)
    80004610:	00300713          	li	a4,3
    80004614:	00e78023          	sb	a4,0(a5)
    80004618:	000780a3          	sb	zero,1(a5)
    8000461c:	00e781a3          	sb	a4,3(a5)
    80004620:	00700693          	li	a3,7
    80004624:	00d78123          	sb	a3,2(a5)
    80004628:	00e780a3          	sb	a4,1(a5)
    8000462c:	00813403          	ld	s0,8(sp)
    80004630:	01010113          	addi	sp,sp,16
    80004634:	00008067          	ret

0000000080004638 <uartputc>:
    80004638:	00003797          	auipc	a5,0x3
    8000463c:	8d07a783          	lw	a5,-1840(a5) # 80006f08 <panicked>
    80004640:	00078463          	beqz	a5,80004648 <uartputc+0x10>
    80004644:	0000006f          	j	80004644 <uartputc+0xc>
    80004648:	fd010113          	addi	sp,sp,-48
    8000464c:	02813023          	sd	s0,32(sp)
    80004650:	00913c23          	sd	s1,24(sp)
    80004654:	01213823          	sd	s2,16(sp)
    80004658:	01313423          	sd	s3,8(sp)
    8000465c:	02113423          	sd	ra,40(sp)
    80004660:	03010413          	addi	s0,sp,48
    80004664:	00003917          	auipc	s2,0x3
    80004668:	8ac90913          	addi	s2,s2,-1876 # 80006f10 <uart_tx_r>
    8000466c:	00093783          	ld	a5,0(s2)
    80004670:	00003497          	auipc	s1,0x3
    80004674:	8a848493          	addi	s1,s1,-1880 # 80006f18 <uart_tx_w>
    80004678:	0004b703          	ld	a4,0(s1)
    8000467c:	02078693          	addi	a3,a5,32
    80004680:	00050993          	mv	s3,a0
    80004684:	02e69c63          	bne	a3,a4,800046bc <uartputc+0x84>
    80004688:	00001097          	auipc	ra,0x1
    8000468c:	834080e7          	jalr	-1996(ra) # 80004ebc <push_on>
    80004690:	00093783          	ld	a5,0(s2)
    80004694:	0004b703          	ld	a4,0(s1)
    80004698:	02078793          	addi	a5,a5,32
    8000469c:	00e79463          	bne	a5,a4,800046a4 <uartputc+0x6c>
    800046a0:	0000006f          	j	800046a0 <uartputc+0x68>
    800046a4:	00001097          	auipc	ra,0x1
    800046a8:	88c080e7          	jalr	-1908(ra) # 80004f30 <pop_on>
    800046ac:	00093783          	ld	a5,0(s2)
    800046b0:	0004b703          	ld	a4,0(s1)
    800046b4:	02078693          	addi	a3,a5,32
    800046b8:	fce688e3          	beq	a3,a4,80004688 <uartputc+0x50>
    800046bc:	01f77693          	andi	a3,a4,31
    800046c0:	00004597          	auipc	a1,0x4
    800046c4:	af058593          	addi	a1,a1,-1296 # 800081b0 <uart_tx_buf>
    800046c8:	00d586b3          	add	a3,a1,a3
    800046cc:	00170713          	addi	a4,a4,1
    800046d0:	01368023          	sb	s3,0(a3)
    800046d4:	00e4b023          	sd	a4,0(s1)
    800046d8:	10000637          	lui	a2,0x10000
    800046dc:	02f71063          	bne	a4,a5,800046fc <uartputc+0xc4>
    800046e0:	0340006f          	j	80004714 <uartputc+0xdc>
    800046e4:	00074703          	lbu	a4,0(a4)
    800046e8:	00f93023          	sd	a5,0(s2)
    800046ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800046f0:	00093783          	ld	a5,0(s2)
    800046f4:	0004b703          	ld	a4,0(s1)
    800046f8:	00f70e63          	beq	a4,a5,80004714 <uartputc+0xdc>
    800046fc:	00564683          	lbu	a3,5(a2)
    80004700:	01f7f713          	andi	a4,a5,31
    80004704:	00e58733          	add	a4,a1,a4
    80004708:	0206f693          	andi	a3,a3,32
    8000470c:	00178793          	addi	a5,a5,1
    80004710:	fc069ae3          	bnez	a3,800046e4 <uartputc+0xac>
    80004714:	02813083          	ld	ra,40(sp)
    80004718:	02013403          	ld	s0,32(sp)
    8000471c:	01813483          	ld	s1,24(sp)
    80004720:	01013903          	ld	s2,16(sp)
    80004724:	00813983          	ld	s3,8(sp)
    80004728:	03010113          	addi	sp,sp,48
    8000472c:	00008067          	ret

0000000080004730 <uartputc_sync>:
    80004730:	ff010113          	addi	sp,sp,-16
    80004734:	00813423          	sd	s0,8(sp)
    80004738:	01010413          	addi	s0,sp,16
    8000473c:	00002717          	auipc	a4,0x2
    80004740:	7cc72703          	lw	a4,1996(a4) # 80006f08 <panicked>
    80004744:	02071663          	bnez	a4,80004770 <uartputc_sync+0x40>
    80004748:	00050793          	mv	a5,a0
    8000474c:	100006b7          	lui	a3,0x10000
    80004750:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004754:	02077713          	andi	a4,a4,32
    80004758:	fe070ce3          	beqz	a4,80004750 <uartputc_sync+0x20>
    8000475c:	0ff7f793          	andi	a5,a5,255
    80004760:	00f68023          	sb	a5,0(a3)
    80004764:	00813403          	ld	s0,8(sp)
    80004768:	01010113          	addi	sp,sp,16
    8000476c:	00008067          	ret
    80004770:	0000006f          	j	80004770 <uartputc_sync+0x40>

0000000080004774 <uartstart>:
    80004774:	ff010113          	addi	sp,sp,-16
    80004778:	00813423          	sd	s0,8(sp)
    8000477c:	01010413          	addi	s0,sp,16
    80004780:	00002617          	auipc	a2,0x2
    80004784:	79060613          	addi	a2,a2,1936 # 80006f10 <uart_tx_r>
    80004788:	00002517          	auipc	a0,0x2
    8000478c:	79050513          	addi	a0,a0,1936 # 80006f18 <uart_tx_w>
    80004790:	00063783          	ld	a5,0(a2)
    80004794:	00053703          	ld	a4,0(a0)
    80004798:	04f70263          	beq	a4,a5,800047dc <uartstart+0x68>
    8000479c:	100005b7          	lui	a1,0x10000
    800047a0:	00004817          	auipc	a6,0x4
    800047a4:	a1080813          	addi	a6,a6,-1520 # 800081b0 <uart_tx_buf>
    800047a8:	01c0006f          	j	800047c4 <uartstart+0x50>
    800047ac:	0006c703          	lbu	a4,0(a3)
    800047b0:	00f63023          	sd	a5,0(a2)
    800047b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800047b8:	00063783          	ld	a5,0(a2)
    800047bc:	00053703          	ld	a4,0(a0)
    800047c0:	00f70e63          	beq	a4,a5,800047dc <uartstart+0x68>
    800047c4:	01f7f713          	andi	a4,a5,31
    800047c8:	00e806b3          	add	a3,a6,a4
    800047cc:	0055c703          	lbu	a4,5(a1)
    800047d0:	00178793          	addi	a5,a5,1
    800047d4:	02077713          	andi	a4,a4,32
    800047d8:	fc071ae3          	bnez	a4,800047ac <uartstart+0x38>
    800047dc:	00813403          	ld	s0,8(sp)
    800047e0:	01010113          	addi	sp,sp,16
    800047e4:	00008067          	ret

00000000800047e8 <uartgetc>:
    800047e8:	ff010113          	addi	sp,sp,-16
    800047ec:	00813423          	sd	s0,8(sp)
    800047f0:	01010413          	addi	s0,sp,16
    800047f4:	10000737          	lui	a4,0x10000
    800047f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800047fc:	0017f793          	andi	a5,a5,1
    80004800:	00078c63          	beqz	a5,80004818 <uartgetc+0x30>
    80004804:	00074503          	lbu	a0,0(a4)
    80004808:	0ff57513          	andi	a0,a0,255
    8000480c:	00813403          	ld	s0,8(sp)
    80004810:	01010113          	addi	sp,sp,16
    80004814:	00008067          	ret
    80004818:	fff00513          	li	a0,-1
    8000481c:	ff1ff06f          	j	8000480c <uartgetc+0x24>

0000000080004820 <uartintr>:
    80004820:	100007b7          	lui	a5,0x10000
    80004824:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004828:	0017f793          	andi	a5,a5,1
    8000482c:	0a078463          	beqz	a5,800048d4 <uartintr+0xb4>
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	00813823          	sd	s0,16(sp)
    80004838:	00913423          	sd	s1,8(sp)
    8000483c:	00113c23          	sd	ra,24(sp)
    80004840:	02010413          	addi	s0,sp,32
    80004844:	100004b7          	lui	s1,0x10000
    80004848:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000484c:	0ff57513          	andi	a0,a0,255
    80004850:	fffff097          	auipc	ra,0xfffff
    80004854:	534080e7          	jalr	1332(ra) # 80003d84 <consoleintr>
    80004858:	0054c783          	lbu	a5,5(s1)
    8000485c:	0017f793          	andi	a5,a5,1
    80004860:	fe0794e3          	bnez	a5,80004848 <uartintr+0x28>
    80004864:	00002617          	auipc	a2,0x2
    80004868:	6ac60613          	addi	a2,a2,1708 # 80006f10 <uart_tx_r>
    8000486c:	00002517          	auipc	a0,0x2
    80004870:	6ac50513          	addi	a0,a0,1708 # 80006f18 <uart_tx_w>
    80004874:	00063783          	ld	a5,0(a2)
    80004878:	00053703          	ld	a4,0(a0)
    8000487c:	04f70263          	beq	a4,a5,800048c0 <uartintr+0xa0>
    80004880:	100005b7          	lui	a1,0x10000
    80004884:	00004817          	auipc	a6,0x4
    80004888:	92c80813          	addi	a6,a6,-1748 # 800081b0 <uart_tx_buf>
    8000488c:	01c0006f          	j	800048a8 <uartintr+0x88>
    80004890:	0006c703          	lbu	a4,0(a3)
    80004894:	00f63023          	sd	a5,0(a2)
    80004898:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000489c:	00063783          	ld	a5,0(a2)
    800048a0:	00053703          	ld	a4,0(a0)
    800048a4:	00f70e63          	beq	a4,a5,800048c0 <uartintr+0xa0>
    800048a8:	01f7f713          	andi	a4,a5,31
    800048ac:	00e806b3          	add	a3,a6,a4
    800048b0:	0055c703          	lbu	a4,5(a1)
    800048b4:	00178793          	addi	a5,a5,1
    800048b8:	02077713          	andi	a4,a4,32
    800048bc:	fc071ae3          	bnez	a4,80004890 <uartintr+0x70>
    800048c0:	01813083          	ld	ra,24(sp)
    800048c4:	01013403          	ld	s0,16(sp)
    800048c8:	00813483          	ld	s1,8(sp)
    800048cc:	02010113          	addi	sp,sp,32
    800048d0:	00008067          	ret
    800048d4:	00002617          	auipc	a2,0x2
    800048d8:	63c60613          	addi	a2,a2,1596 # 80006f10 <uart_tx_r>
    800048dc:	00002517          	auipc	a0,0x2
    800048e0:	63c50513          	addi	a0,a0,1596 # 80006f18 <uart_tx_w>
    800048e4:	00063783          	ld	a5,0(a2)
    800048e8:	00053703          	ld	a4,0(a0)
    800048ec:	04f70263          	beq	a4,a5,80004930 <uartintr+0x110>
    800048f0:	100005b7          	lui	a1,0x10000
    800048f4:	00004817          	auipc	a6,0x4
    800048f8:	8bc80813          	addi	a6,a6,-1860 # 800081b0 <uart_tx_buf>
    800048fc:	01c0006f          	j	80004918 <uartintr+0xf8>
    80004900:	0006c703          	lbu	a4,0(a3)
    80004904:	00f63023          	sd	a5,0(a2)
    80004908:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000490c:	00063783          	ld	a5,0(a2)
    80004910:	00053703          	ld	a4,0(a0)
    80004914:	02f70063          	beq	a4,a5,80004934 <uartintr+0x114>
    80004918:	01f7f713          	andi	a4,a5,31
    8000491c:	00e806b3          	add	a3,a6,a4
    80004920:	0055c703          	lbu	a4,5(a1)
    80004924:	00178793          	addi	a5,a5,1
    80004928:	02077713          	andi	a4,a4,32
    8000492c:	fc071ae3          	bnez	a4,80004900 <uartintr+0xe0>
    80004930:	00008067          	ret
    80004934:	00008067          	ret

0000000080004938 <kinit>:
    80004938:	fc010113          	addi	sp,sp,-64
    8000493c:	02913423          	sd	s1,40(sp)
    80004940:	fffff7b7          	lui	a5,0xfffff
    80004944:	00005497          	auipc	s1,0x5
    80004948:	88b48493          	addi	s1,s1,-1909 # 800091cf <end+0xfff>
    8000494c:	02813823          	sd	s0,48(sp)
    80004950:	01313c23          	sd	s3,24(sp)
    80004954:	00f4f4b3          	and	s1,s1,a5
    80004958:	02113c23          	sd	ra,56(sp)
    8000495c:	03213023          	sd	s2,32(sp)
    80004960:	01413823          	sd	s4,16(sp)
    80004964:	01513423          	sd	s5,8(sp)
    80004968:	04010413          	addi	s0,sp,64
    8000496c:	000017b7          	lui	a5,0x1
    80004970:	01100993          	li	s3,17
    80004974:	00f487b3          	add	a5,s1,a5
    80004978:	01b99993          	slli	s3,s3,0x1b
    8000497c:	06f9e063          	bltu	s3,a5,800049dc <kinit+0xa4>
    80004980:	00004a97          	auipc	s5,0x4
    80004984:	850a8a93          	addi	s5,s5,-1968 # 800081d0 <end>
    80004988:	0754ec63          	bltu	s1,s5,80004a00 <kinit+0xc8>
    8000498c:	0734fa63          	bgeu	s1,s3,80004a00 <kinit+0xc8>
    80004990:	00088a37          	lui	s4,0x88
    80004994:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004998:	00002917          	auipc	s2,0x2
    8000499c:	58890913          	addi	s2,s2,1416 # 80006f20 <kmem>
    800049a0:	00ca1a13          	slli	s4,s4,0xc
    800049a4:	0140006f          	j	800049b8 <kinit+0x80>
    800049a8:	000017b7          	lui	a5,0x1
    800049ac:	00f484b3          	add	s1,s1,a5
    800049b0:	0554e863          	bltu	s1,s5,80004a00 <kinit+0xc8>
    800049b4:	0534f663          	bgeu	s1,s3,80004a00 <kinit+0xc8>
    800049b8:	00001637          	lui	a2,0x1
    800049bc:	00100593          	li	a1,1
    800049c0:	00048513          	mv	a0,s1
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	5e4080e7          	jalr	1508(ra) # 80004fa8 <__memset>
    800049cc:	00093783          	ld	a5,0(s2)
    800049d0:	00f4b023          	sd	a5,0(s1)
    800049d4:	00993023          	sd	s1,0(s2)
    800049d8:	fd4498e3          	bne	s1,s4,800049a8 <kinit+0x70>
    800049dc:	03813083          	ld	ra,56(sp)
    800049e0:	03013403          	ld	s0,48(sp)
    800049e4:	02813483          	ld	s1,40(sp)
    800049e8:	02013903          	ld	s2,32(sp)
    800049ec:	01813983          	ld	s3,24(sp)
    800049f0:	01013a03          	ld	s4,16(sp)
    800049f4:	00813a83          	ld	s5,8(sp)
    800049f8:	04010113          	addi	sp,sp,64
    800049fc:	00008067          	ret
    80004a00:	00002517          	auipc	a0,0x2
    80004a04:	aa850513          	addi	a0,a0,-1368 # 800064a8 <digits+0x18>
    80004a08:	fffff097          	auipc	ra,0xfffff
    80004a0c:	4b4080e7          	jalr	1204(ra) # 80003ebc <panic>

0000000080004a10 <freerange>:
    80004a10:	fc010113          	addi	sp,sp,-64
    80004a14:	000017b7          	lui	a5,0x1
    80004a18:	02913423          	sd	s1,40(sp)
    80004a1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004a20:	009504b3          	add	s1,a0,s1
    80004a24:	fffff537          	lui	a0,0xfffff
    80004a28:	02813823          	sd	s0,48(sp)
    80004a2c:	02113c23          	sd	ra,56(sp)
    80004a30:	03213023          	sd	s2,32(sp)
    80004a34:	01313c23          	sd	s3,24(sp)
    80004a38:	01413823          	sd	s4,16(sp)
    80004a3c:	01513423          	sd	s5,8(sp)
    80004a40:	01613023          	sd	s6,0(sp)
    80004a44:	04010413          	addi	s0,sp,64
    80004a48:	00a4f4b3          	and	s1,s1,a0
    80004a4c:	00f487b3          	add	a5,s1,a5
    80004a50:	06f5e463          	bltu	a1,a5,80004ab8 <freerange+0xa8>
    80004a54:	00003a97          	auipc	s5,0x3
    80004a58:	77ca8a93          	addi	s5,s5,1916 # 800081d0 <end>
    80004a5c:	0954e263          	bltu	s1,s5,80004ae0 <freerange+0xd0>
    80004a60:	01100993          	li	s3,17
    80004a64:	01b99993          	slli	s3,s3,0x1b
    80004a68:	0734fc63          	bgeu	s1,s3,80004ae0 <freerange+0xd0>
    80004a6c:	00058a13          	mv	s4,a1
    80004a70:	00002917          	auipc	s2,0x2
    80004a74:	4b090913          	addi	s2,s2,1200 # 80006f20 <kmem>
    80004a78:	00002b37          	lui	s6,0x2
    80004a7c:	0140006f          	j	80004a90 <freerange+0x80>
    80004a80:	000017b7          	lui	a5,0x1
    80004a84:	00f484b3          	add	s1,s1,a5
    80004a88:	0554ec63          	bltu	s1,s5,80004ae0 <freerange+0xd0>
    80004a8c:	0534fa63          	bgeu	s1,s3,80004ae0 <freerange+0xd0>
    80004a90:	00001637          	lui	a2,0x1
    80004a94:	00100593          	li	a1,1
    80004a98:	00048513          	mv	a0,s1
    80004a9c:	00000097          	auipc	ra,0x0
    80004aa0:	50c080e7          	jalr	1292(ra) # 80004fa8 <__memset>
    80004aa4:	00093703          	ld	a4,0(s2)
    80004aa8:	016487b3          	add	a5,s1,s6
    80004aac:	00e4b023          	sd	a4,0(s1)
    80004ab0:	00993023          	sd	s1,0(s2)
    80004ab4:	fcfa76e3          	bgeu	s4,a5,80004a80 <freerange+0x70>
    80004ab8:	03813083          	ld	ra,56(sp)
    80004abc:	03013403          	ld	s0,48(sp)
    80004ac0:	02813483          	ld	s1,40(sp)
    80004ac4:	02013903          	ld	s2,32(sp)
    80004ac8:	01813983          	ld	s3,24(sp)
    80004acc:	01013a03          	ld	s4,16(sp)
    80004ad0:	00813a83          	ld	s5,8(sp)
    80004ad4:	00013b03          	ld	s6,0(sp)
    80004ad8:	04010113          	addi	sp,sp,64
    80004adc:	00008067          	ret
    80004ae0:	00002517          	auipc	a0,0x2
    80004ae4:	9c850513          	addi	a0,a0,-1592 # 800064a8 <digits+0x18>
    80004ae8:	fffff097          	auipc	ra,0xfffff
    80004aec:	3d4080e7          	jalr	980(ra) # 80003ebc <panic>

0000000080004af0 <kfree>:
    80004af0:	fe010113          	addi	sp,sp,-32
    80004af4:	00813823          	sd	s0,16(sp)
    80004af8:	00113c23          	sd	ra,24(sp)
    80004afc:	00913423          	sd	s1,8(sp)
    80004b00:	02010413          	addi	s0,sp,32
    80004b04:	03451793          	slli	a5,a0,0x34
    80004b08:	04079c63          	bnez	a5,80004b60 <kfree+0x70>
    80004b0c:	00003797          	auipc	a5,0x3
    80004b10:	6c478793          	addi	a5,a5,1732 # 800081d0 <end>
    80004b14:	00050493          	mv	s1,a0
    80004b18:	04f56463          	bltu	a0,a5,80004b60 <kfree+0x70>
    80004b1c:	01100793          	li	a5,17
    80004b20:	01b79793          	slli	a5,a5,0x1b
    80004b24:	02f57e63          	bgeu	a0,a5,80004b60 <kfree+0x70>
    80004b28:	00001637          	lui	a2,0x1
    80004b2c:	00100593          	li	a1,1
    80004b30:	00000097          	auipc	ra,0x0
    80004b34:	478080e7          	jalr	1144(ra) # 80004fa8 <__memset>
    80004b38:	00002797          	auipc	a5,0x2
    80004b3c:	3e878793          	addi	a5,a5,1000 # 80006f20 <kmem>
    80004b40:	0007b703          	ld	a4,0(a5)
    80004b44:	01813083          	ld	ra,24(sp)
    80004b48:	01013403          	ld	s0,16(sp)
    80004b4c:	00e4b023          	sd	a4,0(s1)
    80004b50:	0097b023          	sd	s1,0(a5)
    80004b54:	00813483          	ld	s1,8(sp)
    80004b58:	02010113          	addi	sp,sp,32
    80004b5c:	00008067          	ret
    80004b60:	00002517          	auipc	a0,0x2
    80004b64:	94850513          	addi	a0,a0,-1720 # 800064a8 <digits+0x18>
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	354080e7          	jalr	852(ra) # 80003ebc <panic>

0000000080004b70 <kalloc>:
    80004b70:	fe010113          	addi	sp,sp,-32
    80004b74:	00813823          	sd	s0,16(sp)
    80004b78:	00913423          	sd	s1,8(sp)
    80004b7c:	00113c23          	sd	ra,24(sp)
    80004b80:	02010413          	addi	s0,sp,32
    80004b84:	00002797          	auipc	a5,0x2
    80004b88:	39c78793          	addi	a5,a5,924 # 80006f20 <kmem>
    80004b8c:	0007b483          	ld	s1,0(a5)
    80004b90:	02048063          	beqz	s1,80004bb0 <kalloc+0x40>
    80004b94:	0004b703          	ld	a4,0(s1)
    80004b98:	00001637          	lui	a2,0x1
    80004b9c:	00500593          	li	a1,5
    80004ba0:	00048513          	mv	a0,s1
    80004ba4:	00e7b023          	sd	a4,0(a5)
    80004ba8:	00000097          	auipc	ra,0x0
    80004bac:	400080e7          	jalr	1024(ra) # 80004fa8 <__memset>
    80004bb0:	01813083          	ld	ra,24(sp)
    80004bb4:	01013403          	ld	s0,16(sp)
    80004bb8:	00048513          	mv	a0,s1
    80004bbc:	00813483          	ld	s1,8(sp)
    80004bc0:	02010113          	addi	sp,sp,32
    80004bc4:	00008067          	ret

0000000080004bc8 <initlock>:
    80004bc8:	ff010113          	addi	sp,sp,-16
    80004bcc:	00813423          	sd	s0,8(sp)
    80004bd0:	01010413          	addi	s0,sp,16
    80004bd4:	00813403          	ld	s0,8(sp)
    80004bd8:	00b53423          	sd	a1,8(a0)
    80004bdc:	00052023          	sw	zero,0(a0)
    80004be0:	00053823          	sd	zero,16(a0)
    80004be4:	01010113          	addi	sp,sp,16
    80004be8:	00008067          	ret

0000000080004bec <acquire>:
    80004bec:	fe010113          	addi	sp,sp,-32
    80004bf0:	00813823          	sd	s0,16(sp)
    80004bf4:	00913423          	sd	s1,8(sp)
    80004bf8:	00113c23          	sd	ra,24(sp)
    80004bfc:	01213023          	sd	s2,0(sp)
    80004c00:	02010413          	addi	s0,sp,32
    80004c04:	00050493          	mv	s1,a0
    80004c08:	10002973          	csrr	s2,sstatus
    80004c0c:	100027f3          	csrr	a5,sstatus
    80004c10:	ffd7f793          	andi	a5,a5,-3
    80004c14:	10079073          	csrw	sstatus,a5
    80004c18:	fffff097          	auipc	ra,0xfffff
    80004c1c:	8e4080e7          	jalr	-1820(ra) # 800034fc <mycpu>
    80004c20:	07852783          	lw	a5,120(a0)
    80004c24:	06078e63          	beqz	a5,80004ca0 <acquire+0xb4>
    80004c28:	fffff097          	auipc	ra,0xfffff
    80004c2c:	8d4080e7          	jalr	-1836(ra) # 800034fc <mycpu>
    80004c30:	07852783          	lw	a5,120(a0)
    80004c34:	0004a703          	lw	a4,0(s1)
    80004c38:	0017879b          	addiw	a5,a5,1
    80004c3c:	06f52c23          	sw	a5,120(a0)
    80004c40:	04071063          	bnez	a4,80004c80 <acquire+0x94>
    80004c44:	00100713          	li	a4,1
    80004c48:	00070793          	mv	a5,a4
    80004c4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004c50:	0007879b          	sext.w	a5,a5
    80004c54:	fe079ae3          	bnez	a5,80004c48 <acquire+0x5c>
    80004c58:	0ff0000f          	fence
    80004c5c:	fffff097          	auipc	ra,0xfffff
    80004c60:	8a0080e7          	jalr	-1888(ra) # 800034fc <mycpu>
    80004c64:	01813083          	ld	ra,24(sp)
    80004c68:	01013403          	ld	s0,16(sp)
    80004c6c:	00a4b823          	sd	a0,16(s1)
    80004c70:	00013903          	ld	s2,0(sp)
    80004c74:	00813483          	ld	s1,8(sp)
    80004c78:	02010113          	addi	sp,sp,32
    80004c7c:	00008067          	ret
    80004c80:	0104b903          	ld	s2,16(s1)
    80004c84:	fffff097          	auipc	ra,0xfffff
    80004c88:	878080e7          	jalr	-1928(ra) # 800034fc <mycpu>
    80004c8c:	faa91ce3          	bne	s2,a0,80004c44 <acquire+0x58>
    80004c90:	00002517          	auipc	a0,0x2
    80004c94:	82050513          	addi	a0,a0,-2016 # 800064b0 <digits+0x20>
    80004c98:	fffff097          	auipc	ra,0xfffff
    80004c9c:	224080e7          	jalr	548(ra) # 80003ebc <panic>
    80004ca0:	00195913          	srli	s2,s2,0x1
    80004ca4:	fffff097          	auipc	ra,0xfffff
    80004ca8:	858080e7          	jalr	-1960(ra) # 800034fc <mycpu>
    80004cac:	00197913          	andi	s2,s2,1
    80004cb0:	07252e23          	sw	s2,124(a0)
    80004cb4:	f75ff06f          	j	80004c28 <acquire+0x3c>

0000000080004cb8 <release>:
    80004cb8:	fe010113          	addi	sp,sp,-32
    80004cbc:	00813823          	sd	s0,16(sp)
    80004cc0:	00113c23          	sd	ra,24(sp)
    80004cc4:	00913423          	sd	s1,8(sp)
    80004cc8:	01213023          	sd	s2,0(sp)
    80004ccc:	02010413          	addi	s0,sp,32
    80004cd0:	00052783          	lw	a5,0(a0)
    80004cd4:	00079a63          	bnez	a5,80004ce8 <release+0x30>
    80004cd8:	00001517          	auipc	a0,0x1
    80004cdc:	7e050513          	addi	a0,a0,2016 # 800064b8 <digits+0x28>
    80004ce0:	fffff097          	auipc	ra,0xfffff
    80004ce4:	1dc080e7          	jalr	476(ra) # 80003ebc <panic>
    80004ce8:	01053903          	ld	s2,16(a0)
    80004cec:	00050493          	mv	s1,a0
    80004cf0:	fffff097          	auipc	ra,0xfffff
    80004cf4:	80c080e7          	jalr	-2036(ra) # 800034fc <mycpu>
    80004cf8:	fea910e3          	bne	s2,a0,80004cd8 <release+0x20>
    80004cfc:	0004b823          	sd	zero,16(s1)
    80004d00:	0ff0000f          	fence
    80004d04:	0f50000f          	fence	iorw,ow
    80004d08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004d0c:	ffffe097          	auipc	ra,0xffffe
    80004d10:	7f0080e7          	jalr	2032(ra) # 800034fc <mycpu>
    80004d14:	100027f3          	csrr	a5,sstatus
    80004d18:	0027f793          	andi	a5,a5,2
    80004d1c:	04079a63          	bnez	a5,80004d70 <release+0xb8>
    80004d20:	07852783          	lw	a5,120(a0)
    80004d24:	02f05e63          	blez	a5,80004d60 <release+0xa8>
    80004d28:	fff7871b          	addiw	a4,a5,-1
    80004d2c:	06e52c23          	sw	a4,120(a0)
    80004d30:	00071c63          	bnez	a4,80004d48 <release+0x90>
    80004d34:	07c52783          	lw	a5,124(a0)
    80004d38:	00078863          	beqz	a5,80004d48 <release+0x90>
    80004d3c:	100027f3          	csrr	a5,sstatus
    80004d40:	0027e793          	ori	a5,a5,2
    80004d44:	10079073          	csrw	sstatus,a5
    80004d48:	01813083          	ld	ra,24(sp)
    80004d4c:	01013403          	ld	s0,16(sp)
    80004d50:	00813483          	ld	s1,8(sp)
    80004d54:	00013903          	ld	s2,0(sp)
    80004d58:	02010113          	addi	sp,sp,32
    80004d5c:	00008067          	ret
    80004d60:	00001517          	auipc	a0,0x1
    80004d64:	77850513          	addi	a0,a0,1912 # 800064d8 <digits+0x48>
    80004d68:	fffff097          	auipc	ra,0xfffff
    80004d6c:	154080e7          	jalr	340(ra) # 80003ebc <panic>
    80004d70:	00001517          	auipc	a0,0x1
    80004d74:	75050513          	addi	a0,a0,1872 # 800064c0 <digits+0x30>
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	144080e7          	jalr	324(ra) # 80003ebc <panic>

0000000080004d80 <holding>:
    80004d80:	00052783          	lw	a5,0(a0)
    80004d84:	00079663          	bnez	a5,80004d90 <holding+0x10>
    80004d88:	00000513          	li	a0,0
    80004d8c:	00008067          	ret
    80004d90:	fe010113          	addi	sp,sp,-32
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	00113c23          	sd	ra,24(sp)
    80004da0:	02010413          	addi	s0,sp,32
    80004da4:	01053483          	ld	s1,16(a0)
    80004da8:	ffffe097          	auipc	ra,0xffffe
    80004dac:	754080e7          	jalr	1876(ra) # 800034fc <mycpu>
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	40a48533          	sub	a0,s1,a0
    80004dbc:	00153513          	seqz	a0,a0
    80004dc0:	00813483          	ld	s1,8(sp)
    80004dc4:	02010113          	addi	sp,sp,32
    80004dc8:	00008067          	ret

0000000080004dcc <push_off>:
    80004dcc:	fe010113          	addi	sp,sp,-32
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00113c23          	sd	ra,24(sp)
    80004dd8:	00913423          	sd	s1,8(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    80004de0:	100024f3          	csrr	s1,sstatus
    80004de4:	100027f3          	csrr	a5,sstatus
    80004de8:	ffd7f793          	andi	a5,a5,-3
    80004dec:	10079073          	csrw	sstatus,a5
    80004df0:	ffffe097          	auipc	ra,0xffffe
    80004df4:	70c080e7          	jalr	1804(ra) # 800034fc <mycpu>
    80004df8:	07852783          	lw	a5,120(a0)
    80004dfc:	02078663          	beqz	a5,80004e28 <push_off+0x5c>
    80004e00:	ffffe097          	auipc	ra,0xffffe
    80004e04:	6fc080e7          	jalr	1788(ra) # 800034fc <mycpu>
    80004e08:	07852783          	lw	a5,120(a0)
    80004e0c:	01813083          	ld	ra,24(sp)
    80004e10:	01013403          	ld	s0,16(sp)
    80004e14:	0017879b          	addiw	a5,a5,1
    80004e18:	06f52c23          	sw	a5,120(a0)
    80004e1c:	00813483          	ld	s1,8(sp)
    80004e20:	02010113          	addi	sp,sp,32
    80004e24:	00008067          	ret
    80004e28:	0014d493          	srli	s1,s1,0x1
    80004e2c:	ffffe097          	auipc	ra,0xffffe
    80004e30:	6d0080e7          	jalr	1744(ra) # 800034fc <mycpu>
    80004e34:	0014f493          	andi	s1,s1,1
    80004e38:	06952e23          	sw	s1,124(a0)
    80004e3c:	fc5ff06f          	j	80004e00 <push_off+0x34>

0000000080004e40 <pop_off>:
    80004e40:	ff010113          	addi	sp,sp,-16
    80004e44:	00813023          	sd	s0,0(sp)
    80004e48:	00113423          	sd	ra,8(sp)
    80004e4c:	01010413          	addi	s0,sp,16
    80004e50:	ffffe097          	auipc	ra,0xffffe
    80004e54:	6ac080e7          	jalr	1708(ra) # 800034fc <mycpu>
    80004e58:	100027f3          	csrr	a5,sstatus
    80004e5c:	0027f793          	andi	a5,a5,2
    80004e60:	04079663          	bnez	a5,80004eac <pop_off+0x6c>
    80004e64:	07852783          	lw	a5,120(a0)
    80004e68:	02f05a63          	blez	a5,80004e9c <pop_off+0x5c>
    80004e6c:	fff7871b          	addiw	a4,a5,-1
    80004e70:	06e52c23          	sw	a4,120(a0)
    80004e74:	00071c63          	bnez	a4,80004e8c <pop_off+0x4c>
    80004e78:	07c52783          	lw	a5,124(a0)
    80004e7c:	00078863          	beqz	a5,80004e8c <pop_off+0x4c>
    80004e80:	100027f3          	csrr	a5,sstatus
    80004e84:	0027e793          	ori	a5,a5,2
    80004e88:	10079073          	csrw	sstatus,a5
    80004e8c:	00813083          	ld	ra,8(sp)
    80004e90:	00013403          	ld	s0,0(sp)
    80004e94:	01010113          	addi	sp,sp,16
    80004e98:	00008067          	ret
    80004e9c:	00001517          	auipc	a0,0x1
    80004ea0:	63c50513          	addi	a0,a0,1596 # 800064d8 <digits+0x48>
    80004ea4:	fffff097          	auipc	ra,0xfffff
    80004ea8:	018080e7          	jalr	24(ra) # 80003ebc <panic>
    80004eac:	00001517          	auipc	a0,0x1
    80004eb0:	61450513          	addi	a0,a0,1556 # 800064c0 <digits+0x30>
    80004eb4:	fffff097          	auipc	ra,0xfffff
    80004eb8:	008080e7          	jalr	8(ra) # 80003ebc <panic>

0000000080004ebc <push_on>:
    80004ebc:	fe010113          	addi	sp,sp,-32
    80004ec0:	00813823          	sd	s0,16(sp)
    80004ec4:	00113c23          	sd	ra,24(sp)
    80004ec8:	00913423          	sd	s1,8(sp)
    80004ecc:	02010413          	addi	s0,sp,32
    80004ed0:	100024f3          	csrr	s1,sstatus
    80004ed4:	100027f3          	csrr	a5,sstatus
    80004ed8:	0027e793          	ori	a5,a5,2
    80004edc:	10079073          	csrw	sstatus,a5
    80004ee0:	ffffe097          	auipc	ra,0xffffe
    80004ee4:	61c080e7          	jalr	1564(ra) # 800034fc <mycpu>
    80004ee8:	07852783          	lw	a5,120(a0)
    80004eec:	02078663          	beqz	a5,80004f18 <push_on+0x5c>
    80004ef0:	ffffe097          	auipc	ra,0xffffe
    80004ef4:	60c080e7          	jalr	1548(ra) # 800034fc <mycpu>
    80004ef8:	07852783          	lw	a5,120(a0)
    80004efc:	01813083          	ld	ra,24(sp)
    80004f00:	01013403          	ld	s0,16(sp)
    80004f04:	0017879b          	addiw	a5,a5,1
    80004f08:	06f52c23          	sw	a5,120(a0)
    80004f0c:	00813483          	ld	s1,8(sp)
    80004f10:	02010113          	addi	sp,sp,32
    80004f14:	00008067          	ret
    80004f18:	0014d493          	srli	s1,s1,0x1
    80004f1c:	ffffe097          	auipc	ra,0xffffe
    80004f20:	5e0080e7          	jalr	1504(ra) # 800034fc <mycpu>
    80004f24:	0014f493          	andi	s1,s1,1
    80004f28:	06952e23          	sw	s1,124(a0)
    80004f2c:	fc5ff06f          	j	80004ef0 <push_on+0x34>

0000000080004f30 <pop_on>:
    80004f30:	ff010113          	addi	sp,sp,-16
    80004f34:	00813023          	sd	s0,0(sp)
    80004f38:	00113423          	sd	ra,8(sp)
    80004f3c:	01010413          	addi	s0,sp,16
    80004f40:	ffffe097          	auipc	ra,0xffffe
    80004f44:	5bc080e7          	jalr	1468(ra) # 800034fc <mycpu>
    80004f48:	100027f3          	csrr	a5,sstatus
    80004f4c:	0027f793          	andi	a5,a5,2
    80004f50:	04078463          	beqz	a5,80004f98 <pop_on+0x68>
    80004f54:	07852783          	lw	a5,120(a0)
    80004f58:	02f05863          	blez	a5,80004f88 <pop_on+0x58>
    80004f5c:	fff7879b          	addiw	a5,a5,-1
    80004f60:	06f52c23          	sw	a5,120(a0)
    80004f64:	07853783          	ld	a5,120(a0)
    80004f68:	00079863          	bnez	a5,80004f78 <pop_on+0x48>
    80004f6c:	100027f3          	csrr	a5,sstatus
    80004f70:	ffd7f793          	andi	a5,a5,-3
    80004f74:	10079073          	csrw	sstatus,a5
    80004f78:	00813083          	ld	ra,8(sp)
    80004f7c:	00013403          	ld	s0,0(sp)
    80004f80:	01010113          	addi	sp,sp,16
    80004f84:	00008067          	ret
    80004f88:	00001517          	auipc	a0,0x1
    80004f8c:	57850513          	addi	a0,a0,1400 # 80006500 <digits+0x70>
    80004f90:	fffff097          	auipc	ra,0xfffff
    80004f94:	f2c080e7          	jalr	-212(ra) # 80003ebc <panic>
    80004f98:	00001517          	auipc	a0,0x1
    80004f9c:	54850513          	addi	a0,a0,1352 # 800064e0 <digits+0x50>
    80004fa0:	fffff097          	auipc	ra,0xfffff
    80004fa4:	f1c080e7          	jalr	-228(ra) # 80003ebc <panic>

0000000080004fa8 <__memset>:
    80004fa8:	ff010113          	addi	sp,sp,-16
    80004fac:	00813423          	sd	s0,8(sp)
    80004fb0:	01010413          	addi	s0,sp,16
    80004fb4:	1a060e63          	beqz	a2,80005170 <__memset+0x1c8>
    80004fb8:	40a007b3          	neg	a5,a0
    80004fbc:	0077f793          	andi	a5,a5,7
    80004fc0:	00778693          	addi	a3,a5,7
    80004fc4:	00b00813          	li	a6,11
    80004fc8:	0ff5f593          	andi	a1,a1,255
    80004fcc:	fff6071b          	addiw	a4,a2,-1
    80004fd0:	1b06e663          	bltu	a3,a6,8000517c <__memset+0x1d4>
    80004fd4:	1cd76463          	bltu	a4,a3,8000519c <__memset+0x1f4>
    80004fd8:	1a078e63          	beqz	a5,80005194 <__memset+0x1ec>
    80004fdc:	00b50023          	sb	a1,0(a0)
    80004fe0:	00100713          	li	a4,1
    80004fe4:	1ae78463          	beq	a5,a4,8000518c <__memset+0x1e4>
    80004fe8:	00b500a3          	sb	a1,1(a0)
    80004fec:	00200713          	li	a4,2
    80004ff0:	1ae78a63          	beq	a5,a4,800051a4 <__memset+0x1fc>
    80004ff4:	00b50123          	sb	a1,2(a0)
    80004ff8:	00300713          	li	a4,3
    80004ffc:	18e78463          	beq	a5,a4,80005184 <__memset+0x1dc>
    80005000:	00b501a3          	sb	a1,3(a0)
    80005004:	00400713          	li	a4,4
    80005008:	1ae78263          	beq	a5,a4,800051ac <__memset+0x204>
    8000500c:	00b50223          	sb	a1,4(a0)
    80005010:	00500713          	li	a4,5
    80005014:	1ae78063          	beq	a5,a4,800051b4 <__memset+0x20c>
    80005018:	00b502a3          	sb	a1,5(a0)
    8000501c:	00700713          	li	a4,7
    80005020:	18e79e63          	bne	a5,a4,800051bc <__memset+0x214>
    80005024:	00b50323          	sb	a1,6(a0)
    80005028:	00700e93          	li	t4,7
    8000502c:	00859713          	slli	a4,a1,0x8
    80005030:	00e5e733          	or	a4,a1,a4
    80005034:	01059e13          	slli	t3,a1,0x10
    80005038:	01c76e33          	or	t3,a4,t3
    8000503c:	01859313          	slli	t1,a1,0x18
    80005040:	006e6333          	or	t1,t3,t1
    80005044:	02059893          	slli	a7,a1,0x20
    80005048:	40f60e3b          	subw	t3,a2,a5
    8000504c:	011368b3          	or	a7,t1,a7
    80005050:	02859813          	slli	a6,a1,0x28
    80005054:	0108e833          	or	a6,a7,a6
    80005058:	03059693          	slli	a3,a1,0x30
    8000505c:	003e589b          	srliw	a7,t3,0x3
    80005060:	00d866b3          	or	a3,a6,a3
    80005064:	03859713          	slli	a4,a1,0x38
    80005068:	00389813          	slli	a6,a7,0x3
    8000506c:	00f507b3          	add	a5,a0,a5
    80005070:	00e6e733          	or	a4,a3,a4
    80005074:	000e089b          	sext.w	a7,t3
    80005078:	00f806b3          	add	a3,a6,a5
    8000507c:	00e7b023          	sd	a4,0(a5)
    80005080:	00878793          	addi	a5,a5,8
    80005084:	fed79ce3          	bne	a5,a3,8000507c <__memset+0xd4>
    80005088:	ff8e7793          	andi	a5,t3,-8
    8000508c:	0007871b          	sext.w	a4,a5
    80005090:	01d787bb          	addw	a5,a5,t4
    80005094:	0ce88e63          	beq	a7,a4,80005170 <__memset+0x1c8>
    80005098:	00f50733          	add	a4,a0,a5
    8000509c:	00b70023          	sb	a1,0(a4)
    800050a0:	0017871b          	addiw	a4,a5,1
    800050a4:	0cc77663          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    800050a8:	00e50733          	add	a4,a0,a4
    800050ac:	00b70023          	sb	a1,0(a4)
    800050b0:	0027871b          	addiw	a4,a5,2
    800050b4:	0ac77e63          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    800050b8:	00e50733          	add	a4,a0,a4
    800050bc:	00b70023          	sb	a1,0(a4)
    800050c0:	0037871b          	addiw	a4,a5,3
    800050c4:	0ac77663          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    800050c8:	00e50733          	add	a4,a0,a4
    800050cc:	00b70023          	sb	a1,0(a4)
    800050d0:	0047871b          	addiw	a4,a5,4
    800050d4:	08c77e63          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    800050d8:	00e50733          	add	a4,a0,a4
    800050dc:	00b70023          	sb	a1,0(a4)
    800050e0:	0057871b          	addiw	a4,a5,5
    800050e4:	08c77663          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    800050e8:	00e50733          	add	a4,a0,a4
    800050ec:	00b70023          	sb	a1,0(a4)
    800050f0:	0067871b          	addiw	a4,a5,6
    800050f4:	06c77e63          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    800050f8:	00e50733          	add	a4,a0,a4
    800050fc:	00b70023          	sb	a1,0(a4)
    80005100:	0077871b          	addiw	a4,a5,7
    80005104:	06c77663          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    80005108:	00e50733          	add	a4,a0,a4
    8000510c:	00b70023          	sb	a1,0(a4)
    80005110:	0087871b          	addiw	a4,a5,8
    80005114:	04c77e63          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    80005118:	00e50733          	add	a4,a0,a4
    8000511c:	00b70023          	sb	a1,0(a4)
    80005120:	0097871b          	addiw	a4,a5,9
    80005124:	04c77663          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    80005128:	00e50733          	add	a4,a0,a4
    8000512c:	00b70023          	sb	a1,0(a4)
    80005130:	00a7871b          	addiw	a4,a5,10
    80005134:	02c77e63          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    80005138:	00e50733          	add	a4,a0,a4
    8000513c:	00b70023          	sb	a1,0(a4)
    80005140:	00b7871b          	addiw	a4,a5,11
    80005144:	02c77663          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    80005148:	00e50733          	add	a4,a0,a4
    8000514c:	00b70023          	sb	a1,0(a4)
    80005150:	00c7871b          	addiw	a4,a5,12
    80005154:	00c77e63          	bgeu	a4,a2,80005170 <__memset+0x1c8>
    80005158:	00e50733          	add	a4,a0,a4
    8000515c:	00b70023          	sb	a1,0(a4)
    80005160:	00d7879b          	addiw	a5,a5,13
    80005164:	00c7f663          	bgeu	a5,a2,80005170 <__memset+0x1c8>
    80005168:	00f507b3          	add	a5,a0,a5
    8000516c:	00b78023          	sb	a1,0(a5)
    80005170:	00813403          	ld	s0,8(sp)
    80005174:	01010113          	addi	sp,sp,16
    80005178:	00008067          	ret
    8000517c:	00b00693          	li	a3,11
    80005180:	e55ff06f          	j	80004fd4 <__memset+0x2c>
    80005184:	00300e93          	li	t4,3
    80005188:	ea5ff06f          	j	8000502c <__memset+0x84>
    8000518c:	00100e93          	li	t4,1
    80005190:	e9dff06f          	j	8000502c <__memset+0x84>
    80005194:	00000e93          	li	t4,0
    80005198:	e95ff06f          	j	8000502c <__memset+0x84>
    8000519c:	00000793          	li	a5,0
    800051a0:	ef9ff06f          	j	80005098 <__memset+0xf0>
    800051a4:	00200e93          	li	t4,2
    800051a8:	e85ff06f          	j	8000502c <__memset+0x84>
    800051ac:	00400e93          	li	t4,4
    800051b0:	e7dff06f          	j	8000502c <__memset+0x84>
    800051b4:	00500e93          	li	t4,5
    800051b8:	e75ff06f          	j	8000502c <__memset+0x84>
    800051bc:	00600e93          	li	t4,6
    800051c0:	e6dff06f          	j	8000502c <__memset+0x84>

00000000800051c4 <__memmove>:
    800051c4:	ff010113          	addi	sp,sp,-16
    800051c8:	00813423          	sd	s0,8(sp)
    800051cc:	01010413          	addi	s0,sp,16
    800051d0:	0e060863          	beqz	a2,800052c0 <__memmove+0xfc>
    800051d4:	fff6069b          	addiw	a3,a2,-1
    800051d8:	0006881b          	sext.w	a6,a3
    800051dc:	0ea5e863          	bltu	a1,a0,800052cc <__memmove+0x108>
    800051e0:	00758713          	addi	a4,a1,7
    800051e4:	00a5e7b3          	or	a5,a1,a0
    800051e8:	40a70733          	sub	a4,a4,a0
    800051ec:	0077f793          	andi	a5,a5,7
    800051f0:	00f73713          	sltiu	a4,a4,15
    800051f4:	00174713          	xori	a4,a4,1
    800051f8:	0017b793          	seqz	a5,a5
    800051fc:	00e7f7b3          	and	a5,a5,a4
    80005200:	10078863          	beqz	a5,80005310 <__memmove+0x14c>
    80005204:	00900793          	li	a5,9
    80005208:	1107f463          	bgeu	a5,a6,80005310 <__memmove+0x14c>
    8000520c:	0036581b          	srliw	a6,a2,0x3
    80005210:	fff8081b          	addiw	a6,a6,-1
    80005214:	02081813          	slli	a6,a6,0x20
    80005218:	01d85893          	srli	a7,a6,0x1d
    8000521c:	00858813          	addi	a6,a1,8
    80005220:	00058793          	mv	a5,a1
    80005224:	00050713          	mv	a4,a0
    80005228:	01088833          	add	a6,a7,a6
    8000522c:	0007b883          	ld	a7,0(a5)
    80005230:	00878793          	addi	a5,a5,8
    80005234:	00870713          	addi	a4,a4,8
    80005238:	ff173c23          	sd	a7,-8(a4)
    8000523c:	ff0798e3          	bne	a5,a6,8000522c <__memmove+0x68>
    80005240:	ff867713          	andi	a4,a2,-8
    80005244:	02071793          	slli	a5,a4,0x20
    80005248:	0207d793          	srli	a5,a5,0x20
    8000524c:	00f585b3          	add	a1,a1,a5
    80005250:	40e686bb          	subw	a3,a3,a4
    80005254:	00f507b3          	add	a5,a0,a5
    80005258:	06e60463          	beq	a2,a4,800052c0 <__memmove+0xfc>
    8000525c:	0005c703          	lbu	a4,0(a1)
    80005260:	00e78023          	sb	a4,0(a5)
    80005264:	04068e63          	beqz	a3,800052c0 <__memmove+0xfc>
    80005268:	0015c603          	lbu	a2,1(a1)
    8000526c:	00100713          	li	a4,1
    80005270:	00c780a3          	sb	a2,1(a5)
    80005274:	04e68663          	beq	a3,a4,800052c0 <__memmove+0xfc>
    80005278:	0025c603          	lbu	a2,2(a1)
    8000527c:	00200713          	li	a4,2
    80005280:	00c78123          	sb	a2,2(a5)
    80005284:	02e68e63          	beq	a3,a4,800052c0 <__memmove+0xfc>
    80005288:	0035c603          	lbu	a2,3(a1)
    8000528c:	00300713          	li	a4,3
    80005290:	00c781a3          	sb	a2,3(a5)
    80005294:	02e68663          	beq	a3,a4,800052c0 <__memmove+0xfc>
    80005298:	0045c603          	lbu	a2,4(a1)
    8000529c:	00400713          	li	a4,4
    800052a0:	00c78223          	sb	a2,4(a5)
    800052a4:	00e68e63          	beq	a3,a4,800052c0 <__memmove+0xfc>
    800052a8:	0055c603          	lbu	a2,5(a1)
    800052ac:	00500713          	li	a4,5
    800052b0:	00c782a3          	sb	a2,5(a5)
    800052b4:	00e68663          	beq	a3,a4,800052c0 <__memmove+0xfc>
    800052b8:	0065c703          	lbu	a4,6(a1)
    800052bc:	00e78323          	sb	a4,6(a5)
    800052c0:	00813403          	ld	s0,8(sp)
    800052c4:	01010113          	addi	sp,sp,16
    800052c8:	00008067          	ret
    800052cc:	02061713          	slli	a4,a2,0x20
    800052d0:	02075713          	srli	a4,a4,0x20
    800052d4:	00e587b3          	add	a5,a1,a4
    800052d8:	f0f574e3          	bgeu	a0,a5,800051e0 <__memmove+0x1c>
    800052dc:	02069613          	slli	a2,a3,0x20
    800052e0:	02065613          	srli	a2,a2,0x20
    800052e4:	fff64613          	not	a2,a2
    800052e8:	00e50733          	add	a4,a0,a4
    800052ec:	00c78633          	add	a2,a5,a2
    800052f0:	fff7c683          	lbu	a3,-1(a5)
    800052f4:	fff78793          	addi	a5,a5,-1
    800052f8:	fff70713          	addi	a4,a4,-1
    800052fc:	00d70023          	sb	a3,0(a4)
    80005300:	fec798e3          	bne	a5,a2,800052f0 <__memmove+0x12c>
    80005304:	00813403          	ld	s0,8(sp)
    80005308:	01010113          	addi	sp,sp,16
    8000530c:	00008067          	ret
    80005310:	02069713          	slli	a4,a3,0x20
    80005314:	02075713          	srli	a4,a4,0x20
    80005318:	00170713          	addi	a4,a4,1
    8000531c:	00e50733          	add	a4,a0,a4
    80005320:	00050793          	mv	a5,a0
    80005324:	0005c683          	lbu	a3,0(a1)
    80005328:	00178793          	addi	a5,a5,1
    8000532c:	00158593          	addi	a1,a1,1
    80005330:	fed78fa3          	sb	a3,-1(a5)
    80005334:	fee798e3          	bne	a5,a4,80005324 <__memmove+0x160>
    80005338:	f89ff06f          	j	800052c0 <__memmove+0xfc>

000000008000533c <__putc>:
    8000533c:	fe010113          	addi	sp,sp,-32
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00113c23          	sd	ra,24(sp)
    80005348:	02010413          	addi	s0,sp,32
    8000534c:	00050793          	mv	a5,a0
    80005350:	fef40593          	addi	a1,s0,-17
    80005354:	00100613          	li	a2,1
    80005358:	00000513          	li	a0,0
    8000535c:	fef407a3          	sb	a5,-17(s0)
    80005360:	fffff097          	auipc	ra,0xfffff
    80005364:	b3c080e7          	jalr	-1220(ra) # 80003e9c <console_write>
    80005368:	01813083          	ld	ra,24(sp)
    8000536c:	01013403          	ld	s0,16(sp)
    80005370:	02010113          	addi	sp,sp,32
    80005374:	00008067          	ret

0000000080005378 <__getc>:
    80005378:	fe010113          	addi	sp,sp,-32
    8000537c:	00813823          	sd	s0,16(sp)
    80005380:	00113c23          	sd	ra,24(sp)
    80005384:	02010413          	addi	s0,sp,32
    80005388:	fe840593          	addi	a1,s0,-24
    8000538c:	00100613          	li	a2,1
    80005390:	00000513          	li	a0,0
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	ae8080e7          	jalr	-1304(ra) # 80003e7c <console_read>
    8000539c:	fe844503          	lbu	a0,-24(s0)
    800053a0:	01813083          	ld	ra,24(sp)
    800053a4:	01013403          	ld	s0,16(sp)
    800053a8:	02010113          	addi	sp,sp,32
    800053ac:	00008067          	ret

00000000800053b0 <console_handler>:
    800053b0:	fe010113          	addi	sp,sp,-32
    800053b4:	00813823          	sd	s0,16(sp)
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	00913423          	sd	s1,8(sp)
    800053c0:	02010413          	addi	s0,sp,32
    800053c4:	14202773          	csrr	a4,scause
    800053c8:	100027f3          	csrr	a5,sstatus
    800053cc:	0027f793          	andi	a5,a5,2
    800053d0:	06079e63          	bnez	a5,8000544c <console_handler+0x9c>
    800053d4:	00074c63          	bltz	a4,800053ec <console_handler+0x3c>
    800053d8:	01813083          	ld	ra,24(sp)
    800053dc:	01013403          	ld	s0,16(sp)
    800053e0:	00813483          	ld	s1,8(sp)
    800053e4:	02010113          	addi	sp,sp,32
    800053e8:	00008067          	ret
    800053ec:	0ff77713          	andi	a4,a4,255
    800053f0:	00900793          	li	a5,9
    800053f4:	fef712e3          	bne	a4,a5,800053d8 <console_handler+0x28>
    800053f8:	ffffe097          	auipc	ra,0xffffe
    800053fc:	6dc080e7          	jalr	1756(ra) # 80003ad4 <plic_claim>
    80005400:	00a00793          	li	a5,10
    80005404:	00050493          	mv	s1,a0
    80005408:	02f50c63          	beq	a0,a5,80005440 <console_handler+0x90>
    8000540c:	fc0506e3          	beqz	a0,800053d8 <console_handler+0x28>
    80005410:	00050593          	mv	a1,a0
    80005414:	00001517          	auipc	a0,0x1
    80005418:	ff450513          	addi	a0,a0,-12 # 80006408 <CONSOLE_STATUS+0x3f8>
    8000541c:	fffff097          	auipc	ra,0xfffff
    80005420:	afc080e7          	jalr	-1284(ra) # 80003f18 <__printf>
    80005424:	01013403          	ld	s0,16(sp)
    80005428:	01813083          	ld	ra,24(sp)
    8000542c:	00048513          	mv	a0,s1
    80005430:	00813483          	ld	s1,8(sp)
    80005434:	02010113          	addi	sp,sp,32
    80005438:	ffffe317          	auipc	t1,0xffffe
    8000543c:	6d430067          	jr	1748(t1) # 80003b0c <plic_complete>
    80005440:	fffff097          	auipc	ra,0xfffff
    80005444:	3e0080e7          	jalr	992(ra) # 80004820 <uartintr>
    80005448:	fddff06f          	j	80005424 <console_handler+0x74>
    8000544c:	00001517          	auipc	a0,0x1
    80005450:	0bc50513          	addi	a0,a0,188 # 80006508 <digits+0x78>
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	a68080e7          	jalr	-1432(ra) # 80003ebc <panic>
	...
