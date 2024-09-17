
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
    8000001c:	4b8020ef          	jal	ra,800024d4 <start>

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
    800011a4:	3e1000ef          	jal	ra,80001d84 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000174c:	e54080e7          	jalr	-428(ra) # 8000459c <__putc>
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
    800017ec:	df0080e7          	jalr	-528(ra) # 800045d8 <__getc>
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
    80001984:	c1c080e7          	jalr	-996(ra) # 8000459c <__putc>
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
    800019ec:	a94080e7          	jalr	-1388(ra) # 8000247c <_ZN15MemoryAllocator15initFreeSegmentEv>

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
    80001ab8:	258080e7          	jalr	600(ra) # 80001d0c <_ZdlPv>
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
    80001adc:	25c080e7          	jalr	604(ra) # 80001d34 <_ZdaPv>
    80001ae0:	fd1ff06f          	j	80001ab0 <main+0xe0>
    }

    Scheduler::deleteThreadQueue();
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	61c080e7          	jalr	1564(ra) # 80002100 <_ZN9Scheduler17deleteThreadQueueEv>

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
    80001b3c:	184080e7          	jalr	388(ra) # 80001cbc <_Znwm>
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
    80001b54:	194080e7          	jalr	404(ra) # 80001ce4 <_Znam>
    80001b58:	0080006f          	j	80001b60 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001b5c:	00000513          	li	a0,0
        finished(false) {
    80001b60:	00a4b423          	sd	a0,8(s1)
    80001b64:	00000797          	auipc	a5,0x0
    80001b68:	09878793          	addi	a5,a5,152 # 80001bfc <_ZN3TCB13threadWrapperEv>
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
    80001b98:	500080e7          	jalr	1280(ra) # 80002094 <_ZN9Scheduler3putEP3TCB>
    80001b9c:	0280006f          	j	80001bc4 <_ZN3TCB12createThreadEPFvvE+0xac>
            stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE] : 0
    80001ba0:	00000793          	li	a5,0
    80001ba4:	fd9ff06f          	j	80001b7c <_ZN3TCB12createThreadEPFvvE+0x64>
    80001ba8:	00050913          	mv	s2,a0
    80001bac:	00048513          	mv	a0,s1
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	15c080e7          	jalr	348(ra) # 80001d0c <_ZdlPv>
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
    __asm__ volatile("ecall");
    80001bec:	00000073          	ecall
}
    80001bf0:	00813403          	ld	s0,8(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001bfc:	fe010113          	addi	sp,sp,-32
    80001c00:	00113c23          	sd	ra,24(sp)
    80001c04:	00813823          	sd	s0,16(sp)
    80001c08:	00913423          	sd	s1,8(sp)
    80001c0c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	14c080e7          	jalr	332(ra) # 80001d5c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001c18:	00004497          	auipc	s1,0x4
    80001c1c:	e2048493          	addi	s1,s1,-480 # 80005a38 <_ZN3TCB7runningE>
    80001c20:	0004b783          	ld	a5,0(s1)
    80001c24:	0007b783          	ld	a5,0(a5) # 8000 <_entry-0x7fff8000>
    80001c28:	000780e7          	jalr	a5
    running->setFinished(true);
    80001c2c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished) { this->finished = finished; }
    80001c30:	00100713          	li	a4,1
    80001c34:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	fa8080e7          	jalr	-88(ra) # 80001be0 <_ZN3TCB5yieldEv>
    80001c40:	01813083          	ld	ra,24(sp)
    80001c44:	01013403          	ld	s0,16(sp)
    80001c48:	00813483          	ld	s1,8(sp)
    80001c4c:	02010113          	addi	sp,sp,32
    80001c50:	00008067          	ret

0000000080001c54 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	00913423          	sd	s1,8(sp)
    80001c64:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001c68:	00004497          	auipc	s1,0x4
    80001c6c:	dd04b483          	ld	s1,-560(s1) # 80005a38 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001c70:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()){ Scheduler::put(old); }
    80001c74:	02078c63          	beqz	a5,80001cac <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	3b4080e7          	jalr	948(ra) # 8000202c <_ZN9Scheduler3getEv>
    80001c80:	00004797          	auipc	a5,0x4
    80001c84:	daa7bc23          	sd	a0,-584(a5) # 80005a38 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001c88:	01050593          	addi	a1,a0,16 # 8010 <_entry-0x7fff7ff0>
    80001c8c:	01048513          	addi	a0,s1,16
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	5a0080e7          	jalr	1440(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001c98:	01813083          	ld	ra,24(sp)
    80001c9c:	01013403          	ld	s0,16(sp)
    80001ca0:	00813483          	ld	s1,8(sp)
    80001ca4:	02010113          	addi	sp,sp,32
    80001ca8:	00008067          	ret
    if(!old->isFinished()){ Scheduler::put(old); }
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	3e4080e7          	jalr	996(ra) # 80002094 <_ZN9Scheduler3putEP3TCB>
    80001cb8:	fc1ff06f          	j	80001c78 <_ZN3TCB8dispatchEv+0x24>

0000000080001cbc <_Znwm>:
#include "../h/syscall_cpp.hpp"

void *operator new (size_t size){
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	00813023          	sd	s0,0(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	5ac080e7          	jalr	1452(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_Znam>:

void *operator new[] (size_t size){
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00113423          	sd	ra,8(sp)
    80001cec:	00813023          	sd	s0,0(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	584080e7          	jalr	1412(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001cfc:	00813083          	ld	ra,8(sp)
    80001d00:	00013403          	ld	s0,0(sp)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret

0000000080001d0c <_ZdlPv>:

void operator delete (void *ptr) noexcept {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00113423          	sd	ra,8(sp)
    80001d14:	00813023          	sd	s0,0(sp)
    80001d18:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	654080e7          	jalr	1620(ra) # 80002370 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d24:	00813083          	ld	ra,8(sp)
    80001d28:	00013403          	ld	s0,0(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <_ZdaPv>:

void operator delete[] (void *ptr) noexcept {
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00113423          	sd	ra,8(sp)
    80001d3c:	00813023          	sd	s0,0(sp)
    80001d40:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	62c080e7          	jalr	1580(ra) # 80002370 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001d4c:	00813083          	ld	ra,8(sp)
    80001d50:	00013403          	ld	s0,0(sp)
    80001d54:	01010113          	addi	sp,sp,16
    80001d58:	00008067          	ret

0000000080001d5c <_ZN5Riscv10popSppSpieEv>:

#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/printing.hpp"

void Riscv::popSppSpie() {
    80001d5c:	ff010113          	addi	sp,sp,-16
    80001d60:	00813423          	sd	s0,8(sp)
    80001d64:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001d68:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001d6c:	10000793          	li	a5,256
    80001d70:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
    80001d74:	10200073          	sret
}
    80001d78:	00813403          	ld	s0,8(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret

0000000080001d84 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001d84:	f9010113          	addi	sp,sp,-112
    80001d88:	06113423          	sd	ra,104(sp)
    80001d8c:	06813023          	sd	s0,96(sp)
    80001d90:	04913c23          	sd	s1,88(sp)
    80001d94:	05213823          	sd	s2,80(sp)
    80001d98:	07010413          	addi	s0,sp,112
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001d9c:	142027f3          	csrr	a5,scause
    80001da0:	f8f43823          	sd	a5,-112(s0)
    return scause;
    80001da4:	f9043703          	ld	a4,-112(s0)
    uint64 scause = r_scause();
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001da8:	ff870693          	addi	a3,a4,-8
    80001dac:	00100793          	li	a5,1
    80001db0:	12d7f463          	bgeu	a5,a3,80001ed8 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        }

        //TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if(scause == 0x8000000000000001UL) {
    80001db4:	fff00793          	li	a5,-1
    80001db8:	03f79793          	slli	a5,a5,0x3f
    80001dbc:	00178793          	addi	a5,a5,1
    80001dc0:	1af70663          	beq	a4,a5,80001f6c <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    80001dc4:	fff00793          	li	a5,-1
    80001dc8:	03f79793          	slli	a5,a5,0x3f
    80001dcc:	00978793          	addi	a5,a5,9
    80001dd0:	20f70463          	beq	a4,a5,80001fd8 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001dd4:	141027f3          	csrr	a5,sepc
    80001dd8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ddc:	fd843483          	ld	s1,-40(s0)
        console_handler();
        mc_sip(SIP_SEIP);
    } else {
        // Neocekivani razlog prekida
        uint64 sepc = r_sepc();
        printString("Vrednost sepc:");
    80001de0:	00003517          	auipc	a0,0x3
    80001de4:	2e850513          	addi	a0,a0,744 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	918080e7          	jalr	-1768(ra) # 80001700 <_Z11printStringPKc>
        printInt(sepc);
    80001df0:	00000613          	li	a2,0
    80001df4:	00a00593          	li	a1,10
    80001df8:	0004851b          	sext.w	a0,s1
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	ab4080e7          	jalr	-1356(ra) # 800018b0 <_Z8printIntiii>
        printString(" ");
    80001e04:	00003517          	auipc	a0,0x3
    80001e08:	30c50513          	addi	a0,a0,780 # 80005110 <CONSOLE_STATUS+0x100>
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	8f4080e7          	jalr	-1804(ra) # 80001700 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    80001e14:	105027f3          	csrr	a5,stvec
    80001e18:	fcf43823          	sd	a5,-48(s0)
    return stvec;
    80001e1c:	fd043483          	ld	s1,-48(s0)
        uint64 stvec = r_stvec();
        printString("Vrednost stvec:");
    80001e20:	00003517          	auipc	a0,0x3
    80001e24:	2b850513          	addi	a0,a0,696 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	8d8080e7          	jalr	-1832(ra) # 80001700 <_Z11printStringPKc>
        printInt(stvec);
    80001e30:	00000613          	li	a2,0
    80001e34:	00a00593          	li	a1,10
    80001e38:	0004851b          	sext.w	a0,s1
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	a74080e7          	jalr	-1420(ra) # 800018b0 <_Z8printIntiii>
        printString(" ");
    80001e44:	00003517          	auipc	a0,0x3
    80001e48:	2cc50513          	addi	a0,a0,716 # 80005110 <CONSOLE_STATUS+0x100>
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	8b4080e7          	jalr	-1868(ra) # 80001700 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001e54:	100027f3          	csrr	a5,sstatus
    80001e58:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001e5c:	fc843483          	ld	s1,-56(s0)
        uint64 sstatus = r_sstatus();
        printString("Vrednost sstatus:");
    80001e60:	00003517          	auipc	a0,0x3
    80001e64:	28850513          	addi	a0,a0,648 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	898080e7          	jalr	-1896(ra) # 80001700 <_Z11printStringPKc>
        printInt(sstatus);
    80001e70:	00000613          	li	a2,0
    80001e74:	00a00593          	li	a1,10
    80001e78:	0004851b          	sext.w	a0,s1
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	a34080e7          	jalr	-1484(ra) # 800018b0 <_Z8printIntiii>
        printString(" ");
    80001e84:	00003517          	auipc	a0,0x3
    80001e88:	28c50513          	addi	a0,a0,652 # 80005110 <CONSOLE_STATUS+0x100>
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	874080e7          	jalr	-1932(ra) # 80001700 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80001e94:	142027f3          	csrr	a5,scause
    80001e98:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001e9c:	fc043483          	ld	s1,-64(s0)
        uint64 scause = r_scause();
        printString("Vrednost scause: ");
    80001ea0:	00003517          	auipc	a0,0x3
    80001ea4:	26050513          	addi	a0,a0,608 # 80005100 <CONSOLE_STATUS+0xf0>
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	858080e7          	jalr	-1960(ra) # 80001700 <_Z11printStringPKc>
        printInt(scause);
    80001eb0:	00000613          	li	a2,0
    80001eb4:	00a00593          	li	a1,10
    80001eb8:	0004851b          	sext.w	a0,s1
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	9f4080e7          	jalr	-1548(ra) # 800018b0 <_Z8printIntiii>
        printString("\n");
    80001ec4:	00003517          	auipc	a0,0x3
    80001ec8:	1fc50513          	addi	a0,a0,508 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	834080e7          	jalr	-1996(ra) # 80001700 <_Z11printStringPKc>
    }
}
    80001ed4:	0500006f          	j	80001f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001ed8:	141027f3          	csrr	a5,sepc
    80001edc:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001ee0:	fa843483          	ld	s1,-88(s0)
        uint64 sepc = r_sepc() + 4;
    80001ee4:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001ee8:	100027f3          	csrr	a5,sstatus
    80001eec:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001ef0:	fa043903          	ld	s2,-96(s0)
        TCB::timeSliceCounter = 0;
    80001ef4:	00004797          	auipc	a5,0x4
    80001ef8:	ac47b783          	ld	a5,-1340(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001efc:	0007b023          	sd	zero,0(a5)
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    80001f00:	00050793          	mv	a5,a0
    80001f04:	f8f43c23          	sd	a5,-104(s0)
    return a0;
    80001f08:	f9843783          	ld	a5,-104(s0)
        switch (code) {
    80001f0c:	00100713          	li	a4,1
    80001f10:	02e78663          	beq	a5,a4,80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    80001f14:	00200713          	li	a4,2
    80001f18:	02e78e63          	beq	a5,a4,80001f54 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    80001f1c:	10093073          	csrc	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80001f20:	14149073          	csrw	sepc,s1
}
    80001f24:	06813083          	ld	ra,104(sp)
    80001f28:	06013403          	ld	s0,96(sp)
    80001f2c:	05813483          	ld	s1,88(sp)
    80001f30:	05013903          	ld	s2,80(sp)
    80001f34:	07010113          	addi	sp,sp,112
    80001f38:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001f3c:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	338080e7          	jalr	824(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001f48:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80001f4c:	04a42823          	sw	a0,80(s0)
                break;
    80001f50:	fcdff06f          	j	80001f1c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
                __asm__ volatile("mv %0, a1" : "=r" (ptr));
    80001f54:	00058513          	mv	a0,a1
                ret = MemoryAllocator::mem_free(ptr);
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	418080e7          	jalr	1048(ra) # 80002370 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001f60:	00050513          	mv	a0,a0
                __asm__ volatile("sw a0, 80(x8)");
    80001f64:	04a42823          	sw	a0,80(s0)
                break;
    80001f68:	fb5ff06f          	j	80001f1c <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        if(++TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80001f6c:	00004717          	auipc	a4,0x4
    80001f70:	a4c73703          	ld	a4,-1460(a4) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001f74:	00073783          	ld	a5,0(a4)
    80001f78:	00178793          	addi	a5,a5,1
    80001f7c:	00f73023          	sd	a5,0(a4)
    80001f80:	00004717          	auipc	a4,0x4
    80001f84:	a4873703          	ld	a4,-1464(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f88:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return time_slice; }
    80001f8c:	02073703          	ld	a4,32(a4)
    80001f90:	00e7f863          	bgeu	a5,a4,80001fa0 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001f94:	00200793          	li	a5,2
    80001f98:	1447b073          	csrc	sip,a5
}
    80001f9c:	f89ff06f          	j	80001f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80001fa0:	141027f3          	csrr	a5,sepc
    80001fa4:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001fa8:	fb843483          	ld	s1,-72(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80001fac:	100027f3          	csrr	a5,sstatus
    80001fb0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001fb4:	fb043903          	ld	s2,-80(s0)
            TCB::timeSliceCounter = 0;
    80001fb8:	00004797          	auipc	a5,0x4
    80001fbc:	a007b783          	ld	a5,-1536(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001fc0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	c90080e7          	jalr	-880(ra) # 80001c54 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrc sstatus, %0" : : "r"(sstatus));
    80001fcc:	10093073          	csrc	sstatus,s2
    __asm__ volatile("csrw sepc, %0" : : "r"(sepc));
    80001fd0:	14149073          	csrw	sepc,s1
}
    80001fd4:	fc1ff06f          	j	80001f94 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
        console_handler();
    80001fd8:	00002097          	auipc	ra,0x2
    80001fdc:	638080e7          	jalr	1592(ra) # 80004610 <console_handler>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001fe0:	20000793          	li	a5,512
    80001fe4:	1447b073          	csrc	sip,a5
}
    80001fe8:	f3dff06f          	j	80001f24 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>

0000000080001fec <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

void Scheduler::deleteThreadQueue() {
    while(get());
}
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    80001ff8:	00100793          	li	a5,1
    80001ffc:	00f50863          	beq	a0,a5,8000200c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002000:	00813403          	ld	s0,8(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret
    8000200c:	000107b7          	lui	a5,0x10
    80002010:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002014:	fef596e3          	bne	a1,a5,80002000 <_Z41__static_initialization_and_destruction_0ii+0x14>

#include "MemoryAllocator.hpp"

template <typename T> class List {
public:
    List() : head(0), tail(0) {}
    80002018:	00004797          	auipc	a5,0x4
    8000201c:	a3078793          	addi	a5,a5,-1488 # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
    80002020:	0007b023          	sd	zero,0(a5)
    80002024:	0007b423          	sd	zero,8(a5)
    80002028:	fd9ff06f          	j	80002000 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000202c <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    8000202c:	fe010113          	addi	sp,sp,-32
    80002030:	00113c23          	sd	ra,24(sp)
    80002034:	00813823          	sd	s0,16(sp)
    80002038:	00913423          	sd	s1,8(sp)
    8000203c:	02010413          	addi	s0,sp,32
            tail = element;
        } else head = tail = element;
    }

    T* removeFirst() {
        if(!head) return nullptr;
    80002040:	00004517          	auipc	a0,0x4
    80002044:	a0853503          	ld	a0,-1528(a0) # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
    80002048:	04050263          	beqz	a0,8000208c <_ZN9Scheduler3getEv+0x60>
        Element* element = head;
        head = head->next;
    8000204c:	00853783          	ld	a5,8(a0)
    80002050:	00004717          	auipc	a4,0x4
    80002054:	9ef73c23          	sd	a5,-1544(a4) # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
        if(!head) tail = nullptr;
    80002058:	02078463          	beqz	a5,80002080 <_ZN9Scheduler3getEv+0x54>

        T* result = element->item;
    8000205c:	00053483          	ld	s1,0(a0)
        void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void* ptr){
            MemoryAllocator::mem_free(ptr);
    80002060:	00000097          	auipc	ra,0x0
    80002064:	310080e7          	jalr	784(ra) # 80002370 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002068:	00048513          	mv	a0,s1
    8000206c:	01813083          	ld	ra,24(sp)
    80002070:	01013403          	ld	s0,16(sp)
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	02010113          	addi	sp,sp,32
    8000207c:	00008067          	ret
        if(!head) tail = nullptr;
    80002080:	00004797          	auipc	a5,0x4
    80002084:	9c07b823          	sd	zero,-1584(a5) # 80005a50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002088:	fd5ff06f          	j	8000205c <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    8000208c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002090:	fd9ff06f          	j	80002068 <_ZN9Scheduler3getEv+0x3c>

0000000080002094 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80002094:	fe010113          	addi	sp,sp,-32
    80002098:	00113c23          	sd	ra,24(sp)
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00913423          	sd	s1,8(sp)
    800020a4:	02010413          	addi	s0,sp,32
    800020a8:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    800020ac:	01000513          	li	a0,16
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	1c8080e7          	jalr	456(ra) # 80002278 <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    800020b8:	00953023          	sd	s1,0(a0)
    800020bc:	00053423          	sd	zero,8(a0)
        if(tail) {
    800020c0:	00004797          	auipc	a5,0x4
    800020c4:	9907b783          	ld	a5,-1648(a5) # 80005a50 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800020c8:	02078263          	beqz	a5,800020ec <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = element;
    800020cc:	00a7b423          	sd	a0,8(a5)
            tail = element;
    800020d0:	00004797          	auipc	a5,0x4
    800020d4:	98a7b023          	sd	a0,-1664(a5) # 80005a50 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800020d8:	01813083          	ld	ra,24(sp)
    800020dc:	01013403          	ld	s0,16(sp)
    800020e0:	00813483          	ld	s1,8(sp)
    800020e4:	02010113          	addi	sp,sp,32
    800020e8:	00008067          	ret
        } else head = tail = element;
    800020ec:	00004797          	auipc	a5,0x4
    800020f0:	95c78793          	addi	a5,a5,-1700 # 80005a48 <_ZN9Scheduler16readyThreadQueueE>
    800020f4:	00a7b423          	sd	a0,8(a5)
    800020f8:	00a7b023          	sd	a0,0(a5)
    800020fc:	fddff06f          	j	800020d8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002100 <_ZN9Scheduler17deleteThreadQueueEv>:
void Scheduler::deleteThreadQueue() {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    while(get());
    80002110:	00000097          	auipc	ra,0x0
    80002114:	f1c080e7          	jalr	-228(ra) # 8000202c <_ZN9Scheduler3getEv>
    80002118:	fe051ce3          	bnez	a0,80002110 <_ZN9Scheduler17deleteThreadQueueEv+0x10>
}
    8000211c:	00813083          	ld	ra,8(sp)
    80002120:	00013403          	ld	s0,0(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00113423          	sd	ra,8(sp)
    80002134:	00813023          	sd	s0,0(sp)
    80002138:	01010413          	addi	s0,sp,16
    8000213c:	000105b7          	lui	a1,0x10
    80002140:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002144:	00100513          	li	a0,1
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	ea4080e7          	jalr	-348(ra) # 80001fec <_Z41__static_initialization_and_destruction_0ii>
    80002150:	00813083          	ld	ra,8(sp)
    80002154:	00013403          	ld	s0,0(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret

0000000080002160 <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00813423          	sd	s0,8(sp)
    80002168:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    8000216c:	00050e63          	beqz	a0,80002188 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    80002170:	00053783          	ld	a5,0(a0)
    80002174:	00078a63          	beqz	a5,80002188 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    80002178:	00853683          	ld	a3,8(a0)
    8000217c:	01068713          	addi	a4,a3,16
    80002180:	00e50733          	add	a4,a0,a4
    80002184:	00e78863          	beq	a5,a4,80002194 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    80002188:	00813403          	ld	s0,8(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    80002194:	0087b703          	ld	a4,8(a5)
    80002198:	00e686b3          	add	a3,a3,a4
    8000219c:	01068693          	addi	a3,a3,16
    800021a0:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    800021a4:	0007b783          	ld	a5,0(a5)
    800021a8:	00f53023          	sd	a5,0(a0)
    800021ac:	fddff06f          	j	80002188 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

00000000800021b0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00813423          	sd	s0,8(sp)
    800021b8:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    800021bc:	02050063          	beqz	a0,800021dc <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800021c0:	00064e63          	bltz	a2,800021dc <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    800021c4:	00100793          	li	a5,1
    800021c8:	00c7ca63          	blt	a5,a2,800021dc <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    800021cc:	00058e63          	beqz	a1,800021e8 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    800021d0:	0005b783          	ld	a5,0(a1)
    800021d4:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    800021d8:	00a5b023          	sd	a0,0(a1)
    }
}
    800021dc:	00813403          	ld	s0,8(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret
        if(code == 0) {
    800021e8:	00061e63          	bnez	a2,80002204 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    800021ec:	00004797          	auipc	a5,0x4
    800021f0:	86c78793          	addi	a5,a5,-1940 # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    800021f4:	0007b703          	ld	a4,0(a5)
    800021f8:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    800021fc:	00a7b023          	sd	a0,0(a5)
    80002200:	fddff06f          	j	800021dc <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    80002204:	00004797          	auipc	a5,0x4
    80002208:	85478793          	addi	a5,a5,-1964 # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    8000220c:	0087b703          	ld	a4,8(a5)
    80002210:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    80002214:	00a7b423          	sd	a0,8(a5)
    80002218:	fc5ff06f          	j	800021dc <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

000000008000221c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    8000221c:	ff010113          	addi	sp,sp,-16
    80002220:	00813423          	sd	s0,8(sp)
    80002224:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80002228:	02050063          	beqz	a0,80002248 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    8000222c:	00064e63          	bltz	a2,80002248 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80002230:	00100793          	li	a5,1
    80002234:	00c7ca63          	blt	a5,a2,80002248 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80002238:	00058e63          	beqz	a1,80002254 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    8000223c:	00053783          	ld	a5,0(a0)
    80002240:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    80002244:	00053023          	sd	zero,0(a0)
}
    80002248:	00813403          	ld	s0,8(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    80002254:	00061a63          	bnez	a2,80002268 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    80002258:	00053783          	ld	a5,0(a0)
    8000225c:	00003717          	auipc	a4,0x3
    80002260:	7ef73e23          	sd	a5,2044(a4) # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    80002264:	fe1ff06f          	j	80002244 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    80002268:	00053783          	ld	a5,0(a0)
    8000226c:	00003717          	auipc	a4,0x3
    80002270:	7ef73a23          	sd	a5,2036(a4) # 80005a60 <_ZN15MemoryAllocator17head_data_segmentE>
    80002274:	fd1ff06f          	j	80002244 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

0000000080002278 <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    80002278:	fd010113          	addi	sp,sp,-48
    8000227c:	02113423          	sd	ra,40(sp)
    80002280:	02813023          	sd	s0,32(sp)
    80002284:	00913c23          	sd	s1,24(sp)
    80002288:	01213823          	sd	s2,16(sp)
    8000228c:	01313423          	sd	s3,8(sp)
    80002290:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    80002294:	0c050a63          	beqz	a0,80002368 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80002298:	03f50513          	addi	a0,a0,63
    8000229c:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    800022a0:	00003497          	auipc	s1,0x3
    800022a4:	7b84b483          	ld	s1,1976(s1) # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    800022a8:	00000993          	li	s3,0
    800022ac:	08048e63          	beqz	s1,80002348 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    800022b0:	0084b783          	ld	a5,8(s1)
    800022b4:	0127f863          	bgeu	a5,s2,800022c4 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    800022b8:	00048993          	mv	s3,s1
    800022bc:	0004b483          	ld	s1,0(s1)
    800022c0:	fedff06f          	j	800022ac <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    800022c4:	00000613          	li	a2,0
    800022c8:	00098593          	mv	a1,s3
    800022cc:	00048513          	mv	a0,s1
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	f4c080e7          	jalr	-180(ra) # 8000221c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    800022d8:	0084b783          	ld	a5,8(s1)
    800022dc:	41278733          	sub	a4,a5,s2
    800022e0:	00f00693          	li	a3,15
    800022e4:	02e6e463          	bltu	a3,a4,8000230c <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    800022e8:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    800022ec:	00003797          	auipc	a5,0x3
    800022f0:	7747b783          	ld	a5,1908(a5) # 80005a60 <_ZN15MemoryAllocator17head_data_segmentE>
    800022f4:	00000593          	li	a1,0
    800022f8:	02078e63          	beqz	a5,80002334 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    800022fc:	0297fc63          	bgeu	a5,s1,80002334 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80002300:	00078593          	mv	a1,a5
    80002304:	0007b783          	ld	a5,0(a5)
    80002308:	ff1ff06f          	j	800022f8 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    8000230c:	01090513          	addi	a0,s2,16
    80002310:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    80002314:	ff070713          	addi	a4,a4,-16
    80002318:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    8000231c:	00000613          	li	a2,0
    80002320:	00098593          	mv	a1,s3
    80002324:	00000097          	auipc	ra,0x0
    80002328:	e8c080e7          	jalr	-372(ra) # 800021b0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    8000232c:	00090793          	mv	a5,s2
    80002330:	fb9ff06f          	j	800022e8 <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    80002334:	00100613          	li	a2,1
    80002338:	00048513          	mv	a0,s1
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	e74080e7          	jalr	-396(ra) # 800021b0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    80002344:	01048493          	addi	s1,s1,16
}
    80002348:	00048513          	mv	a0,s1
    8000234c:	02813083          	ld	ra,40(sp)
    80002350:	02013403          	ld	s0,32(sp)
    80002354:	01813483          	ld	s1,24(sp)
    80002358:	01013903          	ld	s2,16(sp)
    8000235c:	00813983          	ld	s3,8(sp)
    80002360:	03010113          	addi	sp,sp,48
    80002364:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    80002368:	00000493          	li	s1,0
    8000236c:	fddff06f          	j	80002348 <_ZN15MemoryAllocator9mem_allocEm+0xd0>

0000000080002370 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002370:	0c050863          	beqz	a0,80002440 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80002374:	00003797          	auipc	a5,0x3
    80002378:	6347b783          	ld	a5,1588(a5) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000237c:	0007b783          	ld	a5,0(a5)
    80002380:	0cf56463          	bltu	a0,a5,80002448 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80002384:	00003797          	auipc	a5,0x3
    80002388:	64c7b783          	ld	a5,1612(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000238c:	0007b783          	ld	a5,0(a5)
    80002390:	0cf57063          	bgeu	a0,a5,80002450 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    80002394:	fe010113          	addi	sp,sp,-32
    80002398:	00113c23          	sd	ra,24(sp)
    8000239c:	00813823          	sd	s0,16(sp)
    800023a0:	00913423          	sd	s1,8(sp)
    800023a4:	01213023          	sd	s2,0(sp)
    800023a8:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    800023ac:	00003497          	auipc	s1,0x3
    800023b0:	6b44b483          	ld	s1,1716(s1) # 80005a60 <_ZN15MemoryAllocator17head_data_segmentE>
    800023b4:	00000593          	li	a1,0
    800023b8:	0a048063          	beqz	s1,80002458 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    800023bc:	01048793          	addi	a5,s1,16
    800023c0:	00a78a63          	beq	a5,a0,800023d4 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    800023c4:	0af56863          	bltu	a0,a5,80002474 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    800023c8:	00048593          	mv	a1,s1
    800023cc:	0004b483          	ld	s1,0(s1)
    800023d0:	fe9ff06f          	j	800023b8 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    800023d4:	00100613          	li	a2,1
    800023d8:	00048513          	mv	a0,s1
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	e40080e7          	jalr	-448(ra) # 8000221c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    800023e4:	00003917          	auipc	s2,0x3
    800023e8:	67493903          	ld	s2,1652(s2) # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    800023ec:	0080006f          	j	800023f4 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    800023f0:	00078913          	mv	s2,a5
    800023f4:	00090863          	beqz	s2,80002404 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    800023f8:	00093783          	ld	a5,0(s2)
    800023fc:	00078463          	beqz	a5,80002404 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002400:	fe97e8e3          	bltu	a5,s1,800023f0 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    80002404:	0124f463          	bgeu	s1,s2,8000240c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002408:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    8000240c:	00000613          	li	a2,0
    80002410:	00090593          	mv	a1,s2
    80002414:	00048513          	mv	a0,s1
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	d98080e7          	jalr	-616(ra) # 800021b0 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    80002420:	00048513          	mv	a0,s1
    80002424:	00000097          	auipc	ra,0x0
    80002428:	d3c080e7          	jalr	-708(ra) # 80002160 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    8000242c:	00090513          	mv	a0,s2
    80002430:	00000097          	auipc	ra,0x0
    80002434:	d30080e7          	jalr	-720(ra) # 80002160 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    80002438:	00000513          	li	a0,0
    8000243c:	0200006f          	j	8000245c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80002440:	fff00513          	li	a0,-1
    80002444:	00008067          	ret
    80002448:	fff00513          	li	a0,-1
    8000244c:	00008067          	ret
    80002450:	fff00513          	li	a0,-1
}
    80002454:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002458:	ffe00513          	li	a0,-2
}
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00813483          	ld	s1,8(sp)
    80002468:	00013903          	ld	s2,0(sp)
    8000246c:	02010113          	addi	sp,sp,32
    80002470:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80002474:	ffe00513          	li	a0,-2
    80002478:	fe5ff06f          	j	8000245c <_ZN15MemoryAllocator8mem_freeEPv+0xec>

000000008000247c <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00813423          	sd	s0,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    80002488:	00003697          	auipc	a3,0x3
    8000248c:	5206b683          	ld	a3,1312(a3) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002490:	0006b783          	ld	a5,0(a3)
    80002494:	00003717          	auipc	a4,0x3
    80002498:	5c470713          	addi	a4,a4,1476 # 80005a58 <_ZN15MemoryAllocator17head_free_segmentE>
    8000249c:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    800024a0:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    800024a4:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    800024a8:	00003797          	auipc	a5,0x3
    800024ac:	5287b783          	ld	a5,1320(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800024b0:	0007b783          	ld	a5,0(a5)
    800024b4:	0006b683          	ld	a3,0(a3)
    800024b8:	40d787b3          	sub	a5,a5,a3
    800024bc:	00073703          	ld	a4,0(a4)
    800024c0:	ff078793          	addi	a5,a5,-16
    800024c4:	00f73423          	sd	a5,8(a4)
}
    800024c8:	00813403          	ld	s0,8(sp)
    800024cc:	01010113          	addi	sp,sp,16
    800024d0:	00008067          	ret

00000000800024d4 <start>:
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00813423          	sd	s0,8(sp)
    800024dc:	01010413          	addi	s0,sp,16
    800024e0:	300027f3          	csrr	a5,mstatus
    800024e4:	ffffe737          	lui	a4,0xffffe
    800024e8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b2f>
    800024ec:	00e7f7b3          	and	a5,a5,a4
    800024f0:	00001737          	lui	a4,0x1
    800024f4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800024f8:	00e7e7b3          	or	a5,a5,a4
    800024fc:	30079073          	csrw	mstatus,a5
    80002500:	00000797          	auipc	a5,0x0
    80002504:	16078793          	addi	a5,a5,352 # 80002660 <system_main>
    80002508:	34179073          	csrw	mepc,a5
    8000250c:	00000793          	li	a5,0
    80002510:	18079073          	csrw	satp,a5
    80002514:	000107b7          	lui	a5,0x10
    80002518:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000251c:	30279073          	csrw	medeleg,a5
    80002520:	30379073          	csrw	mideleg,a5
    80002524:	104027f3          	csrr	a5,sie
    80002528:	2227e793          	ori	a5,a5,546
    8000252c:	10479073          	csrw	sie,a5
    80002530:	fff00793          	li	a5,-1
    80002534:	00a7d793          	srli	a5,a5,0xa
    80002538:	3b079073          	csrw	pmpaddr0,a5
    8000253c:	00f00793          	li	a5,15
    80002540:	3a079073          	csrw	pmpcfg0,a5
    80002544:	f14027f3          	csrr	a5,mhartid
    80002548:	0200c737          	lui	a4,0x200c
    8000254c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002550:	0007869b          	sext.w	a3,a5
    80002554:	00269713          	slli	a4,a3,0x2
    80002558:	000f4637          	lui	a2,0xf4
    8000255c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002560:	00d70733          	add	a4,a4,a3
    80002564:	0037979b          	slliw	a5,a5,0x3
    80002568:	020046b7          	lui	a3,0x2004
    8000256c:	00d787b3          	add	a5,a5,a3
    80002570:	00c585b3          	add	a1,a1,a2
    80002574:	00371693          	slli	a3,a4,0x3
    80002578:	00003717          	auipc	a4,0x3
    8000257c:	4f870713          	addi	a4,a4,1272 # 80005a70 <timer_scratch>
    80002580:	00b7b023          	sd	a1,0(a5)
    80002584:	00d70733          	add	a4,a4,a3
    80002588:	00f73c23          	sd	a5,24(a4)
    8000258c:	02c73023          	sd	a2,32(a4)
    80002590:	34071073          	csrw	mscratch,a4
    80002594:	00000797          	auipc	a5,0x0
    80002598:	6ec78793          	addi	a5,a5,1772 # 80002c80 <timervec>
    8000259c:	30579073          	csrw	mtvec,a5
    800025a0:	300027f3          	csrr	a5,mstatus
    800025a4:	0087e793          	ori	a5,a5,8
    800025a8:	30079073          	csrw	mstatus,a5
    800025ac:	304027f3          	csrr	a5,mie
    800025b0:	0807e793          	ori	a5,a5,128
    800025b4:	30479073          	csrw	mie,a5
    800025b8:	f14027f3          	csrr	a5,mhartid
    800025bc:	0007879b          	sext.w	a5,a5
    800025c0:	00078213          	mv	tp,a5
    800025c4:	30200073          	mret
    800025c8:	00813403          	ld	s0,8(sp)
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret

00000000800025d4 <timerinit>:
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    800025e0:	f14027f3          	csrr	a5,mhartid
    800025e4:	0200c737          	lui	a4,0x200c
    800025e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800025ec:	0007869b          	sext.w	a3,a5
    800025f0:	00269713          	slli	a4,a3,0x2
    800025f4:	000f4637          	lui	a2,0xf4
    800025f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800025fc:	00d70733          	add	a4,a4,a3
    80002600:	0037979b          	slliw	a5,a5,0x3
    80002604:	020046b7          	lui	a3,0x2004
    80002608:	00d787b3          	add	a5,a5,a3
    8000260c:	00c585b3          	add	a1,a1,a2
    80002610:	00371693          	slli	a3,a4,0x3
    80002614:	00003717          	auipc	a4,0x3
    80002618:	45c70713          	addi	a4,a4,1116 # 80005a70 <timer_scratch>
    8000261c:	00b7b023          	sd	a1,0(a5)
    80002620:	00d70733          	add	a4,a4,a3
    80002624:	00f73c23          	sd	a5,24(a4)
    80002628:	02c73023          	sd	a2,32(a4)
    8000262c:	34071073          	csrw	mscratch,a4
    80002630:	00000797          	auipc	a5,0x0
    80002634:	65078793          	addi	a5,a5,1616 # 80002c80 <timervec>
    80002638:	30579073          	csrw	mtvec,a5
    8000263c:	300027f3          	csrr	a5,mstatus
    80002640:	0087e793          	ori	a5,a5,8
    80002644:	30079073          	csrw	mstatus,a5
    80002648:	304027f3          	csrr	a5,mie
    8000264c:	0807e793          	ori	a5,a5,128
    80002650:	30479073          	csrw	mie,a5
    80002654:	00813403          	ld	s0,8(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <system_main>:
    80002660:	fe010113          	addi	sp,sp,-32
    80002664:	00813823          	sd	s0,16(sp)
    80002668:	00913423          	sd	s1,8(sp)
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	02010413          	addi	s0,sp,32
    80002674:	00000097          	auipc	ra,0x0
    80002678:	0c4080e7          	jalr	196(ra) # 80002738 <cpuid>
    8000267c:	00003497          	auipc	s1,0x3
    80002680:	38448493          	addi	s1,s1,900 # 80005a00 <started>
    80002684:	02050263          	beqz	a0,800026a8 <system_main+0x48>
    80002688:	0004a783          	lw	a5,0(s1)
    8000268c:	0007879b          	sext.w	a5,a5
    80002690:	fe078ce3          	beqz	a5,80002688 <system_main+0x28>
    80002694:	0ff0000f          	fence
    80002698:	00003517          	auipc	a0,0x3
    8000269c:	ab050513          	addi	a0,a0,-1360 # 80005148 <CONSOLE_STATUS+0x138>
    800026a0:	00001097          	auipc	ra,0x1
    800026a4:	a7c080e7          	jalr	-1412(ra) # 8000311c <panic>
    800026a8:	00001097          	auipc	ra,0x1
    800026ac:	9d0080e7          	jalr	-1584(ra) # 80003078 <consoleinit>
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	15c080e7          	jalr	348(ra) # 8000380c <printfinit>
    800026b8:	00003517          	auipc	a0,0x3
    800026bc:	a0850513          	addi	a0,a0,-1528 # 800050c0 <CONSOLE_STATUS+0xb0>
    800026c0:	00001097          	auipc	ra,0x1
    800026c4:	ab8080e7          	jalr	-1352(ra) # 80003178 <__printf>
    800026c8:	00003517          	auipc	a0,0x3
    800026cc:	a5050513          	addi	a0,a0,-1456 # 80005118 <CONSOLE_STATUS+0x108>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	aa8080e7          	jalr	-1368(ra) # 80003178 <__printf>
    800026d8:	00003517          	auipc	a0,0x3
    800026dc:	9e850513          	addi	a0,a0,-1560 # 800050c0 <CONSOLE_STATUS+0xb0>
    800026e0:	00001097          	auipc	ra,0x1
    800026e4:	a98080e7          	jalr	-1384(ra) # 80003178 <__printf>
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	4b0080e7          	jalr	1200(ra) # 80003b98 <kinit>
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	148080e7          	jalr	328(ra) # 80002838 <trapinit>
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	16c080e7          	jalr	364(ra) # 80002864 <trapinithart>
    80002700:	00000097          	auipc	ra,0x0
    80002704:	5c0080e7          	jalr	1472(ra) # 80002cc0 <plicinit>
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	5e0080e7          	jalr	1504(ra) # 80002ce8 <plicinithart>
    80002710:	00000097          	auipc	ra,0x0
    80002714:	078080e7          	jalr	120(ra) # 80002788 <userinit>
    80002718:	0ff0000f          	fence
    8000271c:	00100793          	li	a5,1
    80002720:	00003517          	auipc	a0,0x3
    80002724:	a1050513          	addi	a0,a0,-1520 # 80005130 <CONSOLE_STATUS+0x120>
    80002728:	00f4a023          	sw	a5,0(s1)
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	a4c080e7          	jalr	-1460(ra) # 80003178 <__printf>
    80002734:	0000006f          	j	80002734 <system_main+0xd4>

0000000080002738 <cpuid>:
    80002738:	ff010113          	addi	sp,sp,-16
    8000273c:	00813423          	sd	s0,8(sp)
    80002740:	01010413          	addi	s0,sp,16
    80002744:	00020513          	mv	a0,tp
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	0005051b          	sext.w	a0,a0
    80002750:	01010113          	addi	sp,sp,16
    80002754:	00008067          	ret

0000000080002758 <mycpu>:
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00813423          	sd	s0,8(sp)
    80002760:	01010413          	addi	s0,sp,16
    80002764:	00020793          	mv	a5,tp
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	0007879b          	sext.w	a5,a5
    80002770:	00779793          	slli	a5,a5,0x7
    80002774:	00004517          	auipc	a0,0x4
    80002778:	32c50513          	addi	a0,a0,812 # 80006aa0 <cpus>
    8000277c:	00f50533          	add	a0,a0,a5
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <userinit>:
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00813423          	sd	s0,8(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	00813403          	ld	s0,8(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	fffff317          	auipc	t1,0xfffff
    800027a0:	23430067          	jr	564(t1) # 800019d0 <main>

00000000800027a4 <either_copyout>:
    800027a4:	ff010113          	addi	sp,sp,-16
    800027a8:	00813023          	sd	s0,0(sp)
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	01010413          	addi	s0,sp,16
    800027b4:	02051663          	bnez	a0,800027e0 <either_copyout+0x3c>
    800027b8:	00058513          	mv	a0,a1
    800027bc:	00060593          	mv	a1,a2
    800027c0:	0006861b          	sext.w	a2,a3
    800027c4:	00002097          	auipc	ra,0x2
    800027c8:	c60080e7          	jalr	-928(ra) # 80004424 <__memmove>
    800027cc:	00813083          	ld	ra,8(sp)
    800027d0:	00013403          	ld	s0,0(sp)
    800027d4:	00000513          	li	a0,0
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret
    800027e0:	00003517          	auipc	a0,0x3
    800027e4:	99050513          	addi	a0,a0,-1648 # 80005170 <CONSOLE_STATUS+0x160>
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	934080e7          	jalr	-1740(ra) # 8000311c <panic>

00000000800027f0 <either_copyin>:
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813023          	sd	s0,0(sp)
    800027f8:	00113423          	sd	ra,8(sp)
    800027fc:	01010413          	addi	s0,sp,16
    80002800:	02059463          	bnez	a1,80002828 <either_copyin+0x38>
    80002804:	00060593          	mv	a1,a2
    80002808:	0006861b          	sext.w	a2,a3
    8000280c:	00002097          	auipc	ra,0x2
    80002810:	c18080e7          	jalr	-1000(ra) # 80004424 <__memmove>
    80002814:	00813083          	ld	ra,8(sp)
    80002818:	00013403          	ld	s0,0(sp)
    8000281c:	00000513          	li	a0,0
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret
    80002828:	00003517          	auipc	a0,0x3
    8000282c:	97050513          	addi	a0,a0,-1680 # 80005198 <CONSOLE_STATUS+0x188>
    80002830:	00001097          	auipc	ra,0x1
    80002834:	8ec080e7          	jalr	-1812(ra) # 8000311c <panic>

0000000080002838 <trapinit>:
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813423          	sd	s0,8(sp)
    80002840:	01010413          	addi	s0,sp,16
    80002844:	00813403          	ld	s0,8(sp)
    80002848:	00003597          	auipc	a1,0x3
    8000284c:	97858593          	addi	a1,a1,-1672 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80002850:	00004517          	auipc	a0,0x4
    80002854:	2d050513          	addi	a0,a0,720 # 80006b20 <tickslock>
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00001317          	auipc	t1,0x1
    80002860:	5cc30067          	jr	1484(t1) # 80003e28 <initlock>

0000000080002864 <trapinithart>:
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00813423          	sd	s0,8(sp)
    8000286c:	01010413          	addi	s0,sp,16
    80002870:	00000797          	auipc	a5,0x0
    80002874:	30078793          	addi	a5,a5,768 # 80002b70 <kernelvec>
    80002878:	10579073          	csrw	stvec,a5
    8000287c:	00813403          	ld	s0,8(sp)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret

0000000080002888 <usertrap>:
    80002888:	ff010113          	addi	sp,sp,-16
    8000288c:	00813423          	sd	s0,8(sp)
    80002890:	01010413          	addi	s0,sp,16
    80002894:	00813403          	ld	s0,8(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <usertrapret>:
    800028a0:	ff010113          	addi	sp,sp,-16
    800028a4:	00813423          	sd	s0,8(sp)
    800028a8:	01010413          	addi	s0,sp,16
    800028ac:	00813403          	ld	s0,8(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <kerneltrap>:
    800028b8:	fe010113          	addi	sp,sp,-32
    800028bc:	00813823          	sd	s0,16(sp)
    800028c0:	00113c23          	sd	ra,24(sp)
    800028c4:	00913423          	sd	s1,8(sp)
    800028c8:	02010413          	addi	s0,sp,32
    800028cc:	142025f3          	csrr	a1,scause
    800028d0:	100027f3          	csrr	a5,sstatus
    800028d4:	0027f793          	andi	a5,a5,2
    800028d8:	10079c63          	bnez	a5,800029f0 <kerneltrap+0x138>
    800028dc:	142027f3          	csrr	a5,scause
    800028e0:	0207ce63          	bltz	a5,8000291c <kerneltrap+0x64>
    800028e4:	00003517          	auipc	a0,0x3
    800028e8:	92450513          	addi	a0,a0,-1756 # 80005208 <CONSOLE_STATUS+0x1f8>
    800028ec:	00001097          	auipc	ra,0x1
    800028f0:	88c080e7          	jalr	-1908(ra) # 80003178 <__printf>
    800028f4:	141025f3          	csrr	a1,sepc
    800028f8:	14302673          	csrr	a2,stval
    800028fc:	00003517          	auipc	a0,0x3
    80002900:	91c50513          	addi	a0,a0,-1764 # 80005218 <CONSOLE_STATUS+0x208>
    80002904:	00001097          	auipc	ra,0x1
    80002908:	874080e7          	jalr	-1932(ra) # 80003178 <__printf>
    8000290c:	00003517          	auipc	a0,0x3
    80002910:	92450513          	addi	a0,a0,-1756 # 80005230 <CONSOLE_STATUS+0x220>
    80002914:	00001097          	auipc	ra,0x1
    80002918:	808080e7          	jalr	-2040(ra) # 8000311c <panic>
    8000291c:	0ff7f713          	andi	a4,a5,255
    80002920:	00900693          	li	a3,9
    80002924:	04d70063          	beq	a4,a3,80002964 <kerneltrap+0xac>
    80002928:	fff00713          	li	a4,-1
    8000292c:	03f71713          	slli	a4,a4,0x3f
    80002930:	00170713          	addi	a4,a4,1
    80002934:	fae798e3          	bne	a5,a4,800028e4 <kerneltrap+0x2c>
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	e00080e7          	jalr	-512(ra) # 80002738 <cpuid>
    80002940:	06050663          	beqz	a0,800029ac <kerneltrap+0xf4>
    80002944:	144027f3          	csrr	a5,sip
    80002948:	ffd7f793          	andi	a5,a5,-3
    8000294c:	14479073          	csrw	sip,a5
    80002950:	01813083          	ld	ra,24(sp)
    80002954:	01013403          	ld	s0,16(sp)
    80002958:	00813483          	ld	s1,8(sp)
    8000295c:	02010113          	addi	sp,sp,32
    80002960:	00008067          	ret
    80002964:	00000097          	auipc	ra,0x0
    80002968:	3d0080e7          	jalr	976(ra) # 80002d34 <plic_claim>
    8000296c:	00a00793          	li	a5,10
    80002970:	00050493          	mv	s1,a0
    80002974:	06f50863          	beq	a0,a5,800029e4 <kerneltrap+0x12c>
    80002978:	fc050ce3          	beqz	a0,80002950 <kerneltrap+0x98>
    8000297c:	00050593          	mv	a1,a0
    80002980:	00003517          	auipc	a0,0x3
    80002984:	86850513          	addi	a0,a0,-1944 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	7f0080e7          	jalr	2032(ra) # 80003178 <__printf>
    80002990:	01013403          	ld	s0,16(sp)
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	00048513          	mv	a0,s1
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	02010113          	addi	sp,sp,32
    800029a4:	00000317          	auipc	t1,0x0
    800029a8:	3c830067          	jr	968(t1) # 80002d6c <plic_complete>
    800029ac:	00004517          	auipc	a0,0x4
    800029b0:	17450513          	addi	a0,a0,372 # 80006b20 <tickslock>
    800029b4:	00001097          	auipc	ra,0x1
    800029b8:	498080e7          	jalr	1176(ra) # 80003e4c <acquire>
    800029bc:	00003717          	auipc	a4,0x3
    800029c0:	04870713          	addi	a4,a4,72 # 80005a04 <ticks>
    800029c4:	00072783          	lw	a5,0(a4)
    800029c8:	00004517          	auipc	a0,0x4
    800029cc:	15850513          	addi	a0,a0,344 # 80006b20 <tickslock>
    800029d0:	0017879b          	addiw	a5,a5,1
    800029d4:	00f72023          	sw	a5,0(a4)
    800029d8:	00001097          	auipc	ra,0x1
    800029dc:	540080e7          	jalr	1344(ra) # 80003f18 <release>
    800029e0:	f65ff06f          	j	80002944 <kerneltrap+0x8c>
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	09c080e7          	jalr	156(ra) # 80003a80 <uartintr>
    800029ec:	fa5ff06f          	j	80002990 <kerneltrap+0xd8>
    800029f0:	00002517          	auipc	a0,0x2
    800029f4:	7d850513          	addi	a0,a0,2008 # 800051c8 <CONSOLE_STATUS+0x1b8>
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	724080e7          	jalr	1828(ra) # 8000311c <panic>

0000000080002a00 <clockintr>:
    80002a00:	fe010113          	addi	sp,sp,-32
    80002a04:	00813823          	sd	s0,16(sp)
    80002a08:	00913423          	sd	s1,8(sp)
    80002a0c:	00113c23          	sd	ra,24(sp)
    80002a10:	02010413          	addi	s0,sp,32
    80002a14:	00004497          	auipc	s1,0x4
    80002a18:	10c48493          	addi	s1,s1,268 # 80006b20 <tickslock>
    80002a1c:	00048513          	mv	a0,s1
    80002a20:	00001097          	auipc	ra,0x1
    80002a24:	42c080e7          	jalr	1068(ra) # 80003e4c <acquire>
    80002a28:	00003717          	auipc	a4,0x3
    80002a2c:	fdc70713          	addi	a4,a4,-36 # 80005a04 <ticks>
    80002a30:	00072783          	lw	a5,0(a4)
    80002a34:	01013403          	ld	s0,16(sp)
    80002a38:	01813083          	ld	ra,24(sp)
    80002a3c:	00048513          	mv	a0,s1
    80002a40:	0017879b          	addiw	a5,a5,1
    80002a44:	00813483          	ld	s1,8(sp)
    80002a48:	00f72023          	sw	a5,0(a4)
    80002a4c:	02010113          	addi	sp,sp,32
    80002a50:	00001317          	auipc	t1,0x1
    80002a54:	4c830067          	jr	1224(t1) # 80003f18 <release>

0000000080002a58 <devintr>:
    80002a58:	142027f3          	csrr	a5,scause
    80002a5c:	00000513          	li	a0,0
    80002a60:	0007c463          	bltz	a5,80002a68 <devintr+0x10>
    80002a64:	00008067          	ret
    80002a68:	fe010113          	addi	sp,sp,-32
    80002a6c:	00813823          	sd	s0,16(sp)
    80002a70:	00113c23          	sd	ra,24(sp)
    80002a74:	00913423          	sd	s1,8(sp)
    80002a78:	02010413          	addi	s0,sp,32
    80002a7c:	0ff7f713          	andi	a4,a5,255
    80002a80:	00900693          	li	a3,9
    80002a84:	04d70c63          	beq	a4,a3,80002adc <devintr+0x84>
    80002a88:	fff00713          	li	a4,-1
    80002a8c:	03f71713          	slli	a4,a4,0x3f
    80002a90:	00170713          	addi	a4,a4,1
    80002a94:	00e78c63          	beq	a5,a4,80002aac <devintr+0x54>
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	c8c080e7          	jalr	-884(ra) # 80002738 <cpuid>
    80002ab4:	06050663          	beqz	a0,80002b20 <devintr+0xc8>
    80002ab8:	144027f3          	csrr	a5,sip
    80002abc:	ffd7f793          	andi	a5,a5,-3
    80002ac0:	14479073          	csrw	sip,a5
    80002ac4:	01813083          	ld	ra,24(sp)
    80002ac8:	01013403          	ld	s0,16(sp)
    80002acc:	00813483          	ld	s1,8(sp)
    80002ad0:	00200513          	li	a0,2
    80002ad4:	02010113          	addi	sp,sp,32
    80002ad8:	00008067          	ret
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	258080e7          	jalr	600(ra) # 80002d34 <plic_claim>
    80002ae4:	00a00793          	li	a5,10
    80002ae8:	00050493          	mv	s1,a0
    80002aec:	06f50663          	beq	a0,a5,80002b58 <devintr+0x100>
    80002af0:	00100513          	li	a0,1
    80002af4:	fa0482e3          	beqz	s1,80002a98 <devintr+0x40>
    80002af8:	00048593          	mv	a1,s1
    80002afc:	00002517          	auipc	a0,0x2
    80002b00:	6ec50513          	addi	a0,a0,1772 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	674080e7          	jalr	1652(ra) # 80003178 <__printf>
    80002b0c:	00048513          	mv	a0,s1
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	25c080e7          	jalr	604(ra) # 80002d6c <plic_complete>
    80002b18:	00100513          	li	a0,1
    80002b1c:	f7dff06f          	j	80002a98 <devintr+0x40>
    80002b20:	00004517          	auipc	a0,0x4
    80002b24:	00050513          	mv	a0,a0
    80002b28:	00001097          	auipc	ra,0x1
    80002b2c:	324080e7          	jalr	804(ra) # 80003e4c <acquire>
    80002b30:	00003717          	auipc	a4,0x3
    80002b34:	ed470713          	addi	a4,a4,-300 # 80005a04 <ticks>
    80002b38:	00072783          	lw	a5,0(a4)
    80002b3c:	00004517          	auipc	a0,0x4
    80002b40:	fe450513          	addi	a0,a0,-28 # 80006b20 <tickslock>
    80002b44:	0017879b          	addiw	a5,a5,1
    80002b48:	00f72023          	sw	a5,0(a4)
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	3cc080e7          	jalr	972(ra) # 80003f18 <release>
    80002b54:	f65ff06f          	j	80002ab8 <devintr+0x60>
    80002b58:	00001097          	auipc	ra,0x1
    80002b5c:	f28080e7          	jalr	-216(ra) # 80003a80 <uartintr>
    80002b60:	fadff06f          	j	80002b0c <devintr+0xb4>
	...

0000000080002b70 <kernelvec>:
    80002b70:	f0010113          	addi	sp,sp,-256
    80002b74:	00113023          	sd	ra,0(sp)
    80002b78:	00213423          	sd	sp,8(sp)
    80002b7c:	00313823          	sd	gp,16(sp)
    80002b80:	00413c23          	sd	tp,24(sp)
    80002b84:	02513023          	sd	t0,32(sp)
    80002b88:	02613423          	sd	t1,40(sp)
    80002b8c:	02713823          	sd	t2,48(sp)
    80002b90:	02813c23          	sd	s0,56(sp)
    80002b94:	04913023          	sd	s1,64(sp)
    80002b98:	04a13423          	sd	a0,72(sp)
    80002b9c:	04b13823          	sd	a1,80(sp)
    80002ba0:	04c13c23          	sd	a2,88(sp)
    80002ba4:	06d13023          	sd	a3,96(sp)
    80002ba8:	06e13423          	sd	a4,104(sp)
    80002bac:	06f13823          	sd	a5,112(sp)
    80002bb0:	07013c23          	sd	a6,120(sp)
    80002bb4:	09113023          	sd	a7,128(sp)
    80002bb8:	09213423          	sd	s2,136(sp)
    80002bbc:	09313823          	sd	s3,144(sp)
    80002bc0:	09413c23          	sd	s4,152(sp)
    80002bc4:	0b513023          	sd	s5,160(sp)
    80002bc8:	0b613423          	sd	s6,168(sp)
    80002bcc:	0b713823          	sd	s7,176(sp)
    80002bd0:	0b813c23          	sd	s8,184(sp)
    80002bd4:	0d913023          	sd	s9,192(sp)
    80002bd8:	0da13423          	sd	s10,200(sp)
    80002bdc:	0db13823          	sd	s11,208(sp)
    80002be0:	0dc13c23          	sd	t3,216(sp)
    80002be4:	0fd13023          	sd	t4,224(sp)
    80002be8:	0fe13423          	sd	t5,232(sp)
    80002bec:	0ff13823          	sd	t6,240(sp)
    80002bf0:	cc9ff0ef          	jal	ra,800028b8 <kerneltrap>
    80002bf4:	00013083          	ld	ra,0(sp)
    80002bf8:	00813103          	ld	sp,8(sp)
    80002bfc:	01013183          	ld	gp,16(sp)
    80002c00:	02013283          	ld	t0,32(sp)
    80002c04:	02813303          	ld	t1,40(sp)
    80002c08:	03013383          	ld	t2,48(sp)
    80002c0c:	03813403          	ld	s0,56(sp)
    80002c10:	04013483          	ld	s1,64(sp)
    80002c14:	04813503          	ld	a0,72(sp)
    80002c18:	05013583          	ld	a1,80(sp)
    80002c1c:	05813603          	ld	a2,88(sp)
    80002c20:	06013683          	ld	a3,96(sp)
    80002c24:	06813703          	ld	a4,104(sp)
    80002c28:	07013783          	ld	a5,112(sp)
    80002c2c:	07813803          	ld	a6,120(sp)
    80002c30:	08013883          	ld	a7,128(sp)
    80002c34:	08813903          	ld	s2,136(sp)
    80002c38:	09013983          	ld	s3,144(sp)
    80002c3c:	09813a03          	ld	s4,152(sp)
    80002c40:	0a013a83          	ld	s5,160(sp)
    80002c44:	0a813b03          	ld	s6,168(sp)
    80002c48:	0b013b83          	ld	s7,176(sp)
    80002c4c:	0b813c03          	ld	s8,184(sp)
    80002c50:	0c013c83          	ld	s9,192(sp)
    80002c54:	0c813d03          	ld	s10,200(sp)
    80002c58:	0d013d83          	ld	s11,208(sp)
    80002c5c:	0d813e03          	ld	t3,216(sp)
    80002c60:	0e013e83          	ld	t4,224(sp)
    80002c64:	0e813f03          	ld	t5,232(sp)
    80002c68:	0f013f83          	ld	t6,240(sp)
    80002c6c:	10010113          	addi	sp,sp,256
    80002c70:	10200073          	sret
    80002c74:	00000013          	nop
    80002c78:	00000013          	nop
    80002c7c:	00000013          	nop

0000000080002c80 <timervec>:
    80002c80:	34051573          	csrrw	a0,mscratch,a0
    80002c84:	00b53023          	sd	a1,0(a0)
    80002c88:	00c53423          	sd	a2,8(a0)
    80002c8c:	00d53823          	sd	a3,16(a0)
    80002c90:	01853583          	ld	a1,24(a0)
    80002c94:	02053603          	ld	a2,32(a0)
    80002c98:	0005b683          	ld	a3,0(a1)
    80002c9c:	00c686b3          	add	a3,a3,a2
    80002ca0:	00d5b023          	sd	a3,0(a1)
    80002ca4:	00200593          	li	a1,2
    80002ca8:	14459073          	csrw	sip,a1
    80002cac:	01053683          	ld	a3,16(a0)
    80002cb0:	00853603          	ld	a2,8(a0)
    80002cb4:	00053583          	ld	a1,0(a0)
    80002cb8:	34051573          	csrrw	a0,mscratch,a0
    80002cbc:	30200073          	mret

0000000080002cc0 <plicinit>:
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00813423          	sd	s0,8(sp)
    80002cc8:	01010413          	addi	s0,sp,16
    80002ccc:	00813403          	ld	s0,8(sp)
    80002cd0:	0c0007b7          	lui	a5,0xc000
    80002cd4:	00100713          	li	a4,1
    80002cd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002cdc:	00e7a223          	sw	a4,4(a5)
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <plicinithart>:
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813023          	sd	s0,0(sp)
    80002cf0:	00113423          	sd	ra,8(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	a40080e7          	jalr	-1472(ra) # 80002738 <cpuid>
    80002d00:	0085171b          	slliw	a4,a0,0x8
    80002d04:	0c0027b7          	lui	a5,0xc002
    80002d08:	00e787b3          	add	a5,a5,a4
    80002d0c:	40200713          	li	a4,1026
    80002d10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002d14:	00813083          	ld	ra,8(sp)
    80002d18:	00013403          	ld	s0,0(sp)
    80002d1c:	00d5151b          	slliw	a0,a0,0xd
    80002d20:	0c2017b7          	lui	a5,0xc201
    80002d24:	00a78533          	add	a0,a5,a0
    80002d28:	00052023          	sw	zero,0(a0)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret

0000000080002d34 <plic_claim>:
    80002d34:	ff010113          	addi	sp,sp,-16
    80002d38:	00813023          	sd	s0,0(sp)
    80002d3c:	00113423          	sd	ra,8(sp)
    80002d40:	01010413          	addi	s0,sp,16
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	9f4080e7          	jalr	-1548(ra) # 80002738 <cpuid>
    80002d4c:	00813083          	ld	ra,8(sp)
    80002d50:	00013403          	ld	s0,0(sp)
    80002d54:	00d5151b          	slliw	a0,a0,0xd
    80002d58:	0c2017b7          	lui	a5,0xc201
    80002d5c:	00a78533          	add	a0,a5,a0
    80002d60:	00452503          	lw	a0,4(a0)
    80002d64:	01010113          	addi	sp,sp,16
    80002d68:	00008067          	ret

0000000080002d6c <plic_complete>:
    80002d6c:	fe010113          	addi	sp,sp,-32
    80002d70:	00813823          	sd	s0,16(sp)
    80002d74:	00913423          	sd	s1,8(sp)
    80002d78:	00113c23          	sd	ra,24(sp)
    80002d7c:	02010413          	addi	s0,sp,32
    80002d80:	00050493          	mv	s1,a0
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	9b4080e7          	jalr	-1612(ra) # 80002738 <cpuid>
    80002d8c:	01813083          	ld	ra,24(sp)
    80002d90:	01013403          	ld	s0,16(sp)
    80002d94:	00d5179b          	slliw	a5,a0,0xd
    80002d98:	0c201737          	lui	a4,0xc201
    80002d9c:	00f707b3          	add	a5,a4,a5
    80002da0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002da4:	00813483          	ld	s1,8(sp)
    80002da8:	02010113          	addi	sp,sp,32
    80002dac:	00008067          	ret

0000000080002db0 <consolewrite>:
    80002db0:	fb010113          	addi	sp,sp,-80
    80002db4:	04813023          	sd	s0,64(sp)
    80002db8:	04113423          	sd	ra,72(sp)
    80002dbc:	02913c23          	sd	s1,56(sp)
    80002dc0:	03213823          	sd	s2,48(sp)
    80002dc4:	03313423          	sd	s3,40(sp)
    80002dc8:	03413023          	sd	s4,32(sp)
    80002dcc:	01513c23          	sd	s5,24(sp)
    80002dd0:	05010413          	addi	s0,sp,80
    80002dd4:	06c05c63          	blez	a2,80002e4c <consolewrite+0x9c>
    80002dd8:	00060993          	mv	s3,a2
    80002ddc:	00050a13          	mv	s4,a0
    80002de0:	00058493          	mv	s1,a1
    80002de4:	00000913          	li	s2,0
    80002de8:	fff00a93          	li	s5,-1
    80002dec:	01c0006f          	j	80002e08 <consolewrite+0x58>
    80002df0:	fbf44503          	lbu	a0,-65(s0)
    80002df4:	0019091b          	addiw	s2,s2,1
    80002df8:	00148493          	addi	s1,s1,1
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	a9c080e7          	jalr	-1380(ra) # 80003898 <uartputc>
    80002e04:	03298063          	beq	s3,s2,80002e24 <consolewrite+0x74>
    80002e08:	00048613          	mv	a2,s1
    80002e0c:	00100693          	li	a3,1
    80002e10:	000a0593          	mv	a1,s4
    80002e14:	fbf40513          	addi	a0,s0,-65
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	9d8080e7          	jalr	-1576(ra) # 800027f0 <either_copyin>
    80002e20:	fd5518e3          	bne	a0,s5,80002df0 <consolewrite+0x40>
    80002e24:	04813083          	ld	ra,72(sp)
    80002e28:	04013403          	ld	s0,64(sp)
    80002e2c:	03813483          	ld	s1,56(sp)
    80002e30:	02813983          	ld	s3,40(sp)
    80002e34:	02013a03          	ld	s4,32(sp)
    80002e38:	01813a83          	ld	s5,24(sp)
    80002e3c:	00090513          	mv	a0,s2
    80002e40:	03013903          	ld	s2,48(sp)
    80002e44:	05010113          	addi	sp,sp,80
    80002e48:	00008067          	ret
    80002e4c:	00000913          	li	s2,0
    80002e50:	fd5ff06f          	j	80002e24 <consolewrite+0x74>

0000000080002e54 <consoleread>:
    80002e54:	f9010113          	addi	sp,sp,-112
    80002e58:	06813023          	sd	s0,96(sp)
    80002e5c:	04913c23          	sd	s1,88(sp)
    80002e60:	05213823          	sd	s2,80(sp)
    80002e64:	05313423          	sd	s3,72(sp)
    80002e68:	05413023          	sd	s4,64(sp)
    80002e6c:	03513c23          	sd	s5,56(sp)
    80002e70:	03613823          	sd	s6,48(sp)
    80002e74:	03713423          	sd	s7,40(sp)
    80002e78:	03813023          	sd	s8,32(sp)
    80002e7c:	06113423          	sd	ra,104(sp)
    80002e80:	01913c23          	sd	s9,24(sp)
    80002e84:	07010413          	addi	s0,sp,112
    80002e88:	00060b93          	mv	s7,a2
    80002e8c:	00050913          	mv	s2,a0
    80002e90:	00058c13          	mv	s8,a1
    80002e94:	00060b1b          	sext.w	s6,a2
    80002e98:	00004497          	auipc	s1,0x4
    80002e9c:	cb048493          	addi	s1,s1,-848 # 80006b48 <cons>
    80002ea0:	00400993          	li	s3,4
    80002ea4:	fff00a13          	li	s4,-1
    80002ea8:	00a00a93          	li	s5,10
    80002eac:	05705e63          	blez	s7,80002f08 <consoleread+0xb4>
    80002eb0:	09c4a703          	lw	a4,156(s1)
    80002eb4:	0984a783          	lw	a5,152(s1)
    80002eb8:	0007071b          	sext.w	a4,a4
    80002ebc:	08e78463          	beq	a5,a4,80002f44 <consoleread+0xf0>
    80002ec0:	07f7f713          	andi	a4,a5,127
    80002ec4:	00e48733          	add	a4,s1,a4
    80002ec8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002ecc:	0017869b          	addiw	a3,a5,1
    80002ed0:	08d4ac23          	sw	a3,152(s1)
    80002ed4:	00070c9b          	sext.w	s9,a4
    80002ed8:	0b370663          	beq	a4,s3,80002f84 <consoleread+0x130>
    80002edc:	00100693          	li	a3,1
    80002ee0:	f9f40613          	addi	a2,s0,-97
    80002ee4:	000c0593          	mv	a1,s8
    80002ee8:	00090513          	mv	a0,s2
    80002eec:	f8e40fa3          	sb	a4,-97(s0)
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	8b4080e7          	jalr	-1868(ra) # 800027a4 <either_copyout>
    80002ef8:	01450863          	beq	a0,s4,80002f08 <consoleread+0xb4>
    80002efc:	001c0c13          	addi	s8,s8,1
    80002f00:	fffb8b9b          	addiw	s7,s7,-1
    80002f04:	fb5c94e3          	bne	s9,s5,80002eac <consoleread+0x58>
    80002f08:	000b851b          	sext.w	a0,s7
    80002f0c:	06813083          	ld	ra,104(sp)
    80002f10:	06013403          	ld	s0,96(sp)
    80002f14:	05813483          	ld	s1,88(sp)
    80002f18:	05013903          	ld	s2,80(sp)
    80002f1c:	04813983          	ld	s3,72(sp)
    80002f20:	04013a03          	ld	s4,64(sp)
    80002f24:	03813a83          	ld	s5,56(sp)
    80002f28:	02813b83          	ld	s7,40(sp)
    80002f2c:	02013c03          	ld	s8,32(sp)
    80002f30:	01813c83          	ld	s9,24(sp)
    80002f34:	40ab053b          	subw	a0,s6,a0
    80002f38:	03013b03          	ld	s6,48(sp)
    80002f3c:	07010113          	addi	sp,sp,112
    80002f40:	00008067          	ret
    80002f44:	00001097          	auipc	ra,0x1
    80002f48:	1d8080e7          	jalr	472(ra) # 8000411c <push_on>
    80002f4c:	0984a703          	lw	a4,152(s1)
    80002f50:	09c4a783          	lw	a5,156(s1)
    80002f54:	0007879b          	sext.w	a5,a5
    80002f58:	fef70ce3          	beq	a4,a5,80002f50 <consoleread+0xfc>
    80002f5c:	00001097          	auipc	ra,0x1
    80002f60:	234080e7          	jalr	564(ra) # 80004190 <pop_on>
    80002f64:	0984a783          	lw	a5,152(s1)
    80002f68:	07f7f713          	andi	a4,a5,127
    80002f6c:	00e48733          	add	a4,s1,a4
    80002f70:	01874703          	lbu	a4,24(a4)
    80002f74:	0017869b          	addiw	a3,a5,1
    80002f78:	08d4ac23          	sw	a3,152(s1)
    80002f7c:	00070c9b          	sext.w	s9,a4
    80002f80:	f5371ee3          	bne	a4,s3,80002edc <consoleread+0x88>
    80002f84:	000b851b          	sext.w	a0,s7
    80002f88:	f96bf2e3          	bgeu	s7,s6,80002f0c <consoleread+0xb8>
    80002f8c:	08f4ac23          	sw	a5,152(s1)
    80002f90:	f7dff06f          	j	80002f0c <consoleread+0xb8>

0000000080002f94 <consputc>:
    80002f94:	10000793          	li	a5,256
    80002f98:	00f50663          	beq	a0,a5,80002fa4 <consputc+0x10>
    80002f9c:	00001317          	auipc	t1,0x1
    80002fa0:	9f430067          	jr	-1548(t1) # 80003990 <uartputc_sync>
    80002fa4:	ff010113          	addi	sp,sp,-16
    80002fa8:	00113423          	sd	ra,8(sp)
    80002fac:	00813023          	sd	s0,0(sp)
    80002fb0:	01010413          	addi	s0,sp,16
    80002fb4:	00800513          	li	a0,8
    80002fb8:	00001097          	auipc	ra,0x1
    80002fbc:	9d8080e7          	jalr	-1576(ra) # 80003990 <uartputc_sync>
    80002fc0:	02000513          	li	a0,32
    80002fc4:	00001097          	auipc	ra,0x1
    80002fc8:	9cc080e7          	jalr	-1588(ra) # 80003990 <uartputc_sync>
    80002fcc:	00013403          	ld	s0,0(sp)
    80002fd0:	00813083          	ld	ra,8(sp)
    80002fd4:	00800513          	li	a0,8
    80002fd8:	01010113          	addi	sp,sp,16
    80002fdc:	00001317          	auipc	t1,0x1
    80002fe0:	9b430067          	jr	-1612(t1) # 80003990 <uartputc_sync>

0000000080002fe4 <consoleintr>:
    80002fe4:	fe010113          	addi	sp,sp,-32
    80002fe8:	00813823          	sd	s0,16(sp)
    80002fec:	00913423          	sd	s1,8(sp)
    80002ff0:	01213023          	sd	s2,0(sp)
    80002ff4:	00113c23          	sd	ra,24(sp)
    80002ff8:	02010413          	addi	s0,sp,32
    80002ffc:	00004917          	auipc	s2,0x4
    80003000:	b4c90913          	addi	s2,s2,-1204 # 80006b48 <cons>
    80003004:	00050493          	mv	s1,a0
    80003008:	00090513          	mv	a0,s2
    8000300c:	00001097          	auipc	ra,0x1
    80003010:	e40080e7          	jalr	-448(ra) # 80003e4c <acquire>
    80003014:	02048c63          	beqz	s1,8000304c <consoleintr+0x68>
    80003018:	0a092783          	lw	a5,160(s2)
    8000301c:	09892703          	lw	a4,152(s2)
    80003020:	07f00693          	li	a3,127
    80003024:	40e7873b          	subw	a4,a5,a4
    80003028:	02e6e263          	bltu	a3,a4,8000304c <consoleintr+0x68>
    8000302c:	00d00713          	li	a4,13
    80003030:	04e48063          	beq	s1,a4,80003070 <consoleintr+0x8c>
    80003034:	07f7f713          	andi	a4,a5,127
    80003038:	00e90733          	add	a4,s2,a4
    8000303c:	0017879b          	addiw	a5,a5,1
    80003040:	0af92023          	sw	a5,160(s2)
    80003044:	00970c23          	sb	s1,24(a4)
    80003048:	08f92e23          	sw	a5,156(s2)
    8000304c:	01013403          	ld	s0,16(sp)
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	00813483          	ld	s1,8(sp)
    80003058:	00013903          	ld	s2,0(sp)
    8000305c:	00004517          	auipc	a0,0x4
    80003060:	aec50513          	addi	a0,a0,-1300 # 80006b48 <cons>
    80003064:	02010113          	addi	sp,sp,32
    80003068:	00001317          	auipc	t1,0x1
    8000306c:	eb030067          	jr	-336(t1) # 80003f18 <release>
    80003070:	00a00493          	li	s1,10
    80003074:	fc1ff06f          	j	80003034 <consoleintr+0x50>

0000000080003078 <consoleinit>:
    80003078:	fe010113          	addi	sp,sp,-32
    8000307c:	00113c23          	sd	ra,24(sp)
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	02010413          	addi	s0,sp,32
    8000308c:	00004497          	auipc	s1,0x4
    80003090:	abc48493          	addi	s1,s1,-1348 # 80006b48 <cons>
    80003094:	00048513          	mv	a0,s1
    80003098:	00002597          	auipc	a1,0x2
    8000309c:	1a858593          	addi	a1,a1,424 # 80005240 <CONSOLE_STATUS+0x230>
    800030a0:	00001097          	auipc	ra,0x1
    800030a4:	d88080e7          	jalr	-632(ra) # 80003e28 <initlock>
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	7ac080e7          	jalr	1964(ra) # 80003854 <uartinit>
    800030b0:	01813083          	ld	ra,24(sp)
    800030b4:	01013403          	ld	s0,16(sp)
    800030b8:	00000797          	auipc	a5,0x0
    800030bc:	d9c78793          	addi	a5,a5,-612 # 80002e54 <consoleread>
    800030c0:	0af4bc23          	sd	a5,184(s1)
    800030c4:	00000797          	auipc	a5,0x0
    800030c8:	cec78793          	addi	a5,a5,-788 # 80002db0 <consolewrite>
    800030cc:	0cf4b023          	sd	a5,192(s1)
    800030d0:	00813483          	ld	s1,8(sp)
    800030d4:	02010113          	addi	sp,sp,32
    800030d8:	00008067          	ret

00000000800030dc <console_read>:
    800030dc:	ff010113          	addi	sp,sp,-16
    800030e0:	00813423          	sd	s0,8(sp)
    800030e4:	01010413          	addi	s0,sp,16
    800030e8:	00813403          	ld	s0,8(sp)
    800030ec:	00004317          	auipc	t1,0x4
    800030f0:	b1433303          	ld	t1,-1260(t1) # 80006c00 <devsw+0x10>
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00030067          	jr	t1

00000000800030fc <console_write>:
    800030fc:	ff010113          	addi	sp,sp,-16
    80003100:	00813423          	sd	s0,8(sp)
    80003104:	01010413          	addi	s0,sp,16
    80003108:	00813403          	ld	s0,8(sp)
    8000310c:	00004317          	auipc	t1,0x4
    80003110:	afc33303          	ld	t1,-1284(t1) # 80006c08 <devsw+0x18>
    80003114:	01010113          	addi	sp,sp,16
    80003118:	00030067          	jr	t1

000000008000311c <panic>:
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	02010413          	addi	s0,sp,32
    80003130:	00050493          	mv	s1,a0
    80003134:	00002517          	auipc	a0,0x2
    80003138:	11450513          	addi	a0,a0,276 # 80005248 <CONSOLE_STATUS+0x238>
    8000313c:	00004797          	auipc	a5,0x4
    80003140:	b607a623          	sw	zero,-1172(a5) # 80006ca8 <pr+0x18>
    80003144:	00000097          	auipc	ra,0x0
    80003148:	034080e7          	jalr	52(ra) # 80003178 <__printf>
    8000314c:	00048513          	mv	a0,s1
    80003150:	00000097          	auipc	ra,0x0
    80003154:	028080e7          	jalr	40(ra) # 80003178 <__printf>
    80003158:	00002517          	auipc	a0,0x2
    8000315c:	f6850513          	addi	a0,a0,-152 # 800050c0 <CONSOLE_STATUS+0xb0>
    80003160:	00000097          	auipc	ra,0x0
    80003164:	018080e7          	jalr	24(ra) # 80003178 <__printf>
    80003168:	00100793          	li	a5,1
    8000316c:	00003717          	auipc	a4,0x3
    80003170:	88f72e23          	sw	a5,-1892(a4) # 80005a08 <panicked>
    80003174:	0000006f          	j	80003174 <panic+0x58>

0000000080003178 <__printf>:
    80003178:	f3010113          	addi	sp,sp,-208
    8000317c:	08813023          	sd	s0,128(sp)
    80003180:	07313423          	sd	s3,104(sp)
    80003184:	09010413          	addi	s0,sp,144
    80003188:	05813023          	sd	s8,64(sp)
    8000318c:	08113423          	sd	ra,136(sp)
    80003190:	06913c23          	sd	s1,120(sp)
    80003194:	07213823          	sd	s2,112(sp)
    80003198:	07413023          	sd	s4,96(sp)
    8000319c:	05513c23          	sd	s5,88(sp)
    800031a0:	05613823          	sd	s6,80(sp)
    800031a4:	05713423          	sd	s7,72(sp)
    800031a8:	03913c23          	sd	s9,56(sp)
    800031ac:	03a13823          	sd	s10,48(sp)
    800031b0:	03b13423          	sd	s11,40(sp)
    800031b4:	00004317          	auipc	t1,0x4
    800031b8:	adc30313          	addi	t1,t1,-1316 # 80006c90 <pr>
    800031bc:	01832c03          	lw	s8,24(t1)
    800031c0:	00b43423          	sd	a1,8(s0)
    800031c4:	00c43823          	sd	a2,16(s0)
    800031c8:	00d43c23          	sd	a3,24(s0)
    800031cc:	02e43023          	sd	a4,32(s0)
    800031d0:	02f43423          	sd	a5,40(s0)
    800031d4:	03043823          	sd	a6,48(s0)
    800031d8:	03143c23          	sd	a7,56(s0)
    800031dc:	00050993          	mv	s3,a0
    800031e0:	4a0c1663          	bnez	s8,8000368c <__printf+0x514>
    800031e4:	60098c63          	beqz	s3,800037fc <__printf+0x684>
    800031e8:	0009c503          	lbu	a0,0(s3)
    800031ec:	00840793          	addi	a5,s0,8
    800031f0:	f6f43c23          	sd	a5,-136(s0)
    800031f4:	00000493          	li	s1,0
    800031f8:	22050063          	beqz	a0,80003418 <__printf+0x2a0>
    800031fc:	00002a37          	lui	s4,0x2
    80003200:	00018ab7          	lui	s5,0x18
    80003204:	000f4b37          	lui	s6,0xf4
    80003208:	00989bb7          	lui	s7,0x989
    8000320c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003210:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003214:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003218:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000321c:	00148c9b          	addiw	s9,s1,1
    80003220:	02500793          	li	a5,37
    80003224:	01998933          	add	s2,s3,s9
    80003228:	38f51263          	bne	a0,a5,800035ac <__printf+0x434>
    8000322c:	00094783          	lbu	a5,0(s2)
    80003230:	00078c9b          	sext.w	s9,a5
    80003234:	1e078263          	beqz	a5,80003418 <__printf+0x2a0>
    80003238:	0024849b          	addiw	s1,s1,2
    8000323c:	07000713          	li	a4,112
    80003240:	00998933          	add	s2,s3,s1
    80003244:	38e78a63          	beq	a5,a4,800035d8 <__printf+0x460>
    80003248:	20f76863          	bltu	a4,a5,80003458 <__printf+0x2e0>
    8000324c:	42a78863          	beq	a5,a0,8000367c <__printf+0x504>
    80003250:	06400713          	li	a4,100
    80003254:	40e79663          	bne	a5,a4,80003660 <__printf+0x4e8>
    80003258:	f7843783          	ld	a5,-136(s0)
    8000325c:	0007a603          	lw	a2,0(a5)
    80003260:	00878793          	addi	a5,a5,8
    80003264:	f6f43c23          	sd	a5,-136(s0)
    80003268:	42064a63          	bltz	a2,8000369c <__printf+0x524>
    8000326c:	00a00713          	li	a4,10
    80003270:	02e677bb          	remuw	a5,a2,a4
    80003274:	00002d97          	auipc	s11,0x2
    80003278:	ffcd8d93          	addi	s11,s11,-4 # 80005270 <digits>
    8000327c:	00900593          	li	a1,9
    80003280:	0006051b          	sext.w	a0,a2
    80003284:	00000c93          	li	s9,0
    80003288:	02079793          	slli	a5,a5,0x20
    8000328c:	0207d793          	srli	a5,a5,0x20
    80003290:	00fd87b3          	add	a5,s11,a5
    80003294:	0007c783          	lbu	a5,0(a5)
    80003298:	02e656bb          	divuw	a3,a2,a4
    8000329c:	f8f40023          	sb	a5,-128(s0)
    800032a0:	14c5d863          	bge	a1,a2,800033f0 <__printf+0x278>
    800032a4:	06300593          	li	a1,99
    800032a8:	00100c93          	li	s9,1
    800032ac:	02e6f7bb          	remuw	a5,a3,a4
    800032b0:	02079793          	slli	a5,a5,0x20
    800032b4:	0207d793          	srli	a5,a5,0x20
    800032b8:	00fd87b3          	add	a5,s11,a5
    800032bc:	0007c783          	lbu	a5,0(a5)
    800032c0:	02e6d73b          	divuw	a4,a3,a4
    800032c4:	f8f400a3          	sb	a5,-127(s0)
    800032c8:	12a5f463          	bgeu	a1,a0,800033f0 <__printf+0x278>
    800032cc:	00a00693          	li	a3,10
    800032d0:	00900593          	li	a1,9
    800032d4:	02d777bb          	remuw	a5,a4,a3
    800032d8:	02079793          	slli	a5,a5,0x20
    800032dc:	0207d793          	srli	a5,a5,0x20
    800032e0:	00fd87b3          	add	a5,s11,a5
    800032e4:	0007c503          	lbu	a0,0(a5)
    800032e8:	02d757bb          	divuw	a5,a4,a3
    800032ec:	f8a40123          	sb	a0,-126(s0)
    800032f0:	48e5f263          	bgeu	a1,a4,80003774 <__printf+0x5fc>
    800032f4:	06300513          	li	a0,99
    800032f8:	02d7f5bb          	remuw	a1,a5,a3
    800032fc:	02059593          	slli	a1,a1,0x20
    80003300:	0205d593          	srli	a1,a1,0x20
    80003304:	00bd85b3          	add	a1,s11,a1
    80003308:	0005c583          	lbu	a1,0(a1)
    8000330c:	02d7d7bb          	divuw	a5,a5,a3
    80003310:	f8b401a3          	sb	a1,-125(s0)
    80003314:	48e57263          	bgeu	a0,a4,80003798 <__printf+0x620>
    80003318:	3e700513          	li	a0,999
    8000331c:	02d7f5bb          	remuw	a1,a5,a3
    80003320:	02059593          	slli	a1,a1,0x20
    80003324:	0205d593          	srli	a1,a1,0x20
    80003328:	00bd85b3          	add	a1,s11,a1
    8000332c:	0005c583          	lbu	a1,0(a1)
    80003330:	02d7d7bb          	divuw	a5,a5,a3
    80003334:	f8b40223          	sb	a1,-124(s0)
    80003338:	46e57663          	bgeu	a0,a4,800037a4 <__printf+0x62c>
    8000333c:	02d7f5bb          	remuw	a1,a5,a3
    80003340:	02059593          	slli	a1,a1,0x20
    80003344:	0205d593          	srli	a1,a1,0x20
    80003348:	00bd85b3          	add	a1,s11,a1
    8000334c:	0005c583          	lbu	a1,0(a1)
    80003350:	02d7d7bb          	divuw	a5,a5,a3
    80003354:	f8b402a3          	sb	a1,-123(s0)
    80003358:	46ea7863          	bgeu	s4,a4,800037c8 <__printf+0x650>
    8000335c:	02d7f5bb          	remuw	a1,a5,a3
    80003360:	02059593          	slli	a1,a1,0x20
    80003364:	0205d593          	srli	a1,a1,0x20
    80003368:	00bd85b3          	add	a1,s11,a1
    8000336c:	0005c583          	lbu	a1,0(a1)
    80003370:	02d7d7bb          	divuw	a5,a5,a3
    80003374:	f8b40323          	sb	a1,-122(s0)
    80003378:	3eeaf863          	bgeu	s5,a4,80003768 <__printf+0x5f0>
    8000337c:	02d7f5bb          	remuw	a1,a5,a3
    80003380:	02059593          	slli	a1,a1,0x20
    80003384:	0205d593          	srli	a1,a1,0x20
    80003388:	00bd85b3          	add	a1,s11,a1
    8000338c:	0005c583          	lbu	a1,0(a1)
    80003390:	02d7d7bb          	divuw	a5,a5,a3
    80003394:	f8b403a3          	sb	a1,-121(s0)
    80003398:	42eb7e63          	bgeu	s6,a4,800037d4 <__printf+0x65c>
    8000339c:	02d7f5bb          	remuw	a1,a5,a3
    800033a0:	02059593          	slli	a1,a1,0x20
    800033a4:	0205d593          	srli	a1,a1,0x20
    800033a8:	00bd85b3          	add	a1,s11,a1
    800033ac:	0005c583          	lbu	a1,0(a1)
    800033b0:	02d7d7bb          	divuw	a5,a5,a3
    800033b4:	f8b40423          	sb	a1,-120(s0)
    800033b8:	42ebfc63          	bgeu	s7,a4,800037f0 <__printf+0x678>
    800033bc:	02079793          	slli	a5,a5,0x20
    800033c0:	0207d793          	srli	a5,a5,0x20
    800033c4:	00fd8db3          	add	s11,s11,a5
    800033c8:	000dc703          	lbu	a4,0(s11)
    800033cc:	00a00793          	li	a5,10
    800033d0:	00900c93          	li	s9,9
    800033d4:	f8e404a3          	sb	a4,-119(s0)
    800033d8:	00065c63          	bgez	a2,800033f0 <__printf+0x278>
    800033dc:	f9040713          	addi	a4,s0,-112
    800033e0:	00f70733          	add	a4,a4,a5
    800033e4:	02d00693          	li	a3,45
    800033e8:	fed70823          	sb	a3,-16(a4)
    800033ec:	00078c93          	mv	s9,a5
    800033f0:	f8040793          	addi	a5,s0,-128
    800033f4:	01978cb3          	add	s9,a5,s9
    800033f8:	f7f40d13          	addi	s10,s0,-129
    800033fc:	000cc503          	lbu	a0,0(s9)
    80003400:	fffc8c93          	addi	s9,s9,-1
    80003404:	00000097          	auipc	ra,0x0
    80003408:	b90080e7          	jalr	-1136(ra) # 80002f94 <consputc>
    8000340c:	ffac98e3          	bne	s9,s10,800033fc <__printf+0x284>
    80003410:	00094503          	lbu	a0,0(s2)
    80003414:	e00514e3          	bnez	a0,8000321c <__printf+0xa4>
    80003418:	1a0c1663          	bnez	s8,800035c4 <__printf+0x44c>
    8000341c:	08813083          	ld	ra,136(sp)
    80003420:	08013403          	ld	s0,128(sp)
    80003424:	07813483          	ld	s1,120(sp)
    80003428:	07013903          	ld	s2,112(sp)
    8000342c:	06813983          	ld	s3,104(sp)
    80003430:	06013a03          	ld	s4,96(sp)
    80003434:	05813a83          	ld	s5,88(sp)
    80003438:	05013b03          	ld	s6,80(sp)
    8000343c:	04813b83          	ld	s7,72(sp)
    80003440:	04013c03          	ld	s8,64(sp)
    80003444:	03813c83          	ld	s9,56(sp)
    80003448:	03013d03          	ld	s10,48(sp)
    8000344c:	02813d83          	ld	s11,40(sp)
    80003450:	0d010113          	addi	sp,sp,208
    80003454:	00008067          	ret
    80003458:	07300713          	li	a4,115
    8000345c:	1ce78a63          	beq	a5,a4,80003630 <__printf+0x4b8>
    80003460:	07800713          	li	a4,120
    80003464:	1ee79e63          	bne	a5,a4,80003660 <__printf+0x4e8>
    80003468:	f7843783          	ld	a5,-136(s0)
    8000346c:	0007a703          	lw	a4,0(a5)
    80003470:	00878793          	addi	a5,a5,8
    80003474:	f6f43c23          	sd	a5,-136(s0)
    80003478:	28074263          	bltz	a4,800036fc <__printf+0x584>
    8000347c:	00002d97          	auipc	s11,0x2
    80003480:	df4d8d93          	addi	s11,s11,-524 # 80005270 <digits>
    80003484:	00f77793          	andi	a5,a4,15
    80003488:	00fd87b3          	add	a5,s11,a5
    8000348c:	0007c683          	lbu	a3,0(a5)
    80003490:	00f00613          	li	a2,15
    80003494:	0007079b          	sext.w	a5,a4
    80003498:	f8d40023          	sb	a3,-128(s0)
    8000349c:	0047559b          	srliw	a1,a4,0x4
    800034a0:	0047569b          	srliw	a3,a4,0x4
    800034a4:	00000c93          	li	s9,0
    800034a8:	0ee65063          	bge	a2,a4,80003588 <__printf+0x410>
    800034ac:	00f6f693          	andi	a3,a3,15
    800034b0:	00dd86b3          	add	a3,s11,a3
    800034b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800034b8:	0087d79b          	srliw	a5,a5,0x8
    800034bc:	00100c93          	li	s9,1
    800034c0:	f8d400a3          	sb	a3,-127(s0)
    800034c4:	0cb67263          	bgeu	a2,a1,80003588 <__printf+0x410>
    800034c8:	00f7f693          	andi	a3,a5,15
    800034cc:	00dd86b3          	add	a3,s11,a3
    800034d0:	0006c583          	lbu	a1,0(a3)
    800034d4:	00f00613          	li	a2,15
    800034d8:	0047d69b          	srliw	a3,a5,0x4
    800034dc:	f8b40123          	sb	a1,-126(s0)
    800034e0:	0047d593          	srli	a1,a5,0x4
    800034e4:	28f67e63          	bgeu	a2,a5,80003780 <__printf+0x608>
    800034e8:	00f6f693          	andi	a3,a3,15
    800034ec:	00dd86b3          	add	a3,s11,a3
    800034f0:	0006c503          	lbu	a0,0(a3)
    800034f4:	0087d813          	srli	a6,a5,0x8
    800034f8:	0087d69b          	srliw	a3,a5,0x8
    800034fc:	f8a401a3          	sb	a0,-125(s0)
    80003500:	28b67663          	bgeu	a2,a1,8000378c <__printf+0x614>
    80003504:	00f6f693          	andi	a3,a3,15
    80003508:	00dd86b3          	add	a3,s11,a3
    8000350c:	0006c583          	lbu	a1,0(a3)
    80003510:	00c7d513          	srli	a0,a5,0xc
    80003514:	00c7d69b          	srliw	a3,a5,0xc
    80003518:	f8b40223          	sb	a1,-124(s0)
    8000351c:	29067a63          	bgeu	a2,a6,800037b0 <__printf+0x638>
    80003520:	00f6f693          	andi	a3,a3,15
    80003524:	00dd86b3          	add	a3,s11,a3
    80003528:	0006c583          	lbu	a1,0(a3)
    8000352c:	0107d813          	srli	a6,a5,0x10
    80003530:	0107d69b          	srliw	a3,a5,0x10
    80003534:	f8b402a3          	sb	a1,-123(s0)
    80003538:	28a67263          	bgeu	a2,a0,800037bc <__printf+0x644>
    8000353c:	00f6f693          	andi	a3,a3,15
    80003540:	00dd86b3          	add	a3,s11,a3
    80003544:	0006c683          	lbu	a3,0(a3)
    80003548:	0147d79b          	srliw	a5,a5,0x14
    8000354c:	f8d40323          	sb	a3,-122(s0)
    80003550:	21067663          	bgeu	a2,a6,8000375c <__printf+0x5e4>
    80003554:	02079793          	slli	a5,a5,0x20
    80003558:	0207d793          	srli	a5,a5,0x20
    8000355c:	00fd8db3          	add	s11,s11,a5
    80003560:	000dc683          	lbu	a3,0(s11)
    80003564:	00800793          	li	a5,8
    80003568:	00700c93          	li	s9,7
    8000356c:	f8d403a3          	sb	a3,-121(s0)
    80003570:	00075c63          	bgez	a4,80003588 <__printf+0x410>
    80003574:	f9040713          	addi	a4,s0,-112
    80003578:	00f70733          	add	a4,a4,a5
    8000357c:	02d00693          	li	a3,45
    80003580:	fed70823          	sb	a3,-16(a4)
    80003584:	00078c93          	mv	s9,a5
    80003588:	f8040793          	addi	a5,s0,-128
    8000358c:	01978cb3          	add	s9,a5,s9
    80003590:	f7f40d13          	addi	s10,s0,-129
    80003594:	000cc503          	lbu	a0,0(s9)
    80003598:	fffc8c93          	addi	s9,s9,-1
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	9f8080e7          	jalr	-1544(ra) # 80002f94 <consputc>
    800035a4:	ff9d18e3          	bne	s10,s9,80003594 <__printf+0x41c>
    800035a8:	0100006f          	j	800035b8 <__printf+0x440>
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	9e8080e7          	jalr	-1560(ra) # 80002f94 <consputc>
    800035b4:	000c8493          	mv	s1,s9
    800035b8:	00094503          	lbu	a0,0(s2)
    800035bc:	c60510e3          	bnez	a0,8000321c <__printf+0xa4>
    800035c0:	e40c0ee3          	beqz	s8,8000341c <__printf+0x2a4>
    800035c4:	00003517          	auipc	a0,0x3
    800035c8:	6cc50513          	addi	a0,a0,1740 # 80006c90 <pr>
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	94c080e7          	jalr	-1716(ra) # 80003f18 <release>
    800035d4:	e49ff06f          	j	8000341c <__printf+0x2a4>
    800035d8:	f7843783          	ld	a5,-136(s0)
    800035dc:	03000513          	li	a0,48
    800035e0:	01000d13          	li	s10,16
    800035e4:	00878713          	addi	a4,a5,8
    800035e8:	0007bc83          	ld	s9,0(a5)
    800035ec:	f6e43c23          	sd	a4,-136(s0)
    800035f0:	00000097          	auipc	ra,0x0
    800035f4:	9a4080e7          	jalr	-1628(ra) # 80002f94 <consputc>
    800035f8:	07800513          	li	a0,120
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	998080e7          	jalr	-1640(ra) # 80002f94 <consputc>
    80003604:	00002d97          	auipc	s11,0x2
    80003608:	c6cd8d93          	addi	s11,s11,-916 # 80005270 <digits>
    8000360c:	03ccd793          	srli	a5,s9,0x3c
    80003610:	00fd87b3          	add	a5,s11,a5
    80003614:	0007c503          	lbu	a0,0(a5)
    80003618:	fffd0d1b          	addiw	s10,s10,-1
    8000361c:	004c9c93          	slli	s9,s9,0x4
    80003620:	00000097          	auipc	ra,0x0
    80003624:	974080e7          	jalr	-1676(ra) # 80002f94 <consputc>
    80003628:	fe0d12e3          	bnez	s10,8000360c <__printf+0x494>
    8000362c:	f8dff06f          	j	800035b8 <__printf+0x440>
    80003630:	f7843783          	ld	a5,-136(s0)
    80003634:	0007bc83          	ld	s9,0(a5)
    80003638:	00878793          	addi	a5,a5,8
    8000363c:	f6f43c23          	sd	a5,-136(s0)
    80003640:	000c9a63          	bnez	s9,80003654 <__printf+0x4dc>
    80003644:	1080006f          	j	8000374c <__printf+0x5d4>
    80003648:	001c8c93          	addi	s9,s9,1
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	948080e7          	jalr	-1720(ra) # 80002f94 <consputc>
    80003654:	000cc503          	lbu	a0,0(s9)
    80003658:	fe0518e3          	bnez	a0,80003648 <__printf+0x4d0>
    8000365c:	f5dff06f          	j	800035b8 <__printf+0x440>
    80003660:	02500513          	li	a0,37
    80003664:	00000097          	auipc	ra,0x0
    80003668:	930080e7          	jalr	-1744(ra) # 80002f94 <consputc>
    8000366c:	000c8513          	mv	a0,s9
    80003670:	00000097          	auipc	ra,0x0
    80003674:	924080e7          	jalr	-1756(ra) # 80002f94 <consputc>
    80003678:	f41ff06f          	j	800035b8 <__printf+0x440>
    8000367c:	02500513          	li	a0,37
    80003680:	00000097          	auipc	ra,0x0
    80003684:	914080e7          	jalr	-1772(ra) # 80002f94 <consputc>
    80003688:	f31ff06f          	j	800035b8 <__printf+0x440>
    8000368c:	00030513          	mv	a0,t1
    80003690:	00000097          	auipc	ra,0x0
    80003694:	7bc080e7          	jalr	1980(ra) # 80003e4c <acquire>
    80003698:	b4dff06f          	j	800031e4 <__printf+0x6c>
    8000369c:	40c0053b          	negw	a0,a2
    800036a0:	00a00713          	li	a4,10
    800036a4:	02e576bb          	remuw	a3,a0,a4
    800036a8:	00002d97          	auipc	s11,0x2
    800036ac:	bc8d8d93          	addi	s11,s11,-1080 # 80005270 <digits>
    800036b0:	ff700593          	li	a1,-9
    800036b4:	02069693          	slli	a3,a3,0x20
    800036b8:	0206d693          	srli	a3,a3,0x20
    800036bc:	00dd86b3          	add	a3,s11,a3
    800036c0:	0006c683          	lbu	a3,0(a3)
    800036c4:	02e557bb          	divuw	a5,a0,a4
    800036c8:	f8d40023          	sb	a3,-128(s0)
    800036cc:	10b65e63          	bge	a2,a1,800037e8 <__printf+0x670>
    800036d0:	06300593          	li	a1,99
    800036d4:	02e7f6bb          	remuw	a3,a5,a4
    800036d8:	02069693          	slli	a3,a3,0x20
    800036dc:	0206d693          	srli	a3,a3,0x20
    800036e0:	00dd86b3          	add	a3,s11,a3
    800036e4:	0006c683          	lbu	a3,0(a3)
    800036e8:	02e7d73b          	divuw	a4,a5,a4
    800036ec:	00200793          	li	a5,2
    800036f0:	f8d400a3          	sb	a3,-127(s0)
    800036f4:	bca5ece3          	bltu	a1,a0,800032cc <__printf+0x154>
    800036f8:	ce5ff06f          	j	800033dc <__printf+0x264>
    800036fc:	40e007bb          	negw	a5,a4
    80003700:	00002d97          	auipc	s11,0x2
    80003704:	b70d8d93          	addi	s11,s11,-1168 # 80005270 <digits>
    80003708:	00f7f693          	andi	a3,a5,15
    8000370c:	00dd86b3          	add	a3,s11,a3
    80003710:	0006c583          	lbu	a1,0(a3)
    80003714:	ff100613          	li	a2,-15
    80003718:	0047d69b          	srliw	a3,a5,0x4
    8000371c:	f8b40023          	sb	a1,-128(s0)
    80003720:	0047d59b          	srliw	a1,a5,0x4
    80003724:	0ac75e63          	bge	a4,a2,800037e0 <__printf+0x668>
    80003728:	00f6f693          	andi	a3,a3,15
    8000372c:	00dd86b3          	add	a3,s11,a3
    80003730:	0006c603          	lbu	a2,0(a3)
    80003734:	00f00693          	li	a3,15
    80003738:	0087d79b          	srliw	a5,a5,0x8
    8000373c:	f8c400a3          	sb	a2,-127(s0)
    80003740:	d8b6e4e3          	bltu	a3,a1,800034c8 <__printf+0x350>
    80003744:	00200793          	li	a5,2
    80003748:	e2dff06f          	j	80003574 <__printf+0x3fc>
    8000374c:	00002c97          	auipc	s9,0x2
    80003750:	b04c8c93          	addi	s9,s9,-1276 # 80005250 <CONSOLE_STATUS+0x240>
    80003754:	02800513          	li	a0,40
    80003758:	ef1ff06f          	j	80003648 <__printf+0x4d0>
    8000375c:	00700793          	li	a5,7
    80003760:	00600c93          	li	s9,6
    80003764:	e0dff06f          	j	80003570 <__printf+0x3f8>
    80003768:	00700793          	li	a5,7
    8000376c:	00600c93          	li	s9,6
    80003770:	c69ff06f          	j	800033d8 <__printf+0x260>
    80003774:	00300793          	li	a5,3
    80003778:	00200c93          	li	s9,2
    8000377c:	c5dff06f          	j	800033d8 <__printf+0x260>
    80003780:	00300793          	li	a5,3
    80003784:	00200c93          	li	s9,2
    80003788:	de9ff06f          	j	80003570 <__printf+0x3f8>
    8000378c:	00400793          	li	a5,4
    80003790:	00300c93          	li	s9,3
    80003794:	dddff06f          	j	80003570 <__printf+0x3f8>
    80003798:	00400793          	li	a5,4
    8000379c:	00300c93          	li	s9,3
    800037a0:	c39ff06f          	j	800033d8 <__printf+0x260>
    800037a4:	00500793          	li	a5,5
    800037a8:	00400c93          	li	s9,4
    800037ac:	c2dff06f          	j	800033d8 <__printf+0x260>
    800037b0:	00500793          	li	a5,5
    800037b4:	00400c93          	li	s9,4
    800037b8:	db9ff06f          	j	80003570 <__printf+0x3f8>
    800037bc:	00600793          	li	a5,6
    800037c0:	00500c93          	li	s9,5
    800037c4:	dadff06f          	j	80003570 <__printf+0x3f8>
    800037c8:	00600793          	li	a5,6
    800037cc:	00500c93          	li	s9,5
    800037d0:	c09ff06f          	j	800033d8 <__printf+0x260>
    800037d4:	00800793          	li	a5,8
    800037d8:	00700c93          	li	s9,7
    800037dc:	bfdff06f          	j	800033d8 <__printf+0x260>
    800037e0:	00100793          	li	a5,1
    800037e4:	d91ff06f          	j	80003574 <__printf+0x3fc>
    800037e8:	00100793          	li	a5,1
    800037ec:	bf1ff06f          	j	800033dc <__printf+0x264>
    800037f0:	00900793          	li	a5,9
    800037f4:	00800c93          	li	s9,8
    800037f8:	be1ff06f          	j	800033d8 <__printf+0x260>
    800037fc:	00002517          	auipc	a0,0x2
    80003800:	a5c50513          	addi	a0,a0,-1444 # 80005258 <CONSOLE_STATUS+0x248>
    80003804:	00000097          	auipc	ra,0x0
    80003808:	918080e7          	jalr	-1768(ra) # 8000311c <panic>

000000008000380c <printfinit>:
    8000380c:	fe010113          	addi	sp,sp,-32
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00003497          	auipc	s1,0x3
    80003824:	47048493          	addi	s1,s1,1136 # 80006c90 <pr>
    80003828:	00048513          	mv	a0,s1
    8000382c:	00002597          	auipc	a1,0x2
    80003830:	a3c58593          	addi	a1,a1,-1476 # 80005268 <CONSOLE_STATUS+0x258>
    80003834:	00000097          	auipc	ra,0x0
    80003838:	5f4080e7          	jalr	1524(ra) # 80003e28 <initlock>
    8000383c:	01813083          	ld	ra,24(sp)
    80003840:	01013403          	ld	s0,16(sp)
    80003844:	0004ac23          	sw	zero,24(s1)
    80003848:	00813483          	ld	s1,8(sp)
    8000384c:	02010113          	addi	sp,sp,32
    80003850:	00008067          	ret

0000000080003854 <uartinit>:
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00813423          	sd	s0,8(sp)
    8000385c:	01010413          	addi	s0,sp,16
    80003860:	100007b7          	lui	a5,0x10000
    80003864:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003868:	f8000713          	li	a4,-128
    8000386c:	00e781a3          	sb	a4,3(a5)
    80003870:	00300713          	li	a4,3
    80003874:	00e78023          	sb	a4,0(a5)
    80003878:	000780a3          	sb	zero,1(a5)
    8000387c:	00e781a3          	sb	a4,3(a5)
    80003880:	00700693          	li	a3,7
    80003884:	00d78123          	sb	a3,2(a5)
    80003888:	00e780a3          	sb	a4,1(a5)
    8000388c:	00813403          	ld	s0,8(sp)
    80003890:	01010113          	addi	sp,sp,16
    80003894:	00008067          	ret

0000000080003898 <uartputc>:
    80003898:	00002797          	auipc	a5,0x2
    8000389c:	1707a783          	lw	a5,368(a5) # 80005a08 <panicked>
    800038a0:	00078463          	beqz	a5,800038a8 <uartputc+0x10>
    800038a4:	0000006f          	j	800038a4 <uartputc+0xc>
    800038a8:	fd010113          	addi	sp,sp,-48
    800038ac:	02813023          	sd	s0,32(sp)
    800038b0:	00913c23          	sd	s1,24(sp)
    800038b4:	01213823          	sd	s2,16(sp)
    800038b8:	01313423          	sd	s3,8(sp)
    800038bc:	02113423          	sd	ra,40(sp)
    800038c0:	03010413          	addi	s0,sp,48
    800038c4:	00002917          	auipc	s2,0x2
    800038c8:	14c90913          	addi	s2,s2,332 # 80005a10 <uart_tx_r>
    800038cc:	00093783          	ld	a5,0(s2)
    800038d0:	00002497          	auipc	s1,0x2
    800038d4:	14848493          	addi	s1,s1,328 # 80005a18 <uart_tx_w>
    800038d8:	0004b703          	ld	a4,0(s1)
    800038dc:	02078693          	addi	a3,a5,32
    800038e0:	00050993          	mv	s3,a0
    800038e4:	02e69c63          	bne	a3,a4,8000391c <uartputc+0x84>
    800038e8:	00001097          	auipc	ra,0x1
    800038ec:	834080e7          	jalr	-1996(ra) # 8000411c <push_on>
    800038f0:	00093783          	ld	a5,0(s2)
    800038f4:	0004b703          	ld	a4,0(s1)
    800038f8:	02078793          	addi	a5,a5,32
    800038fc:	00e79463          	bne	a5,a4,80003904 <uartputc+0x6c>
    80003900:	0000006f          	j	80003900 <uartputc+0x68>
    80003904:	00001097          	auipc	ra,0x1
    80003908:	88c080e7          	jalr	-1908(ra) # 80004190 <pop_on>
    8000390c:	00093783          	ld	a5,0(s2)
    80003910:	0004b703          	ld	a4,0(s1)
    80003914:	02078693          	addi	a3,a5,32
    80003918:	fce688e3          	beq	a3,a4,800038e8 <uartputc+0x50>
    8000391c:	01f77693          	andi	a3,a4,31
    80003920:	00003597          	auipc	a1,0x3
    80003924:	39058593          	addi	a1,a1,912 # 80006cb0 <uart_tx_buf>
    80003928:	00d586b3          	add	a3,a1,a3
    8000392c:	00170713          	addi	a4,a4,1
    80003930:	01368023          	sb	s3,0(a3)
    80003934:	00e4b023          	sd	a4,0(s1)
    80003938:	10000637          	lui	a2,0x10000
    8000393c:	02f71063          	bne	a4,a5,8000395c <uartputc+0xc4>
    80003940:	0340006f          	j	80003974 <uartputc+0xdc>
    80003944:	00074703          	lbu	a4,0(a4)
    80003948:	00f93023          	sd	a5,0(s2)
    8000394c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003950:	00093783          	ld	a5,0(s2)
    80003954:	0004b703          	ld	a4,0(s1)
    80003958:	00f70e63          	beq	a4,a5,80003974 <uartputc+0xdc>
    8000395c:	00564683          	lbu	a3,5(a2)
    80003960:	01f7f713          	andi	a4,a5,31
    80003964:	00e58733          	add	a4,a1,a4
    80003968:	0206f693          	andi	a3,a3,32
    8000396c:	00178793          	addi	a5,a5,1
    80003970:	fc069ae3          	bnez	a3,80003944 <uartputc+0xac>
    80003974:	02813083          	ld	ra,40(sp)
    80003978:	02013403          	ld	s0,32(sp)
    8000397c:	01813483          	ld	s1,24(sp)
    80003980:	01013903          	ld	s2,16(sp)
    80003984:	00813983          	ld	s3,8(sp)
    80003988:	03010113          	addi	sp,sp,48
    8000398c:	00008067          	ret

0000000080003990 <uartputc_sync>:
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00813423          	sd	s0,8(sp)
    80003998:	01010413          	addi	s0,sp,16
    8000399c:	00002717          	auipc	a4,0x2
    800039a0:	06c72703          	lw	a4,108(a4) # 80005a08 <panicked>
    800039a4:	02071663          	bnez	a4,800039d0 <uartputc_sync+0x40>
    800039a8:	00050793          	mv	a5,a0
    800039ac:	100006b7          	lui	a3,0x10000
    800039b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800039b4:	02077713          	andi	a4,a4,32
    800039b8:	fe070ce3          	beqz	a4,800039b0 <uartputc_sync+0x20>
    800039bc:	0ff7f793          	andi	a5,a5,255
    800039c0:	00f68023          	sb	a5,0(a3)
    800039c4:	00813403          	ld	s0,8(sp)
    800039c8:	01010113          	addi	sp,sp,16
    800039cc:	00008067          	ret
    800039d0:	0000006f          	j	800039d0 <uartputc_sync+0x40>

00000000800039d4 <uartstart>:
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00813423          	sd	s0,8(sp)
    800039dc:	01010413          	addi	s0,sp,16
    800039e0:	00002617          	auipc	a2,0x2
    800039e4:	03060613          	addi	a2,a2,48 # 80005a10 <uart_tx_r>
    800039e8:	00002517          	auipc	a0,0x2
    800039ec:	03050513          	addi	a0,a0,48 # 80005a18 <uart_tx_w>
    800039f0:	00063783          	ld	a5,0(a2)
    800039f4:	00053703          	ld	a4,0(a0)
    800039f8:	04f70263          	beq	a4,a5,80003a3c <uartstart+0x68>
    800039fc:	100005b7          	lui	a1,0x10000
    80003a00:	00003817          	auipc	a6,0x3
    80003a04:	2b080813          	addi	a6,a6,688 # 80006cb0 <uart_tx_buf>
    80003a08:	01c0006f          	j	80003a24 <uartstart+0x50>
    80003a0c:	0006c703          	lbu	a4,0(a3)
    80003a10:	00f63023          	sd	a5,0(a2)
    80003a14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a18:	00063783          	ld	a5,0(a2)
    80003a1c:	00053703          	ld	a4,0(a0)
    80003a20:	00f70e63          	beq	a4,a5,80003a3c <uartstart+0x68>
    80003a24:	01f7f713          	andi	a4,a5,31
    80003a28:	00e806b3          	add	a3,a6,a4
    80003a2c:	0055c703          	lbu	a4,5(a1)
    80003a30:	00178793          	addi	a5,a5,1
    80003a34:	02077713          	andi	a4,a4,32
    80003a38:	fc071ae3          	bnez	a4,80003a0c <uartstart+0x38>
    80003a3c:	00813403          	ld	s0,8(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <uartgetc>:
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00813423          	sd	s0,8(sp)
    80003a50:	01010413          	addi	s0,sp,16
    80003a54:	10000737          	lui	a4,0x10000
    80003a58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003a5c:	0017f793          	andi	a5,a5,1
    80003a60:	00078c63          	beqz	a5,80003a78 <uartgetc+0x30>
    80003a64:	00074503          	lbu	a0,0(a4)
    80003a68:	0ff57513          	andi	a0,a0,255
    80003a6c:	00813403          	ld	s0,8(sp)
    80003a70:	01010113          	addi	sp,sp,16
    80003a74:	00008067          	ret
    80003a78:	fff00513          	li	a0,-1
    80003a7c:	ff1ff06f          	j	80003a6c <uartgetc+0x24>

0000000080003a80 <uartintr>:
    80003a80:	100007b7          	lui	a5,0x10000
    80003a84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003a88:	0017f793          	andi	a5,a5,1
    80003a8c:	0a078463          	beqz	a5,80003b34 <uartintr+0xb4>
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	00113c23          	sd	ra,24(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	100004b7          	lui	s1,0x10000
    80003aa8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003aac:	0ff57513          	andi	a0,a0,255
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	534080e7          	jalr	1332(ra) # 80002fe4 <consoleintr>
    80003ab8:	0054c783          	lbu	a5,5(s1)
    80003abc:	0017f793          	andi	a5,a5,1
    80003ac0:	fe0794e3          	bnez	a5,80003aa8 <uartintr+0x28>
    80003ac4:	00002617          	auipc	a2,0x2
    80003ac8:	f4c60613          	addi	a2,a2,-180 # 80005a10 <uart_tx_r>
    80003acc:	00002517          	auipc	a0,0x2
    80003ad0:	f4c50513          	addi	a0,a0,-180 # 80005a18 <uart_tx_w>
    80003ad4:	00063783          	ld	a5,0(a2)
    80003ad8:	00053703          	ld	a4,0(a0)
    80003adc:	04f70263          	beq	a4,a5,80003b20 <uartintr+0xa0>
    80003ae0:	100005b7          	lui	a1,0x10000
    80003ae4:	00003817          	auipc	a6,0x3
    80003ae8:	1cc80813          	addi	a6,a6,460 # 80006cb0 <uart_tx_buf>
    80003aec:	01c0006f          	j	80003b08 <uartintr+0x88>
    80003af0:	0006c703          	lbu	a4,0(a3)
    80003af4:	00f63023          	sd	a5,0(a2)
    80003af8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003afc:	00063783          	ld	a5,0(a2)
    80003b00:	00053703          	ld	a4,0(a0)
    80003b04:	00f70e63          	beq	a4,a5,80003b20 <uartintr+0xa0>
    80003b08:	01f7f713          	andi	a4,a5,31
    80003b0c:	00e806b3          	add	a3,a6,a4
    80003b10:	0055c703          	lbu	a4,5(a1)
    80003b14:	00178793          	addi	a5,a5,1
    80003b18:	02077713          	andi	a4,a4,32
    80003b1c:	fc071ae3          	bnez	a4,80003af0 <uartintr+0x70>
    80003b20:	01813083          	ld	ra,24(sp)
    80003b24:	01013403          	ld	s0,16(sp)
    80003b28:	00813483          	ld	s1,8(sp)
    80003b2c:	02010113          	addi	sp,sp,32
    80003b30:	00008067          	ret
    80003b34:	00002617          	auipc	a2,0x2
    80003b38:	edc60613          	addi	a2,a2,-292 # 80005a10 <uart_tx_r>
    80003b3c:	00002517          	auipc	a0,0x2
    80003b40:	edc50513          	addi	a0,a0,-292 # 80005a18 <uart_tx_w>
    80003b44:	00063783          	ld	a5,0(a2)
    80003b48:	00053703          	ld	a4,0(a0)
    80003b4c:	04f70263          	beq	a4,a5,80003b90 <uartintr+0x110>
    80003b50:	100005b7          	lui	a1,0x10000
    80003b54:	00003817          	auipc	a6,0x3
    80003b58:	15c80813          	addi	a6,a6,348 # 80006cb0 <uart_tx_buf>
    80003b5c:	01c0006f          	j	80003b78 <uartintr+0xf8>
    80003b60:	0006c703          	lbu	a4,0(a3)
    80003b64:	00f63023          	sd	a5,0(a2)
    80003b68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b6c:	00063783          	ld	a5,0(a2)
    80003b70:	00053703          	ld	a4,0(a0)
    80003b74:	02f70063          	beq	a4,a5,80003b94 <uartintr+0x114>
    80003b78:	01f7f713          	andi	a4,a5,31
    80003b7c:	00e806b3          	add	a3,a6,a4
    80003b80:	0055c703          	lbu	a4,5(a1)
    80003b84:	00178793          	addi	a5,a5,1
    80003b88:	02077713          	andi	a4,a4,32
    80003b8c:	fc071ae3          	bnez	a4,80003b60 <uartintr+0xe0>
    80003b90:	00008067          	ret
    80003b94:	00008067          	ret

0000000080003b98 <kinit>:
    80003b98:	fc010113          	addi	sp,sp,-64
    80003b9c:	02913423          	sd	s1,40(sp)
    80003ba0:	fffff7b7          	lui	a5,0xfffff
    80003ba4:	00004497          	auipc	s1,0x4
    80003ba8:	12b48493          	addi	s1,s1,299 # 80007ccf <end+0xfff>
    80003bac:	02813823          	sd	s0,48(sp)
    80003bb0:	01313c23          	sd	s3,24(sp)
    80003bb4:	00f4f4b3          	and	s1,s1,a5
    80003bb8:	02113c23          	sd	ra,56(sp)
    80003bbc:	03213023          	sd	s2,32(sp)
    80003bc0:	01413823          	sd	s4,16(sp)
    80003bc4:	01513423          	sd	s5,8(sp)
    80003bc8:	04010413          	addi	s0,sp,64
    80003bcc:	000017b7          	lui	a5,0x1
    80003bd0:	01100993          	li	s3,17
    80003bd4:	00f487b3          	add	a5,s1,a5
    80003bd8:	01b99993          	slli	s3,s3,0x1b
    80003bdc:	06f9e063          	bltu	s3,a5,80003c3c <kinit+0xa4>
    80003be0:	00003a97          	auipc	s5,0x3
    80003be4:	0f0a8a93          	addi	s5,s5,240 # 80006cd0 <end>
    80003be8:	0754ec63          	bltu	s1,s5,80003c60 <kinit+0xc8>
    80003bec:	0734fa63          	bgeu	s1,s3,80003c60 <kinit+0xc8>
    80003bf0:	00088a37          	lui	s4,0x88
    80003bf4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003bf8:	00002917          	auipc	s2,0x2
    80003bfc:	e2890913          	addi	s2,s2,-472 # 80005a20 <kmem>
    80003c00:	00ca1a13          	slli	s4,s4,0xc
    80003c04:	0140006f          	j	80003c18 <kinit+0x80>
    80003c08:	000017b7          	lui	a5,0x1
    80003c0c:	00f484b3          	add	s1,s1,a5
    80003c10:	0554e863          	bltu	s1,s5,80003c60 <kinit+0xc8>
    80003c14:	0534f663          	bgeu	s1,s3,80003c60 <kinit+0xc8>
    80003c18:	00001637          	lui	a2,0x1
    80003c1c:	00100593          	li	a1,1
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	5e4080e7          	jalr	1508(ra) # 80004208 <__memset>
    80003c2c:	00093783          	ld	a5,0(s2)
    80003c30:	00f4b023          	sd	a5,0(s1)
    80003c34:	00993023          	sd	s1,0(s2)
    80003c38:	fd4498e3          	bne	s1,s4,80003c08 <kinit+0x70>
    80003c3c:	03813083          	ld	ra,56(sp)
    80003c40:	03013403          	ld	s0,48(sp)
    80003c44:	02813483          	ld	s1,40(sp)
    80003c48:	02013903          	ld	s2,32(sp)
    80003c4c:	01813983          	ld	s3,24(sp)
    80003c50:	01013a03          	ld	s4,16(sp)
    80003c54:	00813a83          	ld	s5,8(sp)
    80003c58:	04010113          	addi	sp,sp,64
    80003c5c:	00008067          	ret
    80003c60:	00001517          	auipc	a0,0x1
    80003c64:	62850513          	addi	a0,a0,1576 # 80005288 <digits+0x18>
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	4b4080e7          	jalr	1204(ra) # 8000311c <panic>

0000000080003c70 <freerange>:
    80003c70:	fc010113          	addi	sp,sp,-64
    80003c74:	000017b7          	lui	a5,0x1
    80003c78:	02913423          	sd	s1,40(sp)
    80003c7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003c80:	009504b3          	add	s1,a0,s1
    80003c84:	fffff537          	lui	a0,0xfffff
    80003c88:	02813823          	sd	s0,48(sp)
    80003c8c:	02113c23          	sd	ra,56(sp)
    80003c90:	03213023          	sd	s2,32(sp)
    80003c94:	01313c23          	sd	s3,24(sp)
    80003c98:	01413823          	sd	s4,16(sp)
    80003c9c:	01513423          	sd	s5,8(sp)
    80003ca0:	01613023          	sd	s6,0(sp)
    80003ca4:	04010413          	addi	s0,sp,64
    80003ca8:	00a4f4b3          	and	s1,s1,a0
    80003cac:	00f487b3          	add	a5,s1,a5
    80003cb0:	06f5e463          	bltu	a1,a5,80003d18 <freerange+0xa8>
    80003cb4:	00003a97          	auipc	s5,0x3
    80003cb8:	01ca8a93          	addi	s5,s5,28 # 80006cd0 <end>
    80003cbc:	0954e263          	bltu	s1,s5,80003d40 <freerange+0xd0>
    80003cc0:	01100993          	li	s3,17
    80003cc4:	01b99993          	slli	s3,s3,0x1b
    80003cc8:	0734fc63          	bgeu	s1,s3,80003d40 <freerange+0xd0>
    80003ccc:	00058a13          	mv	s4,a1
    80003cd0:	00002917          	auipc	s2,0x2
    80003cd4:	d5090913          	addi	s2,s2,-688 # 80005a20 <kmem>
    80003cd8:	00002b37          	lui	s6,0x2
    80003cdc:	0140006f          	j	80003cf0 <freerange+0x80>
    80003ce0:	000017b7          	lui	a5,0x1
    80003ce4:	00f484b3          	add	s1,s1,a5
    80003ce8:	0554ec63          	bltu	s1,s5,80003d40 <freerange+0xd0>
    80003cec:	0534fa63          	bgeu	s1,s3,80003d40 <freerange+0xd0>
    80003cf0:	00001637          	lui	a2,0x1
    80003cf4:	00100593          	li	a1,1
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	50c080e7          	jalr	1292(ra) # 80004208 <__memset>
    80003d04:	00093703          	ld	a4,0(s2)
    80003d08:	016487b3          	add	a5,s1,s6
    80003d0c:	00e4b023          	sd	a4,0(s1)
    80003d10:	00993023          	sd	s1,0(s2)
    80003d14:	fcfa76e3          	bgeu	s4,a5,80003ce0 <freerange+0x70>
    80003d18:	03813083          	ld	ra,56(sp)
    80003d1c:	03013403          	ld	s0,48(sp)
    80003d20:	02813483          	ld	s1,40(sp)
    80003d24:	02013903          	ld	s2,32(sp)
    80003d28:	01813983          	ld	s3,24(sp)
    80003d2c:	01013a03          	ld	s4,16(sp)
    80003d30:	00813a83          	ld	s5,8(sp)
    80003d34:	00013b03          	ld	s6,0(sp)
    80003d38:	04010113          	addi	sp,sp,64
    80003d3c:	00008067          	ret
    80003d40:	00001517          	auipc	a0,0x1
    80003d44:	54850513          	addi	a0,a0,1352 # 80005288 <digits+0x18>
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	3d4080e7          	jalr	980(ra) # 8000311c <panic>

0000000080003d50 <kfree>:
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	02010413          	addi	s0,sp,32
    80003d64:	03451793          	slli	a5,a0,0x34
    80003d68:	04079c63          	bnez	a5,80003dc0 <kfree+0x70>
    80003d6c:	00003797          	auipc	a5,0x3
    80003d70:	f6478793          	addi	a5,a5,-156 # 80006cd0 <end>
    80003d74:	00050493          	mv	s1,a0
    80003d78:	04f56463          	bltu	a0,a5,80003dc0 <kfree+0x70>
    80003d7c:	01100793          	li	a5,17
    80003d80:	01b79793          	slli	a5,a5,0x1b
    80003d84:	02f57e63          	bgeu	a0,a5,80003dc0 <kfree+0x70>
    80003d88:	00001637          	lui	a2,0x1
    80003d8c:	00100593          	li	a1,1
    80003d90:	00000097          	auipc	ra,0x0
    80003d94:	478080e7          	jalr	1144(ra) # 80004208 <__memset>
    80003d98:	00002797          	auipc	a5,0x2
    80003d9c:	c8878793          	addi	a5,a5,-888 # 80005a20 <kmem>
    80003da0:	0007b703          	ld	a4,0(a5)
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	00e4b023          	sd	a4,0(s1)
    80003db0:	0097b023          	sd	s1,0(a5)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret
    80003dc0:	00001517          	auipc	a0,0x1
    80003dc4:	4c850513          	addi	a0,a0,1224 # 80005288 <digits+0x18>
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	354080e7          	jalr	852(ra) # 8000311c <panic>

0000000080003dd0 <kalloc>:
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00813823          	sd	s0,16(sp)
    80003dd8:	00913423          	sd	s1,8(sp)
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	02010413          	addi	s0,sp,32
    80003de4:	00002797          	auipc	a5,0x2
    80003de8:	c3c78793          	addi	a5,a5,-964 # 80005a20 <kmem>
    80003dec:	0007b483          	ld	s1,0(a5)
    80003df0:	02048063          	beqz	s1,80003e10 <kalloc+0x40>
    80003df4:	0004b703          	ld	a4,0(s1)
    80003df8:	00001637          	lui	a2,0x1
    80003dfc:	00500593          	li	a1,5
    80003e00:	00048513          	mv	a0,s1
    80003e04:	00e7b023          	sd	a4,0(a5)
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	400080e7          	jalr	1024(ra) # 80004208 <__memset>
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	00048513          	mv	a0,s1
    80003e1c:	00813483          	ld	s1,8(sp)
    80003e20:	02010113          	addi	sp,sp,32
    80003e24:	00008067          	ret

0000000080003e28 <initlock>:
    80003e28:	ff010113          	addi	sp,sp,-16
    80003e2c:	00813423          	sd	s0,8(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	00813403          	ld	s0,8(sp)
    80003e38:	00b53423          	sd	a1,8(a0)
    80003e3c:	00052023          	sw	zero,0(a0)
    80003e40:	00053823          	sd	zero,16(a0)
    80003e44:	01010113          	addi	sp,sp,16
    80003e48:	00008067          	ret

0000000080003e4c <acquire>:
    80003e4c:	fe010113          	addi	sp,sp,-32
    80003e50:	00813823          	sd	s0,16(sp)
    80003e54:	00913423          	sd	s1,8(sp)
    80003e58:	00113c23          	sd	ra,24(sp)
    80003e5c:	01213023          	sd	s2,0(sp)
    80003e60:	02010413          	addi	s0,sp,32
    80003e64:	00050493          	mv	s1,a0
    80003e68:	10002973          	csrr	s2,sstatus
    80003e6c:	100027f3          	csrr	a5,sstatus
    80003e70:	ffd7f793          	andi	a5,a5,-3
    80003e74:	10079073          	csrw	sstatus,a5
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	8e0080e7          	jalr	-1824(ra) # 80002758 <mycpu>
    80003e80:	07852783          	lw	a5,120(a0)
    80003e84:	06078e63          	beqz	a5,80003f00 <acquire+0xb4>
    80003e88:	fffff097          	auipc	ra,0xfffff
    80003e8c:	8d0080e7          	jalr	-1840(ra) # 80002758 <mycpu>
    80003e90:	07852783          	lw	a5,120(a0)
    80003e94:	0004a703          	lw	a4,0(s1)
    80003e98:	0017879b          	addiw	a5,a5,1
    80003e9c:	06f52c23          	sw	a5,120(a0)
    80003ea0:	04071063          	bnez	a4,80003ee0 <acquire+0x94>
    80003ea4:	00100713          	li	a4,1
    80003ea8:	00070793          	mv	a5,a4
    80003eac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003eb0:	0007879b          	sext.w	a5,a5
    80003eb4:	fe079ae3          	bnez	a5,80003ea8 <acquire+0x5c>
    80003eb8:	0ff0000f          	fence
    80003ebc:	fffff097          	auipc	ra,0xfffff
    80003ec0:	89c080e7          	jalr	-1892(ra) # 80002758 <mycpu>
    80003ec4:	01813083          	ld	ra,24(sp)
    80003ec8:	01013403          	ld	s0,16(sp)
    80003ecc:	00a4b823          	sd	a0,16(s1)
    80003ed0:	00013903          	ld	s2,0(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret
    80003ee0:	0104b903          	ld	s2,16(s1)
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	874080e7          	jalr	-1932(ra) # 80002758 <mycpu>
    80003eec:	faa91ce3          	bne	s2,a0,80003ea4 <acquire+0x58>
    80003ef0:	00001517          	auipc	a0,0x1
    80003ef4:	3a050513          	addi	a0,a0,928 # 80005290 <digits+0x20>
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	224080e7          	jalr	548(ra) # 8000311c <panic>
    80003f00:	00195913          	srli	s2,s2,0x1
    80003f04:	fffff097          	auipc	ra,0xfffff
    80003f08:	854080e7          	jalr	-1964(ra) # 80002758 <mycpu>
    80003f0c:	00197913          	andi	s2,s2,1
    80003f10:	07252e23          	sw	s2,124(a0)
    80003f14:	f75ff06f          	j	80003e88 <acquire+0x3c>

0000000080003f18 <release>:
    80003f18:	fe010113          	addi	sp,sp,-32
    80003f1c:	00813823          	sd	s0,16(sp)
    80003f20:	00113c23          	sd	ra,24(sp)
    80003f24:	00913423          	sd	s1,8(sp)
    80003f28:	01213023          	sd	s2,0(sp)
    80003f2c:	02010413          	addi	s0,sp,32
    80003f30:	00052783          	lw	a5,0(a0)
    80003f34:	00079a63          	bnez	a5,80003f48 <release+0x30>
    80003f38:	00001517          	auipc	a0,0x1
    80003f3c:	36050513          	addi	a0,a0,864 # 80005298 <digits+0x28>
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	1dc080e7          	jalr	476(ra) # 8000311c <panic>
    80003f48:	01053903          	ld	s2,16(a0)
    80003f4c:	00050493          	mv	s1,a0
    80003f50:	fffff097          	auipc	ra,0xfffff
    80003f54:	808080e7          	jalr	-2040(ra) # 80002758 <mycpu>
    80003f58:	fea910e3          	bne	s2,a0,80003f38 <release+0x20>
    80003f5c:	0004b823          	sd	zero,16(s1)
    80003f60:	0ff0000f          	fence
    80003f64:	0f50000f          	fence	iorw,ow
    80003f68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	7ec080e7          	jalr	2028(ra) # 80002758 <mycpu>
    80003f74:	100027f3          	csrr	a5,sstatus
    80003f78:	0027f793          	andi	a5,a5,2
    80003f7c:	04079a63          	bnez	a5,80003fd0 <release+0xb8>
    80003f80:	07852783          	lw	a5,120(a0)
    80003f84:	02f05e63          	blez	a5,80003fc0 <release+0xa8>
    80003f88:	fff7871b          	addiw	a4,a5,-1
    80003f8c:	06e52c23          	sw	a4,120(a0)
    80003f90:	00071c63          	bnez	a4,80003fa8 <release+0x90>
    80003f94:	07c52783          	lw	a5,124(a0)
    80003f98:	00078863          	beqz	a5,80003fa8 <release+0x90>
    80003f9c:	100027f3          	csrr	a5,sstatus
    80003fa0:	0027e793          	ori	a5,a5,2
    80003fa4:	10079073          	csrw	sstatus,a5
    80003fa8:	01813083          	ld	ra,24(sp)
    80003fac:	01013403          	ld	s0,16(sp)
    80003fb0:	00813483          	ld	s1,8(sp)
    80003fb4:	00013903          	ld	s2,0(sp)
    80003fb8:	02010113          	addi	sp,sp,32
    80003fbc:	00008067          	ret
    80003fc0:	00001517          	auipc	a0,0x1
    80003fc4:	2f850513          	addi	a0,a0,760 # 800052b8 <digits+0x48>
    80003fc8:	fffff097          	auipc	ra,0xfffff
    80003fcc:	154080e7          	jalr	340(ra) # 8000311c <panic>
    80003fd0:	00001517          	auipc	a0,0x1
    80003fd4:	2d050513          	addi	a0,a0,720 # 800052a0 <digits+0x30>
    80003fd8:	fffff097          	auipc	ra,0xfffff
    80003fdc:	144080e7          	jalr	324(ra) # 8000311c <panic>

0000000080003fe0 <holding>:
    80003fe0:	00052783          	lw	a5,0(a0)
    80003fe4:	00079663          	bnez	a5,80003ff0 <holding+0x10>
    80003fe8:	00000513          	li	a0,0
    80003fec:	00008067          	ret
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00813823          	sd	s0,16(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	00113c23          	sd	ra,24(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	01053483          	ld	s1,16(a0)
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	750080e7          	jalr	1872(ra) # 80002758 <mycpu>
    80004010:	01813083          	ld	ra,24(sp)
    80004014:	01013403          	ld	s0,16(sp)
    80004018:	40a48533          	sub	a0,s1,a0
    8000401c:	00153513          	seqz	a0,a0
    80004020:	00813483          	ld	s1,8(sp)
    80004024:	02010113          	addi	sp,sp,32
    80004028:	00008067          	ret

000000008000402c <push_off>:
    8000402c:	fe010113          	addi	sp,sp,-32
    80004030:	00813823          	sd	s0,16(sp)
    80004034:	00113c23          	sd	ra,24(sp)
    80004038:	00913423          	sd	s1,8(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	100024f3          	csrr	s1,sstatus
    80004044:	100027f3          	csrr	a5,sstatus
    80004048:	ffd7f793          	andi	a5,a5,-3
    8000404c:	10079073          	csrw	sstatus,a5
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	708080e7          	jalr	1800(ra) # 80002758 <mycpu>
    80004058:	07852783          	lw	a5,120(a0)
    8000405c:	02078663          	beqz	a5,80004088 <push_off+0x5c>
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	6f8080e7          	jalr	1784(ra) # 80002758 <mycpu>
    80004068:	07852783          	lw	a5,120(a0)
    8000406c:	01813083          	ld	ra,24(sp)
    80004070:	01013403          	ld	s0,16(sp)
    80004074:	0017879b          	addiw	a5,a5,1
    80004078:	06f52c23          	sw	a5,120(a0)
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	02010113          	addi	sp,sp,32
    80004084:	00008067          	ret
    80004088:	0014d493          	srli	s1,s1,0x1
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	6cc080e7          	jalr	1740(ra) # 80002758 <mycpu>
    80004094:	0014f493          	andi	s1,s1,1
    80004098:	06952e23          	sw	s1,124(a0)
    8000409c:	fc5ff06f          	j	80004060 <push_off+0x34>

00000000800040a0 <pop_off>:
    800040a0:	ff010113          	addi	sp,sp,-16
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	00113423          	sd	ra,8(sp)
    800040ac:	01010413          	addi	s0,sp,16
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	6a8080e7          	jalr	1704(ra) # 80002758 <mycpu>
    800040b8:	100027f3          	csrr	a5,sstatus
    800040bc:	0027f793          	andi	a5,a5,2
    800040c0:	04079663          	bnez	a5,8000410c <pop_off+0x6c>
    800040c4:	07852783          	lw	a5,120(a0)
    800040c8:	02f05a63          	blez	a5,800040fc <pop_off+0x5c>
    800040cc:	fff7871b          	addiw	a4,a5,-1
    800040d0:	06e52c23          	sw	a4,120(a0)
    800040d4:	00071c63          	bnez	a4,800040ec <pop_off+0x4c>
    800040d8:	07c52783          	lw	a5,124(a0)
    800040dc:	00078863          	beqz	a5,800040ec <pop_off+0x4c>
    800040e0:	100027f3          	csrr	a5,sstatus
    800040e4:	0027e793          	ori	a5,a5,2
    800040e8:	10079073          	csrw	sstatus,a5
    800040ec:	00813083          	ld	ra,8(sp)
    800040f0:	00013403          	ld	s0,0(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret
    800040fc:	00001517          	auipc	a0,0x1
    80004100:	1bc50513          	addi	a0,a0,444 # 800052b8 <digits+0x48>
    80004104:	fffff097          	auipc	ra,0xfffff
    80004108:	018080e7          	jalr	24(ra) # 8000311c <panic>
    8000410c:	00001517          	auipc	a0,0x1
    80004110:	19450513          	addi	a0,a0,404 # 800052a0 <digits+0x30>
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	008080e7          	jalr	8(ra) # 8000311c <panic>

000000008000411c <push_on>:
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00113c23          	sd	ra,24(sp)
    80004128:	00913423          	sd	s1,8(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	100024f3          	csrr	s1,sstatus
    80004134:	100027f3          	csrr	a5,sstatus
    80004138:	0027e793          	ori	a5,a5,2
    8000413c:	10079073          	csrw	sstatus,a5
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	618080e7          	jalr	1560(ra) # 80002758 <mycpu>
    80004148:	07852783          	lw	a5,120(a0)
    8000414c:	02078663          	beqz	a5,80004178 <push_on+0x5c>
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	608080e7          	jalr	1544(ra) # 80002758 <mycpu>
    80004158:	07852783          	lw	a5,120(a0)
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	0017879b          	addiw	a5,a5,1
    80004168:	06f52c23          	sw	a5,120(a0)
    8000416c:	00813483          	ld	s1,8(sp)
    80004170:	02010113          	addi	sp,sp,32
    80004174:	00008067          	ret
    80004178:	0014d493          	srli	s1,s1,0x1
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	5dc080e7          	jalr	1500(ra) # 80002758 <mycpu>
    80004184:	0014f493          	andi	s1,s1,1
    80004188:	06952e23          	sw	s1,124(a0)
    8000418c:	fc5ff06f          	j	80004150 <push_on+0x34>

0000000080004190 <pop_on>:
    80004190:	ff010113          	addi	sp,sp,-16
    80004194:	00813023          	sd	s0,0(sp)
    80004198:	00113423          	sd	ra,8(sp)
    8000419c:	01010413          	addi	s0,sp,16
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	5b8080e7          	jalr	1464(ra) # 80002758 <mycpu>
    800041a8:	100027f3          	csrr	a5,sstatus
    800041ac:	0027f793          	andi	a5,a5,2
    800041b0:	04078463          	beqz	a5,800041f8 <pop_on+0x68>
    800041b4:	07852783          	lw	a5,120(a0)
    800041b8:	02f05863          	blez	a5,800041e8 <pop_on+0x58>
    800041bc:	fff7879b          	addiw	a5,a5,-1
    800041c0:	06f52c23          	sw	a5,120(a0)
    800041c4:	07853783          	ld	a5,120(a0)
    800041c8:	00079863          	bnez	a5,800041d8 <pop_on+0x48>
    800041cc:	100027f3          	csrr	a5,sstatus
    800041d0:	ffd7f793          	andi	a5,a5,-3
    800041d4:	10079073          	csrw	sstatus,a5
    800041d8:	00813083          	ld	ra,8(sp)
    800041dc:	00013403          	ld	s0,0(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret
    800041e8:	00001517          	auipc	a0,0x1
    800041ec:	0f850513          	addi	a0,a0,248 # 800052e0 <digits+0x70>
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	f2c080e7          	jalr	-212(ra) # 8000311c <panic>
    800041f8:	00001517          	auipc	a0,0x1
    800041fc:	0c850513          	addi	a0,a0,200 # 800052c0 <digits+0x50>
    80004200:	fffff097          	auipc	ra,0xfffff
    80004204:	f1c080e7          	jalr	-228(ra) # 8000311c <panic>

0000000080004208 <__memset>:
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00813423          	sd	s0,8(sp)
    80004210:	01010413          	addi	s0,sp,16
    80004214:	1a060e63          	beqz	a2,800043d0 <__memset+0x1c8>
    80004218:	40a007b3          	neg	a5,a0
    8000421c:	0077f793          	andi	a5,a5,7
    80004220:	00778693          	addi	a3,a5,7
    80004224:	00b00813          	li	a6,11
    80004228:	0ff5f593          	andi	a1,a1,255
    8000422c:	fff6071b          	addiw	a4,a2,-1
    80004230:	1b06e663          	bltu	a3,a6,800043dc <__memset+0x1d4>
    80004234:	1cd76463          	bltu	a4,a3,800043fc <__memset+0x1f4>
    80004238:	1a078e63          	beqz	a5,800043f4 <__memset+0x1ec>
    8000423c:	00b50023          	sb	a1,0(a0)
    80004240:	00100713          	li	a4,1
    80004244:	1ae78463          	beq	a5,a4,800043ec <__memset+0x1e4>
    80004248:	00b500a3          	sb	a1,1(a0)
    8000424c:	00200713          	li	a4,2
    80004250:	1ae78a63          	beq	a5,a4,80004404 <__memset+0x1fc>
    80004254:	00b50123          	sb	a1,2(a0)
    80004258:	00300713          	li	a4,3
    8000425c:	18e78463          	beq	a5,a4,800043e4 <__memset+0x1dc>
    80004260:	00b501a3          	sb	a1,3(a0)
    80004264:	00400713          	li	a4,4
    80004268:	1ae78263          	beq	a5,a4,8000440c <__memset+0x204>
    8000426c:	00b50223          	sb	a1,4(a0)
    80004270:	00500713          	li	a4,5
    80004274:	1ae78063          	beq	a5,a4,80004414 <__memset+0x20c>
    80004278:	00b502a3          	sb	a1,5(a0)
    8000427c:	00700713          	li	a4,7
    80004280:	18e79e63          	bne	a5,a4,8000441c <__memset+0x214>
    80004284:	00b50323          	sb	a1,6(a0)
    80004288:	00700e93          	li	t4,7
    8000428c:	00859713          	slli	a4,a1,0x8
    80004290:	00e5e733          	or	a4,a1,a4
    80004294:	01059e13          	slli	t3,a1,0x10
    80004298:	01c76e33          	or	t3,a4,t3
    8000429c:	01859313          	slli	t1,a1,0x18
    800042a0:	006e6333          	or	t1,t3,t1
    800042a4:	02059893          	slli	a7,a1,0x20
    800042a8:	40f60e3b          	subw	t3,a2,a5
    800042ac:	011368b3          	or	a7,t1,a7
    800042b0:	02859813          	slli	a6,a1,0x28
    800042b4:	0108e833          	or	a6,a7,a6
    800042b8:	03059693          	slli	a3,a1,0x30
    800042bc:	003e589b          	srliw	a7,t3,0x3
    800042c0:	00d866b3          	or	a3,a6,a3
    800042c4:	03859713          	slli	a4,a1,0x38
    800042c8:	00389813          	slli	a6,a7,0x3
    800042cc:	00f507b3          	add	a5,a0,a5
    800042d0:	00e6e733          	or	a4,a3,a4
    800042d4:	000e089b          	sext.w	a7,t3
    800042d8:	00f806b3          	add	a3,a6,a5
    800042dc:	00e7b023          	sd	a4,0(a5)
    800042e0:	00878793          	addi	a5,a5,8
    800042e4:	fed79ce3          	bne	a5,a3,800042dc <__memset+0xd4>
    800042e8:	ff8e7793          	andi	a5,t3,-8
    800042ec:	0007871b          	sext.w	a4,a5
    800042f0:	01d787bb          	addw	a5,a5,t4
    800042f4:	0ce88e63          	beq	a7,a4,800043d0 <__memset+0x1c8>
    800042f8:	00f50733          	add	a4,a0,a5
    800042fc:	00b70023          	sb	a1,0(a4)
    80004300:	0017871b          	addiw	a4,a5,1
    80004304:	0cc77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004308:	00e50733          	add	a4,a0,a4
    8000430c:	00b70023          	sb	a1,0(a4)
    80004310:	0027871b          	addiw	a4,a5,2
    80004314:	0ac77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004318:	00e50733          	add	a4,a0,a4
    8000431c:	00b70023          	sb	a1,0(a4)
    80004320:	0037871b          	addiw	a4,a5,3
    80004324:	0ac77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004328:	00e50733          	add	a4,a0,a4
    8000432c:	00b70023          	sb	a1,0(a4)
    80004330:	0047871b          	addiw	a4,a5,4
    80004334:	08c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004338:	00e50733          	add	a4,a0,a4
    8000433c:	00b70023          	sb	a1,0(a4)
    80004340:	0057871b          	addiw	a4,a5,5
    80004344:	08c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004348:	00e50733          	add	a4,a0,a4
    8000434c:	00b70023          	sb	a1,0(a4)
    80004350:	0067871b          	addiw	a4,a5,6
    80004354:	06c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004358:	00e50733          	add	a4,a0,a4
    8000435c:	00b70023          	sb	a1,0(a4)
    80004360:	0077871b          	addiw	a4,a5,7
    80004364:	06c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004368:	00e50733          	add	a4,a0,a4
    8000436c:	00b70023          	sb	a1,0(a4)
    80004370:	0087871b          	addiw	a4,a5,8
    80004374:	04c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004378:	00e50733          	add	a4,a0,a4
    8000437c:	00b70023          	sb	a1,0(a4)
    80004380:	0097871b          	addiw	a4,a5,9
    80004384:	04c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004388:	00e50733          	add	a4,a0,a4
    8000438c:	00b70023          	sb	a1,0(a4)
    80004390:	00a7871b          	addiw	a4,a5,10
    80004394:	02c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    80004398:	00e50733          	add	a4,a0,a4
    8000439c:	00b70023          	sb	a1,0(a4)
    800043a0:	00b7871b          	addiw	a4,a5,11
    800043a4:	02c77663          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    800043a8:	00e50733          	add	a4,a0,a4
    800043ac:	00b70023          	sb	a1,0(a4)
    800043b0:	00c7871b          	addiw	a4,a5,12
    800043b4:	00c77e63          	bgeu	a4,a2,800043d0 <__memset+0x1c8>
    800043b8:	00e50733          	add	a4,a0,a4
    800043bc:	00b70023          	sb	a1,0(a4)
    800043c0:	00d7879b          	addiw	a5,a5,13
    800043c4:	00c7f663          	bgeu	a5,a2,800043d0 <__memset+0x1c8>
    800043c8:	00f507b3          	add	a5,a0,a5
    800043cc:	00b78023          	sb	a1,0(a5)
    800043d0:	00813403          	ld	s0,8(sp)
    800043d4:	01010113          	addi	sp,sp,16
    800043d8:	00008067          	ret
    800043dc:	00b00693          	li	a3,11
    800043e0:	e55ff06f          	j	80004234 <__memset+0x2c>
    800043e4:	00300e93          	li	t4,3
    800043e8:	ea5ff06f          	j	8000428c <__memset+0x84>
    800043ec:	00100e93          	li	t4,1
    800043f0:	e9dff06f          	j	8000428c <__memset+0x84>
    800043f4:	00000e93          	li	t4,0
    800043f8:	e95ff06f          	j	8000428c <__memset+0x84>
    800043fc:	00000793          	li	a5,0
    80004400:	ef9ff06f          	j	800042f8 <__memset+0xf0>
    80004404:	00200e93          	li	t4,2
    80004408:	e85ff06f          	j	8000428c <__memset+0x84>
    8000440c:	00400e93          	li	t4,4
    80004410:	e7dff06f          	j	8000428c <__memset+0x84>
    80004414:	00500e93          	li	t4,5
    80004418:	e75ff06f          	j	8000428c <__memset+0x84>
    8000441c:	00600e93          	li	t4,6
    80004420:	e6dff06f          	j	8000428c <__memset+0x84>

0000000080004424 <__memmove>:
    80004424:	ff010113          	addi	sp,sp,-16
    80004428:	00813423          	sd	s0,8(sp)
    8000442c:	01010413          	addi	s0,sp,16
    80004430:	0e060863          	beqz	a2,80004520 <__memmove+0xfc>
    80004434:	fff6069b          	addiw	a3,a2,-1
    80004438:	0006881b          	sext.w	a6,a3
    8000443c:	0ea5e863          	bltu	a1,a0,8000452c <__memmove+0x108>
    80004440:	00758713          	addi	a4,a1,7
    80004444:	00a5e7b3          	or	a5,a1,a0
    80004448:	40a70733          	sub	a4,a4,a0
    8000444c:	0077f793          	andi	a5,a5,7
    80004450:	00f73713          	sltiu	a4,a4,15
    80004454:	00174713          	xori	a4,a4,1
    80004458:	0017b793          	seqz	a5,a5
    8000445c:	00e7f7b3          	and	a5,a5,a4
    80004460:	10078863          	beqz	a5,80004570 <__memmove+0x14c>
    80004464:	00900793          	li	a5,9
    80004468:	1107f463          	bgeu	a5,a6,80004570 <__memmove+0x14c>
    8000446c:	0036581b          	srliw	a6,a2,0x3
    80004470:	fff8081b          	addiw	a6,a6,-1
    80004474:	02081813          	slli	a6,a6,0x20
    80004478:	01d85893          	srli	a7,a6,0x1d
    8000447c:	00858813          	addi	a6,a1,8
    80004480:	00058793          	mv	a5,a1
    80004484:	00050713          	mv	a4,a0
    80004488:	01088833          	add	a6,a7,a6
    8000448c:	0007b883          	ld	a7,0(a5)
    80004490:	00878793          	addi	a5,a5,8
    80004494:	00870713          	addi	a4,a4,8
    80004498:	ff173c23          	sd	a7,-8(a4)
    8000449c:	ff0798e3          	bne	a5,a6,8000448c <__memmove+0x68>
    800044a0:	ff867713          	andi	a4,a2,-8
    800044a4:	02071793          	slli	a5,a4,0x20
    800044a8:	0207d793          	srli	a5,a5,0x20
    800044ac:	00f585b3          	add	a1,a1,a5
    800044b0:	40e686bb          	subw	a3,a3,a4
    800044b4:	00f507b3          	add	a5,a0,a5
    800044b8:	06e60463          	beq	a2,a4,80004520 <__memmove+0xfc>
    800044bc:	0005c703          	lbu	a4,0(a1)
    800044c0:	00e78023          	sb	a4,0(a5)
    800044c4:	04068e63          	beqz	a3,80004520 <__memmove+0xfc>
    800044c8:	0015c603          	lbu	a2,1(a1)
    800044cc:	00100713          	li	a4,1
    800044d0:	00c780a3          	sb	a2,1(a5)
    800044d4:	04e68663          	beq	a3,a4,80004520 <__memmove+0xfc>
    800044d8:	0025c603          	lbu	a2,2(a1)
    800044dc:	00200713          	li	a4,2
    800044e0:	00c78123          	sb	a2,2(a5)
    800044e4:	02e68e63          	beq	a3,a4,80004520 <__memmove+0xfc>
    800044e8:	0035c603          	lbu	a2,3(a1)
    800044ec:	00300713          	li	a4,3
    800044f0:	00c781a3          	sb	a2,3(a5)
    800044f4:	02e68663          	beq	a3,a4,80004520 <__memmove+0xfc>
    800044f8:	0045c603          	lbu	a2,4(a1)
    800044fc:	00400713          	li	a4,4
    80004500:	00c78223          	sb	a2,4(a5)
    80004504:	00e68e63          	beq	a3,a4,80004520 <__memmove+0xfc>
    80004508:	0055c603          	lbu	a2,5(a1)
    8000450c:	00500713          	li	a4,5
    80004510:	00c782a3          	sb	a2,5(a5)
    80004514:	00e68663          	beq	a3,a4,80004520 <__memmove+0xfc>
    80004518:	0065c703          	lbu	a4,6(a1)
    8000451c:	00e78323          	sb	a4,6(a5)
    80004520:	00813403          	ld	s0,8(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret
    8000452c:	02061713          	slli	a4,a2,0x20
    80004530:	02075713          	srli	a4,a4,0x20
    80004534:	00e587b3          	add	a5,a1,a4
    80004538:	f0f574e3          	bgeu	a0,a5,80004440 <__memmove+0x1c>
    8000453c:	02069613          	slli	a2,a3,0x20
    80004540:	02065613          	srli	a2,a2,0x20
    80004544:	fff64613          	not	a2,a2
    80004548:	00e50733          	add	a4,a0,a4
    8000454c:	00c78633          	add	a2,a5,a2
    80004550:	fff7c683          	lbu	a3,-1(a5)
    80004554:	fff78793          	addi	a5,a5,-1
    80004558:	fff70713          	addi	a4,a4,-1
    8000455c:	00d70023          	sb	a3,0(a4)
    80004560:	fec798e3          	bne	a5,a2,80004550 <__memmove+0x12c>
    80004564:	00813403          	ld	s0,8(sp)
    80004568:	01010113          	addi	sp,sp,16
    8000456c:	00008067          	ret
    80004570:	02069713          	slli	a4,a3,0x20
    80004574:	02075713          	srli	a4,a4,0x20
    80004578:	00170713          	addi	a4,a4,1
    8000457c:	00e50733          	add	a4,a0,a4
    80004580:	00050793          	mv	a5,a0
    80004584:	0005c683          	lbu	a3,0(a1)
    80004588:	00178793          	addi	a5,a5,1
    8000458c:	00158593          	addi	a1,a1,1
    80004590:	fed78fa3          	sb	a3,-1(a5)
    80004594:	fee798e3          	bne	a5,a4,80004584 <__memmove+0x160>
    80004598:	f89ff06f          	j	80004520 <__memmove+0xfc>

000000008000459c <__putc>:
    8000459c:	fe010113          	addi	sp,sp,-32
    800045a0:	00813823          	sd	s0,16(sp)
    800045a4:	00113c23          	sd	ra,24(sp)
    800045a8:	02010413          	addi	s0,sp,32
    800045ac:	00050793          	mv	a5,a0
    800045b0:	fef40593          	addi	a1,s0,-17
    800045b4:	00100613          	li	a2,1
    800045b8:	00000513          	li	a0,0
    800045bc:	fef407a3          	sb	a5,-17(s0)
    800045c0:	fffff097          	auipc	ra,0xfffff
    800045c4:	b3c080e7          	jalr	-1220(ra) # 800030fc <console_write>
    800045c8:	01813083          	ld	ra,24(sp)
    800045cc:	01013403          	ld	s0,16(sp)
    800045d0:	02010113          	addi	sp,sp,32
    800045d4:	00008067          	ret

00000000800045d8 <__getc>:
    800045d8:	fe010113          	addi	sp,sp,-32
    800045dc:	00813823          	sd	s0,16(sp)
    800045e0:	00113c23          	sd	ra,24(sp)
    800045e4:	02010413          	addi	s0,sp,32
    800045e8:	fe840593          	addi	a1,s0,-24
    800045ec:	00100613          	li	a2,1
    800045f0:	00000513          	li	a0,0
    800045f4:	fffff097          	auipc	ra,0xfffff
    800045f8:	ae8080e7          	jalr	-1304(ra) # 800030dc <console_read>
    800045fc:	fe844503          	lbu	a0,-24(s0)
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret

0000000080004610 <console_handler>:
    80004610:	fe010113          	addi	sp,sp,-32
    80004614:	00813823          	sd	s0,16(sp)
    80004618:	00113c23          	sd	ra,24(sp)
    8000461c:	00913423          	sd	s1,8(sp)
    80004620:	02010413          	addi	s0,sp,32
    80004624:	14202773          	csrr	a4,scause
    80004628:	100027f3          	csrr	a5,sstatus
    8000462c:	0027f793          	andi	a5,a5,2
    80004630:	06079e63          	bnez	a5,800046ac <console_handler+0x9c>
    80004634:	00074c63          	bltz	a4,8000464c <console_handler+0x3c>
    80004638:	01813083          	ld	ra,24(sp)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	02010113          	addi	sp,sp,32
    80004648:	00008067          	ret
    8000464c:	0ff77713          	andi	a4,a4,255
    80004650:	00900793          	li	a5,9
    80004654:	fef712e3          	bne	a4,a5,80004638 <console_handler+0x28>
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	6dc080e7          	jalr	1756(ra) # 80002d34 <plic_claim>
    80004660:	00a00793          	li	a5,10
    80004664:	00050493          	mv	s1,a0
    80004668:	02f50c63          	beq	a0,a5,800046a0 <console_handler+0x90>
    8000466c:	fc0506e3          	beqz	a0,80004638 <console_handler+0x28>
    80004670:	00050593          	mv	a1,a0
    80004674:	00001517          	auipc	a0,0x1
    80004678:	b7450513          	addi	a0,a0,-1164 # 800051e8 <CONSOLE_STATUS+0x1d8>
    8000467c:	fffff097          	auipc	ra,0xfffff
    80004680:	afc080e7          	jalr	-1284(ra) # 80003178 <__printf>
    80004684:	01013403          	ld	s0,16(sp)
    80004688:	01813083          	ld	ra,24(sp)
    8000468c:	00048513          	mv	a0,s1
    80004690:	00813483          	ld	s1,8(sp)
    80004694:	02010113          	addi	sp,sp,32
    80004698:	ffffe317          	auipc	t1,0xffffe
    8000469c:	6d430067          	jr	1748(t1) # 80002d6c <plic_complete>
    800046a0:	fffff097          	auipc	ra,0xfffff
    800046a4:	3e0080e7          	jalr	992(ra) # 80003a80 <uartintr>
    800046a8:	fddff06f          	j	80004684 <console_handler+0x74>
    800046ac:	00001517          	auipc	a0,0x1
    800046b0:	c3c50513          	addi	a0,a0,-964 # 800052e8 <digits+0x78>
    800046b4:	fffff097          	auipc	ra,0xfffff
    800046b8:	a68080e7          	jalr	-1432(ra) # 8000311c <panic>
	...
