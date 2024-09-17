
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9c013103          	ld	sp,-1600(sp) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4c8020ef          	jal	ra,800024e4 <start>

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
    800011a4:	3e9000ef          	jal	ra,80001d8c <_ZN5Riscv20handleSupervisorTrapEv>

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

00000000800012b0 <_Z15thread_dispatchv>:


void thread_dispatch() {
    800012b0:	ff010113          	addi	sp,sp,-16
    800012b4:	00813423          	sd	s0,8(sp)
    800012b8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012bc:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012c0:	00000073          	ecall
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800012d0:	fe010113          	addi	sp,sp,-32
    800012d4:	00113c23          	sd	ra,24(sp)
    800012d8:	00813823          	sd	s0,16(sp)
    800012dc:	00913423          	sd	s1,8(sp)
    800012e0:	01213023          	sd	s2,0(sp)
    800012e4:	02010413          	addi	s0,sp,32
    800012e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012ec:	00100793          	li	a5,1
    800012f0:	02a7f663          	bgeu	a5,a0,8000131c <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) { TCB::yield(); }
    800012f4:	00357793          	andi	a5,a0,3
    800012f8:	02078e63          	beqz	a5,80001334 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012fc:	fff48513          	addi	a0,s1,-1
    80001300:	00000097          	auipc	ra,0x0
    80001304:	fd0080e7          	jalr	-48(ra) # 800012d0 <_ZL9fibonaccim>
    80001308:	00050913          	mv	s2,a0
    8000130c:	ffe48513          	addi	a0,s1,-2
    80001310:	00000097          	auipc	ra,0x0
    80001314:	fc0080e7          	jalr	-64(ra) # 800012d0 <_ZL9fibonaccim>
    80001318:	00a90533          	add	a0,s2,a0
}
    8000131c:	01813083          	ld	ra,24(sp)
    80001320:	01013403          	ld	s0,16(sp)
    80001324:	00813483          	ld	s1,8(sp)
    80001328:	00013903          	ld	s2,0(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret
    if (n % 4 == 0) { TCB::yield(); }
    80001334:	00001097          	auipc	ra,0x1
    80001338:	8ac080e7          	jalr	-1876(ra) # 80001be0 <_ZN3TCB5yieldEv>
    8000133c:	fc1ff06f          	j	800012fc <_ZL9fibonaccim+0x2c>

0000000080001340 <_Z11workerBodyAv>:
{
    80001340:	fe010113          	addi	sp,sp,-32
    80001344:	00113c23          	sd	ra,24(sp)
    80001348:	00813823          	sd	s0,16(sp)
    8000134c:	00913423          	sd	s1,8(sp)
    80001350:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001354:	00000493          	li	s1,0
    80001358:	0300006f          	j	80001388 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000135c:	00168693          	addi	a3,a3,1
    80001360:	000027b7          	lui	a5,0x2
    80001364:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001368:	00d7ee63          	bltu	a5,a3,80001384 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000136c:	00000713          	li	a4,0
    80001370:	000077b7          	lui	a5,0x7
    80001374:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001378:	fee7e2e3          	bltu	a5,a4,8000135c <_Z11workerBodyAv+0x1c>
    8000137c:	00170713          	addi	a4,a4,1
    80001380:	ff1ff06f          	j	80001370 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001384:	00148493          	addi	s1,s1,1
    80001388:	00900793          	li	a5,9
    8000138c:	0497e063          	bltu	a5,s1,800013cc <_Z11workerBodyAv+0x8c>
        printString("A: i=");
    80001390:	00004517          	auipc	a0,0x4
    80001394:	c9050513          	addi	a0,a0,-880 # 80005020 <CONSOLE_STATUS+0x10>
    80001398:	00000097          	auipc	ra,0x0
    8000139c:	368080e7          	jalr	872(ra) # 80001700 <_Z11printStringPKc>
        printInt(i);
    800013a0:	00000613          	li	a2,0
    800013a4:	00a00593          	li	a1,10
    800013a8:	0004851b          	sext.w	a0,s1
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	504080e7          	jalr	1284(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    800013b4:	00004517          	auipc	a0,0x4
    800013b8:	d0c50513          	addi	a0,a0,-756 # 800050c0 <CONSOLE_STATUS+0xb0>
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	344080e7          	jalr	836(ra) # 80001700 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013c4:	00000693          	li	a3,0
    800013c8:	f99ff06f          	j	80001360 <_Z11workerBodyAv+0x20>
}
    800013cc:	01813083          	ld	ra,24(sp)
    800013d0:	01013403          	ld	s0,16(sp)
    800013d4:	00813483          	ld	s1,8(sp)
    800013d8:	02010113          	addi	sp,sp,32
    800013dc:	00008067          	ret

00000000800013e0 <_Z11workerBodyBv>:
{
    800013e0:	fe010113          	addi	sp,sp,-32
    800013e4:	00113c23          	sd	ra,24(sp)
    800013e8:	00813823          	sd	s0,16(sp)
    800013ec:	00913423          	sd	s1,8(sp)
    800013f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800013f4:	00000493          	li	s1,0
    800013f8:	0300006f          	j	80001428 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800013fc:	00168693          	addi	a3,a3,1
    80001400:	000027b7          	lui	a5,0x2
    80001404:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001408:	00d7ee63          	bltu	a5,a3,80001424 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000140c:	00000713          	li	a4,0
    80001410:	000077b7          	lui	a5,0x7
    80001414:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001418:	fee7e2e3          	bltu	a5,a4,800013fc <_Z11workerBodyBv+0x1c>
    8000141c:	00170713          	addi	a4,a4,1
    80001420:	ff1ff06f          	j	80001410 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001424:	00148493          	addi	s1,s1,1
    80001428:	00f00793          	li	a5,15
    8000142c:	0497e063          	bltu	a5,s1,8000146c <_Z11workerBodyBv+0x8c>
        printString("B: i=");
    80001430:	00004517          	auipc	a0,0x4
    80001434:	bf850513          	addi	a0,a0,-1032 # 80005028 <CONSOLE_STATUS+0x18>
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	2c8080e7          	jalr	712(ra) # 80001700 <_Z11printStringPKc>
        printInt(i);
    80001440:	00000613          	li	a2,0
    80001444:	00a00593          	li	a1,10
    80001448:	0004851b          	sext.w	a0,s1
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	464080e7          	jalr	1124(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    80001454:	00004517          	auipc	a0,0x4
    80001458:	c6c50513          	addi	a0,a0,-916 # 800050c0 <CONSOLE_STATUS+0xb0>
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	2a4080e7          	jalr	676(ra) # 80001700 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001464:	00000693          	li	a3,0
    80001468:	f99ff06f          	j	80001400 <_Z11workerBodyBv+0x20>
}
    8000146c:	01813083          	ld	ra,24(sp)
    80001470:	01013403          	ld	s0,16(sp)
    80001474:	00813483          	ld	s1,8(sp)
    80001478:	02010113          	addi	sp,sp,32
    8000147c:	00008067          	ret

0000000080001480 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	01213023          	sd	s2,0(sp)
    80001494:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001498:	00000493          	li	s1,0
    8000149c:	0400006f          	j	800014dc <_Z11workerBodyCv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800014a0:	00004517          	auipc	a0,0x4
    800014a4:	b9050513          	addi	a0,a0,-1136 # 80005030 <CONSOLE_STATUS+0x20>
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	258080e7          	jalr	600(ra) # 80001700 <_Z11printStringPKc>
        printInt(i);
    800014b0:	00000613          	li	a2,0
    800014b4:	00a00593          	li	a1,10
    800014b8:	00048513          	mv	a0,s1
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	3f4080e7          	jalr	1012(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    800014c4:	00004517          	auipc	a0,0x4
    800014c8:	bfc50513          	addi	a0,a0,-1028 # 800050c0 <CONSOLE_STATUS+0xb0>
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	234080e7          	jalr	564(ra) # 80001700 <_Z11printStringPKc>
    for (; i < 3; i++)
    800014d4:	0014849b          	addiw	s1,s1,1
    800014d8:	0ff4f493          	andi	s1,s1,255
    800014dc:	00200793          	li	a5,2
    800014e0:	fc97f0e3          	bgeu	a5,s1,800014a0 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800014e4:	00004517          	auipc	a0,0x4
    800014e8:	b5450513          	addi	a0,a0,-1196 # 80005038 <CONSOLE_STATUS+0x28>
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	214080e7          	jalr	532(ra) # 80001700 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014f4:	00700313          	li	t1,7
    TCB::yield();
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	6e8080e7          	jalr	1768(ra) # 80001be0 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001500:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001504:	00004517          	auipc	a0,0x4
    80001508:	b4450513          	addi	a0,a0,-1212 # 80005048 <CONSOLE_STATUS+0x38>
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	1f4080e7          	jalr	500(ra) # 80001700 <_Z11printStringPKc>
    printInt(t1);
    80001514:	00000613          	li	a2,0
    80001518:	00a00593          	li	a1,10
    8000151c:	0009051b          	sext.w	a0,s2
    80001520:	00000097          	auipc	ra,0x0
    80001524:	390080e7          	jalr	912(ra) # 800018b0 <_Z8printIntiii>
    printString("\n");
    80001528:	00004517          	auipc	a0,0x4
    8000152c:	b9850513          	addi	a0,a0,-1128 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001530:	00000097          	auipc	ra,0x0
    80001534:	1d0080e7          	jalr	464(ra) # 80001700 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001538:	00c00513          	li	a0,12
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	d94080e7          	jalr	-620(ra) # 800012d0 <_ZL9fibonaccim>
    80001544:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001548:	00004517          	auipc	a0,0x4
    8000154c:	b0850513          	addi	a0,a0,-1272 # 80005050 <CONSOLE_STATUS+0x40>
    80001550:	00000097          	auipc	ra,0x0
    80001554:	1b0080e7          	jalr	432(ra) # 80001700 <_Z11printStringPKc>
    printInt(result);
    80001558:	00000613          	li	a2,0
    8000155c:	00a00593          	li	a1,10
    80001560:	0009051b          	sext.w	a0,s2
    80001564:	00000097          	auipc	ra,0x0
    80001568:	34c080e7          	jalr	844(ra) # 800018b0 <_Z8printIntiii>
    printString("\n");
    8000156c:	00004517          	auipc	a0,0x4
    80001570:	b5450513          	addi	a0,a0,-1196 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001574:	00000097          	auipc	ra,0x0
    80001578:	18c080e7          	jalr	396(ra) # 80001700 <_Z11printStringPKc>
    8000157c:	0400006f          	j	800015bc <_Z11workerBodyCv+0x13c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001580:	00004517          	auipc	a0,0x4
    80001584:	ab050513          	addi	a0,a0,-1360 # 80005030 <CONSOLE_STATUS+0x20>
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	178080e7          	jalr	376(ra) # 80001700 <_Z11printStringPKc>
        printInt(i);
    80001590:	00000613          	li	a2,0
    80001594:	00a00593          	li	a1,10
    80001598:	00048513          	mv	a0,s1
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	314080e7          	jalr	788(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    800015a4:	00004517          	auipc	a0,0x4
    800015a8:	b1c50513          	addi	a0,a0,-1252 # 800050c0 <CONSOLE_STATUS+0xb0>
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	154080e7          	jalr	340(ra) # 80001700 <_Z11printStringPKc>
    for (; i < 6; i++)
    800015b4:	0014849b          	addiw	s1,s1,1
    800015b8:	0ff4f493          	andi	s1,s1,255
    800015bc:	00500793          	li	a5,5
    800015c0:	fc97f0e3          	bgeu	a5,s1,80001580 <_Z11workerBodyCv+0x100>
    }
    //TCB::running->setFinished(true);
    //TCB::yield();
}
    800015c4:	01813083          	ld	ra,24(sp)
    800015c8:	01013403          	ld	s0,16(sp)
    800015cc:	00813483          	ld	s1,8(sp)
    800015d0:	00013903          	ld	s2,0(sp)
    800015d4:	02010113          	addi	sp,sp,32
    800015d8:	00008067          	ret

00000000800015dc <_Z11workerBodyDv>:

void workerBodyD()
{
    800015dc:	fe010113          	addi	sp,sp,-32
    800015e0:	00113c23          	sd	ra,24(sp)
    800015e4:	00813823          	sd	s0,16(sp)
    800015e8:	00913423          	sd	s1,8(sp)
    800015ec:	01213023          	sd	s2,0(sp)
    800015f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800015f4:	00a00493          	li	s1,10
    800015f8:	0400006f          	j	80001638 <_Z11workerBodyDv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800015fc:	00004517          	auipc	a0,0x4
    80001600:	a6450513          	addi	a0,a0,-1436 # 80005060 <CONSOLE_STATUS+0x50>
    80001604:	00000097          	auipc	ra,0x0
    80001608:	0fc080e7          	jalr	252(ra) # 80001700 <_Z11printStringPKc>
        printInt(i);
    8000160c:	00000613          	li	a2,0
    80001610:	00a00593          	li	a1,10
    80001614:	00048513          	mv	a0,s1
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	298080e7          	jalr	664(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    80001620:	00004517          	auipc	a0,0x4
    80001624:	aa050513          	addi	a0,a0,-1376 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	0d8080e7          	jalr	216(ra) # 80001700 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001630:	0014849b          	addiw	s1,s1,1
    80001634:	0ff4f493          	andi	s1,s1,255
    80001638:	00c00793          	li	a5,12
    8000163c:	fc97f0e3          	bgeu	a5,s1,800015fc <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001640:	00004517          	auipc	a0,0x4
    80001644:	a2850513          	addi	a0,a0,-1496 # 80005068 <CONSOLE_STATUS+0x58>
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	0b8080e7          	jalr	184(ra) # 80001700 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001650:	00500313          	li	t1,5
    TCB::yield();
    80001654:	00000097          	auipc	ra,0x0
    80001658:	58c080e7          	jalr	1420(ra) # 80001be0 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(23);
    8000165c:	01700513          	li	a0,23
    80001660:	00000097          	auipc	ra,0x0
    80001664:	c70080e7          	jalr	-912(ra) # 800012d0 <_ZL9fibonaccim>
    80001668:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000166c:	00004517          	auipc	a0,0x4
    80001670:	a0c50513          	addi	a0,a0,-1524 # 80005078 <CONSOLE_STATUS+0x68>
    80001674:	00000097          	auipc	ra,0x0
    80001678:	08c080e7          	jalr	140(ra) # 80001700 <_Z11printStringPKc>
    printInt(result);
    8000167c:	00000613          	li	a2,0
    80001680:	00a00593          	li	a1,10
    80001684:	0009051b          	sext.w	a0,s2
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	228080e7          	jalr	552(ra) # 800018b0 <_Z8printIntiii>
    printString("\n");
    80001690:	00004517          	auipc	a0,0x4
    80001694:	a3050513          	addi	a0,a0,-1488 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	068080e7          	jalr	104(ra) # 80001700 <_Z11printStringPKc>
    800016a0:	0400006f          	j	800016e0 <_Z11workerBodyDv+0x104>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800016a4:	00004517          	auipc	a0,0x4
    800016a8:	9bc50513          	addi	a0,a0,-1604 # 80005060 <CONSOLE_STATUS+0x50>
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	054080e7          	jalr	84(ra) # 80001700 <_Z11printStringPKc>
        printInt(i);
    800016b4:	00000613          	li	a2,0
    800016b8:	00a00593          	li	a1,10
    800016bc:	00048513          	mv	a0,s1
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	1f0080e7          	jalr	496(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	9f850513          	addi	a0,a0,-1544 # 800050c0 <CONSOLE_STATUS+0xb0>
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	030080e7          	jalr	48(ra) # 80001700 <_Z11printStringPKc>
    for (; i < 16; i++)
    800016d8:	0014849b          	addiw	s1,s1,1
    800016dc:	0ff4f493          	andi	s1,s1,255
    800016e0:	00f00793          	li	a5,15
    800016e4:	fc97f0e3          	bgeu	a5,s1,800016a4 <_Z11workerBodyDv+0xc8>
    }
    // TCB::running->setFinished(true);
    // TCB::yield();
    800016e8:	01813083          	ld	ra,24(sp)
    800016ec:	01013403          	ld	s0,16(sp)
    800016f0:	00813483          	ld	s1,8(sp)
    800016f4:	00013903          	ld	s2,0(sp)
    800016f8:	02010113          	addi	sp,sp,32
    800016fc:	00008067          	ret

0000000080001700 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001700:	fe010113          	addi	sp,sp,-32
    80001704:	00113c23          	sd	ra,24(sp)
    80001708:	00813823          	sd	s0,16(sp)
    8000170c:	00913423          	sd	s1,8(sp)
    80001710:	02010413          	addi	s0,sp,32
    80001714:	00050493          	mv	s1,a0
    LOCK();
    80001718:	00100613          	li	a2,1
    8000171c:	00000593          	li	a1,0
    80001720:	00004517          	auipc	a0,0x4
    80001724:	31050513          	addi	a0,a0,784 # 80005a30 <lockPrint>
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	9d0080e7          	jalr	-1584(ra) # 800010f8 <copy_and_swap>
    80001730:	00050863          	beqz	a0,80001740 <_Z11printStringPKc+0x40>
    80001734:	00000097          	auipc	ra,0x0
    80001738:	b7c080e7          	jalr	-1156(ra) # 800012b0 <_Z15thread_dispatchv>
    8000173c:	fddff06f          	j	80001718 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001740:	0004c503          	lbu	a0,0(s1)
    80001744:	00050a63          	beqz	a0,80001758 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    80001748:	00003097          	auipc	ra,0x3
    8000174c:	e64080e7          	jalr	-412(ra) # 800045ac <__putc>
        string++;
    80001750:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001754:	fedff06f          	j	80001740 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80001758:	00000613          	li	a2,0
    8000175c:	00100593          	li	a1,1
    80001760:	00004517          	auipc	a0,0x4
    80001764:	2d050513          	addi	a0,a0,720 # 80005a30 <lockPrint>
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	990080e7          	jalr	-1648(ra) # 800010f8 <copy_and_swap>
    80001770:	fe0514e3          	bnez	a0,80001758 <_Z11printStringPKc+0x58>
}
    80001774:	01813083          	ld	ra,24(sp)
    80001778:	01013403          	ld	s0,16(sp)
    8000177c:	00813483          	ld	s1,8(sp)
    80001780:	02010113          	addi	sp,sp,32
    80001784:	00008067          	ret

0000000080001788 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001788:	fd010113          	addi	sp,sp,-48
    8000178c:	02113423          	sd	ra,40(sp)
    80001790:	02813023          	sd	s0,32(sp)
    80001794:	00913c23          	sd	s1,24(sp)
    80001798:	01213823          	sd	s2,16(sp)
    8000179c:	01313423          	sd	s3,8(sp)
    800017a0:	01413023          	sd	s4,0(sp)
    800017a4:	03010413          	addi	s0,sp,48
    800017a8:	00050993          	mv	s3,a0
    800017ac:	00058a13          	mv	s4,a1
    LOCK();
    800017b0:	00100613          	li	a2,1
    800017b4:	00000593          	li	a1,0
    800017b8:	00004517          	auipc	a0,0x4
    800017bc:	27850513          	addi	a0,a0,632 # 80005a30 <lockPrint>
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	938080e7          	jalr	-1736(ra) # 800010f8 <copy_and_swap>
    800017c8:	00050863          	beqz	a0,800017d8 <_Z9getStringPci+0x50>
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	ae4080e7          	jalr	-1308(ra) # 800012b0 <_Z15thread_dispatchv>
    800017d4:	fddff06f          	j	800017b0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800017d8:	00000913          	li	s2,0
    800017dc:	00090493          	mv	s1,s2
    800017e0:	0019091b          	addiw	s2,s2,1
    800017e4:	03495a63          	bge	s2,s4,80001818 <_Z9getStringPci+0x90>
        cc = __getc();
    800017e8:	00003097          	auipc	ra,0x3
    800017ec:	e00080e7          	jalr	-512(ra) # 800045e8 <__getc>
        if(cc < 1)
    800017f0:	02050463          	beqz	a0,80001818 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800017f4:	009984b3          	add	s1,s3,s1
    800017f8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800017fc:	00a00793          	li	a5,10
    80001800:	00f50a63          	beq	a0,a5,80001814 <_Z9getStringPci+0x8c>
    80001804:	00d00793          	li	a5,13
    80001808:	fcf51ae3          	bne	a0,a5,800017dc <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000180c:	00090493          	mv	s1,s2
    80001810:	0080006f          	j	80001818 <_Z9getStringPci+0x90>
    80001814:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001818:	009984b3          	add	s1,s3,s1
    8000181c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001820:	00000613          	li	a2,0
    80001824:	00100593          	li	a1,1
    80001828:	00004517          	auipc	a0,0x4
    8000182c:	20850513          	addi	a0,a0,520 # 80005a30 <lockPrint>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	8c8080e7          	jalr	-1848(ra) # 800010f8 <copy_and_swap>
    80001838:	fe0514e3          	bnez	a0,80001820 <_Z9getStringPci+0x98>
    return buf;
}
    8000183c:	00098513          	mv	a0,s3
    80001840:	02813083          	ld	ra,40(sp)
    80001844:	02013403          	ld	s0,32(sp)
    80001848:	01813483          	ld	s1,24(sp)
    8000184c:	01013903          	ld	s2,16(sp)
    80001850:	00813983          	ld	s3,8(sp)
    80001854:	00013a03          	ld	s4,0(sp)
    80001858:	03010113          	addi	sp,sp,48
    8000185c:	00008067          	ret

0000000080001860 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    8000186c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001870:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001874:	0006c603          	lbu	a2,0(a3)
    80001878:	fd06071b          	addiw	a4,a2,-48
    8000187c:	0ff77713          	andi	a4,a4,255
    80001880:	00900793          	li	a5,9
    80001884:	02e7e063          	bltu	a5,a4,800018a4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001888:	0025179b          	slliw	a5,a0,0x2
    8000188c:	00a787bb          	addw	a5,a5,a0
    80001890:	0017979b          	slliw	a5,a5,0x1
    80001894:	00168693          	addi	a3,a3,1
    80001898:	00c787bb          	addw	a5,a5,a2
    8000189c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800018a0:	fd5ff06f          	j	80001874 <_Z11stringToIntPKc+0x14>
    return n;
}
    800018a4:	00813403          	ld	s0,8(sp)
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret

00000000800018b0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800018b0:	fc010113          	addi	sp,sp,-64
    800018b4:	02113c23          	sd	ra,56(sp)
    800018b8:	02813823          	sd	s0,48(sp)
    800018bc:	02913423          	sd	s1,40(sp)
    800018c0:	03213023          	sd	s2,32(sp)
    800018c4:	01313c23          	sd	s3,24(sp)
    800018c8:	04010413          	addi	s0,sp,64
    800018cc:	00050493          	mv	s1,a0
    800018d0:	00058913          	mv	s2,a1
    800018d4:	00060993          	mv	s3,a2
    LOCK();
    800018d8:	00100613          	li	a2,1
    800018dc:	00000593          	li	a1,0
    800018e0:	00004517          	auipc	a0,0x4
    800018e4:	15050513          	addi	a0,a0,336 # 80005a30 <lockPrint>
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	810080e7          	jalr	-2032(ra) # 800010f8 <copy_and_swap>
    800018f0:	00050863          	beqz	a0,80001900 <_Z8printIntiii+0x50>
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	9bc080e7          	jalr	-1604(ra) # 800012b0 <_Z15thread_dispatchv>
    800018fc:	fddff06f          	j	800018d8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001900:	00098463          	beqz	s3,80001908 <_Z8printIntiii+0x58>
    80001904:	0804c463          	bltz	s1,8000198c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001908:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000190c:	00000593          	li	a1,0
    }

    i = 0;
    80001910:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001914:	0009079b          	sext.w	a5,s2
    80001918:	0325773b          	remuw	a4,a0,s2
    8000191c:	00048613          	mv	a2,s1
    80001920:	0014849b          	addiw	s1,s1,1
    80001924:	02071693          	slli	a3,a4,0x20
    80001928:	0206d693          	srli	a3,a3,0x20
    8000192c:	00004717          	auipc	a4,0x4
    80001930:	05470713          	addi	a4,a4,84 # 80005980 <digits>
    80001934:	00d70733          	add	a4,a4,a3
    80001938:	00074683          	lbu	a3,0(a4)
    8000193c:	fd040713          	addi	a4,s0,-48
    80001940:	00c70733          	add	a4,a4,a2
    80001944:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001948:	0005071b          	sext.w	a4,a0
    8000194c:	0325553b          	divuw	a0,a0,s2
    80001950:	fcf772e3          	bgeu	a4,a5,80001914 <_Z8printIntiii+0x64>
    if(neg)
    80001954:	00058c63          	beqz	a1,8000196c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80001958:	fd040793          	addi	a5,s0,-48
    8000195c:	009784b3          	add	s1,a5,s1
    80001960:	02d00793          	li	a5,45
    80001964:	fef48823          	sb	a5,-16(s1)
    80001968:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000196c:	fff4849b          	addiw	s1,s1,-1
    80001970:	0204c463          	bltz	s1,80001998 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80001974:	fd040793          	addi	a5,s0,-48
    80001978:	009787b3          	add	a5,a5,s1
    8000197c:	ff07c503          	lbu	a0,-16(a5)
    80001980:	00003097          	auipc	ra,0x3
    80001984:	c2c080e7          	jalr	-980(ra) # 800045ac <__putc>
    80001988:	fe5ff06f          	j	8000196c <_Z8printIntiii+0xbc>
        x = -xx;
    8000198c:	4090053b          	negw	a0,s1
        neg = 1;
    80001990:	00100593          	li	a1,1
        x = -xx;
    80001994:	f7dff06f          	j	80001910 <_Z8printIntiii+0x60>

    UNLOCK();
    80001998:	00000613          	li	a2,0
    8000199c:	00100593          	li	a1,1
    800019a0:	00004517          	auipc	a0,0x4
    800019a4:	09050513          	addi	a0,a0,144 # 80005a30 <lockPrint>
    800019a8:	fffff097          	auipc	ra,0xfffff
    800019ac:	750080e7          	jalr	1872(ra) # 800010f8 <copy_and_swap>
    800019b0:	fe0514e3          	bnez	a0,80001998 <_Z8printIntiii+0xe8>
    800019b4:	03813083          	ld	ra,56(sp)
    800019b8:	03013403          	ld	s0,48(sp)
    800019bc:	02813483          	ld	s1,40(sp)
    800019c0:	02013903          	ld	s2,32(sp)
    800019c4:	01813983          	ld	s3,24(sp)
    800019c8:	04010113          	addi	sp,sp,64
    800019cc:	00008067          	ret

00000000800019d0 <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"
#include "../h/riscv.hpp"

int main() {
    800019d0:	fc010113          	addi	sp,sp,-64
    800019d4:	02113c23          	sd	ra,56(sp)
    800019d8:	02813823          	sd	s0,48(sp)
    800019dc:	02913423          	sd	s1,40(sp)
    800019e0:	03213023          	sd	s2,32(sp)
    800019e4:	04010413          	addi	s0,sp,64
    MemoryAllocator::initFreeSegment();
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	aa4080e7          	jalr	-1372(ra) # 8000248c <_ZN15MemoryAllocator15initFreeSegmentEv>

    TCB* threads[3];

    threads[0] = TCB::createThread(nullptr);
    800019f0:	00000513          	li	a0,0
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	124080e7          	jalr	292(ra) # 80001b18 <_ZN3TCB12createThreadEPFvvE>
    800019fc:	fca43423          	sd	a0,-56(s0)
    TCB::running = threads[0];
    80001a00:	00004797          	auipc	a5,0x4
    80001a04:	fc87b783          	ld	a5,-56(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a08:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyC);
    80001a0c:	00004517          	auipc	a0,0x4
    80001a10:	fcc53503          	ld	a0,-52(a0) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	104080e7          	jalr	260(ra) # 80001b18 <_ZN3TCB12createThreadEPFvvE>
    80001a1c:	fca43823          	sd	a0,-48(s0)
    printString("Thread C created\n");
    80001a20:	00003517          	auipc	a0,0x3
    80001a24:	66850513          	addi	a0,a0,1640 # 80005088 <CONSOLE_STATUS+0x78>
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	cd8080e7          	jalr	-808(ra) # 80001700 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyD);
    80001a30:	00004517          	auipc	a0,0x4
    80001a34:	fb053503          	ld	a0,-80(a0) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	0e0080e7          	jalr	224(ra) # 80001b18 <_ZN3TCB12createThreadEPFvvE>
    80001a40:	fca43c23          	sd	a0,-40(s0)
    printString("Thread D created\n");
    80001a44:	00003517          	auipc	a0,0x3
    80001a48:	65c50513          	addi	a0,a0,1628 # 800050a0 <CONSOLE_STATUS+0x90>
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	cb4080e7          	jalr	-844(ra) # 80001700 <_Z11printStringPKc>
    // threads[3] = TCB::createThread(workerBodyC);
    // printString("Thread C created\n");
    // threads[4] = TCB::createThread(workerBodyD);
    // printString("Thread D created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001a54:	00004797          	auipc	a5,0x4
    80001a58:	f5c7b783          	ld	a5,-164(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile("csrw stvec, %0" : : "r"(stvec));
    80001a5c:	10579073          	csrw	stvec,a5
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    80001a60:	00001537          	lui	a0,0x1
    80001a64:	fffff097          	auipc	ra,0xfffff
    80001a68:	7e0080e7          	jalr	2016(ra) # 80001244 <_Z9mem_allocm>
    int rez = mem_free(stack);
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	80c080e7          	jalr	-2036(ra) # 80001278 <_Z8mem_freePv>
    printInt(rez);
    80001a74:	00000613          	li	a2,0
    80001a78:	00a00593          	li	a1,10
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	e34080e7          	jalr	-460(ra) # 800018b0 <_Z8printIntiii>
    80001a84:	00c0006f          	j	80001a90 <main+0xc0>

    while(!(threads[1]->isFinished() && threads[2]->isFinished() /*&& threads[3]->isFinished() && threads[4]->isFinished()*/)) TCB::yield();
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	158080e7          	jalr	344(ra) # 80001be0 <_ZN3TCB5yieldEv>
    80001a90:	fd043783          	ld	a5,-48(s0)

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }
    80001a94:	0287c783          	lbu	a5,40(a5)
    80001a98:	fe0788e3          	beqz	a5,80001a88 <main+0xb8>
    80001a9c:	fd843783          	ld	a5,-40(s0)
    80001aa0:	0287c783          	lbu	a5,40(a5)
    80001aa4:	fe0782e3          	beqz	a5,80001a88 <main+0xb8>
    80001aa8:	fc840493          	addi	s1,s0,-56
    80001aac:	0140006f          	j	80001ac0 <main+0xf0>

    for(auto &thread : threads) {
        delete thread;
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	260080e7          	jalr	608(ra) # 80001d14 <_ZdlPv>
    for(auto &thread : threads) {
    80001abc:	00848493          	addi	s1,s1,8
    80001ac0:	fe040793          	addi	a5,s0,-32
    80001ac4:	02f48063          	beq	s1,a5,80001ae4 <main+0x114>
        delete thread;
    80001ac8:	0004b903          	ld	s2,0(s1)
    80001acc:	fe0908e3          	beqz	s2,80001abc <main+0xec>
    ~TCB(){ delete[] stack; }
    80001ad0:	00893503          	ld	a0,8(s2)
    80001ad4:	fc050ee3          	beqz	a0,80001ab0 <main+0xe0>
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	264080e7          	jalr	612(ra) # 80001d3c <_ZdaPv>
    80001ae0:	fd1ff06f          	j	80001ab0 <main+0xe0>
    }

    Scheduler::deleteThreadQueue();
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	62c080e7          	jalr	1580(ra) # 80002110 <_ZN9Scheduler17deleteThreadQueueEv>

    printString("Finished\n");
    80001aec:	00003517          	auipc	a0,0x3
    80001af0:	5cc50513          	addi	a0,a0,1484 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	c0c080e7          	jalr	-1012(ra) # 80001700 <_Z11printStringPKc>

    return 0;
    80001afc:	00000513          	li	a0,0
    80001b00:	03813083          	ld	ra,56(sp)
    80001b04:	03013403          	ld	s0,48(sp)
    80001b08:	02813483          	ld	s1,40(sp)
    80001b0c:	02013903          	ld	s2,32(sp)
    80001b10:	04010113          	addi	sp,sp,64
    80001b14:	00008067          	ret

0000000080001b18 <_ZN3TCB12createThreadEPFvvE>:
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body) {
    80001b18:	fe010113          	addi	sp,sp,-32
    80001b1c:	00113c23          	sd	ra,24(sp)
    80001b20:	00813823          	sd	s0,16(sp)
    80001b24:	00913423          	sd	s1,8(sp)
    80001b28:	01213023          	sd	s2,0(sp)
    80001b2c:	02010413          	addi	s0,sp,32
    80001b30:	00050913          	mv	s2,a0
    return new TCB(body);
    80001b34:	03000513          	li	a0,48
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	18c080e7          	jalr	396(ra) # 80001cc4 <_Znwm>
    80001b40:	00050493          	mv	s1,a0
        context({
            (uint64) &threadWrapper,
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
        }),
        time_slice(DEFAULT_TIME_SLICE),
        finished(false) {
    80001b44:	01253023          	sd	s2,0(a0)
        stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001b48:	00090a63          	beqz	s2,80001b5c <_ZN3TCB12createThreadEPFvvE+0x44>
    80001b4c:	00008537          	lui	a0,0x8
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	19c080e7          	jalr	412(ra) # 80001cec <_Znam>
    80001b58:	0080006f          	j	80001b60 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001b5c:	00000513          	li	a0,0
        finished(false) {
    80001b60:	00a4b423          	sd	a0,8(s1)
    80001b64:	00000797          	auipc	a5,0x0
    80001b68:	0a078793          	addi	a5,a5,160 # 80001c04 <_ZN3TCB13threadWrapperEv>
    80001b6c:	00f4b823          	sd	a5,16(s1)
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001b70:	02050863          	beqz	a0,80001ba0 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001b74:	000087b7          	lui	a5,0x8
    80001b78:	00f507b3          	add	a5,a0,a5
        finished(false) {
    80001b7c:	00f4bc23          	sd	a5,24(s1)
    80001b80:	00200793          	li	a5,2
    80001b84:	02f4b023          	sd	a5,32(s1)
    80001b88:	02048423          	sb	zero,40(s1)
        if(body != nullptr) Scheduler::put(this);
    80001b8c:	02090c63          	beqz	s2,80001bc4 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001b90:	00048513          	mv	a0,s1
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	510080e7          	jalr	1296(ra) # 800020a4 <_ZN9Scheduler3putEP3TCB>
    80001b9c:	0280006f          	j	80001bc4 <_ZN3TCB12createThreadEPFvvE+0xac>
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001ba0:	00000793          	li	a5,0
    80001ba4:	fd9ff06f          	j	80001b7c <_ZN3TCB12createThreadEPFvvE+0x64>
    80001ba8:	00050913          	mv	s2,a0
    80001bac:	00048513          	mv	a0,s1
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	164080e7          	jalr	356(ra) # 80001d14 <_ZdlPv>
    80001bb8:	00090513          	mv	a0,s2
    80001bbc:	00005097          	auipc	ra,0x5
    80001bc0:	f7c080e7          	jalr	-132(ra) # 80006b38 <_Unwind_Resume>
}
    80001bc4:	00048513          	mv	a0,s1
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	00013903          	ld	s2,0(sp)
    80001bd8:	02010113          	addi	sp,sp,32
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN3TCB5yieldEv>:

void TCB::yield() {
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813423          	sd	s0,8(sp)
    80001be8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r"(value));
    80001bec:	00000793          	li	a5,0
    80001bf0:	00078513          	mv	a0,a5
    Riscv::w_a0(0);
    __asm__ volatile("ecall");
    80001bf4:	00000073          	ecall
}
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001c04:	fe010113          	addi	sp,sp,-32
    80001c08:	00113c23          	sd	ra,24(sp)
    80001c0c:	00813823          	sd	s0,16(sp)
    80001c10:	00913423          	sd	s1,8(sp)
    80001c14:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	14c080e7          	jalr	332(ra) # 80001d64 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001c20:	00004497          	auipc	s1,0x4
    80001c24:	e1848493          	addi	s1,s1,-488 # 80005a38 <_ZN3TCB7runningE>
    80001c28:	0004b783          	ld	a5,0(s1)
    80001c2c:	0007b783          	ld	a5,0(a5) # 8000 <_entry-0x7fff8000>
    80001c30:	000780e7          	jalr	a5
    running->setFinished(true);
    80001c34:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished) { this->finished = finished; }
    80001c38:	00100713          	li	a4,1
    80001c3c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	fa0080e7          	jalr	-96(ra) # 80001be0 <_ZN3TCB5yieldEv>
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret

0000000080001c5c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001c5c:	fe010113          	addi	sp,sp,-32
    80001c60:	00113c23          	sd	ra,24(sp)
    80001c64:	00813823          	sd	s0,16(sp)
    80001c68:	00913423          	sd	s1,8(sp)
    80001c6c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001c70:	00004497          	auipc	s1,0x4
    80001c74:	dc84b483          	ld	s1,-568(s1) # 80005a38 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001c78:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()){ Scheduler::put(old); }
    80001c7c:	02078c63          	beqz	a5,80001cb4 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	3bc080e7          	jalr	956(ra) # 8000203c <_ZN9Scheduler3getEv>
    80001c88:	00004797          	auipc	a5,0x4
    80001c8c:	daa7b823          	sd	a0,-592(a5) # 80005a38 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001c90:	01050593          	addi	a1,a0,16 # 8010 <_entry-0x7fff7ff0>
    80001c94:	01048513          	addi	a0,s1,16
    80001c98:	fffff097          	auipc	ra,0xfffff
    80001c9c:	598080e7          	jalr	1432(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ca0:	01813083          	ld	ra,24(sp)
    80001ca4:	01013403          	ld	s0,16(sp)
    80001ca8:	00813483          	ld	s1,8(sp)
    80001cac:	02010113          	addi	sp,sp,32
    80001cb0:	00008067          	ret
    if(!old->isFinished()){ Scheduler::put(old); }
    80001cb4:	00048513          	mv	a0,s1
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	3ec080e7          	jalr	1004(ra) # 800020a4 <_ZN9Scheduler3putEP3TCB>
    80001cc0:	fc1ff06f          	j	80001c80 <_ZN3TCB8dispatchEv+0x24>

0000000080001cc4 <_Znwm>:
#include "../h/syscall_cpp.hpp"

void *operator new (size_t size){
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	5b4080e7          	jalr	1460(ra) # 80002288 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001cdc:	00813083          	ld	ra,8(sp)
    80001ce0:	00013403          	ld	s0,0(sp)
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00008067          	ret

0000000080001cec <_Znam>:

void *operator new[] (size_t size){
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00113423          	sd	ra,8(sp)
    80001cf4:	00813023          	sd	s0,0(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	58c080e7          	jalr	1420(ra) # 80002288 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d04:	00813083          	ld	ra,8(sp)
    80001d08:	00013403          	ld	s0,0(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZdlPv>:

void operator delete (void *ptr) noexcept {
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00113423          	sd	ra,8(sp)
    80001d1c:	00813023          	sd	s0,0(sp)
    80001d20:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	65c080e7          	jalr	1628(ra) # 80002380 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d2c:	00813083          	ld	ra,8(sp)
    80001d30:	00013403          	ld	s0,0(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <_ZdaPv>:

void operator delete[] (void *ptr) noexcept {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00113423          	sd	ra,8(sp)
    80001d44:	00813023          	sd	s0,0(sp)
    80001d48:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	634080e7          	jalr	1588(ra) # 80002380 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d54:	00813083          	ld	ra,8(sp)
    80001d58:	00013403          	ld	s0,0(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret

0000000080001d64 <_ZN5Riscv10popSppSpieEv>:

#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"

void Riscv::popSppSpie() {
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00813423          	sd	s0,8(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001d70:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001d74:	10000793          	li	a5,256
    80001d78:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
    80001d7c:	10200073          	sret
}
    80001d80:	00813403          	ld	s0,8(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001d8c:	f9010113          	addi	sp,sp,-112
    80001d90:	06113423          	sd	ra,104(sp)
    80001d94:	06813023          	sd	s0,96(sp)
    80001d98:	04913c23          	sd	s1,88(sp)
    80001d9c:	05213823          	sd	s2,80(sp)
    80001da0:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001da4:	142027f3          	csrr	a5,scause
    80001da8:	f8f43823          	sd	a5,-112(s0)
    return scause;
    80001dac:	f9043703          	ld	a4,-112(s0)
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001db0:	ff870693          	addi	a3,a4,-8
    80001db4:	00100793          	li	a5,1
    80001db8:	12d7f463          	bgeu	a5,a3,80001ee0 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        }

        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x8000000000000001UL) {
    80001dbc:	fff00793          	li	a5,-1
    80001dc0:	03f79793          	slli	a5,a5,0x3f
    80001dc4:	00178793          	addi	a5,a5,1
    80001dc8:	1af70a63          	beq	a4,a5,80001f7c <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    80001dcc:	fff00793          	li	a5,-1
    80001dd0:	03f79793          	slli	a5,a5,0x3f
    80001dd4:	00978793          	addi	a5,a5,9
    80001dd8:	20f70863          	beq	a4,a5,80001fe8 <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001ddc:	141027f3          	csrr	a5,sepc
    80001de0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001de4:	fd843483          	ld	s1,-40(s0)
        console_handler();
        mc_sip(SIP_SEIP);
    } else {
        // Neocekivani razlog prekida
        uint64 sepc = r_sepc();
        printString("Vrednost sepc:");
    80001de8:	00003517          	auipc	a0,0x3
    80001dec:	2e050513          	addi	a0,a0,736 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	910080e7          	jalr	-1776(ra) # 80001700 <_Z11printStringPKc>
        printInt(sepc);
    80001df8:	00000613          	li	a2,0
    80001dfc:	00a00593          	li	a1,10
    80001e00:	0004851b          	sext.w	a0,s1
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	aac080e7          	jalr	-1364(ra) # 800018b0 <_Z8printIntiii>
        printString(" ");
    80001e0c:	00003517          	auipc	a0,0x3
    80001e10:	30450513          	addi	a0,a0,772 # 80005110 <CONSOLE_STATUS+0x100>
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	8ec080e7          	jalr	-1812(ra) # 80001700 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    80001e1c:	105027f3          	csrr	a5,stvec
    80001e20:	fcf43823          	sd	a5,-48(s0)
    return stvec;
    80001e24:	fd043483          	ld	s1,-48(s0)
        uint64 stvec = r_stvec();
        printString("Vrednost stvec:");
    80001e28:	00003517          	auipc	a0,0x3
    80001e2c:	2b050513          	addi	a0,a0,688 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	8d0080e7          	jalr	-1840(ra) # 80001700 <_Z11printStringPKc>
        printInt(stvec);
    80001e38:	00000613          	li	a2,0
    80001e3c:	00a00593          	li	a1,10
    80001e40:	0004851b          	sext.w	a0,s1
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	a6c080e7          	jalr	-1428(ra) # 800018b0 <_Z8printIntiii>
        printString(" ");
    80001e4c:	00003517          	auipc	a0,0x3
    80001e50:	2c450513          	addi	a0,a0,708 # 80005110 <CONSOLE_STATUS+0x100>
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	8ac080e7          	jalr	-1876(ra) # 80001700 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001e5c:	100027f3          	csrr	a5,sstatus
    80001e60:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e64:	fc843483          	ld	s1,-56(s0)
        uint64 sstatus = r_sstatus();
        printString("Vrednost sstatus:");
    80001e68:	00003517          	auipc	a0,0x3
    80001e6c:	28050513          	addi	a0,a0,640 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	890080e7          	jalr	-1904(ra) # 80001700 <_Z11printStringPKc>
        printInt(sstatus);
    80001e78:	00000613          	li	a2,0
    80001e7c:	00a00593          	li	a1,10
    80001e80:	0004851b          	sext.w	a0,s1
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	a2c080e7          	jalr	-1492(ra) # 800018b0 <_Z8printIntiii>
        printString(" ");
    80001e8c:	00003517          	auipc	a0,0x3
    80001e90:	28450513          	addi	a0,a0,644 # 80005110 <CONSOLE_STATUS+0x100>
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	86c080e7          	jalr	-1940(ra) # 80001700 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001e9c:	142027f3          	csrr	a5,scause
    80001ea0:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001ea4:	fc043483          	ld	s1,-64(s0)
        uint64 scause = r_scause();
        printString("Vrednost scause: ");
    80001ea8:	00003517          	auipc	a0,0x3
    80001eac:	25850513          	addi	a0,a0,600 # 80005100 <CONSOLE_STATUS+0xf0>
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	850080e7          	jalr	-1968(ra) # 80001700 <_Z11printStringPKc>
        printInt(scause);
    80001eb8:	00000613          	li	a2,0
    80001ebc:	00a00593          	li	a1,10
    80001ec0:	0004851b          	sext.w	a0,s1
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	9ec080e7          	jalr	-1556(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    80001ecc:	00003517          	auipc	a0,0x3
    80001ed0:	1f450513          	addi	a0,a0,500 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	82c080e7          	jalr	-2004(ra) # 80001700 <_Z11printStringPKc>
    }
}
    80001edc:	0580006f          	j	80001f34 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001ee0:	141027f3          	csrr	a5,sepc
    80001ee4:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001ee8:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = r_sepc() + 4;
    80001eec:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001ef0:	100027f3          	csrr	a5,sstatus
    80001ef4:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001ef8:	fa043903          	ld	s2,-96(s0)
        TCB::timeSliceCounter = 0;
    80001efc:	00004797          	auipc	a5,0x4
    80001f00:	abc7b783          	ld	a5,-1348(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001f04:	0007b023          	sd	zero,0(a5)
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001f08:	00050793          	mv	a5,a0
    80001f0c:	f8f43c23          	sd	a5,-104(s0)
    return a0;
    80001f10:	f9843783          	ld	a5,-104(s0)
        switch (code) {
    80001f14:	00100713          	li	a4,1
    80001f18:	02e78a63          	beq	a5,a4,80001f4c <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    80001f1c:	00200713          	li	a4,2
    80001f20:	04e78263          	beq	a5,a4,80001f64 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        TCB::dispatch();
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	d38080e7          	jalr	-712(ra) # 80001c5c <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    80001f2c:	10093073          	csrc	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80001f30:	14149073          	csrw	sepc,s1
}
    80001f34:	06813083          	ld	ra,104(sp)
    80001f38:	06013403          	ld	s0,96(sp)
    80001f3c:	05813483          	ld	s1,88(sp)
    80001f40:	05013903          	ld	s2,80(sp)
    80001f44:	07010113          	addi	sp,sp,112
    80001f48:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001f4c:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	338080e7          	jalr	824(ra) # 80002288 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001f58:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80001f5c:	04a42823          	sw	a0,80(s0)
                break;
    80001f60:	fc5ff06f          	j	80001f24 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    80001f64:	00058513          	mv	a0,a1
                ret = MemoryAllocator::mem_free(ptr);
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	418080e7          	jalr	1048(ra) # 80002380 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001f70:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80001f74:	04a42823          	sw	a0,80(s0)
                break;
    80001f78:	fadff06f          	j	80001f24 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        if(++TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80001f7c:	00004717          	auipc	a4,0x4
    80001f80:	a3c73703          	ld	a4,-1476(a4) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001f84:	00073783          	ld	a5,0(a4)
    80001f88:	00178793          	addi	a5,a5,1
    80001f8c:	00f73023          	sd	a5,0(a4)
    80001f90:	00004717          	auipc	a4,0x4
    80001f94:	a3873703          	ld	a4,-1480(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f98:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return time_slice; }
    80001f9c:	02073703          	ld	a4,32(a4)
    80001fa0:	00e7f863          	bgeu	a5,a4,80001fb0 <_ZN5Riscv20handleSupervisorTrapEv+0x224>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001fa4:	00200793          	li	a5,2
    80001fa8:	1447b073          	csrc	sip,a5
}
    80001fac:	f89ff06f          	j	80001f34 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001fb0:	141027f3          	csrr	a5,sepc
    80001fb4:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001fb8:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001fbc:	100027f3          	csrr	a5,sstatus
    80001fc0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001fc4:	fb043903          	ld	s2,-80(s0)
            TCB::timeSliceCounter = 0;
    80001fc8:	00004797          	auipc	a5,0x4
    80001fcc:	9f07b783          	ld	a5,-1552(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001fd0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	c88080e7          	jalr	-888(ra) # 80001c5c <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    80001fdc:	10093073          	csrc	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80001fe0:	14149073          	csrw	sepc,s1
}
    80001fe4:	fc1ff06f          	j	80001fa4 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
        console_handler();
    80001fe8:	00002097          	auipc	ra,0x2
    80001fec:	638080e7          	jalr	1592(ra) # 80004620 <console_handler>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001ff0:	20000793          	li	a5,512
    80001ff4:	1447b073          	csrc	sip,a5
}
    80001ff8:	f3dff06f          	j	80001f34 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>

0000000080001ffc <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

void Scheduler::deleteThreadQueue() {
    while(get());
}
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00813423          	sd	s0,8(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	00100793          	li	a5,1
    8000200c:	00f50863          	beq	a0,a5,8000201c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002010:	00813403          	ld	s0,8(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret
    8000201c:	000107b7          	lui	a5,0x10
    80002020:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002024:	fef596e3          	bne	a1,a5,80002010 <_Z41__static_initialization_and_destruction_0ii+0x14>

#include "MemoryAllocator.hpp"

template <typename T> class List {
public:
    List() : head(0), tail(0) {}
    80002028:	00004797          	auipc	a5,0x4
    8000202c:	a2078793          	addi	a5,a5,-1504 # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
    80002030:	0007b023          	sd	zero,0(a5)
    80002034:	0007b423          	sd	zero,8(a5)
    80002038:	fd9ff06f          	j	80002010 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000203c <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	02010413          	addi	s0,sp,32
            tail = element;
        } else head = tail = element;
    }

    T* removeFirst() {
        if(!head) return nullptr;
    80002050:	00004517          	auipc	a0,0x4
    80002054:	9f853503          	ld	a0,-1544(a0) # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
    80002058:	04050263          	beqz	a0,8000209c <_ZN9Scheduler3getEv+0x60>
        Element* element = head;
        head = head->next;
    8000205c:	00853783          	ld	a5,8(a0)
    80002060:	00004717          	auipc	a4,0x4
    80002064:	9ef73423          	sd	a5,-1560(a4) # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
        if(!head) tail = nullptr;
    80002068:	02078463          	beqz	a5,80002090 <_ZN9Scheduler3getEv+0x54>

        T* result = element->item;
    8000206c:	00053483          	ld	s1,0(a0)
        void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void* ptr){
            MemoryAllocator::mem_free(ptr);
    80002070:	00000097          	auipc	ra,0x0
    80002074:	310080e7          	jalr	784(ra) # 80002380 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002078:	00048513          	mv	a0,s1
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	02010113          	addi	sp,sp,32
    8000208c:	00008067          	ret
        if(!head) tail = nullptr;
    80002090:	00004797          	auipc	a5,0x4
    80002094:	9c07b023          	sd	zero,-1600(a5) # 80005a50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002098:	fd5ff06f          	j	8000206c <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    8000209c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800020a0:	fd9ff06f          	j	80002078 <_ZN9Scheduler3getEv+0x3c>

00000000800020a4 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    800020a4:	fe010113          	addi	sp,sp,-32
    800020a8:	00113c23          	sd	ra,24(sp)
    800020ac:	00813823          	sd	s0,16(sp)
    800020b0:	00913423          	sd	s1,8(sp)
    800020b4:	02010413          	addi	s0,sp,32
    800020b8:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    800020bc:	01000513          	li	a0,16
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	1c8080e7          	jalr	456(ra) # 80002288 <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    800020c8:	00953023          	sd	s1,0(a0)
    800020cc:	00053423          	sd	zero,8(a0)
        if(tail) {
    800020d0:	00004797          	auipc	a5,0x4
    800020d4:	9807b783          	ld	a5,-1664(a5) # 80005a50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800020d8:	02078263          	beqz	a5,800020fc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = element;
    800020dc:	00a7b423          	sd	a0,8(a5)
            tail = element;
    800020e0:	00004797          	auipc	a5,0x4
    800020e4:	96a7b823          	sd	a0,-1680(a5) # 80005a50 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800020e8:	01813083          	ld	ra,24(sp)
    800020ec:	01013403          	ld	s0,16(sp)
    800020f0:	00813483          	ld	s1,8(sp)
    800020f4:	02010113          	addi	sp,sp,32
    800020f8:	00008067          	ret
        } else head = tail = element;
    800020fc:	00004797          	auipc	a5,0x4
    80002100:	94c78793          	addi	a5,a5,-1716 # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
    80002104:	00a7b423          	sd	a0,8(a5)
    80002108:	00a7b023          	sd	a0,0(a5)
    8000210c:	fddff06f          	j	800020e8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002110 <_ZN9Scheduler17deleteThreadQueueEv>:
void Scheduler::deleteThreadQueue() {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    while(get());
    80002120:	00000097          	auipc	ra,0x0
    80002124:	f1c080e7          	jalr	-228(ra) # 8000203c <_ZN9Scheduler3getEv>
    80002128:	fe051ce3          	bnez	a0,80002120 <_ZN9Scheduler17deleteThreadQueueEv+0x10>
}
    8000212c:	00813083          	ld	ra,8(sp)
    80002130:	00013403          	ld	s0,0(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00113423          	sd	ra,8(sp)
    80002144:	00813023          	sd	s0,0(sp)
    80002148:	01010413          	addi	s0,sp,16
    8000214c:	000105b7          	lui	a1,0x10
    80002150:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002154:	00100513          	li	a0,1
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	ea4080e7          	jalr	-348(ra) # 80001ffc <_Z41__static_initialization_and_destruction_0ii>
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00813423          	sd	s0,8(sp)
    80002178:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    8000217c:	00050e63          	beqz	a0,80002198 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    80002180:	00053783          	ld	a5,0(a0)
    80002184:	00078a63          	beqz	a5,80002198 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    80002188:	00853683          	ld	a3,8(a0)
    8000218c:	01068713          	addi	a4,a3,16
    80002190:	00e50733          	add	a4,a0,a4
    80002194:	00e78863          	beq	a5,a4,800021a4 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    80002198:	00813403          	ld	s0,8(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    800021a4:	0087b703          	ld	a4,8(a5)
    800021a8:	00e686b3          	add	a3,a3,a4
    800021ac:	01068693          	addi	a3,a3,16
    800021b0:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    800021b4:	0007b783          	ld	a5,0(a5)
    800021b8:	00f53023          	sd	a5,0(a0)
    800021bc:	fddff06f          	j	80002198 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

00000000800021c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00813423          	sd	s0,8(sp)
    800021c8:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    800021cc:	02050063          	beqz	a0,800021ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800021d0:	00064e63          	bltz	a2,800021ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800021d4:	00100793          	li	a5,1
    800021d8:	00c7ca63          	blt	a5,a2,800021ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    800021dc:	00058e63          	beqz	a1,800021f8 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    800021e0:	0005b783          	ld	a5,0(a1)
    800021e4:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    800021e8:	00a5b023          	sd	a0,0(a1)
    }
}
    800021ec:	00813403          	ld	s0,8(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret
        if(code == 0) {
    800021f8:	00061e63          	bnez	a2,80002214 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    800021fc:	00004797          	auipc	a5,0x4
    80002200:	85c78793          	addi	a5,a5,-1956 # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    80002204:	0007b703          	ld	a4,0(a5)
    80002208:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    8000220c:	00a7b023          	sd	a0,0(a5)
    80002210:	fddff06f          	j	800021ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    80002214:	00004797          	auipc	a5,0x4
    80002218:	84478793          	addi	a5,a5,-1980 # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    8000221c:	0087b703          	ld	a4,8(a5)
    80002220:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    80002224:	00a7b423          	sd	a0,8(a5)
    80002228:	fc5ff06f          	j	800021ec <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

000000008000222c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00813423          	sd	s0,8(sp)
    80002234:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80002238:	02050063          	beqz	a0,80002258 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    8000223c:	00064e63          	bltz	a2,80002258 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80002240:	00100793          	li	a5,1
    80002244:	00c7ca63          	blt	a5,a2,80002258 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80002248:	00058e63          	beqz	a1,80002264 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    8000224c:	00053783          	ld	a5,0(a0)
    80002250:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    80002254:	00053023          	sd	zero,0(a0)
}
    80002258:	00813403          	ld	s0,8(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    80002264:	00061a63          	bnez	a2,80002278 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    80002268:	00053783          	ld	a5,0(a0)
    8000226c:	00003717          	auipc	a4,0x3
    80002270:	7ef73623          	sd	a5,2028(a4) # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    80002274:	fe1ff06f          	j	80002254 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    80002278:	00053783          	ld	a5,0(a0)
    8000227c:	00003717          	auipc	a4,0x3
    80002280:	7ef73223          	sd	a5,2020(a4) # 80005a60 <_ZN15MemoryAllocator17head_data_segmentE>
    80002284:	fd1ff06f          	j	80002254 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

0000000080002288 <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    80002288:	fd010113          	addi	sp,sp,-48
    8000228c:	02113423          	sd	ra,40(sp)
    80002290:	02813023          	sd	s0,32(sp)
    80002294:	00913c23          	sd	s1,24(sp)
    80002298:	01213823          	sd	s2,16(sp)
    8000229c:	01313423          	sd	s3,8(sp)
    800022a0:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    800022a4:	0c050a63          	beqz	a0,80002378 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    800022a8:	03f50513          	addi	a0,a0,63
    800022ac:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    800022b0:	00003497          	auipc	s1,0x3
    800022b4:	7a84b483          	ld	s1,1960(s1) # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    800022b8:	00000993          	li	s3,0
    800022bc:	08048e63          	beqz	s1,80002358 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    800022c0:	0084b783          	ld	a5,8(s1)
    800022c4:	0127f863          	bgeu	a5,s2,800022d4 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    800022c8:	00048993          	mv	s3,s1
    800022cc:	0004b483          	ld	s1,0(s1)
    800022d0:	fedff06f          	j	800022bc <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    800022d4:	00000613          	li	a2,0
    800022d8:	00098593          	mv	a1,s3
    800022dc:	00048513          	mv	a0,s1
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	f4c080e7          	jalr	-180(ra) # 8000222c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    800022e8:	0084b783          	ld	a5,8(s1)
    800022ec:	41278733          	sub	a4,a5,s2
    800022f0:	00f00693          	li	a3,15
    800022f4:	02e6e463          	bltu	a3,a4,8000231c <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    800022f8:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    800022fc:	00003797          	auipc	a5,0x3
    80002300:	7647b783          	ld	a5,1892(a5) # 80005a60 <_ZN15MemoryAllocator17head_data_segmentE>
    80002304:	00000593          	li	a1,0
    80002308:	02078e63          	beqz	a5,80002344 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    8000230c:	0297fc63          	bgeu	a5,s1,80002344 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80002310:	00078593          	mv	a1,a5
    80002314:	0007b783          	ld	a5,0(a5)
    80002318:	ff1ff06f          	j	80002308 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    8000231c:	01090513          	addi	a0,s2,16
    80002320:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    80002324:	ff070713          	addi	a4,a4,-16
    80002328:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    8000232c:	00000613          	li	a2,0
    80002330:	00098593          	mv	a1,s3
    80002334:	00000097          	auipc	ra,0x0
    80002338:	e8c080e7          	jalr	-372(ra) # 800021c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    8000233c:	00090793          	mv	a5,s2
    80002340:	fb9ff06f          	j	800022f8 <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    80002344:	00100613          	li	a2,1
    80002348:	00048513          	mv	a0,s1
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	e74080e7          	jalr	-396(ra) # 800021c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    80002354:	01048493          	addi	s1,s1,16
}
    80002358:	00048513          	mv	a0,s1
    8000235c:	02813083          	ld	ra,40(sp)
    80002360:	02013403          	ld	s0,32(sp)
    80002364:	01813483          	ld	s1,24(sp)
    80002368:	01013903          	ld	s2,16(sp)
    8000236c:	00813983          	ld	s3,8(sp)
    80002370:	03010113          	addi	sp,sp,48
    80002374:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    80002378:	00000493          	li	s1,0
    8000237c:	fddff06f          	j	80002358 <_ZN15MemoryAllocator9mem_allocEm+0xd0>

0000000080002380 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002380:	0c050863          	beqz	a0,80002450 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80002384:	00003797          	auipc	a5,0x3
    80002388:	6247b783          	ld	a5,1572(a5) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000238c:	0007b783          	ld	a5,0(a5)
    80002390:	0cf56463          	bltu	a0,a5,80002458 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002394:	00003797          	auipc	a5,0x3
    80002398:	63c7b783          	ld	a5,1596(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000239c:	0007b783          	ld	a5,0(a5)
    800023a0:	0cf57063          	bgeu	a0,a5,80002460 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    800023a4:	fe010113          	addi	sp,sp,-32
    800023a8:	00113c23          	sd	ra,24(sp)
    800023ac:	00813823          	sd	s0,16(sp)
    800023b0:	00913423          	sd	s1,8(sp)
    800023b4:	01213023          	sd	s2,0(sp)
    800023b8:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    800023bc:	00003497          	auipc	s1,0x3
    800023c0:	6a44b483          	ld	s1,1700(s1) # 80005a60 <_ZN15MemoryAllocator17head_data_segmentE>
    800023c4:	00000593          	li	a1,0
    800023c8:	0a048063          	beqz	s1,80002468 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    800023cc:	01048793          	addi	a5,s1,16
    800023d0:	00a78a63          	beq	a5,a0,800023e4 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    800023d4:	0af56863          	bltu	a0,a5,80002484 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    800023d8:	00048593          	mv	a1,s1
    800023dc:	0004b483          	ld	s1,0(s1)
    800023e0:	fe9ff06f          	j	800023c8 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    800023e4:	00100613          	li	a2,1
    800023e8:	00048513          	mv	a0,s1
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	e40080e7          	jalr	-448(ra) # 8000222c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    800023f4:	00003917          	auipc	s2,0x3
    800023f8:	66493903          	ld	s2,1636(s2) # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    800023fc:	0080006f          	j	80002404 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80002400:	00078913          	mv	s2,a5
    80002404:	00090863          	beqz	s2,80002414 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002408:	00093783          	ld	a5,0(s2)
    8000240c:	00078463          	beqz	a5,80002414 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002410:	fe97e8e3          	bltu	a5,s1,80002400 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    80002414:	0124f463          	bgeu	s1,s2,8000241c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002418:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    8000241c:	00000613          	li	a2,0
    80002420:	00090593          	mv	a1,s2
    80002424:	00048513          	mv	a0,s1
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	d98080e7          	jalr	-616(ra) # 800021c0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    80002430:	00048513          	mv	a0,s1
    80002434:	00000097          	auipc	ra,0x0
    80002438:	d3c080e7          	jalr	-708(ra) # 80002170 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    8000243c:	00090513          	mv	a0,s2
    80002440:	00000097          	auipc	ra,0x0
    80002444:	d30080e7          	jalr	-720(ra) # 80002170 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    80002448:	00000513          	li	a0,0
    8000244c:	0200006f          	j	8000246c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002450:	fff00513          	li	a0,-1
    80002454:	00008067          	ret
    80002458:	fff00513          	li	a0,-1
    8000245c:	00008067          	ret
    80002460:	fff00513          	li	a0,-1
}
    80002464:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002468:	ffe00513          	li	a0,-2
}
    8000246c:	01813083          	ld	ra,24(sp)
    80002470:	01013403          	ld	s0,16(sp)
    80002474:	00813483          	ld	s1,8(sp)
    80002478:	00013903          	ld	s2,0(sp)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002484:	ffe00513          	li	a0,-2
    80002488:	fe5ff06f          	j	8000246c <_ZN15MemoryAllocator8mem_freeEPv+0xec>

000000008000248c <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    80002498:	00003697          	auipc	a3,0x3
    8000249c:	5106b683          	ld	a3,1296(a3) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800024a0:	0006b783          	ld	a5,0(a3)
    800024a4:	00003717          	auipc	a4,0x3
    800024a8:	5b470713          	addi	a4,a4,1460 # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    800024ac:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    800024b0:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    800024b4:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    800024b8:	00003797          	auipc	a5,0x3
    800024bc:	5187b783          	ld	a5,1304(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800024c0:	0007b783          	ld	a5,0(a5)
    800024c4:	0006b683          	ld	a3,0(a3)
    800024c8:	40d787b3          	sub	a5,a5,a3
    800024cc:	00073703          	ld	a4,0(a4)
    800024d0:	ff078793          	addi	a5,a5,-16
    800024d4:	00f73423          	sd	a5,8(a4)
}
    800024d8:	00813403          	ld	s0,8(sp)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00008067          	ret

00000000800024e4 <start>:
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00813423          	sd	s0,8(sp)
    800024ec:	01010413          	addi	s0,sp,16
    800024f0:	300027f3          	csrr	a5,mstatus
    800024f4:	ffffe737          	lui	a4,0xffffe
    800024f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b2f>
    800024fc:	00e7f7b3          	and	a5,a5,a4
    80002500:	00001737          	lui	a4,0x1
    80002504:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002508:	00e7e7b3          	or	a5,a5,a4
    8000250c:	30079073          	csrw	mstatus,a5
    80002510:	00000797          	auipc	a5,0x0
    80002514:	16078793          	addi	a5,a5,352 # 80002670 <system_main>
    80002518:	34179073          	csrw	mepc,a5
    8000251c:	00000793          	li	a5,0
    80002520:	18079073          	csrw	satp,a5
    80002524:	000107b7          	lui	a5,0x10
    80002528:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000252c:	30279073          	csrw	medeleg,a5
    80002530:	30379073          	csrw	mideleg,a5
    80002534:	104027f3          	csrr	a5,sie
    80002538:	2227e793          	ori	a5,a5,546
    8000253c:	10479073          	csrw	sie,a5
    80002540:	fff00793          	li	a5,-1
    80002544:	00a7d793          	srli	a5,a5,0xa
    80002548:	3b079073          	csrw	pmpaddr0,a5
    8000254c:	00f00793          	li	a5,15
    80002550:	3a079073          	csrw	pmpcfg0,a5
    80002554:	f14027f3          	csrr	a5,mhartid
    80002558:	0200c737          	lui	a4,0x200c
    8000255c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002560:	0007869b          	sext.w	a3,a5
    80002564:	00269713          	slli	a4,a3,0x2
    80002568:	000f4637          	lui	a2,0xf4
    8000256c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002570:	00d70733          	add	a4,a4,a3
    80002574:	0037979b          	slliw	a5,a5,0x3
    80002578:	020046b7          	lui	a3,0x2004
    8000257c:	00d787b3          	add	a5,a5,a3
    80002580:	00c585b3          	add	a1,a1,a2
    80002584:	00371693          	slli	a3,a4,0x3
    80002588:	00003717          	auipc	a4,0x3
    8000258c:	4e870713          	addi	a4,a4,1256 # 80005a70 <timer_scratch>
    80002590:	00b7b023          	sd	a1,0(a5)
    80002594:	00d70733          	add	a4,a4,a3
    80002598:	00f73c23          	sd	a5,24(a4)
    8000259c:	02c73023          	sd	a2,32(a4)
    800025a0:	34071073          	csrw	mscratch,a4
    800025a4:	00000797          	auipc	a5,0x0
    800025a8:	6ec78793          	addi	a5,a5,1772 # 80002c90 <timervec>
    800025ac:	30579073          	csrw	mtvec,a5
    800025b0:	300027f3          	csrr	a5,mstatus
    800025b4:	0087e793          	ori	a5,a5,8
    800025b8:	30079073          	csrw	mstatus,a5
    800025bc:	304027f3          	csrr	a5,mie
    800025c0:	0807e793          	ori	a5,a5,128
    800025c4:	30479073          	csrw	mie,a5
    800025c8:	f14027f3          	csrr	a5,mhartid
    800025cc:	0007879b          	sext.w	a5,a5
    800025d0:	00078213          	mv	tp,a5
    800025d4:	30200073          	mret
    800025d8:	00813403          	ld	s0,8(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <timerinit>:
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813423          	sd	s0,8(sp)
    800025ec:	01010413          	addi	s0,sp,16
    800025f0:	f14027f3          	csrr	a5,mhartid
    800025f4:	0200c737          	lui	a4,0x200c
    800025f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800025fc:	0007869b          	sext.w	a3,a5
    80002600:	00269713          	slli	a4,a3,0x2
    80002604:	000f4637          	lui	a2,0xf4
    80002608:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000260c:	00d70733          	add	a4,a4,a3
    80002610:	0037979b          	slliw	a5,a5,0x3
    80002614:	020046b7          	lui	a3,0x2004
    80002618:	00d787b3          	add	a5,a5,a3
    8000261c:	00c585b3          	add	a1,a1,a2
    80002620:	00371693          	slli	a3,a4,0x3
    80002624:	00003717          	auipc	a4,0x3
    80002628:	44c70713          	addi	a4,a4,1100 # 80005a70 <timer_scratch>
    8000262c:	00b7b023          	sd	a1,0(a5)
    80002630:	00d70733          	add	a4,a4,a3
    80002634:	00f73c23          	sd	a5,24(a4)
    80002638:	02c73023          	sd	a2,32(a4)
    8000263c:	34071073          	csrw	mscratch,a4
    80002640:	00000797          	auipc	a5,0x0
    80002644:	65078793          	addi	a5,a5,1616 # 80002c90 <timervec>
    80002648:	30579073          	csrw	mtvec,a5
    8000264c:	300027f3          	csrr	a5,mstatus
    80002650:	0087e793          	ori	a5,a5,8
    80002654:	30079073          	csrw	mstatus,a5
    80002658:	304027f3          	csrr	a5,mie
    8000265c:	0807e793          	ori	a5,a5,128
    80002660:	30479073          	csrw	mie,a5
    80002664:	00813403          	ld	s0,8(sp)
    80002668:	01010113          	addi	sp,sp,16
    8000266c:	00008067          	ret

0000000080002670 <system_main>:
    80002670:	fe010113          	addi	sp,sp,-32
    80002674:	00813823          	sd	s0,16(sp)
    80002678:	00913423          	sd	s1,8(sp)
    8000267c:	00113c23          	sd	ra,24(sp)
    80002680:	02010413          	addi	s0,sp,32
    80002684:	00000097          	auipc	ra,0x0
    80002688:	0c4080e7          	jalr	196(ra) # 80002748 <cpuid>
    8000268c:	00003497          	auipc	s1,0x3
    80002690:	37448493          	addi	s1,s1,884 # 80005a00 <started>
    80002694:	02050263          	beqz	a0,800026b8 <system_main+0x48>
    80002698:	0004a783          	lw	a5,0(s1)
    8000269c:	0007879b          	sext.w	a5,a5
    800026a0:	fe078ce3          	beqz	a5,80002698 <system_main+0x28>
    800026a4:	0ff0000f          	fence
    800026a8:	00003517          	auipc	a0,0x3
    800026ac:	aa050513          	addi	a0,a0,-1376 # 80005148 <CONSOLE_STATUS+0x138>
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	a7c080e7          	jalr	-1412(ra) # 8000312c <panic>
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	9d0080e7          	jalr	-1584(ra) # 80003088 <consoleinit>
    800026c0:	00001097          	auipc	ra,0x1
    800026c4:	15c080e7          	jalr	348(ra) # 8000381c <printfinit>
    800026c8:	00003517          	auipc	a0,0x3
    800026cc:	9f850513          	addi	a0,a0,-1544 # 800050c0 <CONSOLE_STATUS+0xb0>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	ab8080e7          	jalr	-1352(ra) # 80003188 <__printf>
    800026d8:	00003517          	auipc	a0,0x3
    800026dc:	a4050513          	addi	a0,a0,-1472 # 80005118 <CONSOLE_STATUS+0x108>
    800026e0:	00001097          	auipc	ra,0x1
    800026e4:	aa8080e7          	jalr	-1368(ra) # 80003188 <__printf>
    800026e8:	00003517          	auipc	a0,0x3
    800026ec:	9d850513          	addi	a0,a0,-1576 # 800050c0 <CONSOLE_STATUS+0xb0>
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	a98080e7          	jalr	-1384(ra) # 80003188 <__printf>
    800026f8:	00001097          	auipc	ra,0x1
    800026fc:	4b0080e7          	jalr	1200(ra) # 80003ba8 <kinit>
    80002700:	00000097          	auipc	ra,0x0
    80002704:	148080e7          	jalr	328(ra) # 80002848 <trapinit>
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	16c080e7          	jalr	364(ra) # 80002874 <trapinithart>
    80002710:	00000097          	auipc	ra,0x0
    80002714:	5c0080e7          	jalr	1472(ra) # 80002cd0 <plicinit>
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	5e0080e7          	jalr	1504(ra) # 80002cf8 <plicinithart>
    80002720:	00000097          	auipc	ra,0x0
    80002724:	078080e7          	jalr	120(ra) # 80002798 <userinit>
    80002728:	0ff0000f          	fence
    8000272c:	00100793          	li	a5,1
    80002730:	00003517          	auipc	a0,0x3
    80002734:	a0050513          	addi	a0,a0,-1536 # 80005130 <CONSOLE_STATUS+0x120>
    80002738:	00f4a023          	sw	a5,0(s1)
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	a4c080e7          	jalr	-1460(ra) # 80003188 <__printf>
    80002744:	0000006f          	j	80002744 <system_main+0xd4>

0000000080002748 <cpuid>:
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813423          	sd	s0,8(sp)
    80002750:	01010413          	addi	s0,sp,16
    80002754:	00020513          	mv	a0,tp
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	0005051b          	sext.w	a0,a0
    80002760:	01010113          	addi	sp,sp,16
    80002764:	00008067          	ret

0000000080002768 <mycpu>:
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00813423          	sd	s0,8(sp)
    80002770:	01010413          	addi	s0,sp,16
    80002774:	00020793          	mv	a5,tp
    80002778:	00813403          	ld	s0,8(sp)
    8000277c:	0007879b          	sext.w	a5,a5
    80002780:	00779793          	slli	a5,a5,0x7
    80002784:	00004517          	auipc	a0,0x4
    80002788:	31c50513          	addi	a0,a0,796 # 80006aa0 <cpus>
    8000278c:	00f50533          	add	a0,a0,a5
    80002790:	01010113          	addi	sp,sp,16
    80002794:	00008067          	ret

0000000080002798 <userinit>:
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00813423          	sd	s0,8(sp)
    800027a0:	01010413          	addi	s0,sp,16
    800027a4:	00813403          	ld	s0,8(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	fffff317          	auipc	t1,0xfffff
    800027b0:	22430067          	jr	548(t1) # 800019d0 <main>

00000000800027b4 <either_copyout>:
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00813023          	sd	s0,0(sp)
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	01010413          	addi	s0,sp,16
    800027c4:	02051663          	bnez	a0,800027f0 <either_copyout+0x3c>
    800027c8:	00058513          	mv	a0,a1
    800027cc:	00060593          	mv	a1,a2
    800027d0:	0006861b          	sext.w	a2,a3
    800027d4:	00002097          	auipc	ra,0x2
    800027d8:	c60080e7          	jalr	-928(ra) # 80004434 <__memmove>
    800027dc:	00813083          	ld	ra,8(sp)
    800027e0:	00013403          	ld	s0,0(sp)
    800027e4:	00000513          	li	a0,0
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret
    800027f0:	00003517          	auipc	a0,0x3
    800027f4:	98050513          	addi	a0,a0,-1664 # 80005170 <CONSOLE_STATUS+0x160>
    800027f8:	00001097          	auipc	ra,0x1
    800027fc:	934080e7          	jalr	-1740(ra) # 8000312c <panic>

0000000080002800 <either_copyin>:
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00813023          	sd	s0,0(sp)
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	01010413          	addi	s0,sp,16
    80002810:	02059463          	bnez	a1,80002838 <either_copyin+0x38>
    80002814:	00060593          	mv	a1,a2
    80002818:	0006861b          	sext.w	a2,a3
    8000281c:	00002097          	auipc	ra,0x2
    80002820:	c18080e7          	jalr	-1000(ra) # 80004434 <__memmove>
    80002824:	00813083          	ld	ra,8(sp)
    80002828:	00013403          	ld	s0,0(sp)
    8000282c:	00000513          	li	a0,0
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret
    80002838:	00003517          	auipc	a0,0x3
    8000283c:	96050513          	addi	a0,a0,-1696 # 80005198 <CONSOLE_STATUS+0x188>
    80002840:	00001097          	auipc	ra,0x1
    80002844:	8ec080e7          	jalr	-1812(ra) # 8000312c <panic>

0000000080002848 <trapinit>:
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813423          	sd	s0,8(sp)
    80002850:	01010413          	addi	s0,sp,16
    80002854:	00813403          	ld	s0,8(sp)
    80002858:	00003597          	auipc	a1,0x3
    8000285c:	96858593          	addi	a1,a1,-1688 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80002860:	00004517          	auipc	a0,0x4
    80002864:	2c050513          	addi	a0,a0,704 # 80006b20 <tickslock>
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00001317          	auipc	t1,0x1
    80002870:	5cc30067          	jr	1484(t1) # 80003e38 <initlock>

0000000080002874 <trapinithart>:
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00813423          	sd	s0,8(sp)
    8000287c:	01010413          	addi	s0,sp,16
    80002880:	00000797          	auipc	a5,0x0
    80002884:	30078793          	addi	a5,a5,768 # 80002b80 <kernelvec>
    80002888:	10579073          	csrw	stvec,a5
    8000288c:	00813403          	ld	s0,8(sp)
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <usertrap>:
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00813423          	sd	s0,8(sp)
    800028a0:	01010413          	addi	s0,sp,16
    800028a4:	00813403          	ld	s0,8(sp)
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	00008067          	ret

00000000800028b0 <usertrapret>:
    800028b0:	ff010113          	addi	sp,sp,-16
    800028b4:	00813423          	sd	s0,8(sp)
    800028b8:	01010413          	addi	s0,sp,16
    800028bc:	00813403          	ld	s0,8(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <kerneltrap>:
    800028c8:	fe010113          	addi	sp,sp,-32
    800028cc:	00813823          	sd	s0,16(sp)
    800028d0:	00113c23          	sd	ra,24(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	02010413          	addi	s0,sp,32
    800028dc:	142025f3          	csrr	a1,scause
    800028e0:	100027f3          	csrr	a5,sstatus
    800028e4:	0027f793          	andi	a5,a5,2
    800028e8:	10079c63          	bnez	a5,80002a00 <kerneltrap+0x138>
    800028ec:	142027f3          	csrr	a5,scause
    800028f0:	0207ce63          	bltz	a5,8000292c <kerneltrap+0x64>
    800028f4:	00003517          	auipc	a0,0x3
    800028f8:	91450513          	addi	a0,a0,-1772 # 80005208 <CONSOLE_STATUS+0x1f8>
    800028fc:	00001097          	auipc	ra,0x1
    80002900:	88c080e7          	jalr	-1908(ra) # 80003188 <__printf>
    80002904:	141025f3          	csrr	a1,sepc
    80002908:	14302673          	csrr	a2,stval
    8000290c:	00003517          	auipc	a0,0x3
    80002910:	90c50513          	addi	a0,a0,-1780 # 80005218 <CONSOLE_STATUS+0x208>
    80002914:	00001097          	auipc	ra,0x1
    80002918:	874080e7          	jalr	-1932(ra) # 80003188 <__printf>
    8000291c:	00003517          	auipc	a0,0x3
    80002920:	91450513          	addi	a0,a0,-1772 # 80005230 <CONSOLE_STATUS+0x220>
    80002924:	00001097          	auipc	ra,0x1
    80002928:	808080e7          	jalr	-2040(ra) # 8000312c <panic>
    8000292c:	0ff7f713          	andi	a4,a5,255
    80002930:	00900693          	li	a3,9
    80002934:	04d70063          	beq	a4,a3,80002974 <kerneltrap+0xac>
    80002938:	fff00713          	li	a4,-1
    8000293c:	03f71713          	slli	a4,a4,0x3f
    80002940:	00170713          	addi	a4,a4,1
    80002944:	fae798e3          	bne	a5,a4,800028f4 <kerneltrap+0x2c>
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	e00080e7          	jalr	-512(ra) # 80002748 <cpuid>
    80002950:	06050663          	beqz	a0,800029bc <kerneltrap+0xf4>
    80002954:	144027f3          	csrr	a5,sip
    80002958:	ffd7f793          	andi	a5,a5,-3
    8000295c:	14479073          	csrw	sip,a5
    80002960:	01813083          	ld	ra,24(sp)
    80002964:	01013403          	ld	s0,16(sp)
    80002968:	00813483          	ld	s1,8(sp)
    8000296c:	02010113          	addi	sp,sp,32
    80002970:	00008067          	ret
    80002974:	00000097          	auipc	ra,0x0
    80002978:	3d0080e7          	jalr	976(ra) # 80002d44 <plic_claim>
    8000297c:	00a00793          	li	a5,10
    80002980:	00050493          	mv	s1,a0
    80002984:	06f50863          	beq	a0,a5,800029f4 <kerneltrap+0x12c>
    80002988:	fc050ce3          	beqz	a0,80002960 <kerneltrap+0x98>
    8000298c:	00050593          	mv	a1,a0
    80002990:	00003517          	auipc	a0,0x3
    80002994:	85850513          	addi	a0,a0,-1960 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	7f0080e7          	jalr	2032(ra) # 80003188 <__printf>
    800029a0:	01013403          	ld	s0,16(sp)
    800029a4:	01813083          	ld	ra,24(sp)
    800029a8:	00048513          	mv	a0,s1
    800029ac:	00813483          	ld	s1,8(sp)
    800029b0:	02010113          	addi	sp,sp,32
    800029b4:	00000317          	auipc	t1,0x0
    800029b8:	3c830067          	jr	968(t1) # 80002d7c <plic_complete>
    800029bc:	00004517          	auipc	a0,0x4
    800029c0:	16450513          	addi	a0,a0,356 # 80006b20 <tickslock>
    800029c4:	00001097          	auipc	ra,0x1
    800029c8:	498080e7          	jalr	1176(ra) # 80003e5c <acquire>
    800029cc:	00003717          	auipc	a4,0x3
    800029d0:	03870713          	addi	a4,a4,56 # 80005a04 <ticks>
    800029d4:	00072783          	lw	a5,0(a4)
    800029d8:	00004517          	auipc	a0,0x4
    800029dc:	14850513          	addi	a0,a0,328 # 80006b20 <tickslock>
    800029e0:	0017879b          	addiw	a5,a5,1
    800029e4:	00f72023          	sw	a5,0(a4)
    800029e8:	00001097          	auipc	ra,0x1
    800029ec:	540080e7          	jalr	1344(ra) # 80003f28 <release>
    800029f0:	f65ff06f          	j	80002954 <kerneltrap+0x8c>
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	09c080e7          	jalr	156(ra) # 80003a90 <uartintr>
    800029fc:	fa5ff06f          	j	800029a0 <kerneltrap+0xd8>
    80002a00:	00002517          	auipc	a0,0x2
    80002a04:	7c850513          	addi	a0,a0,1992 # 800051c8 <CONSOLE_STATUS+0x1b8>
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	724080e7          	jalr	1828(ra) # 8000312c <panic>

0000000080002a10 <clockintr>:
    80002a10:	fe010113          	addi	sp,sp,-32
    80002a14:	00813823          	sd	s0,16(sp)
    80002a18:	00913423          	sd	s1,8(sp)
    80002a1c:	00113c23          	sd	ra,24(sp)
    80002a20:	02010413          	addi	s0,sp,32
    80002a24:	00004497          	auipc	s1,0x4
    80002a28:	0fc48493          	addi	s1,s1,252 # 80006b20 <tickslock>
    80002a2c:	00048513          	mv	a0,s1
    80002a30:	00001097          	auipc	ra,0x1
    80002a34:	42c080e7          	jalr	1068(ra) # 80003e5c <acquire>
    80002a38:	00003717          	auipc	a4,0x3
    80002a3c:	fcc70713          	addi	a4,a4,-52 # 80005a04 <ticks>
    80002a40:	00072783          	lw	a5,0(a4)
    80002a44:	01013403          	ld	s0,16(sp)
    80002a48:	01813083          	ld	ra,24(sp)
    80002a4c:	00048513          	mv	a0,s1
    80002a50:	0017879b          	addiw	a5,a5,1
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	00f72023          	sw	a5,0(a4)
    80002a5c:	02010113          	addi	sp,sp,32
    80002a60:	00001317          	auipc	t1,0x1
    80002a64:	4c830067          	jr	1224(t1) # 80003f28 <release>

0000000080002a68 <devintr>:
    80002a68:	142027f3          	csrr	a5,scause
    80002a6c:	00000513          	li	a0,0
    80002a70:	0007c463          	bltz	a5,80002a78 <devintr+0x10>
    80002a74:	00008067          	ret
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	02010413          	addi	s0,sp,32
    80002a8c:	0ff7f713          	andi	a4,a5,255
    80002a90:	00900693          	li	a3,9
    80002a94:	04d70c63          	beq	a4,a3,80002aec <devintr+0x84>
    80002a98:	fff00713          	li	a4,-1
    80002a9c:	03f71713          	slli	a4,a4,0x3f
    80002aa0:	00170713          	addi	a4,a4,1
    80002aa4:	00e78c63          	beq	a5,a4,80002abc <devintr+0x54>
    80002aa8:	01813083          	ld	ra,24(sp)
    80002aac:	01013403          	ld	s0,16(sp)
    80002ab0:	00813483          	ld	s1,8(sp)
    80002ab4:	02010113          	addi	sp,sp,32
    80002ab8:	00008067          	ret
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	c8c080e7          	jalr	-884(ra) # 80002748 <cpuid>
    80002ac4:	06050663          	beqz	a0,80002b30 <devintr+0xc8>
    80002ac8:	144027f3          	csrr	a5,sip
    80002acc:	ffd7f793          	andi	a5,a5,-3
    80002ad0:	14479073          	csrw	sip,a5
    80002ad4:	01813083          	ld	ra,24(sp)
    80002ad8:	01013403          	ld	s0,16(sp)
    80002adc:	00813483          	ld	s1,8(sp)
    80002ae0:	00200513          	li	a0,2
    80002ae4:	02010113          	addi	sp,sp,32
    80002ae8:	00008067          	ret
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	258080e7          	jalr	600(ra) # 80002d44 <plic_claim>
    80002af4:	00a00793          	li	a5,10
    80002af8:	00050493          	mv	s1,a0
    80002afc:	06f50663          	beq	a0,a5,80002b68 <devintr+0x100>
    80002b00:	00100513          	li	a0,1
    80002b04:	fa0482e3          	beqz	s1,80002aa8 <devintr+0x40>
    80002b08:	00048593          	mv	a1,s1
    80002b0c:	00002517          	auipc	a0,0x2
    80002b10:	6dc50513          	addi	a0,a0,1756 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	674080e7          	jalr	1652(ra) # 80003188 <__printf>
    80002b1c:	00048513          	mv	a0,s1
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	25c080e7          	jalr	604(ra) # 80002d7c <plic_complete>
    80002b28:	00100513          	li	a0,1
    80002b2c:	f7dff06f          	j	80002aa8 <devintr+0x40>
    80002b30:	00004517          	auipc	a0,0x4
    80002b34:	ff050513          	addi	a0,a0,-16 # 80006b20 <tickslock>
    80002b38:	00001097          	auipc	ra,0x1
    80002b3c:	324080e7          	jalr	804(ra) # 80003e5c <acquire>
    80002b40:	00003717          	auipc	a4,0x3
    80002b44:	ec470713          	addi	a4,a4,-316 # 80005a04 <ticks>
    80002b48:	00072783          	lw	a5,0(a4)
    80002b4c:	00004517          	auipc	a0,0x4
    80002b50:	fd450513          	addi	a0,a0,-44 # 80006b20 <tickslock>
    80002b54:	0017879b          	addiw	a5,a5,1
    80002b58:	00f72023          	sw	a5,0(a4)
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	3cc080e7          	jalr	972(ra) # 80003f28 <release>
    80002b64:	f65ff06f          	j	80002ac8 <devintr+0x60>
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	f28080e7          	jalr	-216(ra) # 80003a90 <uartintr>
    80002b70:	fadff06f          	j	80002b1c <devintr+0xb4>
	...

0000000080002b80 <kernelvec>:
    80002b80:	f0010113          	addi	sp,sp,-256
    80002b84:	00113023          	sd	ra,0(sp)
    80002b88:	00213423          	sd	sp,8(sp)
    80002b8c:	00313823          	sd	gp,16(sp)
    80002b90:	00413c23          	sd	tp,24(sp)
    80002b94:	02513023          	sd	t0,32(sp)
    80002b98:	02613423          	sd	t1,40(sp)
    80002b9c:	02713823          	sd	t2,48(sp)
    80002ba0:	02813c23          	sd	s0,56(sp)
    80002ba4:	04913023          	sd	s1,64(sp)
    80002ba8:	04a13423          	sd	a0,72(sp)
    80002bac:	04b13823          	sd	a1,80(sp)
    80002bb0:	04c13c23          	sd	a2,88(sp)
    80002bb4:	06d13023          	sd	a3,96(sp)
    80002bb8:	06e13423          	sd	a4,104(sp)
    80002bbc:	06f13823          	sd	a5,112(sp)
    80002bc0:	07013c23          	sd	a6,120(sp)
    80002bc4:	09113023          	sd	a7,128(sp)
    80002bc8:	09213423          	sd	s2,136(sp)
    80002bcc:	09313823          	sd	s3,144(sp)
    80002bd0:	09413c23          	sd	s4,152(sp)
    80002bd4:	0b513023          	sd	s5,160(sp)
    80002bd8:	0b613423          	sd	s6,168(sp)
    80002bdc:	0b713823          	sd	s7,176(sp)
    80002be0:	0b813c23          	sd	s8,184(sp)
    80002be4:	0d913023          	sd	s9,192(sp)
    80002be8:	0da13423          	sd	s10,200(sp)
    80002bec:	0db13823          	sd	s11,208(sp)
    80002bf0:	0dc13c23          	sd	t3,216(sp)
    80002bf4:	0fd13023          	sd	t4,224(sp)
    80002bf8:	0fe13423          	sd	t5,232(sp)
    80002bfc:	0ff13823          	sd	t6,240(sp)
    80002c00:	cc9ff0ef          	jal	ra,800028c8 <kerneltrap>
    80002c04:	00013083          	ld	ra,0(sp)
    80002c08:	00813103          	ld	sp,8(sp)
    80002c0c:	01013183          	ld	gp,16(sp)
    80002c10:	02013283          	ld	t0,32(sp)
    80002c14:	02813303          	ld	t1,40(sp)
    80002c18:	03013383          	ld	t2,48(sp)
    80002c1c:	03813403          	ld	s0,56(sp)
    80002c20:	04013483          	ld	s1,64(sp)
    80002c24:	04813503          	ld	a0,72(sp)
    80002c28:	05013583          	ld	a1,80(sp)
    80002c2c:	05813603          	ld	a2,88(sp)
    80002c30:	06013683          	ld	a3,96(sp)
    80002c34:	06813703          	ld	a4,104(sp)
    80002c38:	07013783          	ld	a5,112(sp)
    80002c3c:	07813803          	ld	a6,120(sp)
    80002c40:	08013883          	ld	a7,128(sp)
    80002c44:	08813903          	ld	s2,136(sp)
    80002c48:	09013983          	ld	s3,144(sp)
    80002c4c:	09813a03          	ld	s4,152(sp)
    80002c50:	0a013a83          	ld	s5,160(sp)
    80002c54:	0a813b03          	ld	s6,168(sp)
    80002c58:	0b013b83          	ld	s7,176(sp)
    80002c5c:	0b813c03          	ld	s8,184(sp)
    80002c60:	0c013c83          	ld	s9,192(sp)
    80002c64:	0c813d03          	ld	s10,200(sp)
    80002c68:	0d013d83          	ld	s11,208(sp)
    80002c6c:	0d813e03          	ld	t3,216(sp)
    80002c70:	0e013e83          	ld	t4,224(sp)
    80002c74:	0e813f03          	ld	t5,232(sp)
    80002c78:	0f013f83          	ld	t6,240(sp)
    80002c7c:	10010113          	addi	sp,sp,256
    80002c80:	10200073          	sret
    80002c84:	00000013          	nop
    80002c88:	00000013          	nop
    80002c8c:	00000013          	nop

0000000080002c90 <timervec>:
    80002c90:	34051573          	csrrw	a0,mscratch,a0
    80002c94:	00b53023          	sd	a1,0(a0)
    80002c98:	00c53423          	sd	a2,8(a0)
    80002c9c:	00d53823          	sd	a3,16(a0)
    80002ca0:	01853583          	ld	a1,24(a0)
    80002ca4:	02053603          	ld	a2,32(a0)
    80002ca8:	0005b683          	ld	a3,0(a1)
    80002cac:	00c686b3          	add	a3,a3,a2
    80002cb0:	00d5b023          	sd	a3,0(a1)
    80002cb4:	00200593          	li	a1,2
    80002cb8:	14459073          	csrw	sip,a1
    80002cbc:	01053683          	ld	a3,16(a0)
    80002cc0:	00853603          	ld	a2,8(a0)
    80002cc4:	00053583          	ld	a1,0(a0)
    80002cc8:	34051573          	csrrw	a0,mscratch,a0
    80002ccc:	30200073          	mret

0000000080002cd0 <plicinit>:
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00813423          	sd	s0,8(sp)
    80002cd8:	01010413          	addi	s0,sp,16
    80002cdc:	00813403          	ld	s0,8(sp)
    80002ce0:	0c0007b7          	lui	a5,0xc000
    80002ce4:	00100713          	li	a4,1
    80002ce8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002cec:	00e7a223          	sw	a4,4(a5)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret

0000000080002cf8 <plicinithart>:
    80002cf8:	ff010113          	addi	sp,sp,-16
    80002cfc:	00813023          	sd	s0,0(sp)
    80002d00:	00113423          	sd	ra,8(sp)
    80002d04:	01010413          	addi	s0,sp,16
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	a40080e7          	jalr	-1472(ra) # 80002748 <cpuid>
    80002d10:	0085171b          	slliw	a4,a0,0x8
    80002d14:	0c0027b7          	lui	a5,0xc002
    80002d18:	00e787b3          	add	a5,a5,a4
    80002d1c:	40200713          	li	a4,1026
    80002d20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002d24:	00813083          	ld	ra,8(sp)
    80002d28:	00013403          	ld	s0,0(sp)
    80002d2c:	00d5151b          	slliw	a0,a0,0xd
    80002d30:	0c2017b7          	lui	a5,0xc201
    80002d34:	00a78533          	add	a0,a5,a0
    80002d38:	00052023          	sw	zero,0(a0)
    80002d3c:	01010113          	addi	sp,sp,16
    80002d40:	00008067          	ret

0000000080002d44 <plic_claim>:
    80002d44:	ff010113          	addi	sp,sp,-16
    80002d48:	00813023          	sd	s0,0(sp)
    80002d4c:	00113423          	sd	ra,8(sp)
    80002d50:	01010413          	addi	s0,sp,16
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	9f4080e7          	jalr	-1548(ra) # 80002748 <cpuid>
    80002d5c:	00813083          	ld	ra,8(sp)
    80002d60:	00013403          	ld	s0,0(sp)
    80002d64:	00d5151b          	slliw	a0,a0,0xd
    80002d68:	0c2017b7          	lui	a5,0xc201
    80002d6c:	00a78533          	add	a0,a5,a0
    80002d70:	00452503          	lw	a0,4(a0)
    80002d74:	01010113          	addi	sp,sp,16
    80002d78:	00008067          	ret

0000000080002d7c <plic_complete>:
    80002d7c:	fe010113          	addi	sp,sp,-32
    80002d80:	00813823          	sd	s0,16(sp)
    80002d84:	00913423          	sd	s1,8(sp)
    80002d88:	00113c23          	sd	ra,24(sp)
    80002d8c:	02010413          	addi	s0,sp,32
    80002d90:	00050493          	mv	s1,a0
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	9b4080e7          	jalr	-1612(ra) # 80002748 <cpuid>
    80002d9c:	01813083          	ld	ra,24(sp)
    80002da0:	01013403          	ld	s0,16(sp)
    80002da4:	00d5179b          	slliw	a5,a0,0xd
    80002da8:	0c201737          	lui	a4,0xc201
    80002dac:	00f707b3          	add	a5,a4,a5
    80002db0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002db4:	00813483          	ld	s1,8(sp)
    80002db8:	02010113          	addi	sp,sp,32
    80002dbc:	00008067          	ret

0000000080002dc0 <consolewrite>:
    80002dc0:	fb010113          	addi	sp,sp,-80
    80002dc4:	04813023          	sd	s0,64(sp)
    80002dc8:	04113423          	sd	ra,72(sp)
    80002dcc:	02913c23          	sd	s1,56(sp)
    80002dd0:	03213823          	sd	s2,48(sp)
    80002dd4:	03313423          	sd	s3,40(sp)
    80002dd8:	03413023          	sd	s4,32(sp)
    80002ddc:	01513c23          	sd	s5,24(sp)
    80002de0:	05010413          	addi	s0,sp,80
    80002de4:	06c05c63          	blez	a2,80002e5c <consolewrite+0x9c>
    80002de8:	00060993          	mv	s3,a2
    80002dec:	00050a13          	mv	s4,a0
    80002df0:	00058493          	mv	s1,a1
    80002df4:	00000913          	li	s2,0
    80002df8:	fff00a93          	li	s5,-1
    80002dfc:	01c0006f          	j	80002e18 <consolewrite+0x58>
    80002e00:	fbf44503          	lbu	a0,-65(s0)
    80002e04:	0019091b          	addiw	s2,s2,1
    80002e08:	00148493          	addi	s1,s1,1
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	a9c080e7          	jalr	-1380(ra) # 800038a8 <uartputc>
    80002e14:	03298063          	beq	s3,s2,80002e34 <consolewrite+0x74>
    80002e18:	00048613          	mv	a2,s1
    80002e1c:	00100693          	li	a3,1
    80002e20:	000a0593          	mv	a1,s4
    80002e24:	fbf40513          	addi	a0,s0,-65
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	9d8080e7          	jalr	-1576(ra) # 80002800 <either_copyin>
    80002e30:	fd5518e3          	bne	a0,s5,80002e00 <consolewrite+0x40>
    80002e34:	04813083          	ld	ra,72(sp)
    80002e38:	04013403          	ld	s0,64(sp)
    80002e3c:	03813483          	ld	s1,56(sp)
    80002e40:	02813983          	ld	s3,40(sp)
    80002e44:	02013a03          	ld	s4,32(sp)
    80002e48:	01813a83          	ld	s5,24(sp)
    80002e4c:	00090513          	mv	a0,s2
    80002e50:	03013903          	ld	s2,48(sp)
    80002e54:	05010113          	addi	sp,sp,80
    80002e58:	00008067          	ret
    80002e5c:	00000913          	li	s2,0
    80002e60:	fd5ff06f          	j	80002e34 <consolewrite+0x74>

0000000080002e64 <consoleread>:
    80002e64:	f9010113          	addi	sp,sp,-112
    80002e68:	06813023          	sd	s0,96(sp)
    80002e6c:	04913c23          	sd	s1,88(sp)
    80002e70:	05213823          	sd	s2,80(sp)
    80002e74:	05313423          	sd	s3,72(sp)
    80002e78:	05413023          	sd	s4,64(sp)
    80002e7c:	03513c23          	sd	s5,56(sp)
    80002e80:	03613823          	sd	s6,48(sp)
    80002e84:	03713423          	sd	s7,40(sp)
    80002e88:	03813023          	sd	s8,32(sp)
    80002e8c:	06113423          	sd	ra,104(sp)
    80002e90:	01913c23          	sd	s9,24(sp)
    80002e94:	07010413          	addi	s0,sp,112
    80002e98:	00060b93          	mv	s7,a2
    80002e9c:	00050913          	mv	s2,a0
    80002ea0:	00058c13          	mv	s8,a1
    80002ea4:	00060b1b          	sext.w	s6,a2
    80002ea8:	00004497          	auipc	s1,0x4
    80002eac:	ca048493          	addi	s1,s1,-864 # 80006b48 <cons>
    80002eb0:	00400993          	li	s3,4
    80002eb4:	fff00a13          	li	s4,-1
    80002eb8:	00a00a93          	li	s5,10
    80002ebc:	05705e63          	blez	s7,80002f18 <consoleread+0xb4>
    80002ec0:	09c4a703          	lw	a4,156(s1)
    80002ec4:	0984a783          	lw	a5,152(s1)
    80002ec8:	0007071b          	sext.w	a4,a4
    80002ecc:	08e78463          	beq	a5,a4,80002f54 <consoleread+0xf0>
    80002ed0:	07f7f713          	andi	a4,a5,127
    80002ed4:	00e48733          	add	a4,s1,a4
    80002ed8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002edc:	0017869b          	addiw	a3,a5,1
    80002ee0:	08d4ac23          	sw	a3,152(s1)
    80002ee4:	00070c9b          	sext.w	s9,a4
    80002ee8:	0b370663          	beq	a4,s3,80002f94 <consoleread+0x130>
    80002eec:	00100693          	li	a3,1
    80002ef0:	f9f40613          	addi	a2,s0,-97
    80002ef4:	000c0593          	mv	a1,s8
    80002ef8:	00090513          	mv	a0,s2
    80002efc:	f8e40fa3          	sb	a4,-97(s0)
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	8b4080e7          	jalr	-1868(ra) # 800027b4 <either_copyout>
    80002f08:	01450863          	beq	a0,s4,80002f18 <consoleread+0xb4>
    80002f0c:	001c0c13          	addi	s8,s8,1
    80002f10:	fffb8b9b          	addiw	s7,s7,-1
    80002f14:	fb5c94e3          	bne	s9,s5,80002ebc <consoleread+0x58>
    80002f18:	000b851b          	sext.w	a0,s7
    80002f1c:	06813083          	ld	ra,104(sp)
    80002f20:	06013403          	ld	s0,96(sp)
    80002f24:	05813483          	ld	s1,88(sp)
    80002f28:	05013903          	ld	s2,80(sp)
    80002f2c:	04813983          	ld	s3,72(sp)
    80002f30:	04013a03          	ld	s4,64(sp)
    80002f34:	03813a83          	ld	s5,56(sp)
    80002f38:	02813b83          	ld	s7,40(sp)
    80002f3c:	02013c03          	ld	s8,32(sp)
    80002f40:	01813c83          	ld	s9,24(sp)
    80002f44:	40ab053b          	subw	a0,s6,a0
    80002f48:	03013b03          	ld	s6,48(sp)
    80002f4c:	07010113          	addi	sp,sp,112
    80002f50:	00008067          	ret
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	1d8080e7          	jalr	472(ra) # 8000412c <push_on>
    80002f5c:	0984a703          	lw	a4,152(s1)
    80002f60:	09c4a783          	lw	a5,156(s1)
    80002f64:	0007879b          	sext.w	a5,a5
    80002f68:	fef70ce3          	beq	a4,a5,80002f60 <consoleread+0xfc>
    80002f6c:	00001097          	auipc	ra,0x1
    80002f70:	234080e7          	jalr	564(ra) # 800041a0 <pop_on>
    80002f74:	0984a783          	lw	a5,152(s1)
    80002f78:	07f7f713          	andi	a4,a5,127
    80002f7c:	00e48733          	add	a4,s1,a4
    80002f80:	01874703          	lbu	a4,24(a4)
    80002f84:	0017869b          	addiw	a3,a5,1
    80002f88:	08d4ac23          	sw	a3,152(s1)
    80002f8c:	00070c9b          	sext.w	s9,a4
    80002f90:	f5371ee3          	bne	a4,s3,80002eec <consoleread+0x88>
    80002f94:	000b851b          	sext.w	a0,s7
    80002f98:	f96bf2e3          	bgeu	s7,s6,80002f1c <consoleread+0xb8>
    80002f9c:	08f4ac23          	sw	a5,152(s1)
    80002fa0:	f7dff06f          	j	80002f1c <consoleread+0xb8>

0000000080002fa4 <consputc>:
    80002fa4:	10000793          	li	a5,256
    80002fa8:	00f50663          	beq	a0,a5,80002fb4 <consputc+0x10>
    80002fac:	00001317          	auipc	t1,0x1
    80002fb0:	9f430067          	jr	-1548(t1) # 800039a0 <uartputc_sync>
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00113423          	sd	ra,8(sp)
    80002fbc:	00813023          	sd	s0,0(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    80002fc4:	00800513          	li	a0,8
    80002fc8:	00001097          	auipc	ra,0x1
    80002fcc:	9d8080e7          	jalr	-1576(ra) # 800039a0 <uartputc_sync>
    80002fd0:	02000513          	li	a0,32
    80002fd4:	00001097          	auipc	ra,0x1
    80002fd8:	9cc080e7          	jalr	-1588(ra) # 800039a0 <uartputc_sync>
    80002fdc:	00013403          	ld	s0,0(sp)
    80002fe0:	00813083          	ld	ra,8(sp)
    80002fe4:	00800513          	li	a0,8
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00001317          	auipc	t1,0x1
    80002ff0:	9b430067          	jr	-1612(t1) # 800039a0 <uartputc_sync>

0000000080002ff4 <consoleintr>:
    80002ff4:	fe010113          	addi	sp,sp,-32
    80002ff8:	00813823          	sd	s0,16(sp)
    80002ffc:	00913423          	sd	s1,8(sp)
    80003000:	01213023          	sd	s2,0(sp)
    80003004:	00113c23          	sd	ra,24(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00004917          	auipc	s2,0x4
    80003010:	b3c90913          	addi	s2,s2,-1220 # 80006b48 <cons>
    80003014:	00050493          	mv	s1,a0
    80003018:	00090513          	mv	a0,s2
    8000301c:	00001097          	auipc	ra,0x1
    80003020:	e40080e7          	jalr	-448(ra) # 80003e5c <acquire>
    80003024:	02048c63          	beqz	s1,8000305c <consoleintr+0x68>
    80003028:	0a092783          	lw	a5,160(s2)
    8000302c:	09892703          	lw	a4,152(s2)
    80003030:	07f00693          	li	a3,127
    80003034:	40e7873b          	subw	a4,a5,a4
    80003038:	02e6e263          	bltu	a3,a4,8000305c <consoleintr+0x68>
    8000303c:	00d00713          	li	a4,13
    80003040:	04e48063          	beq	s1,a4,80003080 <consoleintr+0x8c>
    80003044:	07f7f713          	andi	a4,a5,127
    80003048:	00e90733          	add	a4,s2,a4
    8000304c:	0017879b          	addiw	a5,a5,1
    80003050:	0af92023          	sw	a5,160(s2)
    80003054:	00970c23          	sb	s1,24(a4)
    80003058:	08f92e23          	sw	a5,156(s2)
    8000305c:	01013403          	ld	s0,16(sp)
    80003060:	01813083          	ld	ra,24(sp)
    80003064:	00813483          	ld	s1,8(sp)
    80003068:	00013903          	ld	s2,0(sp)
    8000306c:	00004517          	auipc	a0,0x4
    80003070:	adc50513          	addi	a0,a0,-1316 # 80006b48 <cons>
    80003074:	02010113          	addi	sp,sp,32
    80003078:	00001317          	auipc	t1,0x1
    8000307c:	eb030067          	jr	-336(t1) # 80003f28 <release>
    80003080:	00a00493          	li	s1,10
    80003084:	fc1ff06f          	j	80003044 <consoleintr+0x50>

0000000080003088 <consoleinit>:
    80003088:	fe010113          	addi	sp,sp,-32
    8000308c:	00113c23          	sd	ra,24(sp)
    80003090:	00813823          	sd	s0,16(sp)
    80003094:	00913423          	sd	s1,8(sp)
    80003098:	02010413          	addi	s0,sp,32
    8000309c:	00004497          	auipc	s1,0x4
    800030a0:	aac48493          	addi	s1,s1,-1364 # 80006b48 <cons>
    800030a4:	00048513          	mv	a0,s1
    800030a8:	00002597          	auipc	a1,0x2
    800030ac:	19858593          	addi	a1,a1,408 # 80005240 <CONSOLE_STATUS+0x230>
    800030b0:	00001097          	auipc	ra,0x1
    800030b4:	d88080e7          	jalr	-632(ra) # 80003e38 <initlock>
    800030b8:	00000097          	auipc	ra,0x0
    800030bc:	7ac080e7          	jalr	1964(ra) # 80003864 <uartinit>
    800030c0:	01813083          	ld	ra,24(sp)
    800030c4:	01013403          	ld	s0,16(sp)
    800030c8:	00000797          	auipc	a5,0x0
    800030cc:	d9c78793          	addi	a5,a5,-612 # 80002e64 <consoleread>
    800030d0:	0af4bc23          	sd	a5,184(s1)
    800030d4:	00000797          	auipc	a5,0x0
    800030d8:	cec78793          	addi	a5,a5,-788 # 80002dc0 <consolewrite>
    800030dc:	0cf4b023          	sd	a5,192(s1)
    800030e0:	00813483          	ld	s1,8(sp)
    800030e4:	02010113          	addi	sp,sp,32
    800030e8:	00008067          	ret

00000000800030ec <console_read>:
    800030ec:	ff010113          	addi	sp,sp,-16
    800030f0:	00813423          	sd	s0,8(sp)
    800030f4:	01010413          	addi	s0,sp,16
    800030f8:	00813403          	ld	s0,8(sp)
    800030fc:	00004317          	auipc	t1,0x4
    80003100:	b0433303          	ld	t1,-1276(t1) # 80006c00 <devsw+0x10>
    80003104:	01010113          	addi	sp,sp,16
    80003108:	00030067          	jr	t1

000000008000310c <console_write>:
    8000310c:	ff010113          	addi	sp,sp,-16
    80003110:	00813423          	sd	s0,8(sp)
    80003114:	01010413          	addi	s0,sp,16
    80003118:	00813403          	ld	s0,8(sp)
    8000311c:	00004317          	auipc	t1,0x4
    80003120:	aec33303          	ld	t1,-1300(t1) # 80006c08 <devsw+0x18>
    80003124:	01010113          	addi	sp,sp,16
    80003128:	00030067          	jr	t1

000000008000312c <panic>:
    8000312c:	fe010113          	addi	sp,sp,-32
    80003130:	00113c23          	sd	ra,24(sp)
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	02010413          	addi	s0,sp,32
    80003140:	00050493          	mv	s1,a0
    80003144:	00002517          	auipc	a0,0x2
    80003148:	10450513          	addi	a0,a0,260 # 80005248 <CONSOLE_STATUS+0x238>
    8000314c:	00004797          	auipc	a5,0x4
    80003150:	b407ae23          	sw	zero,-1188(a5) # 80006ca8 <pr+0x18>
    80003154:	00000097          	auipc	ra,0x0
    80003158:	034080e7          	jalr	52(ra) # 80003188 <__printf>
    8000315c:	00048513          	mv	a0,s1
    80003160:	00000097          	auipc	ra,0x0
    80003164:	028080e7          	jalr	40(ra) # 80003188 <__printf>
    80003168:	00002517          	auipc	a0,0x2
    8000316c:	f5850513          	addi	a0,a0,-168 # 800050c0 <CONSOLE_STATUS+0xb0>
    80003170:	00000097          	auipc	ra,0x0
    80003174:	018080e7          	jalr	24(ra) # 80003188 <__printf>
    80003178:	00100793          	li	a5,1
    8000317c:	00003717          	auipc	a4,0x3
    80003180:	88f72623          	sw	a5,-1908(a4) # 80005a08 <panicked>
    80003184:	0000006f          	j	80003184 <panic+0x58>

0000000080003188 <__printf>:
    80003188:	f3010113          	addi	sp,sp,-208
    8000318c:	08813023          	sd	s0,128(sp)
    80003190:	07313423          	sd	s3,104(sp)
    80003194:	09010413          	addi	s0,sp,144
    80003198:	05813023          	sd	s8,64(sp)
    8000319c:	08113423          	sd	ra,136(sp)
    800031a0:	06913c23          	sd	s1,120(sp)
    800031a4:	07213823          	sd	s2,112(sp)
    800031a8:	07413023          	sd	s4,96(sp)
    800031ac:	05513c23          	sd	s5,88(sp)
    800031b0:	05613823          	sd	s6,80(sp)
    800031b4:	05713423          	sd	s7,72(sp)
    800031b8:	03913c23          	sd	s9,56(sp)
    800031bc:	03a13823          	sd	s10,48(sp)
    800031c0:	03b13423          	sd	s11,40(sp)
    800031c4:	00004317          	auipc	t1,0x4
    800031c8:	acc30313          	addi	t1,t1,-1332 # 80006c90 <pr>
    800031cc:	01832c03          	lw	s8,24(t1)
    800031d0:	00b43423          	sd	a1,8(s0)
    800031d4:	00c43823          	sd	a2,16(s0)
    800031d8:	00d43c23          	sd	a3,24(s0)
    800031dc:	02e43023          	sd	a4,32(s0)
    800031e0:	02f43423          	sd	a5,40(s0)
    800031e4:	03043823          	sd	a6,48(s0)
    800031e8:	03143c23          	sd	a7,56(s0)
    800031ec:	00050993          	mv	s3,a0
    800031f0:	4a0c1663          	bnez	s8,8000369c <__printf+0x514>
    800031f4:	60098c63          	beqz	s3,8000380c <__printf+0x684>
    800031f8:	0009c503          	lbu	a0,0(s3)
    800031fc:	00840793          	addi	a5,s0,8
    80003200:	f6f43c23          	sd	a5,-136(s0)
    80003204:	00000493          	li	s1,0
    80003208:	22050063          	beqz	a0,80003428 <__printf+0x2a0>
    8000320c:	00002a37          	lui	s4,0x2
    80003210:	00018ab7          	lui	s5,0x18
    80003214:	000f4b37          	lui	s6,0xf4
    80003218:	00989bb7          	lui	s7,0x989
    8000321c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003220:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003224:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003228:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000322c:	00148c9b          	addiw	s9,s1,1
    80003230:	02500793          	li	a5,37
    80003234:	01998933          	add	s2,s3,s9
    80003238:	38f51263          	bne	a0,a5,800035bc <__printf+0x434>
    8000323c:	00094783          	lbu	a5,0(s2)
    80003240:	00078c9b          	sext.w	s9,a5
    80003244:	1e078263          	beqz	a5,80003428 <__printf+0x2a0>
    80003248:	0024849b          	addiw	s1,s1,2
    8000324c:	07000713          	li	a4,112
    80003250:	00998933          	add	s2,s3,s1
    80003254:	38e78a63          	beq	a5,a4,800035e8 <__printf+0x460>
    80003258:	20f76863          	bltu	a4,a5,80003468 <__printf+0x2e0>
    8000325c:	42a78863          	beq	a5,a0,8000368c <__printf+0x504>
    80003260:	06400713          	li	a4,100
    80003264:	40e79663          	bne	a5,a4,80003670 <__printf+0x4e8>
    80003268:	f7843783          	ld	a5,-136(s0)
    8000326c:	0007a603          	lw	a2,0(a5)
    80003270:	00878793          	addi	a5,a5,8
    80003274:	f6f43c23          	sd	a5,-136(s0)
    80003278:	42064a63          	bltz	a2,800036ac <__printf+0x524>
    8000327c:	00a00713          	li	a4,10
    80003280:	02e677bb          	remuw	a5,a2,a4
    80003284:	00002d97          	auipc	s11,0x2
    80003288:	fecd8d93          	addi	s11,s11,-20 # 80005270 <digits>
    8000328c:	00900593          	li	a1,9
    80003290:	0006051b          	sext.w	a0,a2
    80003294:	00000c93          	li	s9,0
    80003298:	02079793          	slli	a5,a5,0x20
    8000329c:	0207d793          	srli	a5,a5,0x20
    800032a0:	00fd87b3          	add	a5,s11,a5
    800032a4:	0007c783          	lbu	a5,0(a5)
    800032a8:	02e656bb          	divuw	a3,a2,a4
    800032ac:	f8f40023          	sb	a5,-128(s0)
    800032b0:	14c5d863          	bge	a1,a2,80003400 <__printf+0x278>
    800032b4:	06300593          	li	a1,99
    800032b8:	00100c93          	li	s9,1
    800032bc:	02e6f7bb          	remuw	a5,a3,a4
    800032c0:	02079793          	slli	a5,a5,0x20
    800032c4:	0207d793          	srli	a5,a5,0x20
    800032c8:	00fd87b3          	add	a5,s11,a5
    800032cc:	0007c783          	lbu	a5,0(a5)
    800032d0:	02e6d73b          	divuw	a4,a3,a4
    800032d4:	f8f400a3          	sb	a5,-127(s0)
    800032d8:	12a5f463          	bgeu	a1,a0,80003400 <__printf+0x278>
    800032dc:	00a00693          	li	a3,10
    800032e0:	00900593          	li	a1,9
    800032e4:	02d777bb          	remuw	a5,a4,a3
    800032e8:	02079793          	slli	a5,a5,0x20
    800032ec:	0207d793          	srli	a5,a5,0x20
    800032f0:	00fd87b3          	add	a5,s11,a5
    800032f4:	0007c503          	lbu	a0,0(a5)
    800032f8:	02d757bb          	divuw	a5,a4,a3
    800032fc:	f8a40123          	sb	a0,-126(s0)
    80003300:	48e5f263          	bgeu	a1,a4,80003784 <__printf+0x5fc>
    80003304:	06300513          	li	a0,99
    80003308:	02d7f5bb          	remuw	a1,a5,a3
    8000330c:	02059593          	slli	a1,a1,0x20
    80003310:	0205d593          	srli	a1,a1,0x20
    80003314:	00bd85b3          	add	a1,s11,a1
    80003318:	0005c583          	lbu	a1,0(a1)
    8000331c:	02d7d7bb          	divuw	a5,a5,a3
    80003320:	f8b401a3          	sb	a1,-125(s0)
    80003324:	48e57263          	bgeu	a0,a4,800037a8 <__printf+0x620>
    80003328:	3e700513          	li	a0,999
    8000332c:	02d7f5bb          	remuw	a1,a5,a3
    80003330:	02059593          	slli	a1,a1,0x20
    80003334:	0205d593          	srli	a1,a1,0x20
    80003338:	00bd85b3          	add	a1,s11,a1
    8000333c:	0005c583          	lbu	a1,0(a1)
    80003340:	02d7d7bb          	divuw	a5,a5,a3
    80003344:	f8b40223          	sb	a1,-124(s0)
    80003348:	46e57663          	bgeu	a0,a4,800037b4 <__printf+0x62c>
    8000334c:	02d7f5bb          	remuw	a1,a5,a3
    80003350:	02059593          	slli	a1,a1,0x20
    80003354:	0205d593          	srli	a1,a1,0x20
    80003358:	00bd85b3          	add	a1,s11,a1
    8000335c:	0005c583          	lbu	a1,0(a1)
    80003360:	02d7d7bb          	divuw	a5,a5,a3
    80003364:	f8b402a3          	sb	a1,-123(s0)
    80003368:	46ea7863          	bgeu	s4,a4,800037d8 <__printf+0x650>
    8000336c:	02d7f5bb          	remuw	a1,a5,a3
    80003370:	02059593          	slli	a1,a1,0x20
    80003374:	0205d593          	srli	a1,a1,0x20
    80003378:	00bd85b3          	add	a1,s11,a1
    8000337c:	0005c583          	lbu	a1,0(a1)
    80003380:	02d7d7bb          	divuw	a5,a5,a3
    80003384:	f8b40323          	sb	a1,-122(s0)
    80003388:	3eeaf863          	bgeu	s5,a4,80003778 <__printf+0x5f0>
    8000338c:	02d7f5bb          	remuw	a1,a5,a3
    80003390:	02059593          	slli	a1,a1,0x20
    80003394:	0205d593          	srli	a1,a1,0x20
    80003398:	00bd85b3          	add	a1,s11,a1
    8000339c:	0005c583          	lbu	a1,0(a1)
    800033a0:	02d7d7bb          	divuw	a5,a5,a3
    800033a4:	f8b403a3          	sb	a1,-121(s0)
    800033a8:	42eb7e63          	bgeu	s6,a4,800037e4 <__printf+0x65c>
    800033ac:	02d7f5bb          	remuw	a1,a5,a3
    800033b0:	02059593          	slli	a1,a1,0x20
    800033b4:	0205d593          	srli	a1,a1,0x20
    800033b8:	00bd85b3          	add	a1,s11,a1
    800033bc:	0005c583          	lbu	a1,0(a1)
    800033c0:	02d7d7bb          	divuw	a5,a5,a3
    800033c4:	f8b40423          	sb	a1,-120(s0)
    800033c8:	42ebfc63          	bgeu	s7,a4,80003800 <__printf+0x678>
    800033cc:	02079793          	slli	a5,a5,0x20
    800033d0:	0207d793          	srli	a5,a5,0x20
    800033d4:	00fd8db3          	add	s11,s11,a5
    800033d8:	000dc703          	lbu	a4,0(s11)
    800033dc:	00a00793          	li	a5,10
    800033e0:	00900c93          	li	s9,9
    800033e4:	f8e404a3          	sb	a4,-119(s0)
    800033e8:	00065c63          	bgez	a2,80003400 <__printf+0x278>
    800033ec:	f9040713          	addi	a4,s0,-112
    800033f0:	00f70733          	add	a4,a4,a5
    800033f4:	02d00693          	li	a3,45
    800033f8:	fed70823          	sb	a3,-16(a4)
    800033fc:	00078c93          	mv	s9,a5
    80003400:	f8040793          	addi	a5,s0,-128
    80003404:	01978cb3          	add	s9,a5,s9
    80003408:	f7f40d13          	addi	s10,s0,-129
    8000340c:	000cc503          	lbu	a0,0(s9)
    80003410:	fffc8c93          	addi	s9,s9,-1
    80003414:	00000097          	auipc	ra,0x0
    80003418:	b90080e7          	jalr	-1136(ra) # 80002fa4 <consputc>
    8000341c:	ffac98e3          	bne	s9,s10,8000340c <__printf+0x284>
    80003420:	00094503          	lbu	a0,0(s2)
    80003424:	e00514e3          	bnez	a0,8000322c <__printf+0xa4>
    80003428:	1a0c1663          	bnez	s8,800035d4 <__printf+0x44c>
    8000342c:	08813083          	ld	ra,136(sp)
    80003430:	08013403          	ld	s0,128(sp)
    80003434:	07813483          	ld	s1,120(sp)
    80003438:	07013903          	ld	s2,112(sp)
    8000343c:	06813983          	ld	s3,104(sp)
    80003440:	06013a03          	ld	s4,96(sp)
    80003444:	05813a83          	ld	s5,88(sp)
    80003448:	05013b03          	ld	s6,80(sp)
    8000344c:	04813b83          	ld	s7,72(sp)
    80003450:	04013c03          	ld	s8,64(sp)
    80003454:	03813c83          	ld	s9,56(sp)
    80003458:	03013d03          	ld	s10,48(sp)
    8000345c:	02813d83          	ld	s11,40(sp)
    80003460:	0d010113          	addi	sp,sp,208
    80003464:	00008067          	ret
    80003468:	07300713          	li	a4,115
    8000346c:	1ce78a63          	beq	a5,a4,80003640 <__printf+0x4b8>
    80003470:	07800713          	li	a4,120
    80003474:	1ee79e63          	bne	a5,a4,80003670 <__printf+0x4e8>
    80003478:	f7843783          	ld	a5,-136(s0)
    8000347c:	0007a703          	lw	a4,0(a5)
    80003480:	00878793          	addi	a5,a5,8
    80003484:	f6f43c23          	sd	a5,-136(s0)
    80003488:	28074263          	bltz	a4,8000370c <__printf+0x584>
    8000348c:	00002d97          	auipc	s11,0x2
    80003490:	de4d8d93          	addi	s11,s11,-540 # 80005270 <digits>
    80003494:	00f77793          	andi	a5,a4,15
    80003498:	00fd87b3          	add	a5,s11,a5
    8000349c:	0007c683          	lbu	a3,0(a5)
    800034a0:	00f00613          	li	a2,15
    800034a4:	0007079b          	sext.w	a5,a4
    800034a8:	f8d40023          	sb	a3,-128(s0)
    800034ac:	0047559b          	srliw	a1,a4,0x4
    800034b0:	0047569b          	srliw	a3,a4,0x4
    800034b4:	00000c93          	li	s9,0
    800034b8:	0ee65063          	bge	a2,a4,80003598 <__printf+0x410>
    800034bc:	00f6f693          	andi	a3,a3,15
    800034c0:	00dd86b3          	add	a3,s11,a3
    800034c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800034c8:	0087d79b          	srliw	a5,a5,0x8
    800034cc:	00100c93          	li	s9,1
    800034d0:	f8d400a3          	sb	a3,-127(s0)
    800034d4:	0cb67263          	bgeu	a2,a1,80003598 <__printf+0x410>
    800034d8:	00f7f693          	andi	a3,a5,15
    800034dc:	00dd86b3          	add	a3,s11,a3
    800034e0:	0006c583          	lbu	a1,0(a3)
    800034e4:	00f00613          	li	a2,15
    800034e8:	0047d69b          	srliw	a3,a5,0x4
    800034ec:	f8b40123          	sb	a1,-126(s0)
    800034f0:	0047d593          	srli	a1,a5,0x4
    800034f4:	28f67e63          	bgeu	a2,a5,80003790 <__printf+0x608>
    800034f8:	00f6f693          	andi	a3,a3,15
    800034fc:	00dd86b3          	add	a3,s11,a3
    80003500:	0006c503          	lbu	a0,0(a3)
    80003504:	0087d813          	srli	a6,a5,0x8
    80003508:	0087d69b          	srliw	a3,a5,0x8
    8000350c:	f8a401a3          	sb	a0,-125(s0)
    80003510:	28b67663          	bgeu	a2,a1,8000379c <__printf+0x614>
    80003514:	00f6f693          	andi	a3,a3,15
    80003518:	00dd86b3          	add	a3,s11,a3
    8000351c:	0006c583          	lbu	a1,0(a3)
    80003520:	00c7d513          	srli	a0,a5,0xc
    80003524:	00c7d69b          	srliw	a3,a5,0xc
    80003528:	f8b40223          	sb	a1,-124(s0)
    8000352c:	29067a63          	bgeu	a2,a6,800037c0 <__printf+0x638>
    80003530:	00f6f693          	andi	a3,a3,15
    80003534:	00dd86b3          	add	a3,s11,a3
    80003538:	0006c583          	lbu	a1,0(a3)
    8000353c:	0107d813          	srli	a6,a5,0x10
    80003540:	0107d69b          	srliw	a3,a5,0x10
    80003544:	f8b402a3          	sb	a1,-123(s0)
    80003548:	28a67263          	bgeu	a2,a0,800037cc <__printf+0x644>
    8000354c:	00f6f693          	andi	a3,a3,15
    80003550:	00dd86b3          	add	a3,s11,a3
    80003554:	0006c683          	lbu	a3,0(a3)
    80003558:	0147d79b          	srliw	a5,a5,0x14
    8000355c:	f8d40323          	sb	a3,-122(s0)
    80003560:	21067663          	bgeu	a2,a6,8000376c <__printf+0x5e4>
    80003564:	02079793          	slli	a5,a5,0x20
    80003568:	0207d793          	srli	a5,a5,0x20
    8000356c:	00fd8db3          	add	s11,s11,a5
    80003570:	000dc683          	lbu	a3,0(s11)
    80003574:	00800793          	li	a5,8
    80003578:	00700c93          	li	s9,7
    8000357c:	f8d403a3          	sb	a3,-121(s0)
    80003580:	00075c63          	bgez	a4,80003598 <__printf+0x410>
    80003584:	f9040713          	addi	a4,s0,-112
    80003588:	00f70733          	add	a4,a4,a5
    8000358c:	02d00693          	li	a3,45
    80003590:	fed70823          	sb	a3,-16(a4)
    80003594:	00078c93          	mv	s9,a5
    80003598:	f8040793          	addi	a5,s0,-128
    8000359c:	01978cb3          	add	s9,a5,s9
    800035a0:	f7f40d13          	addi	s10,s0,-129
    800035a4:	000cc503          	lbu	a0,0(s9)
    800035a8:	fffc8c93          	addi	s9,s9,-1
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	9f8080e7          	jalr	-1544(ra) # 80002fa4 <consputc>
    800035b4:	ff9d18e3          	bne	s10,s9,800035a4 <__printf+0x41c>
    800035b8:	0100006f          	j	800035c8 <__printf+0x440>
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	9e8080e7          	jalr	-1560(ra) # 80002fa4 <consputc>
    800035c4:	000c8493          	mv	s1,s9
    800035c8:	00094503          	lbu	a0,0(s2)
    800035cc:	c60510e3          	bnez	a0,8000322c <__printf+0xa4>
    800035d0:	e40c0ee3          	beqz	s8,8000342c <__printf+0x2a4>
    800035d4:	00003517          	auipc	a0,0x3
    800035d8:	6bc50513          	addi	a0,a0,1724 # 80006c90 <pr>
    800035dc:	00001097          	auipc	ra,0x1
    800035e0:	94c080e7          	jalr	-1716(ra) # 80003f28 <release>
    800035e4:	e49ff06f          	j	8000342c <__printf+0x2a4>
    800035e8:	f7843783          	ld	a5,-136(s0)
    800035ec:	03000513          	li	a0,48
    800035f0:	01000d13          	li	s10,16
    800035f4:	00878713          	addi	a4,a5,8
    800035f8:	0007bc83          	ld	s9,0(a5)
    800035fc:	f6e43c23          	sd	a4,-136(s0)
    80003600:	00000097          	auipc	ra,0x0
    80003604:	9a4080e7          	jalr	-1628(ra) # 80002fa4 <consputc>
    80003608:	07800513          	li	a0,120
    8000360c:	00000097          	auipc	ra,0x0
    80003610:	998080e7          	jalr	-1640(ra) # 80002fa4 <consputc>
    80003614:	00002d97          	auipc	s11,0x2
    80003618:	c5cd8d93          	addi	s11,s11,-932 # 80005270 <digits>
    8000361c:	03ccd793          	srli	a5,s9,0x3c
    80003620:	00fd87b3          	add	a5,s11,a5
    80003624:	0007c503          	lbu	a0,0(a5)
    80003628:	fffd0d1b          	addiw	s10,s10,-1
    8000362c:	004c9c93          	slli	s9,s9,0x4
    80003630:	00000097          	auipc	ra,0x0
    80003634:	974080e7          	jalr	-1676(ra) # 80002fa4 <consputc>
    80003638:	fe0d12e3          	bnez	s10,8000361c <__printf+0x494>
    8000363c:	f8dff06f          	j	800035c8 <__printf+0x440>
    80003640:	f7843783          	ld	a5,-136(s0)
    80003644:	0007bc83          	ld	s9,0(a5)
    80003648:	00878793          	addi	a5,a5,8
    8000364c:	f6f43c23          	sd	a5,-136(s0)
    80003650:	000c9a63          	bnez	s9,80003664 <__printf+0x4dc>
    80003654:	1080006f          	j	8000375c <__printf+0x5d4>
    80003658:	001c8c93          	addi	s9,s9,1
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	948080e7          	jalr	-1720(ra) # 80002fa4 <consputc>
    80003664:	000cc503          	lbu	a0,0(s9)
    80003668:	fe0518e3          	bnez	a0,80003658 <__printf+0x4d0>
    8000366c:	f5dff06f          	j	800035c8 <__printf+0x440>
    80003670:	02500513          	li	a0,37
    80003674:	00000097          	auipc	ra,0x0
    80003678:	930080e7          	jalr	-1744(ra) # 80002fa4 <consputc>
    8000367c:	000c8513          	mv	a0,s9
    80003680:	00000097          	auipc	ra,0x0
    80003684:	924080e7          	jalr	-1756(ra) # 80002fa4 <consputc>
    80003688:	f41ff06f          	j	800035c8 <__printf+0x440>
    8000368c:	02500513          	li	a0,37
    80003690:	00000097          	auipc	ra,0x0
    80003694:	914080e7          	jalr	-1772(ra) # 80002fa4 <consputc>
    80003698:	f31ff06f          	j	800035c8 <__printf+0x440>
    8000369c:	00030513          	mv	a0,t1
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	7bc080e7          	jalr	1980(ra) # 80003e5c <acquire>
    800036a8:	b4dff06f          	j	800031f4 <__printf+0x6c>
    800036ac:	40c0053b          	negw	a0,a2
    800036b0:	00a00713          	li	a4,10
    800036b4:	02e576bb          	remuw	a3,a0,a4
    800036b8:	00002d97          	auipc	s11,0x2
    800036bc:	bb8d8d93          	addi	s11,s11,-1096 # 80005270 <digits>
    800036c0:	ff700593          	li	a1,-9
    800036c4:	02069693          	slli	a3,a3,0x20
    800036c8:	0206d693          	srli	a3,a3,0x20
    800036cc:	00dd86b3          	add	a3,s11,a3
    800036d0:	0006c683          	lbu	a3,0(a3)
    800036d4:	02e557bb          	divuw	a5,a0,a4
    800036d8:	f8d40023          	sb	a3,-128(s0)
    800036dc:	10b65e63          	bge	a2,a1,800037f8 <__printf+0x670>
    800036e0:	06300593          	li	a1,99
    800036e4:	02e7f6bb          	remuw	a3,a5,a4
    800036e8:	02069693          	slli	a3,a3,0x20
    800036ec:	0206d693          	srli	a3,a3,0x20
    800036f0:	00dd86b3          	add	a3,s11,a3
    800036f4:	0006c683          	lbu	a3,0(a3)
    800036f8:	02e7d73b          	divuw	a4,a5,a4
    800036fc:	00200793          	li	a5,2
    80003700:	f8d400a3          	sb	a3,-127(s0)
    80003704:	bca5ece3          	bltu	a1,a0,800032dc <__printf+0x154>
    80003708:	ce5ff06f          	j	800033ec <__printf+0x264>
    8000370c:	40e007bb          	negw	a5,a4
    80003710:	00002d97          	auipc	s11,0x2
    80003714:	b60d8d93          	addi	s11,s11,-1184 # 80005270 <digits>
    80003718:	00f7f693          	andi	a3,a5,15
    8000371c:	00dd86b3          	add	a3,s11,a3
    80003720:	0006c583          	lbu	a1,0(a3)
    80003724:	ff100613          	li	a2,-15
    80003728:	0047d69b          	srliw	a3,a5,0x4
    8000372c:	f8b40023          	sb	a1,-128(s0)
    80003730:	0047d59b          	srliw	a1,a5,0x4
    80003734:	0ac75e63          	bge	a4,a2,800037f0 <__printf+0x668>
    80003738:	00f6f693          	andi	a3,a3,15
    8000373c:	00dd86b3          	add	a3,s11,a3
    80003740:	0006c603          	lbu	a2,0(a3)
    80003744:	00f00693          	li	a3,15
    80003748:	0087d79b          	srliw	a5,a5,0x8
    8000374c:	f8c400a3          	sb	a2,-127(s0)
    80003750:	d8b6e4e3          	bltu	a3,a1,800034d8 <__printf+0x350>
    80003754:	00200793          	li	a5,2
    80003758:	e2dff06f          	j	80003584 <__printf+0x3fc>
    8000375c:	00002c97          	auipc	s9,0x2
    80003760:	af4c8c93          	addi	s9,s9,-1292 # 80005250 <CONSOLE_STATUS+0x240>
    80003764:	02800513          	li	a0,40
    80003768:	ef1ff06f          	j	80003658 <__printf+0x4d0>
    8000376c:	00700793          	li	a5,7
    80003770:	00600c93          	li	s9,6
    80003774:	e0dff06f          	j	80003580 <__printf+0x3f8>
    80003778:	00700793          	li	a5,7
    8000377c:	00600c93          	li	s9,6
    80003780:	c69ff06f          	j	800033e8 <__printf+0x260>
    80003784:	00300793          	li	a5,3
    80003788:	00200c93          	li	s9,2
    8000378c:	c5dff06f          	j	800033e8 <__printf+0x260>
    80003790:	00300793          	li	a5,3
    80003794:	00200c93          	li	s9,2
    80003798:	de9ff06f          	j	80003580 <__printf+0x3f8>
    8000379c:	00400793          	li	a5,4
    800037a0:	00300c93          	li	s9,3
    800037a4:	dddff06f          	j	80003580 <__printf+0x3f8>
    800037a8:	00400793          	li	a5,4
    800037ac:	00300c93          	li	s9,3
    800037b0:	c39ff06f          	j	800033e8 <__printf+0x260>
    800037b4:	00500793          	li	a5,5
    800037b8:	00400c93          	li	s9,4
    800037bc:	c2dff06f          	j	800033e8 <__printf+0x260>
    800037c0:	00500793          	li	a5,5
    800037c4:	00400c93          	li	s9,4
    800037c8:	db9ff06f          	j	80003580 <__printf+0x3f8>
    800037cc:	00600793          	li	a5,6
    800037d0:	00500c93          	li	s9,5
    800037d4:	dadff06f          	j	80003580 <__printf+0x3f8>
    800037d8:	00600793          	li	a5,6
    800037dc:	00500c93          	li	s9,5
    800037e0:	c09ff06f          	j	800033e8 <__printf+0x260>
    800037e4:	00800793          	li	a5,8
    800037e8:	00700c93          	li	s9,7
    800037ec:	bfdff06f          	j	800033e8 <__printf+0x260>
    800037f0:	00100793          	li	a5,1
    800037f4:	d91ff06f          	j	80003584 <__printf+0x3fc>
    800037f8:	00100793          	li	a5,1
    800037fc:	bf1ff06f          	j	800033ec <__printf+0x264>
    80003800:	00900793          	li	a5,9
    80003804:	00800c93          	li	s9,8
    80003808:	be1ff06f          	j	800033e8 <__printf+0x260>
    8000380c:	00002517          	auipc	a0,0x2
    80003810:	a4c50513          	addi	a0,a0,-1460 # 80005258 <CONSOLE_STATUS+0x248>
    80003814:	00000097          	auipc	ra,0x0
    80003818:	918080e7          	jalr	-1768(ra) # 8000312c <panic>

000000008000381c <printfinit>:
    8000381c:	fe010113          	addi	sp,sp,-32
    80003820:	00813823          	sd	s0,16(sp)
    80003824:	00913423          	sd	s1,8(sp)
    80003828:	00113c23          	sd	ra,24(sp)
    8000382c:	02010413          	addi	s0,sp,32
    80003830:	00003497          	auipc	s1,0x3
    80003834:	46048493          	addi	s1,s1,1120 # 80006c90 <pr>
    80003838:	00048513          	mv	a0,s1
    8000383c:	00002597          	auipc	a1,0x2
    80003840:	a2c58593          	addi	a1,a1,-1492 # 80005268 <CONSOLE_STATUS+0x258>
    80003844:	00000097          	auipc	ra,0x0
    80003848:	5f4080e7          	jalr	1524(ra) # 80003e38 <initlock>
    8000384c:	01813083          	ld	ra,24(sp)
    80003850:	01013403          	ld	s0,16(sp)
    80003854:	0004ac23          	sw	zero,24(s1)
    80003858:	00813483          	ld	s1,8(sp)
    8000385c:	02010113          	addi	sp,sp,32
    80003860:	00008067          	ret

0000000080003864 <uartinit>:
    80003864:	ff010113          	addi	sp,sp,-16
    80003868:	00813423          	sd	s0,8(sp)
    8000386c:	01010413          	addi	s0,sp,16
    80003870:	100007b7          	lui	a5,0x10000
    80003874:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003878:	f8000713          	li	a4,-128
    8000387c:	00e781a3          	sb	a4,3(a5)
    80003880:	00300713          	li	a4,3
    80003884:	00e78023          	sb	a4,0(a5)
    80003888:	000780a3          	sb	zero,1(a5)
    8000388c:	00e781a3          	sb	a4,3(a5)
    80003890:	00700693          	li	a3,7
    80003894:	00d78123          	sb	a3,2(a5)
    80003898:	00e780a3          	sb	a4,1(a5)
    8000389c:	00813403          	ld	s0,8(sp)
    800038a0:	01010113          	addi	sp,sp,16
    800038a4:	00008067          	ret

00000000800038a8 <uartputc>:
    800038a8:	00002797          	auipc	a5,0x2
    800038ac:	1607a783          	lw	a5,352(a5) # 80005a08 <panicked>
    800038b0:	00078463          	beqz	a5,800038b8 <uartputc+0x10>
    800038b4:	0000006f          	j	800038b4 <uartputc+0xc>
    800038b8:	fd010113          	addi	sp,sp,-48
    800038bc:	02813023          	sd	s0,32(sp)
    800038c0:	00913c23          	sd	s1,24(sp)
    800038c4:	01213823          	sd	s2,16(sp)
    800038c8:	01313423          	sd	s3,8(sp)
    800038cc:	02113423          	sd	ra,40(sp)
    800038d0:	03010413          	addi	s0,sp,48
    800038d4:	00002917          	auipc	s2,0x2
    800038d8:	13c90913          	addi	s2,s2,316 # 80005a10 <uart_tx_r>
    800038dc:	00093783          	ld	a5,0(s2)
    800038e0:	00002497          	auipc	s1,0x2
    800038e4:	13848493          	addi	s1,s1,312 # 80005a18 <uart_tx_w>
    800038e8:	0004b703          	ld	a4,0(s1)
    800038ec:	02078693          	addi	a3,a5,32
    800038f0:	00050993          	mv	s3,a0
    800038f4:	02e69c63          	bne	a3,a4,8000392c <uartputc+0x84>
    800038f8:	00001097          	auipc	ra,0x1
    800038fc:	834080e7          	jalr	-1996(ra) # 8000412c <push_on>
    80003900:	00093783          	ld	a5,0(s2)
    80003904:	0004b703          	ld	a4,0(s1)
    80003908:	02078793          	addi	a5,a5,32
    8000390c:	00e79463          	bne	a5,a4,80003914 <uartputc+0x6c>
    80003910:	0000006f          	j	80003910 <uartputc+0x68>
    80003914:	00001097          	auipc	ra,0x1
    80003918:	88c080e7          	jalr	-1908(ra) # 800041a0 <pop_on>
    8000391c:	00093783          	ld	a5,0(s2)
    80003920:	0004b703          	ld	a4,0(s1)
    80003924:	02078693          	addi	a3,a5,32
    80003928:	fce688e3          	beq	a3,a4,800038f8 <uartputc+0x50>
    8000392c:	01f77693          	andi	a3,a4,31
    80003930:	00003597          	auipc	a1,0x3
    80003934:	38058593          	addi	a1,a1,896 # 80006cb0 <uart_tx_buf>
    80003938:	00d586b3          	add	a3,a1,a3
    8000393c:	00170713          	addi	a4,a4,1
    80003940:	01368023          	sb	s3,0(a3)
    80003944:	00e4b023          	sd	a4,0(s1)
    80003948:	10000637          	lui	a2,0x10000
    8000394c:	02f71063          	bne	a4,a5,8000396c <uartputc+0xc4>
    80003950:	0340006f          	j	80003984 <uartputc+0xdc>
    80003954:	00074703          	lbu	a4,0(a4)
    80003958:	00f93023          	sd	a5,0(s2)
    8000395c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003960:	00093783          	ld	a5,0(s2)
    80003964:	0004b703          	ld	a4,0(s1)
    80003968:	00f70e63          	beq	a4,a5,80003984 <uartputc+0xdc>
    8000396c:	00564683          	lbu	a3,5(a2)
    80003970:	01f7f713          	andi	a4,a5,31
    80003974:	00e58733          	add	a4,a1,a4
    80003978:	0206f693          	andi	a3,a3,32
    8000397c:	00178793          	addi	a5,a5,1
    80003980:	fc069ae3          	bnez	a3,80003954 <uartputc+0xac>
    80003984:	02813083          	ld	ra,40(sp)
    80003988:	02013403          	ld	s0,32(sp)
    8000398c:	01813483          	ld	s1,24(sp)
    80003990:	01013903          	ld	s2,16(sp)
    80003994:	00813983          	ld	s3,8(sp)
    80003998:	03010113          	addi	sp,sp,48
    8000399c:	00008067          	ret

00000000800039a0 <uartputc_sync>:
    800039a0:	ff010113          	addi	sp,sp,-16
    800039a4:	00813423          	sd	s0,8(sp)
    800039a8:	01010413          	addi	s0,sp,16
    800039ac:	00002717          	auipc	a4,0x2
    800039b0:	05c72703          	lw	a4,92(a4) # 80005a08 <panicked>
    800039b4:	02071663          	bnez	a4,800039e0 <uartputc_sync+0x40>
    800039b8:	00050793          	mv	a5,a0
    800039bc:	100006b7          	lui	a3,0x10000
    800039c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800039c4:	02077713          	andi	a4,a4,32
    800039c8:	fe070ce3          	beqz	a4,800039c0 <uartputc_sync+0x20>
    800039cc:	0ff7f793          	andi	a5,a5,255
    800039d0:	00f68023          	sb	a5,0(a3)
    800039d4:	00813403          	ld	s0,8(sp)
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret
    800039e0:	0000006f          	j	800039e0 <uartputc_sync+0x40>

00000000800039e4 <uartstart>:
    800039e4:	ff010113          	addi	sp,sp,-16
    800039e8:	00813423          	sd	s0,8(sp)
    800039ec:	01010413          	addi	s0,sp,16
    800039f0:	00002617          	auipc	a2,0x2
    800039f4:	02060613          	addi	a2,a2,32 # 80005a10 <uart_tx_r>
    800039f8:	00002517          	auipc	a0,0x2
    800039fc:	02050513          	addi	a0,a0,32 # 80005a18 <uart_tx_w>
    80003a00:	00063783          	ld	a5,0(a2)
    80003a04:	00053703          	ld	a4,0(a0)
    80003a08:	04f70263          	beq	a4,a5,80003a4c <uartstart+0x68>
    80003a0c:	100005b7          	lui	a1,0x10000
    80003a10:	00003817          	auipc	a6,0x3
    80003a14:	2a080813          	addi	a6,a6,672 # 80006cb0 <uart_tx_buf>
    80003a18:	01c0006f          	j	80003a34 <uartstart+0x50>
    80003a1c:	0006c703          	lbu	a4,0(a3)
    80003a20:	00f63023          	sd	a5,0(a2)
    80003a24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a28:	00063783          	ld	a5,0(a2)
    80003a2c:	00053703          	ld	a4,0(a0)
    80003a30:	00f70e63          	beq	a4,a5,80003a4c <uartstart+0x68>
    80003a34:	01f7f713          	andi	a4,a5,31
    80003a38:	00e806b3          	add	a3,a6,a4
    80003a3c:	0055c703          	lbu	a4,5(a1)
    80003a40:	00178793          	addi	a5,a5,1
    80003a44:	02077713          	andi	a4,a4,32
    80003a48:	fc071ae3          	bnez	a4,80003a1c <uartstart+0x38>
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <uartgetc>:
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00813423          	sd	s0,8(sp)
    80003a60:	01010413          	addi	s0,sp,16
    80003a64:	10000737          	lui	a4,0x10000
    80003a68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003a6c:	0017f793          	andi	a5,a5,1
    80003a70:	00078c63          	beqz	a5,80003a88 <uartgetc+0x30>
    80003a74:	00074503          	lbu	a0,0(a4)
    80003a78:	0ff57513          	andi	a0,a0,255
    80003a7c:	00813403          	ld	s0,8(sp)
    80003a80:	01010113          	addi	sp,sp,16
    80003a84:	00008067          	ret
    80003a88:	fff00513          	li	a0,-1
    80003a8c:	ff1ff06f          	j	80003a7c <uartgetc+0x24>

0000000080003a90 <uartintr>:
    80003a90:	100007b7          	lui	a5,0x10000
    80003a94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003a98:	0017f793          	andi	a5,a5,1
    80003a9c:	0a078463          	beqz	a5,80003b44 <uartintr+0xb4>
    80003aa0:	fe010113          	addi	sp,sp,-32
    80003aa4:	00813823          	sd	s0,16(sp)
    80003aa8:	00913423          	sd	s1,8(sp)
    80003aac:	00113c23          	sd	ra,24(sp)
    80003ab0:	02010413          	addi	s0,sp,32
    80003ab4:	100004b7          	lui	s1,0x10000
    80003ab8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003abc:	0ff57513          	andi	a0,a0,255
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	534080e7          	jalr	1332(ra) # 80002ff4 <consoleintr>
    80003ac8:	0054c783          	lbu	a5,5(s1)
    80003acc:	0017f793          	andi	a5,a5,1
    80003ad0:	fe0794e3          	bnez	a5,80003ab8 <uartintr+0x28>
    80003ad4:	00002617          	auipc	a2,0x2
    80003ad8:	f3c60613          	addi	a2,a2,-196 # 80005a10 <uart_tx_r>
    80003adc:	00002517          	auipc	a0,0x2
    80003ae0:	f3c50513          	addi	a0,a0,-196 # 80005a18 <uart_tx_w>
    80003ae4:	00063783          	ld	a5,0(a2)
    80003ae8:	00053703          	ld	a4,0(a0)
    80003aec:	04f70263          	beq	a4,a5,80003b30 <uartintr+0xa0>
    80003af0:	100005b7          	lui	a1,0x10000
    80003af4:	00003817          	auipc	a6,0x3
    80003af8:	1bc80813          	addi	a6,a6,444 # 80006cb0 <uart_tx_buf>
    80003afc:	01c0006f          	j	80003b18 <uartintr+0x88>
    80003b00:	0006c703          	lbu	a4,0(a3)
    80003b04:	00f63023          	sd	a5,0(a2)
    80003b08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b0c:	00063783          	ld	a5,0(a2)
    80003b10:	00053703          	ld	a4,0(a0)
    80003b14:	00f70e63          	beq	a4,a5,80003b30 <uartintr+0xa0>
    80003b18:	01f7f713          	andi	a4,a5,31
    80003b1c:	00e806b3          	add	a3,a6,a4
    80003b20:	0055c703          	lbu	a4,5(a1)
    80003b24:	00178793          	addi	a5,a5,1
    80003b28:	02077713          	andi	a4,a4,32
    80003b2c:	fc071ae3          	bnez	a4,80003b00 <uartintr+0x70>
    80003b30:	01813083          	ld	ra,24(sp)
    80003b34:	01013403          	ld	s0,16(sp)
    80003b38:	00813483          	ld	s1,8(sp)
    80003b3c:	02010113          	addi	sp,sp,32
    80003b40:	00008067          	ret
    80003b44:	00002617          	auipc	a2,0x2
    80003b48:	ecc60613          	addi	a2,a2,-308 # 80005a10 <uart_tx_r>
    80003b4c:	00002517          	auipc	a0,0x2
    80003b50:	ecc50513          	addi	a0,a0,-308 # 80005a18 <uart_tx_w>
    80003b54:	00063783          	ld	a5,0(a2)
    80003b58:	00053703          	ld	a4,0(a0)
    80003b5c:	04f70263          	beq	a4,a5,80003ba0 <uartintr+0x110>
    80003b60:	100005b7          	lui	a1,0x10000
    80003b64:	00003817          	auipc	a6,0x3
    80003b68:	14c80813          	addi	a6,a6,332 # 80006cb0 <uart_tx_buf>
    80003b6c:	01c0006f          	j	80003b88 <uartintr+0xf8>
    80003b70:	0006c703          	lbu	a4,0(a3)
    80003b74:	00f63023          	sd	a5,0(a2)
    80003b78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b7c:	00063783          	ld	a5,0(a2)
    80003b80:	00053703          	ld	a4,0(a0)
    80003b84:	02f70063          	beq	a4,a5,80003ba4 <uartintr+0x114>
    80003b88:	01f7f713          	andi	a4,a5,31
    80003b8c:	00e806b3          	add	a3,a6,a4
    80003b90:	0055c703          	lbu	a4,5(a1)
    80003b94:	00178793          	addi	a5,a5,1
    80003b98:	02077713          	andi	a4,a4,32
    80003b9c:	fc071ae3          	bnez	a4,80003b70 <uartintr+0xe0>
    80003ba0:	00008067          	ret
    80003ba4:	00008067          	ret

0000000080003ba8 <kinit>:
    80003ba8:	fc010113          	addi	sp,sp,-64
    80003bac:	02913423          	sd	s1,40(sp)
    80003bb0:	fffff7b7          	lui	a5,0xfffff
    80003bb4:	00004497          	auipc	s1,0x4
    80003bb8:	11b48493          	addi	s1,s1,283 # 80007ccf <end+0xfff>
    80003bbc:	02813823          	sd	s0,48(sp)
    80003bc0:	01313c23          	sd	s3,24(sp)
    80003bc4:	00f4f4b3          	and	s1,s1,a5
    80003bc8:	02113c23          	sd	ra,56(sp)
    80003bcc:	03213023          	sd	s2,32(sp)
    80003bd0:	01413823          	sd	s4,16(sp)
    80003bd4:	01513423          	sd	s5,8(sp)
    80003bd8:	04010413          	addi	s0,sp,64
    80003bdc:	000017b7          	lui	a5,0x1
    80003be0:	01100993          	li	s3,17
    80003be4:	00f487b3          	add	a5,s1,a5
    80003be8:	01b99993          	slli	s3,s3,0x1b
    80003bec:	06f9e063          	bltu	s3,a5,80003c4c <kinit+0xa4>
    80003bf0:	00003a97          	auipc	s5,0x3
    80003bf4:	0e0a8a93          	addi	s5,s5,224 # 80006cd0 <end>
    80003bf8:	0754ec63          	bltu	s1,s5,80003c70 <kinit+0xc8>
    80003bfc:	0734fa63          	bgeu	s1,s3,80003c70 <kinit+0xc8>
    80003c00:	00088a37          	lui	s4,0x88
    80003c04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003c08:	00002917          	auipc	s2,0x2
    80003c0c:	e1890913          	addi	s2,s2,-488 # 80005a20 <kmem>
    80003c10:	00ca1a13          	slli	s4,s4,0xc
    80003c14:	0140006f          	j	80003c28 <kinit+0x80>
    80003c18:	000017b7          	lui	a5,0x1
    80003c1c:	00f484b3          	add	s1,s1,a5
    80003c20:	0554e863          	bltu	s1,s5,80003c70 <kinit+0xc8>
    80003c24:	0534f663          	bgeu	s1,s3,80003c70 <kinit+0xc8>
    80003c28:	00001637          	lui	a2,0x1
    80003c2c:	00100593          	li	a1,1
    80003c30:	00048513          	mv	a0,s1
    80003c34:	00000097          	auipc	ra,0x0
    80003c38:	5e4080e7          	jalr	1508(ra) # 80004218 <__memset>
    80003c3c:	00093783          	ld	a5,0(s2)
    80003c40:	00f4b023          	sd	a5,0(s1)
    80003c44:	00993023          	sd	s1,0(s2)
    80003c48:	fd4498e3          	bne	s1,s4,80003c18 <kinit+0x70>
    80003c4c:	03813083          	ld	ra,56(sp)
    80003c50:	03013403          	ld	s0,48(sp)
    80003c54:	02813483          	ld	s1,40(sp)
    80003c58:	02013903          	ld	s2,32(sp)
    80003c5c:	01813983          	ld	s3,24(sp)
    80003c60:	01013a03          	ld	s4,16(sp)
    80003c64:	00813a83          	ld	s5,8(sp)
    80003c68:	04010113          	addi	sp,sp,64
    80003c6c:	00008067          	ret
    80003c70:	00001517          	auipc	a0,0x1
    80003c74:	61850513          	addi	a0,a0,1560 # 80005288 <digits+0x18>
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	4b4080e7          	jalr	1204(ra) # 8000312c <panic>

0000000080003c80 <freerange>:
    80003c80:	fc010113          	addi	sp,sp,-64
    80003c84:	000017b7          	lui	a5,0x1
    80003c88:	02913423          	sd	s1,40(sp)
    80003c8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003c90:	009504b3          	add	s1,a0,s1
    80003c94:	fffff537          	lui	a0,0xfffff
    80003c98:	02813823          	sd	s0,48(sp)
    80003c9c:	02113c23          	sd	ra,56(sp)
    80003ca0:	03213023          	sd	s2,32(sp)
    80003ca4:	01313c23          	sd	s3,24(sp)
    80003ca8:	01413823          	sd	s4,16(sp)
    80003cac:	01513423          	sd	s5,8(sp)
    80003cb0:	01613023          	sd	s6,0(sp)
    80003cb4:	04010413          	addi	s0,sp,64
    80003cb8:	00a4f4b3          	and	s1,s1,a0
    80003cbc:	00f487b3          	add	a5,s1,a5
    80003cc0:	06f5e463          	bltu	a1,a5,80003d28 <freerange+0xa8>
    80003cc4:	00003a97          	auipc	s5,0x3
    80003cc8:	00ca8a93          	addi	s5,s5,12 # 80006cd0 <end>
    80003ccc:	0954e263          	bltu	s1,s5,80003d50 <freerange+0xd0>
    80003cd0:	01100993          	li	s3,17
    80003cd4:	01b99993          	slli	s3,s3,0x1b
    80003cd8:	0734fc63          	bgeu	s1,s3,80003d50 <freerange+0xd0>
    80003cdc:	00058a13          	mv	s4,a1
    80003ce0:	00002917          	auipc	s2,0x2
    80003ce4:	d4090913          	addi	s2,s2,-704 # 80005a20 <kmem>
    80003ce8:	00002b37          	lui	s6,0x2
    80003cec:	0140006f          	j	80003d00 <freerange+0x80>
    80003cf0:	000017b7          	lui	a5,0x1
    80003cf4:	00f484b3          	add	s1,s1,a5
    80003cf8:	0554ec63          	bltu	s1,s5,80003d50 <freerange+0xd0>
    80003cfc:	0534fa63          	bgeu	s1,s3,80003d50 <freerange+0xd0>
    80003d00:	00001637          	lui	a2,0x1
    80003d04:	00100593          	li	a1,1
    80003d08:	00048513          	mv	a0,s1
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	50c080e7          	jalr	1292(ra) # 80004218 <__memset>
    80003d14:	00093703          	ld	a4,0(s2)
    80003d18:	016487b3          	add	a5,s1,s6
    80003d1c:	00e4b023          	sd	a4,0(s1)
    80003d20:	00993023          	sd	s1,0(s2)
    80003d24:	fcfa76e3          	bgeu	s4,a5,80003cf0 <freerange+0x70>
    80003d28:	03813083          	ld	ra,56(sp)
    80003d2c:	03013403          	ld	s0,48(sp)
    80003d30:	02813483          	ld	s1,40(sp)
    80003d34:	02013903          	ld	s2,32(sp)
    80003d38:	01813983          	ld	s3,24(sp)
    80003d3c:	01013a03          	ld	s4,16(sp)
    80003d40:	00813a83          	ld	s5,8(sp)
    80003d44:	00013b03          	ld	s6,0(sp)
    80003d48:	04010113          	addi	sp,sp,64
    80003d4c:	00008067          	ret
    80003d50:	00001517          	auipc	a0,0x1
    80003d54:	53850513          	addi	a0,a0,1336 # 80005288 <digits+0x18>
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	3d4080e7          	jalr	980(ra) # 8000312c <panic>

0000000080003d60 <kfree>:
    80003d60:	fe010113          	addi	sp,sp,-32
    80003d64:	00813823          	sd	s0,16(sp)
    80003d68:	00113c23          	sd	ra,24(sp)
    80003d6c:	00913423          	sd	s1,8(sp)
    80003d70:	02010413          	addi	s0,sp,32
    80003d74:	03451793          	slli	a5,a0,0x34
    80003d78:	04079c63          	bnez	a5,80003dd0 <kfree+0x70>
    80003d7c:	00003797          	auipc	a5,0x3
    80003d80:	f5478793          	addi	a5,a5,-172 # 80006cd0 <end>
    80003d84:	00050493          	mv	s1,a0
    80003d88:	04f56463          	bltu	a0,a5,80003dd0 <kfree+0x70>
    80003d8c:	01100793          	li	a5,17
    80003d90:	01b79793          	slli	a5,a5,0x1b
    80003d94:	02f57e63          	bgeu	a0,a5,80003dd0 <kfree+0x70>
    80003d98:	00001637          	lui	a2,0x1
    80003d9c:	00100593          	li	a1,1
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	478080e7          	jalr	1144(ra) # 80004218 <__memset>
    80003da8:	00002797          	auipc	a5,0x2
    80003dac:	c7878793          	addi	a5,a5,-904 # 80005a20 <kmem>
    80003db0:	0007b703          	ld	a4,0(a5)
    80003db4:	01813083          	ld	ra,24(sp)
    80003db8:	01013403          	ld	s0,16(sp)
    80003dbc:	00e4b023          	sd	a4,0(s1)
    80003dc0:	0097b023          	sd	s1,0(a5)
    80003dc4:	00813483          	ld	s1,8(sp)
    80003dc8:	02010113          	addi	sp,sp,32
    80003dcc:	00008067          	ret
    80003dd0:	00001517          	auipc	a0,0x1
    80003dd4:	4b850513          	addi	a0,a0,1208 # 80005288 <digits+0x18>
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	354080e7          	jalr	852(ra) # 8000312c <panic>

0000000080003de0 <kalloc>:
    80003de0:	fe010113          	addi	sp,sp,-32
    80003de4:	00813823          	sd	s0,16(sp)
    80003de8:	00913423          	sd	s1,8(sp)
    80003dec:	00113c23          	sd	ra,24(sp)
    80003df0:	02010413          	addi	s0,sp,32
    80003df4:	00002797          	auipc	a5,0x2
    80003df8:	c2c78793          	addi	a5,a5,-980 # 80005a20 <kmem>
    80003dfc:	0007b483          	ld	s1,0(a5)
    80003e00:	02048063          	beqz	s1,80003e20 <kalloc+0x40>
    80003e04:	0004b703          	ld	a4,0(s1)
    80003e08:	00001637          	lui	a2,0x1
    80003e0c:	00500593          	li	a1,5
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00e7b023          	sd	a4,0(a5)
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	400080e7          	jalr	1024(ra) # 80004218 <__memset>
    80003e20:	01813083          	ld	ra,24(sp)
    80003e24:	01013403          	ld	s0,16(sp)
    80003e28:	00048513          	mv	a0,s1
    80003e2c:	00813483          	ld	s1,8(sp)
    80003e30:	02010113          	addi	sp,sp,32
    80003e34:	00008067          	ret

0000000080003e38 <initlock>:
    80003e38:	ff010113          	addi	sp,sp,-16
    80003e3c:	00813423          	sd	s0,8(sp)
    80003e40:	01010413          	addi	s0,sp,16
    80003e44:	00813403          	ld	s0,8(sp)
    80003e48:	00b53423          	sd	a1,8(a0)
    80003e4c:	00052023          	sw	zero,0(a0)
    80003e50:	00053823          	sd	zero,16(a0)
    80003e54:	01010113          	addi	sp,sp,16
    80003e58:	00008067          	ret

0000000080003e5c <acquire>:
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	00113c23          	sd	ra,24(sp)
    80003e6c:	01213023          	sd	s2,0(sp)
    80003e70:	02010413          	addi	s0,sp,32
    80003e74:	00050493          	mv	s1,a0
    80003e78:	10002973          	csrr	s2,sstatus
    80003e7c:	100027f3          	csrr	a5,sstatus
    80003e80:	ffd7f793          	andi	a5,a5,-3
    80003e84:	10079073          	csrw	sstatus,a5
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	8e0080e7          	jalr	-1824(ra) # 80002768 <mycpu>
    80003e90:	07852783          	lw	a5,120(a0)
    80003e94:	06078e63          	beqz	a5,80003f10 <acquire+0xb4>
    80003e98:	fffff097          	auipc	ra,0xfffff
    80003e9c:	8d0080e7          	jalr	-1840(ra) # 80002768 <mycpu>
    80003ea0:	07852783          	lw	a5,120(a0)
    80003ea4:	0004a703          	lw	a4,0(s1)
    80003ea8:	0017879b          	addiw	a5,a5,1
    80003eac:	06f52c23          	sw	a5,120(a0)
    80003eb0:	04071063          	bnez	a4,80003ef0 <acquire+0x94>
    80003eb4:	00100713          	li	a4,1
    80003eb8:	00070793          	mv	a5,a4
    80003ebc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003ec0:	0007879b          	sext.w	a5,a5
    80003ec4:	fe079ae3          	bnez	a5,80003eb8 <acquire+0x5c>
    80003ec8:	0ff0000f          	fence
    80003ecc:	fffff097          	auipc	ra,0xfffff
    80003ed0:	89c080e7          	jalr	-1892(ra) # 80002768 <mycpu>
    80003ed4:	01813083          	ld	ra,24(sp)
    80003ed8:	01013403          	ld	s0,16(sp)
    80003edc:	00a4b823          	sd	a0,16(s1)
    80003ee0:	00013903          	ld	s2,0(sp)
    80003ee4:	00813483          	ld	s1,8(sp)
    80003ee8:	02010113          	addi	sp,sp,32
    80003eec:	00008067          	ret
    80003ef0:	0104b903          	ld	s2,16(s1)
    80003ef4:	fffff097          	auipc	ra,0xfffff
    80003ef8:	874080e7          	jalr	-1932(ra) # 80002768 <mycpu>
    80003efc:	faa91ce3          	bne	s2,a0,80003eb4 <acquire+0x58>
    80003f00:	00001517          	auipc	a0,0x1
    80003f04:	39050513          	addi	a0,a0,912 # 80005290 <digits+0x20>
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	224080e7          	jalr	548(ra) # 8000312c <panic>
    80003f10:	00195913          	srli	s2,s2,0x1
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	854080e7          	jalr	-1964(ra) # 80002768 <mycpu>
    80003f1c:	00197913          	andi	s2,s2,1
    80003f20:	07252e23          	sw	s2,124(a0)
    80003f24:	f75ff06f          	j	80003e98 <acquire+0x3c>

0000000080003f28 <release>:
    80003f28:	fe010113          	addi	sp,sp,-32
    80003f2c:	00813823          	sd	s0,16(sp)
    80003f30:	00113c23          	sd	ra,24(sp)
    80003f34:	00913423          	sd	s1,8(sp)
    80003f38:	01213023          	sd	s2,0(sp)
    80003f3c:	02010413          	addi	s0,sp,32
    80003f40:	00052783          	lw	a5,0(a0)
    80003f44:	00079a63          	bnez	a5,80003f58 <release+0x30>
    80003f48:	00001517          	auipc	a0,0x1
    80003f4c:	35050513          	addi	a0,a0,848 # 80005298 <digits+0x28>
    80003f50:	fffff097          	auipc	ra,0xfffff
    80003f54:	1dc080e7          	jalr	476(ra) # 8000312c <panic>
    80003f58:	01053903          	ld	s2,16(a0)
    80003f5c:	00050493          	mv	s1,a0
    80003f60:	fffff097          	auipc	ra,0xfffff
    80003f64:	808080e7          	jalr	-2040(ra) # 80002768 <mycpu>
    80003f68:	fea910e3          	bne	s2,a0,80003f48 <release+0x20>
    80003f6c:	0004b823          	sd	zero,16(s1)
    80003f70:	0ff0000f          	fence
    80003f74:	0f50000f          	fence	iorw,ow
    80003f78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	7ec080e7          	jalr	2028(ra) # 80002768 <mycpu>
    80003f84:	100027f3          	csrr	a5,sstatus
    80003f88:	0027f793          	andi	a5,a5,2
    80003f8c:	04079a63          	bnez	a5,80003fe0 <release+0xb8>
    80003f90:	07852783          	lw	a5,120(a0)
    80003f94:	02f05e63          	blez	a5,80003fd0 <release+0xa8>
    80003f98:	fff7871b          	addiw	a4,a5,-1
    80003f9c:	06e52c23          	sw	a4,120(a0)
    80003fa0:	00071c63          	bnez	a4,80003fb8 <release+0x90>
    80003fa4:	07c52783          	lw	a5,124(a0)
    80003fa8:	00078863          	beqz	a5,80003fb8 <release+0x90>
    80003fac:	100027f3          	csrr	a5,sstatus
    80003fb0:	0027e793          	ori	a5,a5,2
    80003fb4:	10079073          	csrw	sstatus,a5
    80003fb8:	01813083          	ld	ra,24(sp)
    80003fbc:	01013403          	ld	s0,16(sp)
    80003fc0:	00813483          	ld	s1,8(sp)
    80003fc4:	00013903          	ld	s2,0(sp)
    80003fc8:	02010113          	addi	sp,sp,32
    80003fcc:	00008067          	ret
    80003fd0:	00001517          	auipc	a0,0x1
    80003fd4:	2e850513          	addi	a0,a0,744 # 800052b8 <digits+0x48>
    80003fd8:	fffff097          	auipc	ra,0xfffff
    80003fdc:	154080e7          	jalr	340(ra) # 8000312c <panic>
    80003fe0:	00001517          	auipc	a0,0x1
    80003fe4:	2c050513          	addi	a0,a0,704 # 800052a0 <digits+0x30>
    80003fe8:	fffff097          	auipc	ra,0xfffff
    80003fec:	144080e7          	jalr	324(ra) # 8000312c <panic>

0000000080003ff0 <holding>:
    80003ff0:	00052783          	lw	a5,0(a0)
    80003ff4:	00079663          	bnez	a5,80004000 <holding+0x10>
    80003ff8:	00000513          	li	a0,0
    80003ffc:	00008067          	ret
    80004000:	fe010113          	addi	sp,sp,-32
    80004004:	00813823          	sd	s0,16(sp)
    80004008:	00913423          	sd	s1,8(sp)
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	02010413          	addi	s0,sp,32
    80004014:	01053483          	ld	s1,16(a0)
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	750080e7          	jalr	1872(ra) # 80002768 <mycpu>
    80004020:	01813083          	ld	ra,24(sp)
    80004024:	01013403          	ld	s0,16(sp)
    80004028:	40a48533          	sub	a0,s1,a0
    8000402c:	00153513          	seqz	a0,a0
    80004030:	00813483          	ld	s1,8(sp)
    80004034:	02010113          	addi	sp,sp,32
    80004038:	00008067          	ret

000000008000403c <push_off>:
    8000403c:	fe010113          	addi	sp,sp,-32
    80004040:	00813823          	sd	s0,16(sp)
    80004044:	00113c23          	sd	ra,24(sp)
    80004048:	00913423          	sd	s1,8(sp)
    8000404c:	02010413          	addi	s0,sp,32
    80004050:	100024f3          	csrr	s1,sstatus
    80004054:	100027f3          	csrr	a5,sstatus
    80004058:	ffd7f793          	andi	a5,a5,-3
    8000405c:	10079073          	csrw	sstatus,a5
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	708080e7          	jalr	1800(ra) # 80002768 <mycpu>
    80004068:	07852783          	lw	a5,120(a0)
    8000406c:	02078663          	beqz	a5,80004098 <push_off+0x5c>
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	6f8080e7          	jalr	1784(ra) # 80002768 <mycpu>
    80004078:	07852783          	lw	a5,120(a0)
    8000407c:	01813083          	ld	ra,24(sp)
    80004080:	01013403          	ld	s0,16(sp)
    80004084:	0017879b          	addiw	a5,a5,1
    80004088:	06f52c23          	sw	a5,120(a0)
    8000408c:	00813483          	ld	s1,8(sp)
    80004090:	02010113          	addi	sp,sp,32
    80004094:	00008067          	ret
    80004098:	0014d493          	srli	s1,s1,0x1
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	6cc080e7          	jalr	1740(ra) # 80002768 <mycpu>
    800040a4:	0014f493          	andi	s1,s1,1
    800040a8:	06952e23          	sw	s1,124(a0)
    800040ac:	fc5ff06f          	j	80004070 <push_off+0x34>

00000000800040b0 <pop_off>:
    800040b0:	ff010113          	addi	sp,sp,-16
    800040b4:	00813023          	sd	s0,0(sp)
    800040b8:	00113423          	sd	ra,8(sp)
    800040bc:	01010413          	addi	s0,sp,16
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	6a8080e7          	jalr	1704(ra) # 80002768 <mycpu>
    800040c8:	100027f3          	csrr	a5,sstatus
    800040cc:	0027f793          	andi	a5,a5,2
    800040d0:	04079663          	bnez	a5,8000411c <pop_off+0x6c>
    800040d4:	07852783          	lw	a5,120(a0)
    800040d8:	02f05a63          	blez	a5,8000410c <pop_off+0x5c>
    800040dc:	fff7871b          	addiw	a4,a5,-1
    800040e0:	06e52c23          	sw	a4,120(a0)
    800040e4:	00071c63          	bnez	a4,800040fc <pop_off+0x4c>
    800040e8:	07c52783          	lw	a5,124(a0)
    800040ec:	00078863          	beqz	a5,800040fc <pop_off+0x4c>
    800040f0:	100027f3          	csrr	a5,sstatus
    800040f4:	0027e793          	ori	a5,a5,2
    800040f8:	10079073          	csrw	sstatus,a5
    800040fc:	00813083          	ld	ra,8(sp)
    80004100:	00013403          	ld	s0,0(sp)
    80004104:	01010113          	addi	sp,sp,16
    80004108:	00008067          	ret
    8000410c:	00001517          	auipc	a0,0x1
    80004110:	1ac50513          	addi	a0,a0,428 # 800052b8 <digits+0x48>
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	018080e7          	jalr	24(ra) # 8000312c <panic>
    8000411c:	00001517          	auipc	a0,0x1
    80004120:	18450513          	addi	a0,a0,388 # 800052a0 <digits+0x30>
    80004124:	fffff097          	auipc	ra,0xfffff
    80004128:	008080e7          	jalr	8(ra) # 8000312c <panic>

000000008000412c <push_on>:
    8000412c:	fe010113          	addi	sp,sp,-32
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00113c23          	sd	ra,24(sp)
    80004138:	00913423          	sd	s1,8(sp)
    8000413c:	02010413          	addi	s0,sp,32
    80004140:	100024f3          	csrr	s1,sstatus
    80004144:	100027f3          	csrr	a5,sstatus
    80004148:	0027e793          	ori	a5,a5,2
    8000414c:	10079073          	csrw	sstatus,a5
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	618080e7          	jalr	1560(ra) # 80002768 <mycpu>
    80004158:	07852783          	lw	a5,120(a0)
    8000415c:	02078663          	beqz	a5,80004188 <push_on+0x5c>
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	608080e7          	jalr	1544(ra) # 80002768 <mycpu>
    80004168:	07852783          	lw	a5,120(a0)
    8000416c:	01813083          	ld	ra,24(sp)
    80004170:	01013403          	ld	s0,16(sp)
    80004174:	0017879b          	addiw	a5,a5,1
    80004178:	06f52c23          	sw	a5,120(a0)
    8000417c:	00813483          	ld	s1,8(sp)
    80004180:	02010113          	addi	sp,sp,32
    80004184:	00008067          	ret
    80004188:	0014d493          	srli	s1,s1,0x1
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	5dc080e7          	jalr	1500(ra) # 80002768 <mycpu>
    80004194:	0014f493          	andi	s1,s1,1
    80004198:	06952e23          	sw	s1,124(a0)
    8000419c:	fc5ff06f          	j	80004160 <push_on+0x34>

00000000800041a0 <pop_on>:
    800041a0:	ff010113          	addi	sp,sp,-16
    800041a4:	00813023          	sd	s0,0(sp)
    800041a8:	00113423          	sd	ra,8(sp)
    800041ac:	01010413          	addi	s0,sp,16
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	5b8080e7          	jalr	1464(ra) # 80002768 <mycpu>
    800041b8:	100027f3          	csrr	a5,sstatus
    800041bc:	0027f793          	andi	a5,a5,2
    800041c0:	04078463          	beqz	a5,80004208 <pop_on+0x68>
    800041c4:	07852783          	lw	a5,120(a0)
    800041c8:	02f05863          	blez	a5,800041f8 <pop_on+0x58>
    800041cc:	fff7879b          	addiw	a5,a5,-1
    800041d0:	06f52c23          	sw	a5,120(a0)
    800041d4:	07853783          	ld	a5,120(a0)
    800041d8:	00079863          	bnez	a5,800041e8 <pop_on+0x48>
    800041dc:	100027f3          	csrr	a5,sstatus
    800041e0:	ffd7f793          	andi	a5,a5,-3
    800041e4:	10079073          	csrw	sstatus,a5
    800041e8:	00813083          	ld	ra,8(sp)
    800041ec:	00013403          	ld	s0,0(sp)
    800041f0:	01010113          	addi	sp,sp,16
    800041f4:	00008067          	ret
    800041f8:	00001517          	auipc	a0,0x1
    800041fc:	0e850513          	addi	a0,a0,232 # 800052e0 <digits+0x70>
    80004200:	fffff097          	auipc	ra,0xfffff
    80004204:	f2c080e7          	jalr	-212(ra) # 8000312c <panic>
    80004208:	00001517          	auipc	a0,0x1
    8000420c:	0b850513          	addi	a0,a0,184 # 800052c0 <digits+0x50>
    80004210:	fffff097          	auipc	ra,0xfffff
    80004214:	f1c080e7          	jalr	-228(ra) # 8000312c <panic>

0000000080004218 <__memset>:
    80004218:	ff010113          	addi	sp,sp,-16
    8000421c:	00813423          	sd	s0,8(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	1a060e63          	beqz	a2,800043e0 <__memset+0x1c8>
    80004228:	40a007b3          	neg	a5,a0
    8000422c:	0077f793          	andi	a5,a5,7
    80004230:	00778693          	addi	a3,a5,7
    80004234:	00b00813          	li	a6,11
    80004238:	0ff5f593          	andi	a1,a1,255
    8000423c:	fff6071b          	addiw	a4,a2,-1
    80004240:	1b06e663          	bltu	a3,a6,800043ec <__memset+0x1d4>
    80004244:	1cd76463          	bltu	a4,a3,8000440c <__memset+0x1f4>
    80004248:	1a078e63          	beqz	a5,80004404 <__memset+0x1ec>
    8000424c:	00b50023          	sb	a1,0(a0)
    80004250:	00100713          	li	a4,1
    80004254:	1ae78463          	beq	a5,a4,800043fc <__memset+0x1e4>
    80004258:	00b500a3          	sb	a1,1(a0)
    8000425c:	00200713          	li	a4,2
    80004260:	1ae78a63          	beq	a5,a4,80004414 <__memset+0x1fc>
    80004264:	00b50123          	sb	a1,2(a0)
    80004268:	00300713          	li	a4,3
    8000426c:	18e78463          	beq	a5,a4,800043f4 <__memset+0x1dc>
    80004270:	00b501a3          	sb	a1,3(a0)
    80004274:	00400713          	li	a4,4
    80004278:	1ae78263          	beq	a5,a4,8000441c <__memset+0x204>
    8000427c:	00b50223          	sb	a1,4(a0)
    80004280:	00500713          	li	a4,5
    80004284:	1ae78063          	beq	a5,a4,80004424 <__memset+0x20c>
    80004288:	00b502a3          	sb	a1,5(a0)
    8000428c:	00700713          	li	a4,7
    80004290:	18e79e63          	bne	a5,a4,8000442c <__memset+0x214>
    80004294:	00b50323          	sb	a1,6(a0)
    80004298:	00700e93          	li	t4,7
    8000429c:	00859713          	slli	a4,a1,0x8
    800042a0:	00e5e733          	or	a4,a1,a4
    800042a4:	01059e13          	slli	t3,a1,0x10
    800042a8:	01c76e33          	or	t3,a4,t3
    800042ac:	01859313          	slli	t1,a1,0x18
    800042b0:	006e6333          	or	t1,t3,t1
    800042b4:	02059893          	slli	a7,a1,0x20
    800042b8:	40f60e3b          	subw	t3,a2,a5
    800042bc:	011368b3          	or	a7,t1,a7
    800042c0:	02859813          	slli	a6,a1,0x28
    800042c4:	0108e833          	or	a6,a7,a6
    800042c8:	03059693          	slli	a3,a1,0x30
    800042cc:	003e589b          	srliw	a7,t3,0x3
    800042d0:	00d866b3          	or	a3,a6,a3
    800042d4:	03859713          	slli	a4,a1,0x38
    800042d8:	00389813          	slli	a6,a7,0x3
    800042dc:	00f507b3          	add	a5,a0,a5
    800042e0:	00e6e733          	or	a4,a3,a4
    800042e4:	000e089b          	sext.w	a7,t3
    800042e8:	00f806b3          	add	a3,a6,a5
    800042ec:	00e7b023          	sd	a4,0(a5)
    800042f0:	00878793          	addi	a5,a5,8
    800042f4:	fed79ce3          	bne	a5,a3,800042ec <__memset+0xd4>
    800042f8:	ff8e7793          	andi	a5,t3,-8
    800042fc:	0007871b          	sext.w	a4,a5
    80004300:	01d787bb          	addw	a5,a5,t4
    80004304:	0ce88e63          	beq	a7,a4,800043e0 <__memset+0x1c8>
    80004308:	00f50733          	add	a4,a0,a5
    8000430c:	00b70023          	sb	a1,0(a4)
    80004310:	0017871b          	addiw	a4,a5,1
    80004314:	0cc77663          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004318:	00e50733          	add	a4,a0,a4
    8000431c:	00b70023          	sb	a1,0(a4)
    80004320:	0027871b          	addiw	a4,a5,2
    80004324:	0ac77e63          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004328:	00e50733          	add	a4,a0,a4
    8000432c:	00b70023          	sb	a1,0(a4)
    80004330:	0037871b          	addiw	a4,a5,3
    80004334:	0ac77663          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004338:	00e50733          	add	a4,a0,a4
    8000433c:	00b70023          	sb	a1,0(a4)
    80004340:	0047871b          	addiw	a4,a5,4
    80004344:	08c77e63          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004348:	00e50733          	add	a4,a0,a4
    8000434c:	00b70023          	sb	a1,0(a4)
    80004350:	0057871b          	addiw	a4,a5,5
    80004354:	08c77663          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004358:	00e50733          	add	a4,a0,a4
    8000435c:	00b70023          	sb	a1,0(a4)
    80004360:	0067871b          	addiw	a4,a5,6
    80004364:	06c77e63          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004368:	00e50733          	add	a4,a0,a4
    8000436c:	00b70023          	sb	a1,0(a4)
    80004370:	0077871b          	addiw	a4,a5,7
    80004374:	06c77663          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004378:	00e50733          	add	a4,a0,a4
    8000437c:	00b70023          	sb	a1,0(a4)
    80004380:	0087871b          	addiw	a4,a5,8
    80004384:	04c77e63          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004388:	00e50733          	add	a4,a0,a4
    8000438c:	00b70023          	sb	a1,0(a4)
    80004390:	0097871b          	addiw	a4,a5,9
    80004394:	04c77663          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    80004398:	00e50733          	add	a4,a0,a4
    8000439c:	00b70023          	sb	a1,0(a4)
    800043a0:	00a7871b          	addiw	a4,a5,10
    800043a4:	02c77e63          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    800043a8:	00e50733          	add	a4,a0,a4
    800043ac:	00b70023          	sb	a1,0(a4)
    800043b0:	00b7871b          	addiw	a4,a5,11
    800043b4:	02c77663          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    800043b8:	00e50733          	add	a4,a0,a4
    800043bc:	00b70023          	sb	a1,0(a4)
    800043c0:	00c7871b          	addiw	a4,a5,12
    800043c4:	00c77e63          	bgeu	a4,a2,800043e0 <__memset+0x1c8>
    800043c8:	00e50733          	add	a4,a0,a4
    800043cc:	00b70023          	sb	a1,0(a4)
    800043d0:	00d7879b          	addiw	a5,a5,13
    800043d4:	00c7f663          	bgeu	a5,a2,800043e0 <__memset+0x1c8>
    800043d8:	00f507b3          	add	a5,a0,a5
    800043dc:	00b78023          	sb	a1,0(a5)
    800043e0:	00813403          	ld	s0,8(sp)
    800043e4:	01010113          	addi	sp,sp,16
    800043e8:	00008067          	ret
    800043ec:	00b00693          	li	a3,11
    800043f0:	e55ff06f          	j	80004244 <__memset+0x2c>
    800043f4:	00300e93          	li	t4,3
    800043f8:	ea5ff06f          	j	8000429c <__memset+0x84>
    800043fc:	00100e93          	li	t4,1
    80004400:	e9dff06f          	j	8000429c <__memset+0x84>
    80004404:	00000e93          	li	t4,0
    80004408:	e95ff06f          	j	8000429c <__memset+0x84>
    8000440c:	00000793          	li	a5,0
    80004410:	ef9ff06f          	j	80004308 <__memset+0xf0>
    80004414:	00200e93          	li	t4,2
    80004418:	e85ff06f          	j	8000429c <__memset+0x84>
    8000441c:	00400e93          	li	t4,4
    80004420:	e7dff06f          	j	8000429c <__memset+0x84>
    80004424:	00500e93          	li	t4,5
    80004428:	e75ff06f          	j	8000429c <__memset+0x84>
    8000442c:	00600e93          	li	t4,6
    80004430:	e6dff06f          	j	8000429c <__memset+0x84>

0000000080004434 <__memmove>:
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00813423          	sd	s0,8(sp)
    8000443c:	01010413          	addi	s0,sp,16
    80004440:	0e060863          	beqz	a2,80004530 <__memmove+0xfc>
    80004444:	fff6069b          	addiw	a3,a2,-1
    80004448:	0006881b          	sext.w	a6,a3
    8000444c:	0ea5e863          	bltu	a1,a0,8000453c <__memmove+0x108>
    80004450:	00758713          	addi	a4,a1,7
    80004454:	00a5e7b3          	or	a5,a1,a0
    80004458:	40a70733          	sub	a4,a4,a0
    8000445c:	0077f793          	andi	a5,a5,7
    80004460:	00f73713          	sltiu	a4,a4,15
    80004464:	00174713          	xori	a4,a4,1
    80004468:	0017b793          	seqz	a5,a5
    8000446c:	00e7f7b3          	and	a5,a5,a4
    80004470:	10078863          	beqz	a5,80004580 <__memmove+0x14c>
    80004474:	00900793          	li	a5,9
    80004478:	1107f463          	bgeu	a5,a6,80004580 <__memmove+0x14c>
    8000447c:	0036581b          	srliw	a6,a2,0x3
    80004480:	fff8081b          	addiw	a6,a6,-1
    80004484:	02081813          	slli	a6,a6,0x20
    80004488:	01d85893          	srli	a7,a6,0x1d
    8000448c:	00858813          	addi	a6,a1,8
    80004490:	00058793          	mv	a5,a1
    80004494:	00050713          	mv	a4,a0
    80004498:	01088833          	add	a6,a7,a6
    8000449c:	0007b883          	ld	a7,0(a5)
    800044a0:	00878793          	addi	a5,a5,8
    800044a4:	00870713          	addi	a4,a4,8
    800044a8:	ff173c23          	sd	a7,-8(a4)
    800044ac:	ff0798e3          	bne	a5,a6,8000449c <__memmove+0x68>
    800044b0:	ff867713          	andi	a4,a2,-8
    800044b4:	02071793          	slli	a5,a4,0x20
    800044b8:	0207d793          	srli	a5,a5,0x20
    800044bc:	00f585b3          	add	a1,a1,a5
    800044c0:	40e686bb          	subw	a3,a3,a4
    800044c4:	00f507b3          	add	a5,a0,a5
    800044c8:	06e60463          	beq	a2,a4,80004530 <__memmove+0xfc>
    800044cc:	0005c703          	lbu	a4,0(a1)
    800044d0:	00e78023          	sb	a4,0(a5)
    800044d4:	04068e63          	beqz	a3,80004530 <__memmove+0xfc>
    800044d8:	0015c603          	lbu	a2,1(a1)
    800044dc:	00100713          	li	a4,1
    800044e0:	00c780a3          	sb	a2,1(a5)
    800044e4:	04e68663          	beq	a3,a4,80004530 <__memmove+0xfc>
    800044e8:	0025c603          	lbu	a2,2(a1)
    800044ec:	00200713          	li	a4,2
    800044f0:	00c78123          	sb	a2,2(a5)
    800044f4:	02e68e63          	beq	a3,a4,80004530 <__memmove+0xfc>
    800044f8:	0035c603          	lbu	a2,3(a1)
    800044fc:	00300713          	li	a4,3
    80004500:	00c781a3          	sb	a2,3(a5)
    80004504:	02e68663          	beq	a3,a4,80004530 <__memmove+0xfc>
    80004508:	0045c603          	lbu	a2,4(a1)
    8000450c:	00400713          	li	a4,4
    80004510:	00c78223          	sb	a2,4(a5)
    80004514:	00e68e63          	beq	a3,a4,80004530 <__memmove+0xfc>
    80004518:	0055c603          	lbu	a2,5(a1)
    8000451c:	00500713          	li	a4,5
    80004520:	00c782a3          	sb	a2,5(a5)
    80004524:	00e68663          	beq	a3,a4,80004530 <__memmove+0xfc>
    80004528:	0065c703          	lbu	a4,6(a1)
    8000452c:	00e78323          	sb	a4,6(a5)
    80004530:	00813403          	ld	s0,8(sp)
    80004534:	01010113          	addi	sp,sp,16
    80004538:	00008067          	ret
    8000453c:	02061713          	slli	a4,a2,0x20
    80004540:	02075713          	srli	a4,a4,0x20
    80004544:	00e587b3          	add	a5,a1,a4
    80004548:	f0f574e3          	bgeu	a0,a5,80004450 <__memmove+0x1c>
    8000454c:	02069613          	slli	a2,a3,0x20
    80004550:	02065613          	srli	a2,a2,0x20
    80004554:	fff64613          	not	a2,a2
    80004558:	00e50733          	add	a4,a0,a4
    8000455c:	00c78633          	add	a2,a5,a2
    80004560:	fff7c683          	lbu	a3,-1(a5)
    80004564:	fff78793          	addi	a5,a5,-1
    80004568:	fff70713          	addi	a4,a4,-1
    8000456c:	00d70023          	sb	a3,0(a4)
    80004570:	fec798e3          	bne	a5,a2,80004560 <__memmove+0x12c>
    80004574:	00813403          	ld	s0,8(sp)
    80004578:	01010113          	addi	sp,sp,16
    8000457c:	00008067          	ret
    80004580:	02069713          	slli	a4,a3,0x20
    80004584:	02075713          	srli	a4,a4,0x20
    80004588:	00170713          	addi	a4,a4,1
    8000458c:	00e50733          	add	a4,a0,a4
    80004590:	00050793          	mv	a5,a0
    80004594:	0005c683          	lbu	a3,0(a1)
    80004598:	00178793          	addi	a5,a5,1
    8000459c:	00158593          	addi	a1,a1,1
    800045a0:	fed78fa3          	sb	a3,-1(a5)
    800045a4:	fee798e3          	bne	a5,a4,80004594 <__memmove+0x160>
    800045a8:	f89ff06f          	j	80004530 <__memmove+0xfc>

00000000800045ac <__putc>:
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00813823          	sd	s0,16(sp)
    800045b4:	00113c23          	sd	ra,24(sp)
    800045b8:	02010413          	addi	s0,sp,32
    800045bc:	00050793          	mv	a5,a0
    800045c0:	fef40593          	addi	a1,s0,-17
    800045c4:	00100613          	li	a2,1
    800045c8:	00000513          	li	a0,0
    800045cc:	fef407a3          	sb	a5,-17(s0)
    800045d0:	fffff097          	auipc	ra,0xfffff
    800045d4:	b3c080e7          	jalr	-1220(ra) # 8000310c <console_write>
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	01013403          	ld	s0,16(sp)
    800045e0:	02010113          	addi	sp,sp,32
    800045e4:	00008067          	ret

00000000800045e8 <__getc>:
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00813823          	sd	s0,16(sp)
    800045f0:	00113c23          	sd	ra,24(sp)
    800045f4:	02010413          	addi	s0,sp,32
    800045f8:	fe840593          	addi	a1,s0,-24
    800045fc:	00100613          	li	a2,1
    80004600:	00000513          	li	a0,0
    80004604:	fffff097          	auipc	ra,0xfffff
    80004608:	ae8080e7          	jalr	-1304(ra) # 800030ec <console_read>
    8000460c:	fe844503          	lbu	a0,-24(s0)
    80004610:	01813083          	ld	ra,24(sp)
    80004614:	01013403          	ld	s0,16(sp)
    80004618:	02010113          	addi	sp,sp,32
    8000461c:	00008067          	ret

0000000080004620 <console_handler>:
    80004620:	fe010113          	addi	sp,sp,-32
    80004624:	00813823          	sd	s0,16(sp)
    80004628:	00113c23          	sd	ra,24(sp)
    8000462c:	00913423          	sd	s1,8(sp)
    80004630:	02010413          	addi	s0,sp,32
    80004634:	14202773          	csrr	a4,scause
    80004638:	100027f3          	csrr	a5,sstatus
    8000463c:	0027f793          	andi	a5,a5,2
    80004640:	06079e63          	bnez	a5,800046bc <console_handler+0x9c>
    80004644:	00074c63          	bltz	a4,8000465c <console_handler+0x3c>
    80004648:	01813083          	ld	ra,24(sp)
    8000464c:	01013403          	ld	s0,16(sp)
    80004650:	00813483          	ld	s1,8(sp)
    80004654:	02010113          	addi	sp,sp,32
    80004658:	00008067          	ret
    8000465c:	0ff77713          	andi	a4,a4,255
    80004660:	00900793          	li	a5,9
    80004664:	fef712e3          	bne	a4,a5,80004648 <console_handler+0x28>
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	6dc080e7          	jalr	1756(ra) # 80002d44 <plic_claim>
    80004670:	00a00793          	li	a5,10
    80004674:	00050493          	mv	s1,a0
    80004678:	02f50c63          	beq	a0,a5,800046b0 <console_handler+0x90>
    8000467c:	fc0506e3          	beqz	a0,80004648 <console_handler+0x28>
    80004680:	00050593          	mv	a1,a0
    80004684:	00001517          	auipc	a0,0x1
    80004688:	b6450513          	addi	a0,a0,-1180 # 800051e8 <CONSOLE_STATUS+0x1d8>
    8000468c:	fffff097          	auipc	ra,0xfffff
    80004690:	afc080e7          	jalr	-1284(ra) # 80003188 <__printf>
    80004694:	01013403          	ld	s0,16(sp)
    80004698:	01813083          	ld	ra,24(sp)
    8000469c:	00048513          	mv	a0,s1
    800046a0:	00813483          	ld	s1,8(sp)
    800046a4:	02010113          	addi	sp,sp,32
    800046a8:	ffffe317          	auipc	t1,0xffffe
    800046ac:	6d430067          	jr	1748(t1) # 80002d7c <plic_complete>
    800046b0:	fffff097          	auipc	ra,0xfffff
    800046b4:	3e0080e7          	jalr	992(ra) # 80003a90 <uartintr>
    800046b8:	fddff06f          	j	80004694 <console_handler+0x74>
    800046bc:	00001517          	auipc	a0,0x1
    800046c0:	c2c50513          	addi	a0,a0,-980 # 800052e8 <digits+0x78>
    800046c4:	fffff097          	auipc	ra,0xfffff
    800046c8:	a68080e7          	jalr	-1432(ra) # 8000312c <panic>
	...
