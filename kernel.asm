
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	88013103          	ld	sp,-1920(sp) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	028020ef          	jal	ra,80002044 <start>

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

0000000080001118 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    # a0 = &old->context
    # a1 = &new->context
    sd ra, 0 * 8(a0)
    80001118:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000111c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001120:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001124:	0085b103          	ld	sp,8(a1)

    80001128:	00008067          	ret

000000008000112c <_Z15thread_dispatchv>:

class _sem{
    int id;
};

void thread_dispatch() {
    8000112c:	ff010113          	addi	sp,sp,-16
    80001130:	00813423          	sd	s0,8(sp)
    80001134:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001138:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000113c:	00000073          	ecall
    80001140:	00813403          	ld	s0,8(sp)
    80001144:	01010113          	addi	sp,sp,16
    80001148:	00008067          	ret

000000008000114c <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    8000114c:	fe010113          	addi	sp,sp,-32
    80001150:	00113c23          	sd	ra,24(sp)
    80001154:	00813823          	sd	s0,16(sp)
    80001158:	00913423          	sd	s1,8(sp)
    8000115c:	01213023          	sd	s2,0(sp)
    80001160:	02010413          	addi	s0,sp,32
    80001164:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001168:	00100793          	li	a5,1
    8000116c:	02a7f863          	bgeu	a5,a0,8000119c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001170:	00a00793          	li	a5,10
    80001174:	02f577b3          	remu	a5,a0,a5
    80001178:	02078e63          	beqz	a5,800011b4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000117c:	fff48513          	addi	a0,s1,-1
    80001180:	00000097          	auipc	ra,0x0
    80001184:	fcc080e7          	jalr	-52(ra) # 8000114c <_ZL9fibonaccim>
    80001188:	00050913          	mv	s2,a0
    8000118c:	ffe48513          	addi	a0,s1,-2
    80001190:	00000097          	auipc	ra,0x0
    80001194:	fbc080e7          	jalr	-68(ra) # 8000114c <_ZL9fibonaccim>
    80001198:	00a90533          	add	a0,s2,a0
}
    8000119c:	01813083          	ld	ra,24(sp)
    800011a0:	01013403          	ld	s0,16(sp)
    800011a4:	00813483          	ld	s1,8(sp)
    800011a8:	00013903          	ld	s2,0(sp)
    800011ac:	02010113          	addi	sp,sp,32
    800011b0:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    800011b4:	00001097          	auipc	ra,0x1
    800011b8:	8fc080e7          	jalr	-1796(ra) # 80001ab0 <_ZN3TCB5yieldEv>
    800011bc:	fc1ff06f          	j	8000117c <_ZL9fibonaccim+0x30>

00000000800011c0 <_Z11workerBodyAv>:
{
    800011c0:	fe010113          	addi	sp,sp,-32
    800011c4:	00113c23          	sd	ra,24(sp)
    800011c8:	00813823          	sd	s0,16(sp)
    800011cc:	00913423          	sd	s1,8(sp)
    800011d0:	01213023          	sd	s2,0(sp)
    800011d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800011d8:	00000913          	li	s2,0
    800011dc:	0380006f          	j	80001214 <_Z11workerBodyAv+0x54>
            TCB::yield();
    800011e0:	00001097          	auipc	ra,0x1
    800011e4:	8d0080e7          	jalr	-1840(ra) # 80001ab0 <_ZN3TCB5yieldEv>
        for (uint64 j = 0; j < 10000; j++)
    800011e8:	00148493          	addi	s1,s1,1
    800011ec:	000027b7          	lui	a5,0x2
    800011f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800011f4:	0097ee63          	bltu	a5,s1,80001210 <_Z11workerBodyAv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    800011f8:	00000713          	li	a4,0
    800011fc:	000077b7          	lui	a5,0x7
    80001200:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001204:	fce7eee3          	bltu	a5,a4,800011e0 <_Z11workerBodyAv+0x20>
    80001208:	00170713          	addi	a4,a4,1
    8000120c:	ff1ff06f          	j	800011fc <_Z11workerBodyAv+0x3c>
    for (uint64 i = 0; i < 10; i++)
    80001210:	00190913          	addi	s2,s2,1
    80001214:	00900793          	li	a5,9
    80001218:	0527e063          	bltu	a5,s2,80001258 <_Z11workerBodyAv+0x98>
        printString("A: i=");
    8000121c:	00004517          	auipc	a0,0x4
    80001220:	e0450513          	addi	a0,a0,-508 # 80005020 <CONSOLE_STATUS+0x10>
    80001224:	00000097          	auipc	ra,0x0
    80001228:	37c080e7          	jalr	892(ra) # 800015a0 <_Z11printStringPKc>
        printInt(i);
    8000122c:	00000613          	li	a2,0
    80001230:	00a00593          	li	a1,10
    80001234:	0009051b          	sext.w	a0,s2
    80001238:	00000097          	auipc	ra,0x0
    8000123c:	518080e7          	jalr	1304(ra) # 80001750 <_Z8printIntiii>
        printString("\n");
    80001240:	00004517          	auipc	a0,0x4
    80001244:	e8050513          	addi	a0,a0,-384 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	358080e7          	jalr	856(ra) # 800015a0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001250:	00000493          	li	s1,0
    80001254:	f99ff06f          	j	800011ec <_Z11workerBodyAv+0x2c>
}
    80001258:	01813083          	ld	ra,24(sp)
    8000125c:	01013403          	ld	s0,16(sp)
    80001260:	00813483          	ld	s1,8(sp)
    80001264:	00013903          	ld	s2,0(sp)
    80001268:	02010113          	addi	sp,sp,32
    8000126c:	00008067          	ret

0000000080001270 <_Z11workerBodyBv>:
{
    80001270:	fe010113          	addi	sp,sp,-32
    80001274:	00113c23          	sd	ra,24(sp)
    80001278:	00813823          	sd	s0,16(sp)
    8000127c:	00913423          	sd	s1,8(sp)
    80001280:	01213023          	sd	s2,0(sp)
    80001284:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001288:	00000913          	li	s2,0
    8000128c:	0380006f          	j	800012c4 <_Z11workerBodyBv+0x54>
            TCB::yield();
    80001290:	00001097          	auipc	ra,0x1
    80001294:	820080e7          	jalr	-2016(ra) # 80001ab0 <_ZN3TCB5yieldEv>
        for (uint64 j = 0; j < 10000; j++)
    80001298:	00148493          	addi	s1,s1,1
    8000129c:	000027b7          	lui	a5,0x2
    800012a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012a4:	0097ee63          	bltu	a5,s1,800012c0 <_Z11workerBodyBv+0x50>
            for (uint64 k = 0; k < 30000; k++)
    800012a8:	00000713          	li	a4,0
    800012ac:	000077b7          	lui	a5,0x7
    800012b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800012b4:	fce7eee3          	bltu	a5,a4,80001290 <_Z11workerBodyBv+0x20>
    800012b8:	00170713          	addi	a4,a4,1
    800012bc:	ff1ff06f          	j	800012ac <_Z11workerBodyBv+0x3c>
    for (uint64 i = 0; i < 16; i++)
    800012c0:	00190913          	addi	s2,s2,1
    800012c4:	00f00793          	li	a5,15
    800012c8:	0527e063          	bltu	a5,s2,80001308 <_Z11workerBodyBv+0x98>
        printString("B: i=");
    800012cc:	00004517          	auipc	a0,0x4
    800012d0:	d5c50513          	addi	a0,a0,-676 # 80005028 <CONSOLE_STATUS+0x18>
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	2cc080e7          	jalr	716(ra) # 800015a0 <_Z11printStringPKc>
        printInt(i);
    800012dc:	00000613          	li	a2,0
    800012e0:	00a00593          	li	a1,10
    800012e4:	0009051b          	sext.w	a0,s2
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	468080e7          	jalr	1128(ra) # 80001750 <_Z8printIntiii>
        printString("\n");
    800012f0:	00004517          	auipc	a0,0x4
    800012f4:	dd050513          	addi	a0,a0,-560 # 800050c0 <CONSOLE_STATUS+0xb0>
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	2a8080e7          	jalr	680(ra) # 800015a0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001300:	00000493          	li	s1,0
    80001304:	f99ff06f          	j	8000129c <_Z11workerBodyBv+0x2c>
}
    80001308:	01813083          	ld	ra,24(sp)
    8000130c:	01013403          	ld	s0,16(sp)
    80001310:	00813483          	ld	s1,8(sp)
    80001314:	00013903          	ld	s2,0(sp)
    80001318:	02010113          	addi	sp,sp,32
    8000131c:	00008067          	ret

0000000080001320 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001320:	fe010113          	addi	sp,sp,-32
    80001324:	00113c23          	sd	ra,24(sp)
    80001328:	00813823          	sd	s0,16(sp)
    8000132c:	00913423          	sd	s1,8(sp)
    80001330:	01213023          	sd	s2,0(sp)
    80001334:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001338:	00000493          	li	s1,0
    8000133c:	0400006f          	j	8000137c <_Z11workerBodyCv+0x5c>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001340:	00004517          	auipc	a0,0x4
    80001344:	cf050513          	addi	a0,a0,-784 # 80005030 <CONSOLE_STATUS+0x20>
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	258080e7          	jalr	600(ra) # 800015a0 <_Z11printStringPKc>
        printInt(i);
    80001350:	00000613          	li	a2,0
    80001354:	00a00593          	li	a1,10
    80001358:	00048513          	mv	a0,s1
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	3f4080e7          	jalr	1012(ra) # 80001750 <_Z8printIntiii>
        printString("\n");
    80001364:	00004517          	auipc	a0,0x4
    80001368:	d5c50513          	addi	a0,a0,-676 # 800050c0 <CONSOLE_STATUS+0xb0>
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	234080e7          	jalr	564(ra) # 800015a0 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001374:	0014849b          	addiw	s1,s1,1
    80001378:	0ff4f493          	andi	s1,s1,255
    8000137c:	00200793          	li	a5,2
    80001380:	fc97f0e3          	bgeu	a5,s1,80001340 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001384:	00004517          	auipc	a0,0x4
    80001388:	cb450513          	addi	a0,a0,-844 # 80005038 <CONSOLE_STATUS+0x28>
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	214080e7          	jalr	532(ra) # 800015a0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001394:	00700313          	li	t1,7
    TCB::yield();
    80001398:	00000097          	auipc	ra,0x0
    8000139c:	718080e7          	jalr	1816(ra) # 80001ab0 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013a0:	00030913          	mv	s2,t1

    printString("C: t1=");
    800013a4:	00004517          	auipc	a0,0x4
    800013a8:	ca450513          	addi	a0,a0,-860 # 80005048 <CONSOLE_STATUS+0x38>
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	1f4080e7          	jalr	500(ra) # 800015a0 <_Z11printStringPKc>
    printInt(t1);
    800013b4:	00000613          	li	a2,0
    800013b8:	00a00593          	li	a1,10
    800013bc:	0009051b          	sext.w	a0,s2
    800013c0:	00000097          	auipc	ra,0x0
    800013c4:	390080e7          	jalr	912(ra) # 80001750 <_Z8printIntiii>
    printString("\n");
    800013c8:	00004517          	auipc	a0,0x4
    800013cc:	cf850513          	addi	a0,a0,-776 # 800050c0 <CONSOLE_STATUS+0xb0>
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	1d0080e7          	jalr	464(ra) # 800015a0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800013d8:	00c00513          	li	a0,12
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	d70080e7          	jalr	-656(ra) # 8000114c <_ZL9fibonaccim>
    800013e4:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800013e8:	00004517          	auipc	a0,0x4
    800013ec:	c6850513          	addi	a0,a0,-920 # 80005050 <CONSOLE_STATUS+0x40>
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	1b0080e7          	jalr	432(ra) # 800015a0 <_Z11printStringPKc>
    printInt(result);
    800013f8:	00000613          	li	a2,0
    800013fc:	00a00593          	li	a1,10
    80001400:	0009051b          	sext.w	a0,s2
    80001404:	00000097          	auipc	ra,0x0
    80001408:	34c080e7          	jalr	844(ra) # 80001750 <_Z8printIntiii>
    printString("\n");
    8000140c:	00004517          	auipc	a0,0x4
    80001410:	cb450513          	addi	a0,a0,-844 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001414:	00000097          	auipc	ra,0x0
    80001418:	18c080e7          	jalr	396(ra) # 800015a0 <_Z11printStringPKc>
    8000141c:	0400006f          	j	8000145c <_Z11workerBodyCv+0x13c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001420:	00004517          	auipc	a0,0x4
    80001424:	c1050513          	addi	a0,a0,-1008 # 80005030 <CONSOLE_STATUS+0x20>
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	178080e7          	jalr	376(ra) # 800015a0 <_Z11printStringPKc>
        printInt(i);
    80001430:	00000613          	li	a2,0
    80001434:	00a00593          	li	a1,10
    80001438:	00048513          	mv	a0,s1
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	314080e7          	jalr	788(ra) # 80001750 <_Z8printIntiii>
        printString("\n");
    80001444:	00004517          	auipc	a0,0x4
    80001448:	c7c50513          	addi	a0,a0,-900 # 800050c0 <CONSOLE_STATUS+0xb0>
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	154080e7          	jalr	340(ra) # 800015a0 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001454:	0014849b          	addiw	s1,s1,1
    80001458:	0ff4f493          	andi	s1,s1,255
    8000145c:	00500793          	li	a5,5
    80001460:	fc97f0e3          	bgeu	a5,s1,80001420 <_Z11workerBodyCv+0x100>
    }
//    TCB::yield();
}
    80001464:	01813083          	ld	ra,24(sp)
    80001468:	01013403          	ld	s0,16(sp)
    8000146c:	00813483          	ld	s1,8(sp)
    80001470:	00013903          	ld	s2,0(sp)
    80001474:	02010113          	addi	sp,sp,32
    80001478:	00008067          	ret

000000008000147c <_Z11workerBodyDv>:

void workerBodyD()
{
    8000147c:	fe010113          	addi	sp,sp,-32
    80001480:	00113c23          	sd	ra,24(sp)
    80001484:	00813823          	sd	s0,16(sp)
    80001488:	00913423          	sd	s1,8(sp)
    8000148c:	01213023          	sd	s2,0(sp)
    80001490:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001494:	00a00493          	li	s1,10
    80001498:	0400006f          	j	800014d8 <_Z11workerBodyDv+0x5c>
    for (; i < 13; i++)
    {
        printString("D: i=");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	bc450513          	addi	a0,a0,-1084 # 80005060 <CONSOLE_STATUS+0x50>
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	0fc080e7          	jalr	252(ra) # 800015a0 <_Z11printStringPKc>
        printInt(i);
    800014ac:	00000613          	li	a2,0
    800014b0:	00a00593          	li	a1,10
    800014b4:	00048513          	mv	a0,s1
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	298080e7          	jalr	664(ra) # 80001750 <_Z8printIntiii>
        printString("\n");
    800014c0:	00004517          	auipc	a0,0x4
    800014c4:	c0050513          	addi	a0,a0,-1024 # 800050c0 <CONSOLE_STATUS+0xb0>
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	0d8080e7          	jalr	216(ra) # 800015a0 <_Z11printStringPKc>
    for (; i < 13; i++)
    800014d0:	0014849b          	addiw	s1,s1,1
    800014d4:	0ff4f493          	andi	s1,s1,255
    800014d8:	00c00793          	li	a5,12
    800014dc:	fc97f0e3          	bgeu	a5,s1,8000149c <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800014e0:	00004517          	auipc	a0,0x4
    800014e4:	b8850513          	addi	a0,a0,-1144 # 80005068 <CONSOLE_STATUS+0x58>
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	0b8080e7          	jalr	184(ra) # 800015a0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800014f0:	00500313          	li	t1,5
    TCB::yield();
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	5bc080e7          	jalr	1468(ra) # 80001ab0 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800014fc:	01000513          	li	a0,16
    80001500:	00000097          	auipc	ra,0x0
    80001504:	c4c080e7          	jalr	-948(ra) # 8000114c <_ZL9fibonaccim>
    80001508:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b6c50513          	addi	a0,a0,-1172 # 80005078 <CONSOLE_STATUS+0x68>
    80001514:	00000097          	auipc	ra,0x0
    80001518:	08c080e7          	jalr	140(ra) # 800015a0 <_Z11printStringPKc>
    printInt(result);
    8000151c:	00000613          	li	a2,0
    80001520:	00a00593          	li	a1,10
    80001524:	0009051b          	sext.w	a0,s2
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	228080e7          	jalr	552(ra) # 80001750 <_Z8printIntiii>
    printString("\n");
    80001530:	00004517          	auipc	a0,0x4
    80001534:	b9050513          	addi	a0,a0,-1136 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	068080e7          	jalr	104(ra) # 800015a0 <_Z11printStringPKc>
    80001540:	0400006f          	j	80001580 <_Z11workerBodyDv+0x104>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001544:	00004517          	auipc	a0,0x4
    80001548:	b1c50513          	addi	a0,a0,-1252 # 80005060 <CONSOLE_STATUS+0x50>
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	054080e7          	jalr	84(ra) # 800015a0 <_Z11printStringPKc>
        printInt(i);
    80001554:	00000613          	li	a2,0
    80001558:	00a00593          	li	a1,10
    8000155c:	00048513          	mv	a0,s1
    80001560:	00000097          	auipc	ra,0x0
    80001564:	1f0080e7          	jalr	496(ra) # 80001750 <_Z8printIntiii>
        printString("\n");
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	b5850513          	addi	a0,a0,-1192 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001570:	00000097          	auipc	ra,0x0
    80001574:	030080e7          	jalr	48(ra) # 800015a0 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001578:	0014849b          	addiw	s1,s1,1
    8000157c:	0ff4f493          	andi	s1,s1,255
    80001580:	00f00793          	li	a5,15
    80001584:	fc97f0e3          	bgeu	a5,s1,80001544 <_Z11workerBodyDv+0xc8>
    }
//    TCB::yield();
    80001588:	01813083          	ld	ra,24(sp)
    8000158c:	01013403          	ld	s0,16(sp)
    80001590:	00813483          	ld	s1,8(sp)
    80001594:	00013903          	ld	s2,0(sp)
    80001598:	02010113          	addi	sp,sp,32
    8000159c:	00008067          	ret

00000000800015a0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800015a0:	fe010113          	addi	sp,sp,-32
    800015a4:	00113c23          	sd	ra,24(sp)
    800015a8:	00813823          	sd	s0,16(sp)
    800015ac:	00913423          	sd	s1,8(sp)
    800015b0:	02010413          	addi	s0,sp,32
    800015b4:	00050493          	mv	s1,a0
    LOCK();
    800015b8:	00100613          	li	a2,1
    800015bc:	00000593          	li	a1,0
    800015c0:	00004517          	auipc	a0,0x4
    800015c4:	32050513          	addi	a0,a0,800 # 800058e0 <lockPrint>
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	b30080e7          	jalr	-1232(ra) # 800010f8 <copy_and_swap>
    800015d0:	00050863          	beqz	a0,800015e0 <_Z11printStringPKc+0x40>
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	b58080e7          	jalr	-1192(ra) # 8000112c <_Z15thread_dispatchv>
    800015dc:	fddff06f          	j	800015b8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800015e0:	0004c503          	lbu	a0,0(s1)
    800015e4:	00050a63          	beqz	a0,800015f8 <_Z11printStringPKc+0x58>
    {
        __putc(*string);
    800015e8:	00003097          	auipc	ra,0x3
    800015ec:	b24080e7          	jalr	-1244(ra) # 8000410c <__putc>
        string++;
    800015f0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800015f4:	fedff06f          	j	800015e0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800015f8:	00000613          	li	a2,0
    800015fc:	00100593          	li	a1,1
    80001600:	00004517          	auipc	a0,0x4
    80001604:	2e050513          	addi	a0,a0,736 # 800058e0 <lockPrint>
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	af0080e7          	jalr	-1296(ra) # 800010f8 <copy_and_swap>
    80001610:	fe0514e3          	bnez	a0,800015f8 <_Z11printStringPKc+0x58>
}
    80001614:	01813083          	ld	ra,24(sp)
    80001618:	01013403          	ld	s0,16(sp)
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	02010113          	addi	sp,sp,32
    80001624:	00008067          	ret

0000000080001628 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001628:	fd010113          	addi	sp,sp,-48
    8000162c:	02113423          	sd	ra,40(sp)
    80001630:	02813023          	sd	s0,32(sp)
    80001634:	00913c23          	sd	s1,24(sp)
    80001638:	01213823          	sd	s2,16(sp)
    8000163c:	01313423          	sd	s3,8(sp)
    80001640:	01413023          	sd	s4,0(sp)
    80001644:	03010413          	addi	s0,sp,48
    80001648:	00050993          	mv	s3,a0
    8000164c:	00058a13          	mv	s4,a1
    LOCK();
    80001650:	00100613          	li	a2,1
    80001654:	00000593          	li	a1,0
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	28850513          	addi	a0,a0,648 # 800058e0 <lockPrint>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	a98080e7          	jalr	-1384(ra) # 800010f8 <copy_and_swap>
    80001668:	00050863          	beqz	a0,80001678 <_Z9getStringPci+0x50>
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	ac0080e7          	jalr	-1344(ra) # 8000112c <_Z15thread_dispatchv>
    80001674:	fddff06f          	j	80001650 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001678:	00000913          	li	s2,0
    8000167c:	00090493          	mv	s1,s2
    80001680:	0019091b          	addiw	s2,s2,1
    80001684:	03495a63          	bge	s2,s4,800016b8 <_Z9getStringPci+0x90>
        cc = __getc();
    80001688:	00003097          	auipc	ra,0x3
    8000168c:	ac0080e7          	jalr	-1344(ra) # 80004148 <__getc>
        if(cc < 1)
    80001690:	02050463          	beqz	a0,800016b8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80001694:	009984b3          	add	s1,s3,s1
    80001698:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000169c:	00a00793          	li	a5,10
    800016a0:	00f50a63          	beq	a0,a5,800016b4 <_Z9getStringPci+0x8c>
    800016a4:	00d00793          	li	a5,13
    800016a8:	fcf51ae3          	bne	a0,a5,8000167c <_Z9getStringPci+0x54>
        buf[i++] = c;
    800016ac:	00090493          	mv	s1,s2
    800016b0:	0080006f          	j	800016b8 <_Z9getStringPci+0x90>
    800016b4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800016b8:	009984b3          	add	s1,s3,s1
    800016bc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800016c0:	00000613          	li	a2,0
    800016c4:	00100593          	li	a1,1
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	21850513          	addi	a0,a0,536 # 800058e0 <lockPrint>
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	a28080e7          	jalr	-1496(ra) # 800010f8 <copy_and_swap>
    800016d8:	fe0514e3          	bnez	a0,800016c0 <_Z9getStringPci+0x98>
    return buf;
}
    800016dc:	00098513          	mv	a0,s3
    800016e0:	02813083          	ld	ra,40(sp)
    800016e4:	02013403          	ld	s0,32(sp)
    800016e8:	01813483          	ld	s1,24(sp)
    800016ec:	01013903          	ld	s2,16(sp)
    800016f0:	00813983          	ld	s3,8(sp)
    800016f4:	00013a03          	ld	s4,0(sp)
    800016f8:	03010113          	addi	sp,sp,48
    800016fc:	00008067          	ret

0000000080001700 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00813423          	sd	s0,8(sp)
    80001708:	01010413          	addi	s0,sp,16
    8000170c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001710:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001714:	0006c603          	lbu	a2,0(a3)
    80001718:	fd06071b          	addiw	a4,a2,-48
    8000171c:	0ff77713          	andi	a4,a4,255
    80001720:	00900793          	li	a5,9
    80001724:	02e7e063          	bltu	a5,a4,80001744 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001728:	0025179b          	slliw	a5,a0,0x2
    8000172c:	00a787bb          	addw	a5,a5,a0
    80001730:	0017979b          	slliw	a5,a5,0x1
    80001734:	00168693          	addi	a3,a3,1
    80001738:	00c787bb          	addw	a5,a5,a2
    8000173c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001740:	fd5ff06f          	j	80001714 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001744:	00813403          	ld	s0,8(sp)
    80001748:	01010113          	addi	sp,sp,16
    8000174c:	00008067          	ret

0000000080001750 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001750:	fc010113          	addi	sp,sp,-64
    80001754:	02113c23          	sd	ra,56(sp)
    80001758:	02813823          	sd	s0,48(sp)
    8000175c:	02913423          	sd	s1,40(sp)
    80001760:	03213023          	sd	s2,32(sp)
    80001764:	01313c23          	sd	s3,24(sp)
    80001768:	04010413          	addi	s0,sp,64
    8000176c:	00050493          	mv	s1,a0
    80001770:	00058913          	mv	s2,a1
    80001774:	00060993          	mv	s3,a2
    LOCK();
    80001778:	00100613          	li	a2,1
    8000177c:	00000593          	li	a1,0
    80001780:	00004517          	auipc	a0,0x4
    80001784:	16050513          	addi	a0,a0,352 # 800058e0 <lockPrint>
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	970080e7          	jalr	-1680(ra) # 800010f8 <copy_and_swap>
    80001790:	00050863          	beqz	a0,800017a0 <_Z8printIntiii+0x50>
    80001794:	00000097          	auipc	ra,0x0
    80001798:	998080e7          	jalr	-1640(ra) # 8000112c <_Z15thread_dispatchv>
    8000179c:	fddff06f          	j	80001778 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800017a0:	00098463          	beqz	s3,800017a8 <_Z8printIntiii+0x58>
    800017a4:	0804c463          	bltz	s1,8000182c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800017a8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800017ac:	00000593          	li	a1,0
    }

    i = 0;
    800017b0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800017b4:	0009079b          	sext.w	a5,s2
    800017b8:	0325773b          	remuw	a4,a0,s2
    800017bc:	00048613          	mv	a2,s1
    800017c0:	0014849b          	addiw	s1,s1,1
    800017c4:	02071693          	slli	a3,a4,0x20
    800017c8:	0206d693          	srli	a3,a3,0x20
    800017cc:	00004717          	auipc	a4,0x4
    800017d0:	07470713          	addi	a4,a4,116 # 80005840 <digits>
    800017d4:	00d70733          	add	a4,a4,a3
    800017d8:	00074683          	lbu	a3,0(a4)
    800017dc:	fd040713          	addi	a4,s0,-48
    800017e0:	00c70733          	add	a4,a4,a2
    800017e4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800017e8:	0005071b          	sext.w	a4,a0
    800017ec:	0325553b          	divuw	a0,a0,s2
    800017f0:	fcf772e3          	bgeu	a4,a5,800017b4 <_Z8printIntiii+0x64>
    if(neg)
    800017f4:	00058c63          	beqz	a1,8000180c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800017f8:	fd040793          	addi	a5,s0,-48
    800017fc:	009784b3          	add	s1,a5,s1
    80001800:	02d00793          	li	a5,45
    80001804:	fef48823          	sb	a5,-16(s1)
    80001808:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000180c:	fff4849b          	addiw	s1,s1,-1
    80001810:	0204c463          	bltz	s1,80001838 <_Z8printIntiii+0xe8>
        __putc(buf[i]);
    80001814:	fd040793          	addi	a5,s0,-48
    80001818:	009787b3          	add	a5,a5,s1
    8000181c:	ff07c503          	lbu	a0,-16(a5)
    80001820:	00003097          	auipc	ra,0x3
    80001824:	8ec080e7          	jalr	-1812(ra) # 8000410c <__putc>
    80001828:	fe5ff06f          	j	8000180c <_Z8printIntiii+0xbc>
        x = -xx;
    8000182c:	4090053b          	negw	a0,s1
        neg = 1;
    80001830:	00100593          	li	a1,1
        x = -xx;
    80001834:	f7dff06f          	j	800017b0 <_Z8printIntiii+0x60>

    UNLOCK();
    80001838:	00000613          	li	a2,0
    8000183c:	00100593          	li	a1,1
    80001840:	00004517          	auipc	a0,0x4
    80001844:	0a050513          	addi	a0,a0,160 # 800058e0 <lockPrint>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	8b0080e7          	jalr	-1872(ra) # 800010f8 <copy_and_swap>
    80001850:	fe0514e3          	bnez	a0,80001838 <_Z8printIntiii+0xe8>
    80001854:	03813083          	ld	ra,56(sp)
    80001858:	03013403          	ld	s0,48(sp)
    8000185c:	02813483          	ld	s1,40(sp)
    80001860:	02013903          	ld	s2,32(sp)
    80001864:	01813983          	ld	s3,24(sp)
    80001868:	04010113          	addi	sp,sp,64
    8000186c:	00008067          	ret

0000000080001870 <main>:
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/printing.hpp"

int main() {
    80001870:	fc010113          	addi	sp,sp,-64
    80001874:	02113c23          	sd	ra,56(sp)
    80001878:	02813823          	sd	s0,48(sp)
    8000187c:	02913423          	sd	s1,40(sp)
    80001880:	03213023          	sd	s2,32(sp)
    80001884:	04010413          	addi	s0,sp,64
    MemoryAllocator::initFreeSegment();
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	764080e7          	jalr	1892(ra) # 80001fec <_ZN15MemoryAllocator15initFreeSegmentEv>

    TCB* threads[3];

    threads[0] = TCB::createThread(nullptr);
    80001890:	00000513          	li	a0,0
    80001894:	00000097          	auipc	ra,0x0
    80001898:	0ec080e7          	jalr	236(ra) # 80001980 <_ZN3TCB12createThreadEPFvvE>
    8000189c:	fca43423          	sd	a0,-56(s0)
    TCB::running = threads[0];
    800018a0:	00004797          	auipc	a5,0x4
    800018a4:	fe87b783          	ld	a5,-24(a5) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018a8:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    800018ac:	00004517          	auipc	a0,0x4
    800018b0:	fcc53503          	ld	a0,-52(a0) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	0cc080e7          	jalr	204(ra) # 80001980 <_ZN3TCB12createThreadEPFvvE>
    800018bc:	fca43823          	sd	a0,-48(s0)
    printString("Coroutine A created\n");
    800018c0:	00003517          	auipc	a0,0x3
    800018c4:	7c850513          	addi	a0,a0,1992 # 80005088 <CONSOLE_STATUS+0x78>
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	cd8080e7          	jalr	-808(ra) # 800015a0 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    800018d0:	00004517          	auipc	a0,0x4
    800018d4:	fa053503          	ld	a0,-96(a0) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	0a8080e7          	jalr	168(ra) # 80001980 <_ZN3TCB12createThreadEPFvvE>
    800018e0:	fca43c23          	sd	a0,-40(s0)
    printString("Coroutine B created\n");
    800018e4:	00003517          	auipc	a0,0x3
    800018e8:	7bc50513          	addi	a0,a0,1980 # 800050a0 <CONSOLE_STATUS+0x90>
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	cb4080e7          	jalr	-844(ra) # 800015a0 <_Z11printStringPKc>
    800018f4:	00c0006f          	j	80001900 <main+0x90>

    while(!(threads[1]->isFinished() && threads[2]->isFinished())) TCB::yield();
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	1b8080e7          	jalr	440(ra) # 80001ab0 <_ZN3TCB5yieldEv>
    80001900:	fd043783          	ld	a5,-48(s0)

class TCB {
public:
    ~TCB(){ delete[] stack; }

    bool isFinished() const { return finished; }
    80001904:	0207c783          	lbu	a5,32(a5)
    80001908:	fe0788e3          	beqz	a5,800018f8 <main+0x88>
    8000190c:	fd843783          	ld	a5,-40(s0)
    80001910:	0207c783          	lbu	a5,32(a5)
    80001914:	fe0782e3          	beqz	a5,800018f8 <main+0x88>
    80001918:	fc840493          	addi	s1,s0,-56
    8000191c:	0140006f          	j	80001930 <main+0xc0>

    for(auto &thread : threads) {
        delete thread;
    80001920:	00090513          	mv	a0,s2
    80001924:	00000097          	auipc	ra,0x0
    80001928:	214080e7          	jalr	532(ra) # 80001b38 <_ZdlPv>
    for(auto &thread : threads) {
    8000192c:	00848493          	addi	s1,s1,8
    80001930:	fe040793          	addi	a5,s0,-32
    80001934:	02f48063          	beq	s1,a5,80001954 <main+0xe4>
        delete thread;
    80001938:	0004b903          	ld	s2,0(s1)
    8000193c:	fe0908e3          	beqz	s2,8000192c <main+0xbc>
    ~TCB(){ delete[] stack; }
    80001940:	00893503          	ld	a0,8(s2)
    80001944:	fc050ee3          	beqz	a0,80001920 <main+0xb0>
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	218080e7          	jalr	536(ra) # 80001b60 <_ZdaPv>
    80001950:	fd1ff06f          	j	80001920 <main+0xb0>
    }
    printString("Finished\n");
    80001954:	00003517          	auipc	a0,0x3
    80001958:	76450513          	addi	a0,a0,1892 # 800050b8 <CONSOLE_STATUS+0xa8>
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	c44080e7          	jalr	-956(ra) # 800015a0 <_Z11printStringPKc>

    return 0;
    80001964:	00000513          	li	a0,0
    80001968:	03813083          	ld	ra,56(sp)
    8000196c:	03013403          	ld	s0,48(sp)
    80001970:	02813483          	ld	s1,40(sp)
    80001974:	02013903          	ld	s2,32(sp)
    80001978:	04010113          	addi	sp,sp,64
    8000197c:	00008067          	ret

0000000080001980 <_ZN3TCB12createThreadEPFvvE>:
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

TCB* TCB::running = nullptr;

TCB* TCB::createThread(Body body) {
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	01213023          	sd	s2,0(sp)
    80001994:	02010413          	addi	s0,sp,32
    80001998:	00050913          	mv	s2,a0
    return new TCB(body);
    8000199c:	02800513          	li	a0,40
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	148080e7          	jalr	328(ra) # 80001ae8 <_Znwm>
    800019a8:	00050493          	mv	s1,a0
        stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
        context({
            body != nullptr ? (uint64) body : 0,
            stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0
        }),
        finished(false) {
    800019ac:	01253023          	sd	s2,0(a0)
        stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800019b0:	00090a63          	beqz	s2,800019c4 <_ZN3TCB12createThreadEPFvvE+0x44>
    800019b4:	00002537          	lui	a0,0x2
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	158080e7          	jalr	344(ra) # 80001b10 <_Znam>
    800019c0:	0080006f          	j	800019c8 <_ZN3TCB12createThreadEPFvvE+0x48>
    800019c4:	00000513          	li	a0,0
        finished(false) {
    800019c8:	00a4b423          	sd	a0,8(s1)
            body != nullptr ? (uint64) body : 0,
    800019cc:	02090a63          	beqz	s2,80001a00 <_ZN3TCB12createThreadEPFvvE+0x80>
    800019d0:	00090793          	mv	a5,s2
        finished(false) {
    800019d4:	00f4b823          	sd	a5,16(s1)
            stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0
    800019d8:	02050863          	beqz	a0,80001a08 <_ZN3TCB12createThreadEPFvvE+0x88>
    800019dc:	000027b7          	lui	a5,0x2
    800019e0:	00f50533          	add	a0,a0,a5
        finished(false) {
    800019e4:	00a4bc23          	sd	a0,24(s1)
    800019e8:	02048023          	sb	zero,32(s1)
        if(body != nullptr) Scheduler::put(this);
    800019ec:	04090063          	beqz	s2,80001a2c <_ZN3TCB12createThreadEPFvvE+0xac>
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	23c080e7          	jalr	572(ra) # 80001c30 <_ZN9Scheduler3putEP3TCB>
    800019fc:	0300006f          	j	80001a2c <_ZN3TCB12createThreadEPFvvE+0xac>
            body != nullptr ? (uint64) body : 0,
    80001a00:	00000793          	li	a5,0
    80001a04:	fd1ff06f          	j	800019d4 <_ZN3TCB12createThreadEPFvvE+0x54>
            stack != nullptr ? (uint64)&stack[STACK_SIZE] : 0
    80001a08:	00000513          	li	a0,0
    80001a0c:	fd9ff06f          	j	800019e4 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001a10:	00050913          	mv	s2,a0
    80001a14:	00048513          	mv	a0,s1
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	120080e7          	jalr	288(ra) # 80001b38 <_ZdlPv>
    80001a20:	00090513          	mv	a0,s2
    80001a24:	00005097          	auipc	ra,0x5
    80001a28:	fb4080e7          	jalr	-76(ra) # 800069d8 <_Unwind_Resume>
}
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	01813083          	ld	ra,24(sp)
    80001a34:	01013403          	ld	s0,16(sp)
    80001a38:	00813483          	ld	s1,8(sp)
    80001a3c:	00013903          	ld	s2,0(sp)
    80001a40:	02010113          	addi	sp,sp,32
    80001a44:	00008067          	ret

0000000080001a48 <_ZN3TCB8dispatchEv>:
    TCB::dispatch();

    Riscv::popRegisters();
}

void TCB::dispatch() {
    80001a48:	fe010113          	addi	sp,sp,-32
    80001a4c:	00113c23          	sd	ra,24(sp)
    80001a50:	00813823          	sd	s0,16(sp)
    80001a54:	00913423          	sd	s1,8(sp)
    80001a58:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001a5c:	00004497          	auipc	s1,0x4
    80001a60:	e8c4b483          	ld	s1,-372(s1) # 800058e8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001a64:	0204c783          	lbu	a5,32(s1)
    if(!old->isFinished()){ Scheduler::put(old); }
    80001a68:	02078c63          	beqz	a5,80001aa0 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	15c080e7          	jalr	348(ra) # 80001bc8 <_ZN9Scheduler3getEv>
    80001a74:	00004797          	auipc	a5,0x4
    80001a78:	e6a7ba23          	sd	a0,-396(a5) # 800058e8 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80001a7c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001a80:	01048513          	addi	a0,s1,16
    80001a84:	fffff097          	auipc	ra,0xfffff
    80001a88:	694080e7          	jalr	1684(ra) # 80001118 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80001a8c:	01813083          	ld	ra,24(sp)
    80001a90:	01013403          	ld	s0,16(sp)
    80001a94:	00813483          	ld	s1,8(sp)
    80001a98:	02010113          	addi	sp,sp,32
    80001a9c:	00008067          	ret
    if(!old->isFinished()){ Scheduler::put(old); }
    80001aa0:	00048513          	mv	a0,s1
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	18c080e7          	jalr	396(ra) # 80001c30 <_ZN9Scheduler3putEP3TCB>
    80001aac:	fc1ff06f          	j	80001a6c <_ZN3TCB8dispatchEv+0x24>

0000000080001ab0 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001ac0:	fffff097          	auipc	ra,0xfffff
    80001ac4:	540080e7          	jalr	1344(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	f80080e7          	jalr	-128(ra) # 80001a48 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80001ad0:	fffff097          	auipc	ra,0xfffff
    80001ad4:	5ac080e7          	jalr	1452(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    80001ad8:	00813083          	ld	ra,8(sp)
    80001adc:	00013403          	ld	s0,0(sp)
    80001ae0:	01010113          	addi	sp,sp,16
    80001ae4:	00008067          	ret

0000000080001ae8 <_Znwm>:
#include "../h/syscall_cpp.hpp"

void *operator new (size_t size){
    80001ae8:	ff010113          	addi	sp,sp,-16
    80001aec:	00113423          	sd	ra,8(sp)
    80001af0:	00813023          	sd	s0,0(sp)
    80001af4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	2f0080e7          	jalr	752(ra) # 80001de8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001b00:	00813083          	ld	ra,8(sp)
    80001b04:	00013403          	ld	s0,0(sp)
    80001b08:	01010113          	addi	sp,sp,16
    80001b0c:	00008067          	ret

0000000080001b10 <_Znam>:

void *operator new[] (size_t size){
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00113423          	sd	ra,8(sp)
    80001b18:	00813023          	sd	s0,0(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	2c8080e7          	jalr	712(ra) # 80001de8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001b28:	00813083          	ld	ra,8(sp)
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <_ZdlPv>:

void operator delete (void *ptr) noexcept {
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00113423          	sd	ra,8(sp)
    80001b40:	00813023          	sd	s0,0(sp)
    80001b44:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	398080e7          	jalr	920(ra) # 80001ee0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001b50:	00813083          	ld	ra,8(sp)
    80001b54:	00013403          	ld	s0,0(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_ZdaPv>:

void operator delete[] (void *ptr) noexcept {
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00113423          	sd	ra,8(sp)
    80001b68:	00813023          	sd	s0,0(sp)
    80001b6c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	370080e7          	jalr	880(ra) # 80001ee0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001b78:	00813083          	ld	ra,8(sp)
    80001b7c:	00013403          	ld	s0,0(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB* tcb) {
    readyThreadQueue.addLast(tcb);
    80001b88:	ff010113          	addi	sp,sp,-16
    80001b8c:	00813423          	sd	s0,8(sp)
    80001b90:	01010413          	addi	s0,sp,16
    80001b94:	00100793          	li	a5,1
    80001b98:	00f50863          	beq	a0,a5,80001ba8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b9c:	00813403          	ld	s0,8(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	00008067          	ret
    80001ba8:	000107b7          	lui	a5,0x10
    80001bac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001bb0:	fef596e3          	bne	a1,a5,80001b9c <_Z41__static_initialization_and_destruction_0ii+0x14>

#include "MemoryAllocator.hpp"

template <typename T> class List {
public:
    List() : head(0), tail(0) {}
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	d3c78793          	addi	a5,a5,-708 # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
    80001bbc:	0007b023          	sd	zero,0(a5)
    80001bc0:	0007b423          	sd	zero,8(a5)
    80001bc4:	fd9ff06f          	j	80001b9c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001bc8 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00113c23          	sd	ra,24(sp)
    80001bd0:	00813823          	sd	s0,16(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	02010413          	addi	s0,sp,32
            tail = element;
        } else head = tail = element;
    }

    T* removeFirst() {
        if(!head) return nullptr;
    80001bdc:	00004517          	auipc	a0,0x4
    80001be0:	d1453503          	ld	a0,-748(a0) # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
    80001be4:	04050263          	beqz	a0,80001c28 <_ZN9Scheduler3getEv+0x60>
        Element* element = head;
        head = head->next;
    80001be8:	00853783          	ld	a5,8(a0)
    80001bec:	00004717          	auipc	a4,0x4
    80001bf0:	d0f73223          	sd	a5,-764(a4) # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
        if(!head) tail = nullptr;
    80001bf4:	02078463          	beqz	a5,80001c1c <_ZN9Scheduler3getEv+0x54>

        T* result = element->item;
    80001bf8:	00053483          	ld	s1,0(a0)
        void* operator new[](size_t size){
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void* ptr){
            MemoryAllocator::mem_free(ptr);
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	2e4080e7          	jalr	740(ra) # 80001ee0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001c04:	00048513          	mv	a0,s1
    80001c08:	01813083          	ld	ra,24(sp)
    80001c0c:	01013403          	ld	s0,16(sp)
    80001c10:	00813483          	ld	s1,8(sp)
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00008067          	ret
        if(!head) tail = nullptr;
    80001c1c:	00004797          	auipc	a5,0x4
    80001c20:	cc07be23          	sd	zero,-804(a5) # 800058f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c24:	fd5ff06f          	j	80001bf8 <_ZN9Scheduler3getEv+0x30>
        if(!head) return nullptr;
    80001c28:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001c2c:	fd9ff06f          	j	80001c04 <_ZN9Scheduler3getEv+0x3c>

0000000080001c30 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB* tcb) {
    80001c30:	fe010113          	addi	sp,sp,-32
    80001c34:	00113c23          	sd	ra,24(sp)
    80001c38:	00813823          	sd	s0,16(sp)
    80001c3c:	00913423          	sd	s1,8(sp)
    80001c40:	02010413          	addi	s0,sp,32
    80001c44:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80001c48:	01000513          	li	a0,16
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	19c080e7          	jalr	412(ra) # 80001de8 <_ZN15MemoryAllocator9mem_allocEm>
        Element(T* item, Element* next) : item(item), next(next) {}
    80001c54:	00953023          	sd	s1,0(a0)
    80001c58:	00053423          	sd	zero,8(a0)
        if(tail) {
    80001c5c:	00004797          	auipc	a5,0x4
    80001c60:	c9c7b783          	ld	a5,-868(a5) # 800058f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c64:	02078263          	beqz	a5,80001c88 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = element;
    80001c68:	00a7b423          	sd	a0,8(a5)
            tail = element;
    80001c6c:	00004797          	auipc	a5,0x4
    80001c70:	c8a7b623          	sd	a0,-884(a5) # 800058f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c74:	01813083          	ld	ra,24(sp)
    80001c78:	01013403          	ld	s0,16(sp)
    80001c7c:	00813483          	ld	s1,8(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret
        } else head = tail = element;
    80001c88:	00004797          	auipc	a5,0x4
    80001c8c:	c6878793          	addi	a5,a5,-920 # 800058f0 <_ZN9Scheduler16readyThreadQueueE>
    80001c90:	00a7b423          	sd	a0,8(a5)
    80001c94:	00a7b023          	sd	a0,0(a5)
    80001c98:	fddff06f          	j	80001c74 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c9c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    80001cac:	000105b7          	lui	a1,0x10
    80001cb0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001cb4:	00100513          	li	a0,1
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	ed0080e7          	jalr	-304(ra) # 80001b88 <_Z41__static_initialization_and_destruction_0ii>
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00813423          	sd	s0,8(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    80001cdc:	00050e63          	beqz	a0,80001cf8 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    80001ce0:	00053783          	ld	a5,0(a0)
    80001ce4:	00078a63          	beqz	a5,80001cf8 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    80001ce8:	00853683          	ld	a3,8(a0)
    80001cec:	01068713          	addi	a4,a3,16
    80001cf0:	00e50733          	add	a4,a0,a4
    80001cf4:	00e78863          	beq	a5,a4,80001d04 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    80001cf8:	00813403          	ld	s0,8(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    80001d04:	0087b703          	ld	a4,8(a5)
    80001d08:	00e686b3          	add	a3,a3,a4
    80001d0c:	01068693          	addi	a3,a3,16
    80001d10:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    80001d14:	0007b783          	ld	a5,0(a5)
    80001d18:	00f53023          	sd	a5,0(a0)
    80001d1c:	fddff06f          	j	80001cf8 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

0000000080001d20 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00813423          	sd	s0,8(sp)
    80001d28:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80001d2c:	02050063          	beqz	a0,80001d4c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    80001d30:	00064e63          	bltz	a2,80001d4c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    80001d34:	00100793          	li	a5,1
    80001d38:	00c7ca63          	blt	a5,a2,80001d4c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80001d3c:	00058e63          	beqz	a1,80001d58 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    80001d40:	0005b783          	ld	a5,0(a1)
    80001d44:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    80001d48:	00a5b023          	sd	a0,0(a1)
    }
}
    80001d4c:	00813403          	ld	s0,8(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret
        if(code == 0) {
    80001d58:	00061e63          	bnez	a2,80001d74 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    80001d5c:	00004797          	auipc	a5,0x4
    80001d60:	ba478793          	addi	a5,a5,-1116 # 80005900 <_ZN15MemoryAllocator17head_free_segmentE>
    80001d64:	0007b703          	ld	a4,0(a5)
    80001d68:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    80001d6c:	00a7b023          	sd	a0,0(a5)
    80001d70:	fddff06f          	j	80001d4c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    80001d74:	00004797          	auipc	a5,0x4
    80001d78:	b8c78793          	addi	a5,a5,-1140 # 80005900 <_ZN15MemoryAllocator17head_free_segmentE>
    80001d7c:	0087b703          	ld	a4,8(a5)
    80001d80:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    80001d84:	00a7b423          	sd	a0,8(a5)
    80001d88:	fc5ff06f          	j	80001d4c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

0000000080001d8c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00813423          	sd	s0,8(sp)
    80001d94:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    80001d98:	02050063          	beqz	a0,80001db8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80001d9c:	00064e63          	bltz	a2,80001db8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    80001da0:	00100793          	li	a5,1
    80001da4:	00c7ca63          	blt	a5,a2,80001db8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    80001da8:	00058e63          	beqz	a1,80001dc4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    80001dac:	00053783          	ld	a5,0(a0)
    80001db0:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    80001db4:	00053023          	sd	zero,0(a0)
}
    80001db8:	00813403          	ld	s0,8(sp)
    80001dbc:	01010113          	addi	sp,sp,16
    80001dc0:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    80001dc4:	00061a63          	bnez	a2,80001dd8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    80001dc8:	00053783          	ld	a5,0(a0)
    80001dcc:	00004717          	auipc	a4,0x4
    80001dd0:	b2f73a23          	sd	a5,-1228(a4) # 80005900 <_ZN15MemoryAllocator17head_free_segmentE>
    80001dd4:	fe1ff06f          	j	80001db4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    80001dd8:	00053783          	ld	a5,0(a0)
    80001ddc:	00004717          	auipc	a4,0x4
    80001de0:	b2f73623          	sd	a5,-1236(a4) # 80005908 <_ZN15MemoryAllocator17head_data_segmentE>
    80001de4:	fd1ff06f          	j	80001db4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

0000000080001de8 <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    80001de8:	fd010113          	addi	sp,sp,-48
    80001dec:	02113423          	sd	ra,40(sp)
    80001df0:	02813023          	sd	s0,32(sp)
    80001df4:	00913c23          	sd	s1,24(sp)
    80001df8:	01213823          	sd	s2,16(sp)
    80001dfc:	01313423          	sd	s3,8(sp)
    80001e00:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    80001e04:	0c050a63          	beqz	a0,80001ed8 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80001e08:	03f50513          	addi	a0,a0,63
    80001e0c:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80001e10:	00004497          	auipc	s1,0x4
    80001e14:	af04b483          	ld	s1,-1296(s1) # 80005900 <_ZN15MemoryAllocator17head_free_segmentE>
    80001e18:	00000993          	li	s3,0
    80001e1c:	08048e63          	beqz	s1,80001eb8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    80001e20:	0084b783          	ld	a5,8(s1)
    80001e24:	0127f863          	bgeu	a5,s2,80001e34 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80001e28:	00048993          	mv	s3,s1
    80001e2c:	0004b483          	ld	s1,0(s1)
    80001e30:	fedff06f          	j	80001e1c <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    80001e34:	00000613          	li	a2,0
    80001e38:	00098593          	mv	a1,s3
    80001e3c:	00048513          	mv	a0,s1
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	f4c080e7          	jalr	-180(ra) # 80001d8c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    80001e48:	0084b783          	ld	a5,8(s1)
    80001e4c:	41278733          	sub	a4,a5,s2
    80001e50:	00f00693          	li	a3,15
    80001e54:	02e6e463          	bltu	a3,a4,80001e7c <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    80001e58:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    80001e5c:	00004797          	auipc	a5,0x4
    80001e60:	aac7b783          	ld	a5,-1364(a5) # 80005908 <_ZN15MemoryAllocator17head_data_segmentE>
    80001e64:	00000593          	li	a1,0
    80001e68:	02078e63          	beqz	a5,80001ea4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80001e6c:	0297fc63          	bgeu	a5,s1,80001ea4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80001e70:	00078593          	mv	a1,a5
    80001e74:	0007b783          	ld	a5,0(a5)
    80001e78:	ff1ff06f          	j	80001e68 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    80001e7c:	01090513          	addi	a0,s2,16
    80001e80:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    80001e84:	ff070713          	addi	a4,a4,-16
    80001e88:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    80001e8c:	00000613          	li	a2,0
    80001e90:	00098593          	mv	a1,s3
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	e8c080e7          	jalr	-372(ra) # 80001d20 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    80001e9c:	00090793          	mv	a5,s2
    80001ea0:	fb9ff06f          	j	80001e58 <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    80001ea4:	00100613          	li	a2,1
    80001ea8:	00048513          	mv	a0,s1
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	e74080e7          	jalr	-396(ra) # 80001d20 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    80001eb4:	01048493          	addi	s1,s1,16
}
    80001eb8:	00048513          	mv	a0,s1
    80001ebc:	02813083          	ld	ra,40(sp)
    80001ec0:	02013403          	ld	s0,32(sp)
    80001ec4:	01813483          	ld	s1,24(sp)
    80001ec8:	01013903          	ld	s2,16(sp)
    80001ecc:	00813983          	ld	s3,8(sp)
    80001ed0:	03010113          	addi	sp,sp,48
    80001ed4:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    80001ed8:	00000493          	li	s1,0
    80001edc:	fddff06f          	j	80001eb8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>

0000000080001ee0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80001ee0:	0c050863          	beqz	a0,80001fb0 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80001ee4:	00004797          	auipc	a5,0x4
    80001ee8:	9847b783          	ld	a5,-1660(a5) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001eec:	0007b783          	ld	a5,0(a5)
    80001ef0:	0cf56463          	bltu	a0,a5,80001fb8 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001ef4:	00004797          	auipc	a5,0x4
    80001ef8:	99c7b783          	ld	a5,-1636(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001efc:	0007b783          	ld	a5,0(a5)
    80001f00:	0cf57063          	bgeu	a0,a5,80001fc0 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    80001f04:	fe010113          	addi	sp,sp,-32
    80001f08:	00113c23          	sd	ra,24(sp)
    80001f0c:	00813823          	sd	s0,16(sp)
    80001f10:	00913423          	sd	s1,8(sp)
    80001f14:	01213023          	sd	s2,0(sp)
    80001f18:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80001f1c:	00004497          	auipc	s1,0x4
    80001f20:	9ec4b483          	ld	s1,-1556(s1) # 80005908 <_ZN15MemoryAllocator17head_data_segmentE>
    80001f24:	00000593          	li	a1,0
    80001f28:	0a048063          	beqz	s1,80001fc8 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    80001f2c:	01048793          	addi	a5,s1,16
    80001f30:	00a78a63          	beq	a5,a0,80001f44 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    80001f34:	0af56863          	bltu	a0,a5,80001fe4 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80001f38:	00048593          	mv	a1,s1
    80001f3c:	0004b483          	ld	s1,0(s1)
    80001f40:	fe9ff06f          	j	80001f28 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    80001f44:	00100613          	li	a2,1
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	e40080e7          	jalr	-448(ra) # 80001d8c <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    80001f54:	00004917          	auipc	s2,0x4
    80001f58:	9ac93903          	ld	s2,-1620(s2) # 80005900 <_ZN15MemoryAllocator17head_free_segmentE>
    80001f5c:	0080006f          	j	80001f64 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80001f60:	00078913          	mv	s2,a5
    80001f64:	00090863          	beqz	s2,80001f74 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80001f68:	00093783          	ld	a5,0(s2)
    80001f6c:	00078463          	beqz	a5,80001f74 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80001f70:	fe97e8e3          	bltu	a5,s1,80001f60 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    80001f74:	0124f463          	bgeu	s1,s2,80001f7c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80001f78:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    80001f7c:	00000613          	li	a2,0
    80001f80:	00090593          	mv	a1,s2
    80001f84:	00048513          	mv	a0,s1
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	d98080e7          	jalr	-616(ra) # 80001d20 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	d3c080e7          	jalr	-708(ra) # 80001cd0 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    80001f9c:	00090513          	mv	a0,s2
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	d30080e7          	jalr	-720(ra) # 80001cd0 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    80001fa8:	00000513          	li	a0,0
    80001fac:	0200006f          	j	80001fcc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80001fb0:	fff00513          	li	a0,-1
    80001fb4:	00008067          	ret
    80001fb8:	fff00513          	li	a0,-1
    80001fbc:	00008067          	ret
    80001fc0:	fff00513          	li	a0,-1
}
    80001fc4:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80001fc8:	ffe00513          	li	a0,-2
}
    80001fcc:	01813083          	ld	ra,24(sp)
    80001fd0:	01013403          	ld	s0,16(sp)
    80001fd4:	00813483          	ld	s1,8(sp)
    80001fd8:	00013903          	ld	s2,0(sp)
    80001fdc:	02010113          	addi	sp,sp,32
    80001fe0:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80001fe4:	ffe00513          	li	a0,-2
    80001fe8:	fe5ff06f          	j	80001fcc <_ZN15MemoryAllocator8mem_freeEPv+0xec>

0000000080001fec <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    80001ff8:	00004697          	auipc	a3,0x4
    80001ffc:	8706b683          	ld	a3,-1936(a3) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002000:	0006b783          	ld	a5,0(a3)
    80002004:	00004717          	auipc	a4,0x4
    80002008:	8fc70713          	addi	a4,a4,-1796 # 80005900 <_ZN15MemoryAllocator17head_free_segmentE>
    8000200c:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    80002010:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    80002014:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    80002018:	00004797          	auipc	a5,0x4
    8000201c:	8787b783          	ld	a5,-1928(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002020:	0007b783          	ld	a5,0(a5)
    80002024:	0006b683          	ld	a3,0(a3)
    80002028:	40d787b3          	sub	a5,a5,a3
    8000202c:	00073703          	ld	a4,0(a4)
    80002030:	ff078793          	addi	a5,a5,-16
    80002034:	00f73423          	sd	a5,8(a4)
}
    80002038:	00813403          	ld	s0,8(sp)
    8000203c:	01010113          	addi	sp,sp,16
    80002040:	00008067          	ret

0000000080002044 <start>:
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    80002050:	300027f3          	csrr	a5,mstatus
    80002054:	ffffe737          	lui	a4,0xffffe
    80002058:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c8f>
    8000205c:	00e7f7b3          	and	a5,a5,a4
    80002060:	00001737          	lui	a4,0x1
    80002064:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002068:	00e7e7b3          	or	a5,a5,a4
    8000206c:	30079073          	csrw	mstatus,a5
    80002070:	00000797          	auipc	a5,0x0
    80002074:	16078793          	addi	a5,a5,352 # 800021d0 <system_main>
    80002078:	34179073          	csrw	mepc,a5
    8000207c:	00000793          	li	a5,0
    80002080:	18079073          	csrw	satp,a5
    80002084:	000107b7          	lui	a5,0x10
    80002088:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000208c:	30279073          	csrw	medeleg,a5
    80002090:	30379073          	csrw	mideleg,a5
    80002094:	104027f3          	csrr	a5,sie
    80002098:	2227e793          	ori	a5,a5,546
    8000209c:	10479073          	csrw	sie,a5
    800020a0:	fff00793          	li	a5,-1
    800020a4:	00a7d793          	srli	a5,a5,0xa
    800020a8:	3b079073          	csrw	pmpaddr0,a5
    800020ac:	00f00793          	li	a5,15
    800020b0:	3a079073          	csrw	pmpcfg0,a5
    800020b4:	f14027f3          	csrr	a5,mhartid
    800020b8:	0200c737          	lui	a4,0x200c
    800020bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020c0:	0007869b          	sext.w	a3,a5
    800020c4:	00269713          	slli	a4,a3,0x2
    800020c8:	000f4637          	lui	a2,0xf4
    800020cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020d0:	00d70733          	add	a4,a4,a3
    800020d4:	0037979b          	slliw	a5,a5,0x3
    800020d8:	020046b7          	lui	a3,0x2004
    800020dc:	00d787b3          	add	a5,a5,a3
    800020e0:	00c585b3          	add	a1,a1,a2
    800020e4:	00371693          	slli	a3,a4,0x3
    800020e8:	00004717          	auipc	a4,0x4
    800020ec:	82870713          	addi	a4,a4,-2008 # 80005910 <timer_scratch>
    800020f0:	00b7b023          	sd	a1,0(a5)
    800020f4:	00d70733          	add	a4,a4,a3
    800020f8:	00f73c23          	sd	a5,24(a4)
    800020fc:	02c73023          	sd	a2,32(a4)
    80002100:	34071073          	csrw	mscratch,a4
    80002104:	00000797          	auipc	a5,0x0
    80002108:	6ec78793          	addi	a5,a5,1772 # 800027f0 <timervec>
    8000210c:	30579073          	csrw	mtvec,a5
    80002110:	300027f3          	csrr	a5,mstatus
    80002114:	0087e793          	ori	a5,a5,8
    80002118:	30079073          	csrw	mstatus,a5
    8000211c:	304027f3          	csrr	a5,mie
    80002120:	0807e793          	ori	a5,a5,128
    80002124:	30479073          	csrw	mie,a5
    80002128:	f14027f3          	csrr	a5,mhartid
    8000212c:	0007879b          	sext.w	a5,a5
    80002130:	00078213          	mv	tp,a5
    80002134:	30200073          	mret
    80002138:	00813403          	ld	s0,8(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <timerinit>:
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	f14027f3          	csrr	a5,mhartid
    80002154:	0200c737          	lui	a4,0x200c
    80002158:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000215c:	0007869b          	sext.w	a3,a5
    80002160:	00269713          	slli	a4,a3,0x2
    80002164:	000f4637          	lui	a2,0xf4
    80002168:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000216c:	00d70733          	add	a4,a4,a3
    80002170:	0037979b          	slliw	a5,a5,0x3
    80002174:	020046b7          	lui	a3,0x2004
    80002178:	00d787b3          	add	a5,a5,a3
    8000217c:	00c585b3          	add	a1,a1,a2
    80002180:	00371693          	slli	a3,a4,0x3
    80002184:	00003717          	auipc	a4,0x3
    80002188:	78c70713          	addi	a4,a4,1932 # 80005910 <timer_scratch>
    8000218c:	00b7b023          	sd	a1,0(a5)
    80002190:	00d70733          	add	a4,a4,a3
    80002194:	00f73c23          	sd	a5,24(a4)
    80002198:	02c73023          	sd	a2,32(a4)
    8000219c:	34071073          	csrw	mscratch,a4
    800021a0:	00000797          	auipc	a5,0x0
    800021a4:	65078793          	addi	a5,a5,1616 # 800027f0 <timervec>
    800021a8:	30579073          	csrw	mtvec,a5
    800021ac:	300027f3          	csrr	a5,mstatus
    800021b0:	0087e793          	ori	a5,a5,8
    800021b4:	30079073          	csrw	mstatus,a5
    800021b8:	304027f3          	csrr	a5,mie
    800021bc:	0807e793          	ori	a5,a5,128
    800021c0:	30479073          	csrw	mie,a5
    800021c4:	00813403          	ld	s0,8(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret

00000000800021d0 <system_main>:
    800021d0:	fe010113          	addi	sp,sp,-32
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	00113c23          	sd	ra,24(sp)
    800021e0:	02010413          	addi	s0,sp,32
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	0c4080e7          	jalr	196(ra) # 800022a8 <cpuid>
    800021ec:	00003497          	auipc	s1,0x3
    800021f0:	6c448493          	addi	s1,s1,1732 # 800058b0 <started>
    800021f4:	02050263          	beqz	a0,80002218 <system_main+0x48>
    800021f8:	0004a783          	lw	a5,0(s1)
    800021fc:	0007879b          	sext.w	a5,a5
    80002200:	fe078ce3          	beqz	a5,800021f8 <system_main+0x28>
    80002204:	0ff0000f          	fence
    80002208:	00003517          	auipc	a0,0x3
    8000220c:	ef050513          	addi	a0,a0,-272 # 800050f8 <CONSOLE_STATUS+0xe8>
    80002210:	00001097          	auipc	ra,0x1
    80002214:	a7c080e7          	jalr	-1412(ra) # 80002c8c <panic>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	9d0080e7          	jalr	-1584(ra) # 80002be8 <consoleinit>
    80002220:	00001097          	auipc	ra,0x1
    80002224:	15c080e7          	jalr	348(ra) # 8000337c <printfinit>
    80002228:	00003517          	auipc	a0,0x3
    8000222c:	e9850513          	addi	a0,a0,-360 # 800050c0 <CONSOLE_STATUS+0xb0>
    80002230:	00001097          	auipc	ra,0x1
    80002234:	ab8080e7          	jalr	-1352(ra) # 80002ce8 <__printf>
    80002238:	00003517          	auipc	a0,0x3
    8000223c:	e9050513          	addi	a0,a0,-368 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002240:	00001097          	auipc	ra,0x1
    80002244:	aa8080e7          	jalr	-1368(ra) # 80002ce8 <__printf>
    80002248:	00003517          	auipc	a0,0x3
    8000224c:	e7850513          	addi	a0,a0,-392 # 800050c0 <CONSOLE_STATUS+0xb0>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	a98080e7          	jalr	-1384(ra) # 80002ce8 <__printf>
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	4b0080e7          	jalr	1200(ra) # 80003708 <kinit>
    80002260:	00000097          	auipc	ra,0x0
    80002264:	148080e7          	jalr	328(ra) # 800023a8 <trapinit>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	16c080e7          	jalr	364(ra) # 800023d4 <trapinithart>
    80002270:	00000097          	auipc	ra,0x0
    80002274:	5c0080e7          	jalr	1472(ra) # 80002830 <plicinit>
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	5e0080e7          	jalr	1504(ra) # 80002858 <plicinithart>
    80002280:	00000097          	auipc	ra,0x0
    80002284:	078080e7          	jalr	120(ra) # 800022f8 <userinit>
    80002288:	0ff0000f          	fence
    8000228c:	00100793          	li	a5,1
    80002290:	00003517          	auipc	a0,0x3
    80002294:	e5050513          	addi	a0,a0,-432 # 800050e0 <CONSOLE_STATUS+0xd0>
    80002298:	00f4a023          	sw	a5,0(s1)
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	a4c080e7          	jalr	-1460(ra) # 80002ce8 <__printf>
    800022a4:	0000006f          	j	800022a4 <system_main+0xd4>

00000000800022a8 <cpuid>:
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00813423          	sd	s0,8(sp)
    800022b0:	01010413          	addi	s0,sp,16
    800022b4:	00020513          	mv	a0,tp
    800022b8:	00813403          	ld	s0,8(sp)
    800022bc:	0005051b          	sext.w	a0,a0
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <mycpu>:
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00813423          	sd	s0,8(sp)
    800022d0:	01010413          	addi	s0,sp,16
    800022d4:	00020793          	mv	a5,tp
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	0007879b          	sext.w	a5,a5
    800022e0:	00779793          	slli	a5,a5,0x7
    800022e4:	00004517          	auipc	a0,0x4
    800022e8:	65c50513          	addi	a0,a0,1628 # 80006940 <cpus>
    800022ec:	00f50533          	add	a0,a0,a5
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <userinit>:
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813423          	sd	s0,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    80002304:	00813403          	ld	s0,8(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	fffff317          	auipc	t1,0xfffff
    80002310:	56430067          	jr	1380(t1) # 80001870 <main>

0000000080002314 <either_copyout>:
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	00113423          	sd	ra,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	02051663          	bnez	a0,80002350 <either_copyout+0x3c>
    80002328:	00058513          	mv	a0,a1
    8000232c:	00060593          	mv	a1,a2
    80002330:	0006861b          	sext.w	a2,a3
    80002334:	00002097          	auipc	ra,0x2
    80002338:	c60080e7          	jalr	-928(ra) # 80003f94 <__memmove>
    8000233c:	00813083          	ld	ra,8(sp)
    80002340:	00013403          	ld	s0,0(sp)
    80002344:	00000513          	li	a0,0
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret
    80002350:	00003517          	auipc	a0,0x3
    80002354:	dd050513          	addi	a0,a0,-560 # 80005120 <CONSOLE_STATUS+0x110>
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	934080e7          	jalr	-1740(ra) # 80002c8c <panic>

0000000080002360 <either_copyin>:
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	00113423          	sd	ra,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    80002370:	02059463          	bnez	a1,80002398 <either_copyin+0x38>
    80002374:	00060593          	mv	a1,a2
    80002378:	0006861b          	sext.w	a2,a3
    8000237c:	00002097          	auipc	ra,0x2
    80002380:	c18080e7          	jalr	-1000(ra) # 80003f94 <__memmove>
    80002384:	00813083          	ld	ra,8(sp)
    80002388:	00013403          	ld	s0,0(sp)
    8000238c:	00000513          	li	a0,0
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret
    80002398:	00003517          	auipc	a0,0x3
    8000239c:	db050513          	addi	a0,a0,-592 # 80005148 <CONSOLE_STATUS+0x138>
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	8ec080e7          	jalr	-1812(ra) # 80002c8c <panic>

00000000800023a8 <trapinit>:
    800023a8:	ff010113          	addi	sp,sp,-16
    800023ac:	00813423          	sd	s0,8(sp)
    800023b0:	01010413          	addi	s0,sp,16
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	00003597          	auipc	a1,0x3
    800023bc:	db858593          	addi	a1,a1,-584 # 80005170 <CONSOLE_STATUS+0x160>
    800023c0:	00004517          	auipc	a0,0x4
    800023c4:	60050513          	addi	a0,a0,1536 # 800069c0 <tickslock>
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00001317          	auipc	t1,0x1
    800023d0:	5cc30067          	jr	1484(t1) # 80003998 <initlock>

00000000800023d4 <trapinithart>:
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00813423          	sd	s0,8(sp)
    800023dc:	01010413          	addi	s0,sp,16
    800023e0:	00000797          	auipc	a5,0x0
    800023e4:	30078793          	addi	a5,a5,768 # 800026e0 <kernelvec>
    800023e8:	10579073          	csrw	stvec,a5
    800023ec:	00813403          	ld	s0,8(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <usertrap>:
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00813423          	sd	s0,8(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	00813403          	ld	s0,8(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <usertrapret>:
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00813423          	sd	s0,8(sp)
    80002418:	01010413          	addi	s0,sp,16
    8000241c:	00813403          	ld	s0,8(sp)
    80002420:	01010113          	addi	sp,sp,16
    80002424:	00008067          	ret

0000000080002428 <kerneltrap>:
    80002428:	fe010113          	addi	sp,sp,-32
    8000242c:	00813823          	sd	s0,16(sp)
    80002430:	00113c23          	sd	ra,24(sp)
    80002434:	00913423          	sd	s1,8(sp)
    80002438:	02010413          	addi	s0,sp,32
    8000243c:	142025f3          	csrr	a1,scause
    80002440:	100027f3          	csrr	a5,sstatus
    80002444:	0027f793          	andi	a5,a5,2
    80002448:	10079c63          	bnez	a5,80002560 <kerneltrap+0x138>
    8000244c:	142027f3          	csrr	a5,scause
    80002450:	0207ce63          	bltz	a5,8000248c <kerneltrap+0x64>
    80002454:	00003517          	auipc	a0,0x3
    80002458:	d6450513          	addi	a0,a0,-668 # 800051b8 <CONSOLE_STATUS+0x1a8>
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	88c080e7          	jalr	-1908(ra) # 80002ce8 <__printf>
    80002464:	141025f3          	csrr	a1,sepc
    80002468:	14302673          	csrr	a2,stval
    8000246c:	00003517          	auipc	a0,0x3
    80002470:	d5c50513          	addi	a0,a0,-676 # 800051c8 <CONSOLE_STATUS+0x1b8>
    80002474:	00001097          	auipc	ra,0x1
    80002478:	874080e7          	jalr	-1932(ra) # 80002ce8 <__printf>
    8000247c:	00003517          	auipc	a0,0x3
    80002480:	d6450513          	addi	a0,a0,-668 # 800051e0 <CONSOLE_STATUS+0x1d0>
    80002484:	00001097          	auipc	ra,0x1
    80002488:	808080e7          	jalr	-2040(ra) # 80002c8c <panic>
    8000248c:	0ff7f713          	andi	a4,a5,255
    80002490:	00900693          	li	a3,9
    80002494:	04d70063          	beq	a4,a3,800024d4 <kerneltrap+0xac>
    80002498:	fff00713          	li	a4,-1
    8000249c:	03f71713          	slli	a4,a4,0x3f
    800024a0:	00170713          	addi	a4,a4,1
    800024a4:	fae798e3          	bne	a5,a4,80002454 <kerneltrap+0x2c>
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	e00080e7          	jalr	-512(ra) # 800022a8 <cpuid>
    800024b0:	06050663          	beqz	a0,8000251c <kerneltrap+0xf4>
    800024b4:	144027f3          	csrr	a5,sip
    800024b8:	ffd7f793          	andi	a5,a5,-3
    800024bc:	14479073          	csrw	sip,a5
    800024c0:	01813083          	ld	ra,24(sp)
    800024c4:	01013403          	ld	s0,16(sp)
    800024c8:	00813483          	ld	s1,8(sp)
    800024cc:	02010113          	addi	sp,sp,32
    800024d0:	00008067          	ret
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	3d0080e7          	jalr	976(ra) # 800028a4 <plic_claim>
    800024dc:	00a00793          	li	a5,10
    800024e0:	00050493          	mv	s1,a0
    800024e4:	06f50863          	beq	a0,a5,80002554 <kerneltrap+0x12c>
    800024e8:	fc050ce3          	beqz	a0,800024c0 <kerneltrap+0x98>
    800024ec:	00050593          	mv	a1,a0
    800024f0:	00003517          	auipc	a0,0x3
    800024f4:	ca850513          	addi	a0,a0,-856 # 80005198 <CONSOLE_STATUS+0x188>
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	7f0080e7          	jalr	2032(ra) # 80002ce8 <__printf>
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	01813083          	ld	ra,24(sp)
    80002508:	00048513          	mv	a0,s1
    8000250c:	00813483          	ld	s1,8(sp)
    80002510:	02010113          	addi	sp,sp,32
    80002514:	00000317          	auipc	t1,0x0
    80002518:	3c830067          	jr	968(t1) # 800028dc <plic_complete>
    8000251c:	00004517          	auipc	a0,0x4
    80002520:	4a450513          	addi	a0,a0,1188 # 800069c0 <tickslock>
    80002524:	00001097          	auipc	ra,0x1
    80002528:	498080e7          	jalr	1176(ra) # 800039bc <acquire>
    8000252c:	00003717          	auipc	a4,0x3
    80002530:	38870713          	addi	a4,a4,904 # 800058b4 <ticks>
    80002534:	00072783          	lw	a5,0(a4)
    80002538:	00004517          	auipc	a0,0x4
    8000253c:	48850513          	addi	a0,a0,1160 # 800069c0 <tickslock>
    80002540:	0017879b          	addiw	a5,a5,1
    80002544:	00f72023          	sw	a5,0(a4)
    80002548:	00001097          	auipc	ra,0x1
    8000254c:	540080e7          	jalr	1344(ra) # 80003a88 <release>
    80002550:	f65ff06f          	j	800024b4 <kerneltrap+0x8c>
    80002554:	00001097          	auipc	ra,0x1
    80002558:	09c080e7          	jalr	156(ra) # 800035f0 <uartintr>
    8000255c:	fa5ff06f          	j	80002500 <kerneltrap+0xd8>
    80002560:	00003517          	auipc	a0,0x3
    80002564:	c1850513          	addi	a0,a0,-1000 # 80005178 <CONSOLE_STATUS+0x168>
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	724080e7          	jalr	1828(ra) # 80002c8c <panic>

0000000080002570 <clockintr>:
    80002570:	fe010113          	addi	sp,sp,-32
    80002574:	00813823          	sd	s0,16(sp)
    80002578:	00913423          	sd	s1,8(sp)
    8000257c:	00113c23          	sd	ra,24(sp)
    80002580:	02010413          	addi	s0,sp,32
    80002584:	00004497          	auipc	s1,0x4
    80002588:	43c48493          	addi	s1,s1,1084 # 800069c0 <tickslock>
    8000258c:	00048513          	mv	a0,s1
    80002590:	00001097          	auipc	ra,0x1
    80002594:	42c080e7          	jalr	1068(ra) # 800039bc <acquire>
    80002598:	00003717          	auipc	a4,0x3
    8000259c:	31c70713          	addi	a4,a4,796 # 800058b4 <ticks>
    800025a0:	00072783          	lw	a5,0(a4)
    800025a4:	01013403          	ld	s0,16(sp)
    800025a8:	01813083          	ld	ra,24(sp)
    800025ac:	00048513          	mv	a0,s1
    800025b0:	0017879b          	addiw	a5,a5,1
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	00f72023          	sw	a5,0(a4)
    800025bc:	02010113          	addi	sp,sp,32
    800025c0:	00001317          	auipc	t1,0x1
    800025c4:	4c830067          	jr	1224(t1) # 80003a88 <release>

00000000800025c8 <devintr>:
    800025c8:	142027f3          	csrr	a5,scause
    800025cc:	00000513          	li	a0,0
    800025d0:	0007c463          	bltz	a5,800025d8 <devintr+0x10>
    800025d4:	00008067          	ret
    800025d8:	fe010113          	addi	sp,sp,-32
    800025dc:	00813823          	sd	s0,16(sp)
    800025e0:	00113c23          	sd	ra,24(sp)
    800025e4:	00913423          	sd	s1,8(sp)
    800025e8:	02010413          	addi	s0,sp,32
    800025ec:	0ff7f713          	andi	a4,a5,255
    800025f0:	00900693          	li	a3,9
    800025f4:	04d70c63          	beq	a4,a3,8000264c <devintr+0x84>
    800025f8:	fff00713          	li	a4,-1
    800025fc:	03f71713          	slli	a4,a4,0x3f
    80002600:	00170713          	addi	a4,a4,1
    80002604:	00e78c63          	beq	a5,a4,8000261c <devintr+0x54>
    80002608:	01813083          	ld	ra,24(sp)
    8000260c:	01013403          	ld	s0,16(sp)
    80002610:	00813483          	ld	s1,8(sp)
    80002614:	02010113          	addi	sp,sp,32
    80002618:	00008067          	ret
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	c8c080e7          	jalr	-884(ra) # 800022a8 <cpuid>
    80002624:	06050663          	beqz	a0,80002690 <devintr+0xc8>
    80002628:	144027f3          	csrr	a5,sip
    8000262c:	ffd7f793          	andi	a5,a5,-3
    80002630:	14479073          	csrw	sip,a5
    80002634:	01813083          	ld	ra,24(sp)
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	00813483          	ld	s1,8(sp)
    80002640:	00200513          	li	a0,2
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	258080e7          	jalr	600(ra) # 800028a4 <plic_claim>
    80002654:	00a00793          	li	a5,10
    80002658:	00050493          	mv	s1,a0
    8000265c:	06f50663          	beq	a0,a5,800026c8 <devintr+0x100>
    80002660:	00100513          	li	a0,1
    80002664:	fa0482e3          	beqz	s1,80002608 <devintr+0x40>
    80002668:	00048593          	mv	a1,s1
    8000266c:	00003517          	auipc	a0,0x3
    80002670:	b2c50513          	addi	a0,a0,-1236 # 80005198 <CONSOLE_STATUS+0x188>
    80002674:	00000097          	auipc	ra,0x0
    80002678:	674080e7          	jalr	1652(ra) # 80002ce8 <__printf>
    8000267c:	00048513          	mv	a0,s1
    80002680:	00000097          	auipc	ra,0x0
    80002684:	25c080e7          	jalr	604(ra) # 800028dc <plic_complete>
    80002688:	00100513          	li	a0,1
    8000268c:	f7dff06f          	j	80002608 <devintr+0x40>
    80002690:	00004517          	auipc	a0,0x4
    80002694:	33050513          	addi	a0,a0,816 # 800069c0 <tickslock>
    80002698:	00001097          	auipc	ra,0x1
    8000269c:	324080e7          	jalr	804(ra) # 800039bc <acquire>
    800026a0:	00003717          	auipc	a4,0x3
    800026a4:	21470713          	addi	a4,a4,532 # 800058b4 <ticks>
    800026a8:	00072783          	lw	a5,0(a4)
    800026ac:	00004517          	auipc	a0,0x4
    800026b0:	31450513          	addi	a0,a0,788 # 800069c0 <tickslock>
    800026b4:	0017879b          	addiw	a5,a5,1
    800026b8:	00f72023          	sw	a5,0(a4)
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	3cc080e7          	jalr	972(ra) # 80003a88 <release>
    800026c4:	f65ff06f          	j	80002628 <devintr+0x60>
    800026c8:	00001097          	auipc	ra,0x1
    800026cc:	f28080e7          	jalr	-216(ra) # 800035f0 <uartintr>
    800026d0:	fadff06f          	j	8000267c <devintr+0xb4>
	...

00000000800026e0 <kernelvec>:
    800026e0:	f0010113          	addi	sp,sp,-256
    800026e4:	00113023          	sd	ra,0(sp)
    800026e8:	00213423          	sd	sp,8(sp)
    800026ec:	00313823          	sd	gp,16(sp)
    800026f0:	00413c23          	sd	tp,24(sp)
    800026f4:	02513023          	sd	t0,32(sp)
    800026f8:	02613423          	sd	t1,40(sp)
    800026fc:	02713823          	sd	t2,48(sp)
    80002700:	02813c23          	sd	s0,56(sp)
    80002704:	04913023          	sd	s1,64(sp)
    80002708:	04a13423          	sd	a0,72(sp)
    8000270c:	04b13823          	sd	a1,80(sp)
    80002710:	04c13c23          	sd	a2,88(sp)
    80002714:	06d13023          	sd	a3,96(sp)
    80002718:	06e13423          	sd	a4,104(sp)
    8000271c:	06f13823          	sd	a5,112(sp)
    80002720:	07013c23          	sd	a6,120(sp)
    80002724:	09113023          	sd	a7,128(sp)
    80002728:	09213423          	sd	s2,136(sp)
    8000272c:	09313823          	sd	s3,144(sp)
    80002730:	09413c23          	sd	s4,152(sp)
    80002734:	0b513023          	sd	s5,160(sp)
    80002738:	0b613423          	sd	s6,168(sp)
    8000273c:	0b713823          	sd	s7,176(sp)
    80002740:	0b813c23          	sd	s8,184(sp)
    80002744:	0d913023          	sd	s9,192(sp)
    80002748:	0da13423          	sd	s10,200(sp)
    8000274c:	0db13823          	sd	s11,208(sp)
    80002750:	0dc13c23          	sd	t3,216(sp)
    80002754:	0fd13023          	sd	t4,224(sp)
    80002758:	0fe13423          	sd	t5,232(sp)
    8000275c:	0ff13823          	sd	t6,240(sp)
    80002760:	cc9ff0ef          	jal	ra,80002428 <kerneltrap>
    80002764:	00013083          	ld	ra,0(sp)
    80002768:	00813103          	ld	sp,8(sp)
    8000276c:	01013183          	ld	gp,16(sp)
    80002770:	02013283          	ld	t0,32(sp)
    80002774:	02813303          	ld	t1,40(sp)
    80002778:	03013383          	ld	t2,48(sp)
    8000277c:	03813403          	ld	s0,56(sp)
    80002780:	04013483          	ld	s1,64(sp)
    80002784:	04813503          	ld	a0,72(sp)
    80002788:	05013583          	ld	a1,80(sp)
    8000278c:	05813603          	ld	a2,88(sp)
    80002790:	06013683          	ld	a3,96(sp)
    80002794:	06813703          	ld	a4,104(sp)
    80002798:	07013783          	ld	a5,112(sp)
    8000279c:	07813803          	ld	a6,120(sp)
    800027a0:	08013883          	ld	a7,128(sp)
    800027a4:	08813903          	ld	s2,136(sp)
    800027a8:	09013983          	ld	s3,144(sp)
    800027ac:	09813a03          	ld	s4,152(sp)
    800027b0:	0a013a83          	ld	s5,160(sp)
    800027b4:	0a813b03          	ld	s6,168(sp)
    800027b8:	0b013b83          	ld	s7,176(sp)
    800027bc:	0b813c03          	ld	s8,184(sp)
    800027c0:	0c013c83          	ld	s9,192(sp)
    800027c4:	0c813d03          	ld	s10,200(sp)
    800027c8:	0d013d83          	ld	s11,208(sp)
    800027cc:	0d813e03          	ld	t3,216(sp)
    800027d0:	0e013e83          	ld	t4,224(sp)
    800027d4:	0e813f03          	ld	t5,232(sp)
    800027d8:	0f013f83          	ld	t6,240(sp)
    800027dc:	10010113          	addi	sp,sp,256
    800027e0:	10200073          	sret
    800027e4:	00000013          	nop
    800027e8:	00000013          	nop
    800027ec:	00000013          	nop

00000000800027f0 <timervec>:
    800027f0:	34051573          	csrrw	a0,mscratch,a0
    800027f4:	00b53023          	sd	a1,0(a0)
    800027f8:	00c53423          	sd	a2,8(a0)
    800027fc:	00d53823          	sd	a3,16(a0)
    80002800:	01853583          	ld	a1,24(a0)
    80002804:	02053603          	ld	a2,32(a0)
    80002808:	0005b683          	ld	a3,0(a1)
    8000280c:	00c686b3          	add	a3,a3,a2
    80002810:	00d5b023          	sd	a3,0(a1)
    80002814:	00200593          	li	a1,2
    80002818:	14459073          	csrw	sip,a1
    8000281c:	01053683          	ld	a3,16(a0)
    80002820:	00853603          	ld	a2,8(a0)
    80002824:	00053583          	ld	a1,0(a0)
    80002828:	34051573          	csrrw	a0,mscratch,a0
    8000282c:	30200073          	mret

0000000080002830 <plicinit>:
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00813423          	sd	s0,8(sp)
    80002838:	01010413          	addi	s0,sp,16
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	0c0007b7          	lui	a5,0xc000
    80002844:	00100713          	li	a4,1
    80002848:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000284c:	00e7a223          	sw	a4,4(a5)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret

0000000080002858 <plicinithart>:
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	00113423          	sd	ra,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    80002868:	00000097          	auipc	ra,0x0
    8000286c:	a40080e7          	jalr	-1472(ra) # 800022a8 <cpuid>
    80002870:	0085171b          	slliw	a4,a0,0x8
    80002874:	0c0027b7          	lui	a5,0xc002
    80002878:	00e787b3          	add	a5,a5,a4
    8000287c:	40200713          	li	a4,1026
    80002880:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002884:	00813083          	ld	ra,8(sp)
    80002888:	00013403          	ld	s0,0(sp)
    8000288c:	00d5151b          	slliw	a0,a0,0xd
    80002890:	0c2017b7          	lui	a5,0xc201
    80002894:	00a78533          	add	a0,a5,a0
    80002898:	00052023          	sw	zero,0(a0)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <plic_claim>:
    800028a4:	ff010113          	addi	sp,sp,-16
    800028a8:	00813023          	sd	s0,0(sp)
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	01010413          	addi	s0,sp,16
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	9f4080e7          	jalr	-1548(ra) # 800022a8 <cpuid>
    800028bc:	00813083          	ld	ra,8(sp)
    800028c0:	00013403          	ld	s0,0(sp)
    800028c4:	00d5151b          	slliw	a0,a0,0xd
    800028c8:	0c2017b7          	lui	a5,0xc201
    800028cc:	00a78533          	add	a0,a5,a0
    800028d0:	00452503          	lw	a0,4(a0)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <plic_complete>:
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00813823          	sd	s0,16(sp)
    800028e4:	00913423          	sd	s1,8(sp)
    800028e8:	00113c23          	sd	ra,24(sp)
    800028ec:	02010413          	addi	s0,sp,32
    800028f0:	00050493          	mv	s1,a0
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	9b4080e7          	jalr	-1612(ra) # 800022a8 <cpuid>
    800028fc:	01813083          	ld	ra,24(sp)
    80002900:	01013403          	ld	s0,16(sp)
    80002904:	00d5179b          	slliw	a5,a0,0xd
    80002908:	0c201737          	lui	a4,0xc201
    8000290c:	00f707b3          	add	a5,a4,a5
    80002910:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret

0000000080002920 <consolewrite>:
    80002920:	fb010113          	addi	sp,sp,-80
    80002924:	04813023          	sd	s0,64(sp)
    80002928:	04113423          	sd	ra,72(sp)
    8000292c:	02913c23          	sd	s1,56(sp)
    80002930:	03213823          	sd	s2,48(sp)
    80002934:	03313423          	sd	s3,40(sp)
    80002938:	03413023          	sd	s4,32(sp)
    8000293c:	01513c23          	sd	s5,24(sp)
    80002940:	05010413          	addi	s0,sp,80
    80002944:	06c05c63          	blez	a2,800029bc <consolewrite+0x9c>
    80002948:	00060993          	mv	s3,a2
    8000294c:	00050a13          	mv	s4,a0
    80002950:	00058493          	mv	s1,a1
    80002954:	00000913          	li	s2,0
    80002958:	fff00a93          	li	s5,-1
    8000295c:	01c0006f          	j	80002978 <consolewrite+0x58>
    80002960:	fbf44503          	lbu	a0,-65(s0)
    80002964:	0019091b          	addiw	s2,s2,1
    80002968:	00148493          	addi	s1,s1,1
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	a9c080e7          	jalr	-1380(ra) # 80003408 <uartputc>
    80002974:	03298063          	beq	s3,s2,80002994 <consolewrite+0x74>
    80002978:	00048613          	mv	a2,s1
    8000297c:	00100693          	li	a3,1
    80002980:	000a0593          	mv	a1,s4
    80002984:	fbf40513          	addi	a0,s0,-65
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	9d8080e7          	jalr	-1576(ra) # 80002360 <either_copyin>
    80002990:	fd5518e3          	bne	a0,s5,80002960 <consolewrite+0x40>
    80002994:	04813083          	ld	ra,72(sp)
    80002998:	04013403          	ld	s0,64(sp)
    8000299c:	03813483          	ld	s1,56(sp)
    800029a0:	02813983          	ld	s3,40(sp)
    800029a4:	02013a03          	ld	s4,32(sp)
    800029a8:	01813a83          	ld	s5,24(sp)
    800029ac:	00090513          	mv	a0,s2
    800029b0:	03013903          	ld	s2,48(sp)
    800029b4:	05010113          	addi	sp,sp,80
    800029b8:	00008067          	ret
    800029bc:	00000913          	li	s2,0
    800029c0:	fd5ff06f          	j	80002994 <consolewrite+0x74>

00000000800029c4 <consoleread>:
    800029c4:	f9010113          	addi	sp,sp,-112
    800029c8:	06813023          	sd	s0,96(sp)
    800029cc:	04913c23          	sd	s1,88(sp)
    800029d0:	05213823          	sd	s2,80(sp)
    800029d4:	05313423          	sd	s3,72(sp)
    800029d8:	05413023          	sd	s4,64(sp)
    800029dc:	03513c23          	sd	s5,56(sp)
    800029e0:	03613823          	sd	s6,48(sp)
    800029e4:	03713423          	sd	s7,40(sp)
    800029e8:	03813023          	sd	s8,32(sp)
    800029ec:	06113423          	sd	ra,104(sp)
    800029f0:	01913c23          	sd	s9,24(sp)
    800029f4:	07010413          	addi	s0,sp,112
    800029f8:	00060b93          	mv	s7,a2
    800029fc:	00050913          	mv	s2,a0
    80002a00:	00058c13          	mv	s8,a1
    80002a04:	00060b1b          	sext.w	s6,a2
    80002a08:	00004497          	auipc	s1,0x4
    80002a0c:	fe048493          	addi	s1,s1,-32 # 800069e8 <cons>
    80002a10:	00400993          	li	s3,4
    80002a14:	fff00a13          	li	s4,-1
    80002a18:	00a00a93          	li	s5,10
    80002a1c:	05705e63          	blez	s7,80002a78 <consoleread+0xb4>
    80002a20:	09c4a703          	lw	a4,156(s1)
    80002a24:	0984a783          	lw	a5,152(s1)
    80002a28:	0007071b          	sext.w	a4,a4
    80002a2c:	08e78463          	beq	a5,a4,80002ab4 <consoleread+0xf0>
    80002a30:	07f7f713          	andi	a4,a5,127
    80002a34:	00e48733          	add	a4,s1,a4
    80002a38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a3c:	0017869b          	addiw	a3,a5,1
    80002a40:	08d4ac23          	sw	a3,152(s1)
    80002a44:	00070c9b          	sext.w	s9,a4
    80002a48:	0b370663          	beq	a4,s3,80002af4 <consoleread+0x130>
    80002a4c:	00100693          	li	a3,1
    80002a50:	f9f40613          	addi	a2,s0,-97
    80002a54:	000c0593          	mv	a1,s8
    80002a58:	00090513          	mv	a0,s2
    80002a5c:	f8e40fa3          	sb	a4,-97(s0)
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	8b4080e7          	jalr	-1868(ra) # 80002314 <either_copyout>
    80002a68:	01450863          	beq	a0,s4,80002a78 <consoleread+0xb4>
    80002a6c:	001c0c13          	addi	s8,s8,1
    80002a70:	fffb8b9b          	addiw	s7,s7,-1
    80002a74:	fb5c94e3          	bne	s9,s5,80002a1c <consoleread+0x58>
    80002a78:	000b851b          	sext.w	a0,s7
    80002a7c:	06813083          	ld	ra,104(sp)
    80002a80:	06013403          	ld	s0,96(sp)
    80002a84:	05813483          	ld	s1,88(sp)
    80002a88:	05013903          	ld	s2,80(sp)
    80002a8c:	04813983          	ld	s3,72(sp)
    80002a90:	04013a03          	ld	s4,64(sp)
    80002a94:	03813a83          	ld	s5,56(sp)
    80002a98:	02813b83          	ld	s7,40(sp)
    80002a9c:	02013c03          	ld	s8,32(sp)
    80002aa0:	01813c83          	ld	s9,24(sp)
    80002aa4:	40ab053b          	subw	a0,s6,a0
    80002aa8:	03013b03          	ld	s6,48(sp)
    80002aac:	07010113          	addi	sp,sp,112
    80002ab0:	00008067          	ret
    80002ab4:	00001097          	auipc	ra,0x1
    80002ab8:	1d8080e7          	jalr	472(ra) # 80003c8c <push_on>
    80002abc:	0984a703          	lw	a4,152(s1)
    80002ac0:	09c4a783          	lw	a5,156(s1)
    80002ac4:	0007879b          	sext.w	a5,a5
    80002ac8:	fef70ce3          	beq	a4,a5,80002ac0 <consoleread+0xfc>
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	234080e7          	jalr	564(ra) # 80003d00 <pop_on>
    80002ad4:	0984a783          	lw	a5,152(s1)
    80002ad8:	07f7f713          	andi	a4,a5,127
    80002adc:	00e48733          	add	a4,s1,a4
    80002ae0:	01874703          	lbu	a4,24(a4)
    80002ae4:	0017869b          	addiw	a3,a5,1
    80002ae8:	08d4ac23          	sw	a3,152(s1)
    80002aec:	00070c9b          	sext.w	s9,a4
    80002af0:	f5371ee3          	bne	a4,s3,80002a4c <consoleread+0x88>
    80002af4:	000b851b          	sext.w	a0,s7
    80002af8:	f96bf2e3          	bgeu	s7,s6,80002a7c <consoleread+0xb8>
    80002afc:	08f4ac23          	sw	a5,152(s1)
    80002b00:	f7dff06f          	j	80002a7c <consoleread+0xb8>

0000000080002b04 <consputc>:
    80002b04:	10000793          	li	a5,256
    80002b08:	00f50663          	beq	a0,a5,80002b14 <consputc+0x10>
    80002b0c:	00001317          	auipc	t1,0x1
    80002b10:	9f430067          	jr	-1548(t1) # 80003500 <uartputc_sync>
    80002b14:	ff010113          	addi	sp,sp,-16
    80002b18:	00113423          	sd	ra,8(sp)
    80002b1c:	00813023          	sd	s0,0(sp)
    80002b20:	01010413          	addi	s0,sp,16
    80002b24:	00800513          	li	a0,8
    80002b28:	00001097          	auipc	ra,0x1
    80002b2c:	9d8080e7          	jalr	-1576(ra) # 80003500 <uartputc_sync>
    80002b30:	02000513          	li	a0,32
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	9cc080e7          	jalr	-1588(ra) # 80003500 <uartputc_sync>
    80002b3c:	00013403          	ld	s0,0(sp)
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00800513          	li	a0,8
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00001317          	auipc	t1,0x1
    80002b50:	9b430067          	jr	-1612(t1) # 80003500 <uartputc_sync>

0000000080002b54 <consoleintr>:
    80002b54:	fe010113          	addi	sp,sp,-32
    80002b58:	00813823          	sd	s0,16(sp)
    80002b5c:	00913423          	sd	s1,8(sp)
    80002b60:	01213023          	sd	s2,0(sp)
    80002b64:	00113c23          	sd	ra,24(sp)
    80002b68:	02010413          	addi	s0,sp,32
    80002b6c:	00004917          	auipc	s2,0x4
    80002b70:	e7c90913          	addi	s2,s2,-388 # 800069e8 <cons>
    80002b74:	00050493          	mv	s1,a0
    80002b78:	00090513          	mv	a0,s2
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	e40080e7          	jalr	-448(ra) # 800039bc <acquire>
    80002b84:	02048c63          	beqz	s1,80002bbc <consoleintr+0x68>
    80002b88:	0a092783          	lw	a5,160(s2)
    80002b8c:	09892703          	lw	a4,152(s2)
    80002b90:	07f00693          	li	a3,127
    80002b94:	40e7873b          	subw	a4,a5,a4
    80002b98:	02e6e263          	bltu	a3,a4,80002bbc <consoleintr+0x68>
    80002b9c:	00d00713          	li	a4,13
    80002ba0:	04e48063          	beq	s1,a4,80002be0 <consoleintr+0x8c>
    80002ba4:	07f7f713          	andi	a4,a5,127
    80002ba8:	00e90733          	add	a4,s2,a4
    80002bac:	0017879b          	addiw	a5,a5,1
    80002bb0:	0af92023          	sw	a5,160(s2)
    80002bb4:	00970c23          	sb	s1,24(a4)
    80002bb8:	08f92e23          	sw	a5,156(s2)
    80002bbc:	01013403          	ld	s0,16(sp)
    80002bc0:	01813083          	ld	ra,24(sp)
    80002bc4:	00813483          	ld	s1,8(sp)
    80002bc8:	00013903          	ld	s2,0(sp)
    80002bcc:	00004517          	auipc	a0,0x4
    80002bd0:	e1c50513          	addi	a0,a0,-484 # 800069e8 <cons>
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00001317          	auipc	t1,0x1
    80002bdc:	eb030067          	jr	-336(t1) # 80003a88 <release>
    80002be0:	00a00493          	li	s1,10
    80002be4:	fc1ff06f          	j	80002ba4 <consoleintr+0x50>

0000000080002be8 <consoleinit>:
    80002be8:	fe010113          	addi	sp,sp,-32
    80002bec:	00113c23          	sd	ra,24(sp)
    80002bf0:	00813823          	sd	s0,16(sp)
    80002bf4:	00913423          	sd	s1,8(sp)
    80002bf8:	02010413          	addi	s0,sp,32
    80002bfc:	00004497          	auipc	s1,0x4
    80002c00:	dec48493          	addi	s1,s1,-532 # 800069e8 <cons>
    80002c04:	00048513          	mv	a0,s1
    80002c08:	00002597          	auipc	a1,0x2
    80002c0c:	5e858593          	addi	a1,a1,1512 # 800051f0 <CONSOLE_STATUS+0x1e0>
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	d88080e7          	jalr	-632(ra) # 80003998 <initlock>
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	7ac080e7          	jalr	1964(ra) # 800033c4 <uartinit>
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00000797          	auipc	a5,0x0
    80002c2c:	d9c78793          	addi	a5,a5,-612 # 800029c4 <consoleread>
    80002c30:	0af4bc23          	sd	a5,184(s1)
    80002c34:	00000797          	auipc	a5,0x0
    80002c38:	cec78793          	addi	a5,a5,-788 # 80002920 <consolewrite>
    80002c3c:	0cf4b023          	sd	a5,192(s1)
    80002c40:	00813483          	ld	s1,8(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret

0000000080002c4c <console_read>:
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	00004317          	auipc	t1,0x4
    80002c60:	e4433303          	ld	t1,-444(t1) # 80006aa0 <devsw+0x10>
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00030067          	jr	t1

0000000080002c6c <console_write>:
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00813423          	sd	s0,8(sp)
    80002c74:	01010413          	addi	s0,sp,16
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	00004317          	auipc	t1,0x4
    80002c80:	e2c33303          	ld	t1,-468(t1) # 80006aa8 <devsw+0x18>
    80002c84:	01010113          	addi	sp,sp,16
    80002c88:	00030067          	jr	t1

0000000080002c8c <panic>:
    80002c8c:	fe010113          	addi	sp,sp,-32
    80002c90:	00113c23          	sd	ra,24(sp)
    80002c94:	00813823          	sd	s0,16(sp)
    80002c98:	00913423          	sd	s1,8(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    80002ca0:	00050493          	mv	s1,a0
    80002ca4:	00002517          	auipc	a0,0x2
    80002ca8:	55450513          	addi	a0,a0,1364 # 800051f8 <CONSOLE_STATUS+0x1e8>
    80002cac:	00004797          	auipc	a5,0x4
    80002cb0:	e807ae23          	sw	zero,-356(a5) # 80006b48 <pr+0x18>
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	034080e7          	jalr	52(ra) # 80002ce8 <__printf>
    80002cbc:	00048513          	mv	a0,s1
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	028080e7          	jalr	40(ra) # 80002ce8 <__printf>
    80002cc8:	00002517          	auipc	a0,0x2
    80002ccc:	3f850513          	addi	a0,a0,1016 # 800050c0 <CONSOLE_STATUS+0xb0>
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	018080e7          	jalr	24(ra) # 80002ce8 <__printf>
    80002cd8:	00100793          	li	a5,1
    80002cdc:	00003717          	auipc	a4,0x3
    80002ce0:	bcf72e23          	sw	a5,-1060(a4) # 800058b8 <panicked>
    80002ce4:	0000006f          	j	80002ce4 <panic+0x58>

0000000080002ce8 <__printf>:
    80002ce8:	f3010113          	addi	sp,sp,-208
    80002cec:	08813023          	sd	s0,128(sp)
    80002cf0:	07313423          	sd	s3,104(sp)
    80002cf4:	09010413          	addi	s0,sp,144
    80002cf8:	05813023          	sd	s8,64(sp)
    80002cfc:	08113423          	sd	ra,136(sp)
    80002d00:	06913c23          	sd	s1,120(sp)
    80002d04:	07213823          	sd	s2,112(sp)
    80002d08:	07413023          	sd	s4,96(sp)
    80002d0c:	05513c23          	sd	s5,88(sp)
    80002d10:	05613823          	sd	s6,80(sp)
    80002d14:	05713423          	sd	s7,72(sp)
    80002d18:	03913c23          	sd	s9,56(sp)
    80002d1c:	03a13823          	sd	s10,48(sp)
    80002d20:	03b13423          	sd	s11,40(sp)
    80002d24:	00004317          	auipc	t1,0x4
    80002d28:	e0c30313          	addi	t1,t1,-500 # 80006b30 <pr>
    80002d2c:	01832c03          	lw	s8,24(t1)
    80002d30:	00b43423          	sd	a1,8(s0)
    80002d34:	00c43823          	sd	a2,16(s0)
    80002d38:	00d43c23          	sd	a3,24(s0)
    80002d3c:	02e43023          	sd	a4,32(s0)
    80002d40:	02f43423          	sd	a5,40(s0)
    80002d44:	03043823          	sd	a6,48(s0)
    80002d48:	03143c23          	sd	a7,56(s0)
    80002d4c:	00050993          	mv	s3,a0
    80002d50:	4a0c1663          	bnez	s8,800031fc <__printf+0x514>
    80002d54:	60098c63          	beqz	s3,8000336c <__printf+0x684>
    80002d58:	0009c503          	lbu	a0,0(s3)
    80002d5c:	00840793          	addi	a5,s0,8
    80002d60:	f6f43c23          	sd	a5,-136(s0)
    80002d64:	00000493          	li	s1,0
    80002d68:	22050063          	beqz	a0,80002f88 <__printf+0x2a0>
    80002d6c:	00002a37          	lui	s4,0x2
    80002d70:	00018ab7          	lui	s5,0x18
    80002d74:	000f4b37          	lui	s6,0xf4
    80002d78:	00989bb7          	lui	s7,0x989
    80002d7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002d80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002d84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002d88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002d8c:	00148c9b          	addiw	s9,s1,1
    80002d90:	02500793          	li	a5,37
    80002d94:	01998933          	add	s2,s3,s9
    80002d98:	38f51263          	bne	a0,a5,8000311c <__printf+0x434>
    80002d9c:	00094783          	lbu	a5,0(s2)
    80002da0:	00078c9b          	sext.w	s9,a5
    80002da4:	1e078263          	beqz	a5,80002f88 <__printf+0x2a0>
    80002da8:	0024849b          	addiw	s1,s1,2
    80002dac:	07000713          	li	a4,112
    80002db0:	00998933          	add	s2,s3,s1
    80002db4:	38e78a63          	beq	a5,a4,80003148 <__printf+0x460>
    80002db8:	20f76863          	bltu	a4,a5,80002fc8 <__printf+0x2e0>
    80002dbc:	42a78863          	beq	a5,a0,800031ec <__printf+0x504>
    80002dc0:	06400713          	li	a4,100
    80002dc4:	40e79663          	bne	a5,a4,800031d0 <__printf+0x4e8>
    80002dc8:	f7843783          	ld	a5,-136(s0)
    80002dcc:	0007a603          	lw	a2,0(a5)
    80002dd0:	00878793          	addi	a5,a5,8
    80002dd4:	f6f43c23          	sd	a5,-136(s0)
    80002dd8:	42064a63          	bltz	a2,8000320c <__printf+0x524>
    80002ddc:	00a00713          	li	a4,10
    80002de0:	02e677bb          	remuw	a5,a2,a4
    80002de4:	00002d97          	auipc	s11,0x2
    80002de8:	43cd8d93          	addi	s11,s11,1084 # 80005220 <digits>
    80002dec:	00900593          	li	a1,9
    80002df0:	0006051b          	sext.w	a0,a2
    80002df4:	00000c93          	li	s9,0
    80002df8:	02079793          	slli	a5,a5,0x20
    80002dfc:	0207d793          	srli	a5,a5,0x20
    80002e00:	00fd87b3          	add	a5,s11,a5
    80002e04:	0007c783          	lbu	a5,0(a5)
    80002e08:	02e656bb          	divuw	a3,a2,a4
    80002e0c:	f8f40023          	sb	a5,-128(s0)
    80002e10:	14c5d863          	bge	a1,a2,80002f60 <__printf+0x278>
    80002e14:	06300593          	li	a1,99
    80002e18:	00100c93          	li	s9,1
    80002e1c:	02e6f7bb          	remuw	a5,a3,a4
    80002e20:	02079793          	slli	a5,a5,0x20
    80002e24:	0207d793          	srli	a5,a5,0x20
    80002e28:	00fd87b3          	add	a5,s11,a5
    80002e2c:	0007c783          	lbu	a5,0(a5)
    80002e30:	02e6d73b          	divuw	a4,a3,a4
    80002e34:	f8f400a3          	sb	a5,-127(s0)
    80002e38:	12a5f463          	bgeu	a1,a0,80002f60 <__printf+0x278>
    80002e3c:	00a00693          	li	a3,10
    80002e40:	00900593          	li	a1,9
    80002e44:	02d777bb          	remuw	a5,a4,a3
    80002e48:	02079793          	slli	a5,a5,0x20
    80002e4c:	0207d793          	srli	a5,a5,0x20
    80002e50:	00fd87b3          	add	a5,s11,a5
    80002e54:	0007c503          	lbu	a0,0(a5)
    80002e58:	02d757bb          	divuw	a5,a4,a3
    80002e5c:	f8a40123          	sb	a0,-126(s0)
    80002e60:	48e5f263          	bgeu	a1,a4,800032e4 <__printf+0x5fc>
    80002e64:	06300513          	li	a0,99
    80002e68:	02d7f5bb          	remuw	a1,a5,a3
    80002e6c:	02059593          	slli	a1,a1,0x20
    80002e70:	0205d593          	srli	a1,a1,0x20
    80002e74:	00bd85b3          	add	a1,s11,a1
    80002e78:	0005c583          	lbu	a1,0(a1)
    80002e7c:	02d7d7bb          	divuw	a5,a5,a3
    80002e80:	f8b401a3          	sb	a1,-125(s0)
    80002e84:	48e57263          	bgeu	a0,a4,80003308 <__printf+0x620>
    80002e88:	3e700513          	li	a0,999
    80002e8c:	02d7f5bb          	remuw	a1,a5,a3
    80002e90:	02059593          	slli	a1,a1,0x20
    80002e94:	0205d593          	srli	a1,a1,0x20
    80002e98:	00bd85b3          	add	a1,s11,a1
    80002e9c:	0005c583          	lbu	a1,0(a1)
    80002ea0:	02d7d7bb          	divuw	a5,a5,a3
    80002ea4:	f8b40223          	sb	a1,-124(s0)
    80002ea8:	46e57663          	bgeu	a0,a4,80003314 <__printf+0x62c>
    80002eac:	02d7f5bb          	remuw	a1,a5,a3
    80002eb0:	02059593          	slli	a1,a1,0x20
    80002eb4:	0205d593          	srli	a1,a1,0x20
    80002eb8:	00bd85b3          	add	a1,s11,a1
    80002ebc:	0005c583          	lbu	a1,0(a1)
    80002ec0:	02d7d7bb          	divuw	a5,a5,a3
    80002ec4:	f8b402a3          	sb	a1,-123(s0)
    80002ec8:	46ea7863          	bgeu	s4,a4,80003338 <__printf+0x650>
    80002ecc:	02d7f5bb          	remuw	a1,a5,a3
    80002ed0:	02059593          	slli	a1,a1,0x20
    80002ed4:	0205d593          	srli	a1,a1,0x20
    80002ed8:	00bd85b3          	add	a1,s11,a1
    80002edc:	0005c583          	lbu	a1,0(a1)
    80002ee0:	02d7d7bb          	divuw	a5,a5,a3
    80002ee4:	f8b40323          	sb	a1,-122(s0)
    80002ee8:	3eeaf863          	bgeu	s5,a4,800032d8 <__printf+0x5f0>
    80002eec:	02d7f5bb          	remuw	a1,a5,a3
    80002ef0:	02059593          	slli	a1,a1,0x20
    80002ef4:	0205d593          	srli	a1,a1,0x20
    80002ef8:	00bd85b3          	add	a1,s11,a1
    80002efc:	0005c583          	lbu	a1,0(a1)
    80002f00:	02d7d7bb          	divuw	a5,a5,a3
    80002f04:	f8b403a3          	sb	a1,-121(s0)
    80002f08:	42eb7e63          	bgeu	s6,a4,80003344 <__printf+0x65c>
    80002f0c:	02d7f5bb          	remuw	a1,a5,a3
    80002f10:	02059593          	slli	a1,a1,0x20
    80002f14:	0205d593          	srli	a1,a1,0x20
    80002f18:	00bd85b3          	add	a1,s11,a1
    80002f1c:	0005c583          	lbu	a1,0(a1)
    80002f20:	02d7d7bb          	divuw	a5,a5,a3
    80002f24:	f8b40423          	sb	a1,-120(s0)
    80002f28:	42ebfc63          	bgeu	s7,a4,80003360 <__printf+0x678>
    80002f2c:	02079793          	slli	a5,a5,0x20
    80002f30:	0207d793          	srli	a5,a5,0x20
    80002f34:	00fd8db3          	add	s11,s11,a5
    80002f38:	000dc703          	lbu	a4,0(s11)
    80002f3c:	00a00793          	li	a5,10
    80002f40:	00900c93          	li	s9,9
    80002f44:	f8e404a3          	sb	a4,-119(s0)
    80002f48:	00065c63          	bgez	a2,80002f60 <__printf+0x278>
    80002f4c:	f9040713          	addi	a4,s0,-112
    80002f50:	00f70733          	add	a4,a4,a5
    80002f54:	02d00693          	li	a3,45
    80002f58:	fed70823          	sb	a3,-16(a4)
    80002f5c:	00078c93          	mv	s9,a5
    80002f60:	f8040793          	addi	a5,s0,-128
    80002f64:	01978cb3          	add	s9,a5,s9
    80002f68:	f7f40d13          	addi	s10,s0,-129
    80002f6c:	000cc503          	lbu	a0,0(s9)
    80002f70:	fffc8c93          	addi	s9,s9,-1
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	b90080e7          	jalr	-1136(ra) # 80002b04 <consputc>
    80002f7c:	ffac98e3          	bne	s9,s10,80002f6c <__printf+0x284>
    80002f80:	00094503          	lbu	a0,0(s2)
    80002f84:	e00514e3          	bnez	a0,80002d8c <__printf+0xa4>
    80002f88:	1a0c1663          	bnez	s8,80003134 <__printf+0x44c>
    80002f8c:	08813083          	ld	ra,136(sp)
    80002f90:	08013403          	ld	s0,128(sp)
    80002f94:	07813483          	ld	s1,120(sp)
    80002f98:	07013903          	ld	s2,112(sp)
    80002f9c:	06813983          	ld	s3,104(sp)
    80002fa0:	06013a03          	ld	s4,96(sp)
    80002fa4:	05813a83          	ld	s5,88(sp)
    80002fa8:	05013b03          	ld	s6,80(sp)
    80002fac:	04813b83          	ld	s7,72(sp)
    80002fb0:	04013c03          	ld	s8,64(sp)
    80002fb4:	03813c83          	ld	s9,56(sp)
    80002fb8:	03013d03          	ld	s10,48(sp)
    80002fbc:	02813d83          	ld	s11,40(sp)
    80002fc0:	0d010113          	addi	sp,sp,208
    80002fc4:	00008067          	ret
    80002fc8:	07300713          	li	a4,115
    80002fcc:	1ce78a63          	beq	a5,a4,800031a0 <__printf+0x4b8>
    80002fd0:	07800713          	li	a4,120
    80002fd4:	1ee79e63          	bne	a5,a4,800031d0 <__printf+0x4e8>
    80002fd8:	f7843783          	ld	a5,-136(s0)
    80002fdc:	0007a703          	lw	a4,0(a5)
    80002fe0:	00878793          	addi	a5,a5,8
    80002fe4:	f6f43c23          	sd	a5,-136(s0)
    80002fe8:	28074263          	bltz	a4,8000326c <__printf+0x584>
    80002fec:	00002d97          	auipc	s11,0x2
    80002ff0:	234d8d93          	addi	s11,s11,564 # 80005220 <digits>
    80002ff4:	00f77793          	andi	a5,a4,15
    80002ff8:	00fd87b3          	add	a5,s11,a5
    80002ffc:	0007c683          	lbu	a3,0(a5)
    80003000:	00f00613          	li	a2,15
    80003004:	0007079b          	sext.w	a5,a4
    80003008:	f8d40023          	sb	a3,-128(s0)
    8000300c:	0047559b          	srliw	a1,a4,0x4
    80003010:	0047569b          	srliw	a3,a4,0x4
    80003014:	00000c93          	li	s9,0
    80003018:	0ee65063          	bge	a2,a4,800030f8 <__printf+0x410>
    8000301c:	00f6f693          	andi	a3,a3,15
    80003020:	00dd86b3          	add	a3,s11,a3
    80003024:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003028:	0087d79b          	srliw	a5,a5,0x8
    8000302c:	00100c93          	li	s9,1
    80003030:	f8d400a3          	sb	a3,-127(s0)
    80003034:	0cb67263          	bgeu	a2,a1,800030f8 <__printf+0x410>
    80003038:	00f7f693          	andi	a3,a5,15
    8000303c:	00dd86b3          	add	a3,s11,a3
    80003040:	0006c583          	lbu	a1,0(a3)
    80003044:	00f00613          	li	a2,15
    80003048:	0047d69b          	srliw	a3,a5,0x4
    8000304c:	f8b40123          	sb	a1,-126(s0)
    80003050:	0047d593          	srli	a1,a5,0x4
    80003054:	28f67e63          	bgeu	a2,a5,800032f0 <__printf+0x608>
    80003058:	00f6f693          	andi	a3,a3,15
    8000305c:	00dd86b3          	add	a3,s11,a3
    80003060:	0006c503          	lbu	a0,0(a3)
    80003064:	0087d813          	srli	a6,a5,0x8
    80003068:	0087d69b          	srliw	a3,a5,0x8
    8000306c:	f8a401a3          	sb	a0,-125(s0)
    80003070:	28b67663          	bgeu	a2,a1,800032fc <__printf+0x614>
    80003074:	00f6f693          	andi	a3,a3,15
    80003078:	00dd86b3          	add	a3,s11,a3
    8000307c:	0006c583          	lbu	a1,0(a3)
    80003080:	00c7d513          	srli	a0,a5,0xc
    80003084:	00c7d69b          	srliw	a3,a5,0xc
    80003088:	f8b40223          	sb	a1,-124(s0)
    8000308c:	29067a63          	bgeu	a2,a6,80003320 <__printf+0x638>
    80003090:	00f6f693          	andi	a3,a3,15
    80003094:	00dd86b3          	add	a3,s11,a3
    80003098:	0006c583          	lbu	a1,0(a3)
    8000309c:	0107d813          	srli	a6,a5,0x10
    800030a0:	0107d69b          	srliw	a3,a5,0x10
    800030a4:	f8b402a3          	sb	a1,-123(s0)
    800030a8:	28a67263          	bgeu	a2,a0,8000332c <__printf+0x644>
    800030ac:	00f6f693          	andi	a3,a3,15
    800030b0:	00dd86b3          	add	a3,s11,a3
    800030b4:	0006c683          	lbu	a3,0(a3)
    800030b8:	0147d79b          	srliw	a5,a5,0x14
    800030bc:	f8d40323          	sb	a3,-122(s0)
    800030c0:	21067663          	bgeu	a2,a6,800032cc <__printf+0x5e4>
    800030c4:	02079793          	slli	a5,a5,0x20
    800030c8:	0207d793          	srli	a5,a5,0x20
    800030cc:	00fd8db3          	add	s11,s11,a5
    800030d0:	000dc683          	lbu	a3,0(s11)
    800030d4:	00800793          	li	a5,8
    800030d8:	00700c93          	li	s9,7
    800030dc:	f8d403a3          	sb	a3,-121(s0)
    800030e0:	00075c63          	bgez	a4,800030f8 <__printf+0x410>
    800030e4:	f9040713          	addi	a4,s0,-112
    800030e8:	00f70733          	add	a4,a4,a5
    800030ec:	02d00693          	li	a3,45
    800030f0:	fed70823          	sb	a3,-16(a4)
    800030f4:	00078c93          	mv	s9,a5
    800030f8:	f8040793          	addi	a5,s0,-128
    800030fc:	01978cb3          	add	s9,a5,s9
    80003100:	f7f40d13          	addi	s10,s0,-129
    80003104:	000cc503          	lbu	a0,0(s9)
    80003108:	fffc8c93          	addi	s9,s9,-1
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	9f8080e7          	jalr	-1544(ra) # 80002b04 <consputc>
    80003114:	ff9d18e3          	bne	s10,s9,80003104 <__printf+0x41c>
    80003118:	0100006f          	j	80003128 <__printf+0x440>
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	9e8080e7          	jalr	-1560(ra) # 80002b04 <consputc>
    80003124:	000c8493          	mv	s1,s9
    80003128:	00094503          	lbu	a0,0(s2)
    8000312c:	c60510e3          	bnez	a0,80002d8c <__printf+0xa4>
    80003130:	e40c0ee3          	beqz	s8,80002f8c <__printf+0x2a4>
    80003134:	00004517          	auipc	a0,0x4
    80003138:	9fc50513          	addi	a0,a0,-1540 # 80006b30 <pr>
    8000313c:	00001097          	auipc	ra,0x1
    80003140:	94c080e7          	jalr	-1716(ra) # 80003a88 <release>
    80003144:	e49ff06f          	j	80002f8c <__printf+0x2a4>
    80003148:	f7843783          	ld	a5,-136(s0)
    8000314c:	03000513          	li	a0,48
    80003150:	01000d13          	li	s10,16
    80003154:	00878713          	addi	a4,a5,8
    80003158:	0007bc83          	ld	s9,0(a5)
    8000315c:	f6e43c23          	sd	a4,-136(s0)
    80003160:	00000097          	auipc	ra,0x0
    80003164:	9a4080e7          	jalr	-1628(ra) # 80002b04 <consputc>
    80003168:	07800513          	li	a0,120
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	998080e7          	jalr	-1640(ra) # 80002b04 <consputc>
    80003174:	00002d97          	auipc	s11,0x2
    80003178:	0acd8d93          	addi	s11,s11,172 # 80005220 <digits>
    8000317c:	03ccd793          	srli	a5,s9,0x3c
    80003180:	00fd87b3          	add	a5,s11,a5
    80003184:	0007c503          	lbu	a0,0(a5)
    80003188:	fffd0d1b          	addiw	s10,s10,-1
    8000318c:	004c9c93          	slli	s9,s9,0x4
    80003190:	00000097          	auipc	ra,0x0
    80003194:	974080e7          	jalr	-1676(ra) # 80002b04 <consputc>
    80003198:	fe0d12e3          	bnez	s10,8000317c <__printf+0x494>
    8000319c:	f8dff06f          	j	80003128 <__printf+0x440>
    800031a0:	f7843783          	ld	a5,-136(s0)
    800031a4:	0007bc83          	ld	s9,0(a5)
    800031a8:	00878793          	addi	a5,a5,8
    800031ac:	f6f43c23          	sd	a5,-136(s0)
    800031b0:	000c9a63          	bnez	s9,800031c4 <__printf+0x4dc>
    800031b4:	1080006f          	j	800032bc <__printf+0x5d4>
    800031b8:	001c8c93          	addi	s9,s9,1
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	948080e7          	jalr	-1720(ra) # 80002b04 <consputc>
    800031c4:	000cc503          	lbu	a0,0(s9)
    800031c8:	fe0518e3          	bnez	a0,800031b8 <__printf+0x4d0>
    800031cc:	f5dff06f          	j	80003128 <__printf+0x440>
    800031d0:	02500513          	li	a0,37
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	930080e7          	jalr	-1744(ra) # 80002b04 <consputc>
    800031dc:	000c8513          	mv	a0,s9
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	924080e7          	jalr	-1756(ra) # 80002b04 <consputc>
    800031e8:	f41ff06f          	j	80003128 <__printf+0x440>
    800031ec:	02500513          	li	a0,37
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	914080e7          	jalr	-1772(ra) # 80002b04 <consputc>
    800031f8:	f31ff06f          	j	80003128 <__printf+0x440>
    800031fc:	00030513          	mv	a0,t1
    80003200:	00000097          	auipc	ra,0x0
    80003204:	7bc080e7          	jalr	1980(ra) # 800039bc <acquire>
    80003208:	b4dff06f          	j	80002d54 <__printf+0x6c>
    8000320c:	40c0053b          	negw	a0,a2
    80003210:	00a00713          	li	a4,10
    80003214:	02e576bb          	remuw	a3,a0,a4
    80003218:	00002d97          	auipc	s11,0x2
    8000321c:	008d8d93          	addi	s11,s11,8 # 80005220 <digits>
    80003220:	ff700593          	li	a1,-9
    80003224:	02069693          	slli	a3,a3,0x20
    80003228:	0206d693          	srli	a3,a3,0x20
    8000322c:	00dd86b3          	add	a3,s11,a3
    80003230:	0006c683          	lbu	a3,0(a3)
    80003234:	02e557bb          	divuw	a5,a0,a4
    80003238:	f8d40023          	sb	a3,-128(s0)
    8000323c:	10b65e63          	bge	a2,a1,80003358 <__printf+0x670>
    80003240:	06300593          	li	a1,99
    80003244:	02e7f6bb          	remuw	a3,a5,a4
    80003248:	02069693          	slli	a3,a3,0x20
    8000324c:	0206d693          	srli	a3,a3,0x20
    80003250:	00dd86b3          	add	a3,s11,a3
    80003254:	0006c683          	lbu	a3,0(a3)
    80003258:	02e7d73b          	divuw	a4,a5,a4
    8000325c:	00200793          	li	a5,2
    80003260:	f8d400a3          	sb	a3,-127(s0)
    80003264:	bca5ece3          	bltu	a1,a0,80002e3c <__printf+0x154>
    80003268:	ce5ff06f          	j	80002f4c <__printf+0x264>
    8000326c:	40e007bb          	negw	a5,a4
    80003270:	00002d97          	auipc	s11,0x2
    80003274:	fb0d8d93          	addi	s11,s11,-80 # 80005220 <digits>
    80003278:	00f7f693          	andi	a3,a5,15
    8000327c:	00dd86b3          	add	a3,s11,a3
    80003280:	0006c583          	lbu	a1,0(a3)
    80003284:	ff100613          	li	a2,-15
    80003288:	0047d69b          	srliw	a3,a5,0x4
    8000328c:	f8b40023          	sb	a1,-128(s0)
    80003290:	0047d59b          	srliw	a1,a5,0x4
    80003294:	0ac75e63          	bge	a4,a2,80003350 <__printf+0x668>
    80003298:	00f6f693          	andi	a3,a3,15
    8000329c:	00dd86b3          	add	a3,s11,a3
    800032a0:	0006c603          	lbu	a2,0(a3)
    800032a4:	00f00693          	li	a3,15
    800032a8:	0087d79b          	srliw	a5,a5,0x8
    800032ac:	f8c400a3          	sb	a2,-127(s0)
    800032b0:	d8b6e4e3          	bltu	a3,a1,80003038 <__printf+0x350>
    800032b4:	00200793          	li	a5,2
    800032b8:	e2dff06f          	j	800030e4 <__printf+0x3fc>
    800032bc:	00002c97          	auipc	s9,0x2
    800032c0:	f44c8c93          	addi	s9,s9,-188 # 80005200 <CONSOLE_STATUS+0x1f0>
    800032c4:	02800513          	li	a0,40
    800032c8:	ef1ff06f          	j	800031b8 <__printf+0x4d0>
    800032cc:	00700793          	li	a5,7
    800032d0:	00600c93          	li	s9,6
    800032d4:	e0dff06f          	j	800030e0 <__printf+0x3f8>
    800032d8:	00700793          	li	a5,7
    800032dc:	00600c93          	li	s9,6
    800032e0:	c69ff06f          	j	80002f48 <__printf+0x260>
    800032e4:	00300793          	li	a5,3
    800032e8:	00200c93          	li	s9,2
    800032ec:	c5dff06f          	j	80002f48 <__printf+0x260>
    800032f0:	00300793          	li	a5,3
    800032f4:	00200c93          	li	s9,2
    800032f8:	de9ff06f          	j	800030e0 <__printf+0x3f8>
    800032fc:	00400793          	li	a5,4
    80003300:	00300c93          	li	s9,3
    80003304:	dddff06f          	j	800030e0 <__printf+0x3f8>
    80003308:	00400793          	li	a5,4
    8000330c:	00300c93          	li	s9,3
    80003310:	c39ff06f          	j	80002f48 <__printf+0x260>
    80003314:	00500793          	li	a5,5
    80003318:	00400c93          	li	s9,4
    8000331c:	c2dff06f          	j	80002f48 <__printf+0x260>
    80003320:	00500793          	li	a5,5
    80003324:	00400c93          	li	s9,4
    80003328:	db9ff06f          	j	800030e0 <__printf+0x3f8>
    8000332c:	00600793          	li	a5,6
    80003330:	00500c93          	li	s9,5
    80003334:	dadff06f          	j	800030e0 <__printf+0x3f8>
    80003338:	00600793          	li	a5,6
    8000333c:	00500c93          	li	s9,5
    80003340:	c09ff06f          	j	80002f48 <__printf+0x260>
    80003344:	00800793          	li	a5,8
    80003348:	00700c93          	li	s9,7
    8000334c:	bfdff06f          	j	80002f48 <__printf+0x260>
    80003350:	00100793          	li	a5,1
    80003354:	d91ff06f          	j	800030e4 <__printf+0x3fc>
    80003358:	00100793          	li	a5,1
    8000335c:	bf1ff06f          	j	80002f4c <__printf+0x264>
    80003360:	00900793          	li	a5,9
    80003364:	00800c93          	li	s9,8
    80003368:	be1ff06f          	j	80002f48 <__printf+0x260>
    8000336c:	00002517          	auipc	a0,0x2
    80003370:	e9c50513          	addi	a0,a0,-356 # 80005208 <CONSOLE_STATUS+0x1f8>
    80003374:	00000097          	auipc	ra,0x0
    80003378:	918080e7          	jalr	-1768(ra) # 80002c8c <panic>

000000008000337c <printfinit>:
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00813823          	sd	s0,16(sp)
    80003384:	00913423          	sd	s1,8(sp)
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	02010413          	addi	s0,sp,32
    80003390:	00003497          	auipc	s1,0x3
    80003394:	7a048493          	addi	s1,s1,1952 # 80006b30 <pr>
    80003398:	00048513          	mv	a0,s1
    8000339c:	00002597          	auipc	a1,0x2
    800033a0:	e7c58593          	addi	a1,a1,-388 # 80005218 <CONSOLE_STATUS+0x208>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	5f4080e7          	jalr	1524(ra) # 80003998 <initlock>
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	0004ac23          	sw	zero,24(s1)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret

00000000800033c4 <uartinit>:
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00813423          	sd	s0,8(sp)
    800033cc:	01010413          	addi	s0,sp,16
    800033d0:	100007b7          	lui	a5,0x10000
    800033d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800033d8:	f8000713          	li	a4,-128
    800033dc:	00e781a3          	sb	a4,3(a5)
    800033e0:	00300713          	li	a4,3
    800033e4:	00e78023          	sb	a4,0(a5)
    800033e8:	000780a3          	sb	zero,1(a5)
    800033ec:	00e781a3          	sb	a4,3(a5)
    800033f0:	00700693          	li	a3,7
    800033f4:	00d78123          	sb	a3,2(a5)
    800033f8:	00e780a3          	sb	a4,1(a5)
    800033fc:	00813403          	ld	s0,8(sp)
    80003400:	01010113          	addi	sp,sp,16
    80003404:	00008067          	ret

0000000080003408 <uartputc>:
    80003408:	00002797          	auipc	a5,0x2
    8000340c:	4b07a783          	lw	a5,1200(a5) # 800058b8 <panicked>
    80003410:	00078463          	beqz	a5,80003418 <uartputc+0x10>
    80003414:	0000006f          	j	80003414 <uartputc+0xc>
    80003418:	fd010113          	addi	sp,sp,-48
    8000341c:	02813023          	sd	s0,32(sp)
    80003420:	00913c23          	sd	s1,24(sp)
    80003424:	01213823          	sd	s2,16(sp)
    80003428:	01313423          	sd	s3,8(sp)
    8000342c:	02113423          	sd	ra,40(sp)
    80003430:	03010413          	addi	s0,sp,48
    80003434:	00002917          	auipc	s2,0x2
    80003438:	48c90913          	addi	s2,s2,1164 # 800058c0 <uart_tx_r>
    8000343c:	00093783          	ld	a5,0(s2)
    80003440:	00002497          	auipc	s1,0x2
    80003444:	48848493          	addi	s1,s1,1160 # 800058c8 <uart_tx_w>
    80003448:	0004b703          	ld	a4,0(s1)
    8000344c:	02078693          	addi	a3,a5,32
    80003450:	00050993          	mv	s3,a0
    80003454:	02e69c63          	bne	a3,a4,8000348c <uartputc+0x84>
    80003458:	00001097          	auipc	ra,0x1
    8000345c:	834080e7          	jalr	-1996(ra) # 80003c8c <push_on>
    80003460:	00093783          	ld	a5,0(s2)
    80003464:	0004b703          	ld	a4,0(s1)
    80003468:	02078793          	addi	a5,a5,32
    8000346c:	00e79463          	bne	a5,a4,80003474 <uartputc+0x6c>
    80003470:	0000006f          	j	80003470 <uartputc+0x68>
    80003474:	00001097          	auipc	ra,0x1
    80003478:	88c080e7          	jalr	-1908(ra) # 80003d00 <pop_on>
    8000347c:	00093783          	ld	a5,0(s2)
    80003480:	0004b703          	ld	a4,0(s1)
    80003484:	02078693          	addi	a3,a5,32
    80003488:	fce688e3          	beq	a3,a4,80003458 <uartputc+0x50>
    8000348c:	01f77693          	andi	a3,a4,31
    80003490:	00003597          	auipc	a1,0x3
    80003494:	6c058593          	addi	a1,a1,1728 # 80006b50 <uart_tx_buf>
    80003498:	00d586b3          	add	a3,a1,a3
    8000349c:	00170713          	addi	a4,a4,1
    800034a0:	01368023          	sb	s3,0(a3)
    800034a4:	00e4b023          	sd	a4,0(s1)
    800034a8:	10000637          	lui	a2,0x10000
    800034ac:	02f71063          	bne	a4,a5,800034cc <uartputc+0xc4>
    800034b0:	0340006f          	j	800034e4 <uartputc+0xdc>
    800034b4:	00074703          	lbu	a4,0(a4)
    800034b8:	00f93023          	sd	a5,0(s2)
    800034bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034c0:	00093783          	ld	a5,0(s2)
    800034c4:	0004b703          	ld	a4,0(s1)
    800034c8:	00f70e63          	beq	a4,a5,800034e4 <uartputc+0xdc>
    800034cc:	00564683          	lbu	a3,5(a2)
    800034d0:	01f7f713          	andi	a4,a5,31
    800034d4:	00e58733          	add	a4,a1,a4
    800034d8:	0206f693          	andi	a3,a3,32
    800034dc:	00178793          	addi	a5,a5,1
    800034e0:	fc069ae3          	bnez	a3,800034b4 <uartputc+0xac>
    800034e4:	02813083          	ld	ra,40(sp)
    800034e8:	02013403          	ld	s0,32(sp)
    800034ec:	01813483          	ld	s1,24(sp)
    800034f0:	01013903          	ld	s2,16(sp)
    800034f4:	00813983          	ld	s3,8(sp)
    800034f8:	03010113          	addi	sp,sp,48
    800034fc:	00008067          	ret

0000000080003500 <uartputc_sync>:
    80003500:	ff010113          	addi	sp,sp,-16
    80003504:	00813423          	sd	s0,8(sp)
    80003508:	01010413          	addi	s0,sp,16
    8000350c:	00002717          	auipc	a4,0x2
    80003510:	3ac72703          	lw	a4,940(a4) # 800058b8 <panicked>
    80003514:	02071663          	bnez	a4,80003540 <uartputc_sync+0x40>
    80003518:	00050793          	mv	a5,a0
    8000351c:	100006b7          	lui	a3,0x10000
    80003520:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003524:	02077713          	andi	a4,a4,32
    80003528:	fe070ce3          	beqz	a4,80003520 <uartputc_sync+0x20>
    8000352c:	0ff7f793          	andi	a5,a5,255
    80003530:	00f68023          	sb	a5,0(a3)
    80003534:	00813403          	ld	s0,8(sp)
    80003538:	01010113          	addi	sp,sp,16
    8000353c:	00008067          	ret
    80003540:	0000006f          	j	80003540 <uartputc_sync+0x40>

0000000080003544 <uartstart>:
    80003544:	ff010113          	addi	sp,sp,-16
    80003548:	00813423          	sd	s0,8(sp)
    8000354c:	01010413          	addi	s0,sp,16
    80003550:	00002617          	auipc	a2,0x2
    80003554:	37060613          	addi	a2,a2,880 # 800058c0 <uart_tx_r>
    80003558:	00002517          	auipc	a0,0x2
    8000355c:	37050513          	addi	a0,a0,880 # 800058c8 <uart_tx_w>
    80003560:	00063783          	ld	a5,0(a2)
    80003564:	00053703          	ld	a4,0(a0)
    80003568:	04f70263          	beq	a4,a5,800035ac <uartstart+0x68>
    8000356c:	100005b7          	lui	a1,0x10000
    80003570:	00003817          	auipc	a6,0x3
    80003574:	5e080813          	addi	a6,a6,1504 # 80006b50 <uart_tx_buf>
    80003578:	01c0006f          	j	80003594 <uartstart+0x50>
    8000357c:	0006c703          	lbu	a4,0(a3)
    80003580:	00f63023          	sd	a5,0(a2)
    80003584:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003588:	00063783          	ld	a5,0(a2)
    8000358c:	00053703          	ld	a4,0(a0)
    80003590:	00f70e63          	beq	a4,a5,800035ac <uartstart+0x68>
    80003594:	01f7f713          	andi	a4,a5,31
    80003598:	00e806b3          	add	a3,a6,a4
    8000359c:	0055c703          	lbu	a4,5(a1)
    800035a0:	00178793          	addi	a5,a5,1
    800035a4:	02077713          	andi	a4,a4,32
    800035a8:	fc071ae3          	bnez	a4,8000357c <uartstart+0x38>
    800035ac:	00813403          	ld	s0,8(sp)
    800035b0:	01010113          	addi	sp,sp,16
    800035b4:	00008067          	ret

00000000800035b8 <uartgetc>:
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00813423          	sd	s0,8(sp)
    800035c0:	01010413          	addi	s0,sp,16
    800035c4:	10000737          	lui	a4,0x10000
    800035c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035cc:	0017f793          	andi	a5,a5,1
    800035d0:	00078c63          	beqz	a5,800035e8 <uartgetc+0x30>
    800035d4:	00074503          	lbu	a0,0(a4)
    800035d8:	0ff57513          	andi	a0,a0,255
    800035dc:	00813403          	ld	s0,8(sp)
    800035e0:	01010113          	addi	sp,sp,16
    800035e4:	00008067          	ret
    800035e8:	fff00513          	li	a0,-1
    800035ec:	ff1ff06f          	j	800035dc <uartgetc+0x24>

00000000800035f0 <uartintr>:
    800035f0:	100007b7          	lui	a5,0x10000
    800035f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800035f8:	0017f793          	andi	a5,a5,1
    800035fc:	0a078463          	beqz	a5,800036a4 <uartintr+0xb4>
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00913423          	sd	s1,8(sp)
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	02010413          	addi	s0,sp,32
    80003614:	100004b7          	lui	s1,0x10000
    80003618:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000361c:	0ff57513          	andi	a0,a0,255
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	534080e7          	jalr	1332(ra) # 80002b54 <consoleintr>
    80003628:	0054c783          	lbu	a5,5(s1)
    8000362c:	0017f793          	andi	a5,a5,1
    80003630:	fe0794e3          	bnez	a5,80003618 <uartintr+0x28>
    80003634:	00002617          	auipc	a2,0x2
    80003638:	28c60613          	addi	a2,a2,652 # 800058c0 <uart_tx_r>
    8000363c:	00002517          	auipc	a0,0x2
    80003640:	28c50513          	addi	a0,a0,652 # 800058c8 <uart_tx_w>
    80003644:	00063783          	ld	a5,0(a2)
    80003648:	00053703          	ld	a4,0(a0)
    8000364c:	04f70263          	beq	a4,a5,80003690 <uartintr+0xa0>
    80003650:	100005b7          	lui	a1,0x10000
    80003654:	00003817          	auipc	a6,0x3
    80003658:	4fc80813          	addi	a6,a6,1276 # 80006b50 <uart_tx_buf>
    8000365c:	01c0006f          	j	80003678 <uartintr+0x88>
    80003660:	0006c703          	lbu	a4,0(a3)
    80003664:	00f63023          	sd	a5,0(a2)
    80003668:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000366c:	00063783          	ld	a5,0(a2)
    80003670:	00053703          	ld	a4,0(a0)
    80003674:	00f70e63          	beq	a4,a5,80003690 <uartintr+0xa0>
    80003678:	01f7f713          	andi	a4,a5,31
    8000367c:	00e806b3          	add	a3,a6,a4
    80003680:	0055c703          	lbu	a4,5(a1)
    80003684:	00178793          	addi	a5,a5,1
    80003688:	02077713          	andi	a4,a4,32
    8000368c:	fc071ae3          	bnez	a4,80003660 <uartintr+0x70>
    80003690:	01813083          	ld	ra,24(sp)
    80003694:	01013403          	ld	s0,16(sp)
    80003698:	00813483          	ld	s1,8(sp)
    8000369c:	02010113          	addi	sp,sp,32
    800036a0:	00008067          	ret
    800036a4:	00002617          	auipc	a2,0x2
    800036a8:	21c60613          	addi	a2,a2,540 # 800058c0 <uart_tx_r>
    800036ac:	00002517          	auipc	a0,0x2
    800036b0:	21c50513          	addi	a0,a0,540 # 800058c8 <uart_tx_w>
    800036b4:	00063783          	ld	a5,0(a2)
    800036b8:	00053703          	ld	a4,0(a0)
    800036bc:	04f70263          	beq	a4,a5,80003700 <uartintr+0x110>
    800036c0:	100005b7          	lui	a1,0x10000
    800036c4:	00003817          	auipc	a6,0x3
    800036c8:	48c80813          	addi	a6,a6,1164 # 80006b50 <uart_tx_buf>
    800036cc:	01c0006f          	j	800036e8 <uartintr+0xf8>
    800036d0:	0006c703          	lbu	a4,0(a3)
    800036d4:	00f63023          	sd	a5,0(a2)
    800036d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036dc:	00063783          	ld	a5,0(a2)
    800036e0:	00053703          	ld	a4,0(a0)
    800036e4:	02f70063          	beq	a4,a5,80003704 <uartintr+0x114>
    800036e8:	01f7f713          	andi	a4,a5,31
    800036ec:	00e806b3          	add	a3,a6,a4
    800036f0:	0055c703          	lbu	a4,5(a1)
    800036f4:	00178793          	addi	a5,a5,1
    800036f8:	02077713          	andi	a4,a4,32
    800036fc:	fc071ae3          	bnez	a4,800036d0 <uartintr+0xe0>
    80003700:	00008067          	ret
    80003704:	00008067          	ret

0000000080003708 <kinit>:
    80003708:	fc010113          	addi	sp,sp,-64
    8000370c:	02913423          	sd	s1,40(sp)
    80003710:	fffff7b7          	lui	a5,0xfffff
    80003714:	00004497          	auipc	s1,0x4
    80003718:	45b48493          	addi	s1,s1,1115 # 80007b6f <end+0xfff>
    8000371c:	02813823          	sd	s0,48(sp)
    80003720:	01313c23          	sd	s3,24(sp)
    80003724:	00f4f4b3          	and	s1,s1,a5
    80003728:	02113c23          	sd	ra,56(sp)
    8000372c:	03213023          	sd	s2,32(sp)
    80003730:	01413823          	sd	s4,16(sp)
    80003734:	01513423          	sd	s5,8(sp)
    80003738:	04010413          	addi	s0,sp,64
    8000373c:	000017b7          	lui	a5,0x1
    80003740:	01100993          	li	s3,17
    80003744:	00f487b3          	add	a5,s1,a5
    80003748:	01b99993          	slli	s3,s3,0x1b
    8000374c:	06f9e063          	bltu	s3,a5,800037ac <kinit+0xa4>
    80003750:	00003a97          	auipc	s5,0x3
    80003754:	420a8a93          	addi	s5,s5,1056 # 80006b70 <end>
    80003758:	0754ec63          	bltu	s1,s5,800037d0 <kinit+0xc8>
    8000375c:	0734fa63          	bgeu	s1,s3,800037d0 <kinit+0xc8>
    80003760:	00088a37          	lui	s4,0x88
    80003764:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003768:	00002917          	auipc	s2,0x2
    8000376c:	16890913          	addi	s2,s2,360 # 800058d0 <kmem>
    80003770:	00ca1a13          	slli	s4,s4,0xc
    80003774:	0140006f          	j	80003788 <kinit+0x80>
    80003778:	000017b7          	lui	a5,0x1
    8000377c:	00f484b3          	add	s1,s1,a5
    80003780:	0554e863          	bltu	s1,s5,800037d0 <kinit+0xc8>
    80003784:	0534f663          	bgeu	s1,s3,800037d0 <kinit+0xc8>
    80003788:	00001637          	lui	a2,0x1
    8000378c:	00100593          	li	a1,1
    80003790:	00048513          	mv	a0,s1
    80003794:	00000097          	auipc	ra,0x0
    80003798:	5e4080e7          	jalr	1508(ra) # 80003d78 <__memset>
    8000379c:	00093783          	ld	a5,0(s2)
    800037a0:	00f4b023          	sd	a5,0(s1)
    800037a4:	00993023          	sd	s1,0(s2)
    800037a8:	fd4498e3          	bne	s1,s4,80003778 <kinit+0x70>
    800037ac:	03813083          	ld	ra,56(sp)
    800037b0:	03013403          	ld	s0,48(sp)
    800037b4:	02813483          	ld	s1,40(sp)
    800037b8:	02013903          	ld	s2,32(sp)
    800037bc:	01813983          	ld	s3,24(sp)
    800037c0:	01013a03          	ld	s4,16(sp)
    800037c4:	00813a83          	ld	s5,8(sp)
    800037c8:	04010113          	addi	sp,sp,64
    800037cc:	00008067          	ret
    800037d0:	00002517          	auipc	a0,0x2
    800037d4:	a6850513          	addi	a0,a0,-1432 # 80005238 <digits+0x18>
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	4b4080e7          	jalr	1204(ra) # 80002c8c <panic>

00000000800037e0 <freerange>:
    800037e0:	fc010113          	addi	sp,sp,-64
    800037e4:	000017b7          	lui	a5,0x1
    800037e8:	02913423          	sd	s1,40(sp)
    800037ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800037f0:	009504b3          	add	s1,a0,s1
    800037f4:	fffff537          	lui	a0,0xfffff
    800037f8:	02813823          	sd	s0,48(sp)
    800037fc:	02113c23          	sd	ra,56(sp)
    80003800:	03213023          	sd	s2,32(sp)
    80003804:	01313c23          	sd	s3,24(sp)
    80003808:	01413823          	sd	s4,16(sp)
    8000380c:	01513423          	sd	s5,8(sp)
    80003810:	01613023          	sd	s6,0(sp)
    80003814:	04010413          	addi	s0,sp,64
    80003818:	00a4f4b3          	and	s1,s1,a0
    8000381c:	00f487b3          	add	a5,s1,a5
    80003820:	06f5e463          	bltu	a1,a5,80003888 <freerange+0xa8>
    80003824:	00003a97          	auipc	s5,0x3
    80003828:	34ca8a93          	addi	s5,s5,844 # 80006b70 <end>
    8000382c:	0954e263          	bltu	s1,s5,800038b0 <freerange+0xd0>
    80003830:	01100993          	li	s3,17
    80003834:	01b99993          	slli	s3,s3,0x1b
    80003838:	0734fc63          	bgeu	s1,s3,800038b0 <freerange+0xd0>
    8000383c:	00058a13          	mv	s4,a1
    80003840:	00002917          	auipc	s2,0x2
    80003844:	09090913          	addi	s2,s2,144 # 800058d0 <kmem>
    80003848:	00002b37          	lui	s6,0x2
    8000384c:	0140006f          	j	80003860 <freerange+0x80>
    80003850:	000017b7          	lui	a5,0x1
    80003854:	00f484b3          	add	s1,s1,a5
    80003858:	0554ec63          	bltu	s1,s5,800038b0 <freerange+0xd0>
    8000385c:	0534fa63          	bgeu	s1,s3,800038b0 <freerange+0xd0>
    80003860:	00001637          	lui	a2,0x1
    80003864:	00100593          	li	a1,1
    80003868:	00048513          	mv	a0,s1
    8000386c:	00000097          	auipc	ra,0x0
    80003870:	50c080e7          	jalr	1292(ra) # 80003d78 <__memset>
    80003874:	00093703          	ld	a4,0(s2)
    80003878:	016487b3          	add	a5,s1,s6
    8000387c:	00e4b023          	sd	a4,0(s1)
    80003880:	00993023          	sd	s1,0(s2)
    80003884:	fcfa76e3          	bgeu	s4,a5,80003850 <freerange+0x70>
    80003888:	03813083          	ld	ra,56(sp)
    8000388c:	03013403          	ld	s0,48(sp)
    80003890:	02813483          	ld	s1,40(sp)
    80003894:	02013903          	ld	s2,32(sp)
    80003898:	01813983          	ld	s3,24(sp)
    8000389c:	01013a03          	ld	s4,16(sp)
    800038a0:	00813a83          	ld	s5,8(sp)
    800038a4:	00013b03          	ld	s6,0(sp)
    800038a8:	04010113          	addi	sp,sp,64
    800038ac:	00008067          	ret
    800038b0:	00002517          	auipc	a0,0x2
    800038b4:	98850513          	addi	a0,a0,-1656 # 80005238 <digits+0x18>
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	3d4080e7          	jalr	980(ra) # 80002c8c <panic>

00000000800038c0 <kfree>:
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00813823          	sd	s0,16(sp)
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	00913423          	sd	s1,8(sp)
    800038d0:	02010413          	addi	s0,sp,32
    800038d4:	03451793          	slli	a5,a0,0x34
    800038d8:	04079c63          	bnez	a5,80003930 <kfree+0x70>
    800038dc:	00003797          	auipc	a5,0x3
    800038e0:	29478793          	addi	a5,a5,660 # 80006b70 <end>
    800038e4:	00050493          	mv	s1,a0
    800038e8:	04f56463          	bltu	a0,a5,80003930 <kfree+0x70>
    800038ec:	01100793          	li	a5,17
    800038f0:	01b79793          	slli	a5,a5,0x1b
    800038f4:	02f57e63          	bgeu	a0,a5,80003930 <kfree+0x70>
    800038f8:	00001637          	lui	a2,0x1
    800038fc:	00100593          	li	a1,1
    80003900:	00000097          	auipc	ra,0x0
    80003904:	478080e7          	jalr	1144(ra) # 80003d78 <__memset>
    80003908:	00002797          	auipc	a5,0x2
    8000390c:	fc878793          	addi	a5,a5,-56 # 800058d0 <kmem>
    80003910:	0007b703          	ld	a4,0(a5)
    80003914:	01813083          	ld	ra,24(sp)
    80003918:	01013403          	ld	s0,16(sp)
    8000391c:	00e4b023          	sd	a4,0(s1)
    80003920:	0097b023          	sd	s1,0(a5)
    80003924:	00813483          	ld	s1,8(sp)
    80003928:	02010113          	addi	sp,sp,32
    8000392c:	00008067          	ret
    80003930:	00002517          	auipc	a0,0x2
    80003934:	90850513          	addi	a0,a0,-1784 # 80005238 <digits+0x18>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	354080e7          	jalr	852(ra) # 80002c8c <panic>

0000000080003940 <kalloc>:
    80003940:	fe010113          	addi	sp,sp,-32
    80003944:	00813823          	sd	s0,16(sp)
    80003948:	00913423          	sd	s1,8(sp)
    8000394c:	00113c23          	sd	ra,24(sp)
    80003950:	02010413          	addi	s0,sp,32
    80003954:	00002797          	auipc	a5,0x2
    80003958:	f7c78793          	addi	a5,a5,-132 # 800058d0 <kmem>
    8000395c:	0007b483          	ld	s1,0(a5)
    80003960:	02048063          	beqz	s1,80003980 <kalloc+0x40>
    80003964:	0004b703          	ld	a4,0(s1)
    80003968:	00001637          	lui	a2,0x1
    8000396c:	00500593          	li	a1,5
    80003970:	00048513          	mv	a0,s1
    80003974:	00e7b023          	sd	a4,0(a5)
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	400080e7          	jalr	1024(ra) # 80003d78 <__memset>
    80003980:	01813083          	ld	ra,24(sp)
    80003984:	01013403          	ld	s0,16(sp)
    80003988:	00048513          	mv	a0,s1
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret

0000000080003998 <initlock>:
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	00b53423          	sd	a1,8(a0)
    800039ac:	00052023          	sw	zero,0(a0)
    800039b0:	00053823          	sd	zero,16(a0)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret

00000000800039bc <acquire>:
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00813823          	sd	s0,16(sp)
    800039c4:	00913423          	sd	s1,8(sp)
    800039c8:	00113c23          	sd	ra,24(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    800039d8:	10002973          	csrr	s2,sstatus
    800039dc:	100027f3          	csrr	a5,sstatus
    800039e0:	ffd7f793          	andi	a5,a5,-3
    800039e4:	10079073          	csrw	sstatus,a5
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	8e0080e7          	jalr	-1824(ra) # 800022c8 <mycpu>
    800039f0:	07852783          	lw	a5,120(a0)
    800039f4:	06078e63          	beqz	a5,80003a70 <acquire+0xb4>
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	8d0080e7          	jalr	-1840(ra) # 800022c8 <mycpu>
    80003a00:	07852783          	lw	a5,120(a0)
    80003a04:	0004a703          	lw	a4,0(s1)
    80003a08:	0017879b          	addiw	a5,a5,1
    80003a0c:	06f52c23          	sw	a5,120(a0)
    80003a10:	04071063          	bnez	a4,80003a50 <acquire+0x94>
    80003a14:	00100713          	li	a4,1
    80003a18:	00070793          	mv	a5,a4
    80003a1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a20:	0007879b          	sext.w	a5,a5
    80003a24:	fe079ae3          	bnez	a5,80003a18 <acquire+0x5c>
    80003a28:	0ff0000f          	fence
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	89c080e7          	jalr	-1892(ra) # 800022c8 <mycpu>
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00a4b823          	sd	a0,16(s1)
    80003a40:	00013903          	ld	s2,0(sp)
    80003a44:	00813483          	ld	s1,8(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret
    80003a50:	0104b903          	ld	s2,16(s1)
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	874080e7          	jalr	-1932(ra) # 800022c8 <mycpu>
    80003a5c:	faa91ce3          	bne	s2,a0,80003a14 <acquire+0x58>
    80003a60:	00001517          	auipc	a0,0x1
    80003a64:	7e050513          	addi	a0,a0,2016 # 80005240 <digits+0x20>
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	224080e7          	jalr	548(ra) # 80002c8c <panic>
    80003a70:	00195913          	srli	s2,s2,0x1
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	854080e7          	jalr	-1964(ra) # 800022c8 <mycpu>
    80003a7c:	00197913          	andi	s2,s2,1
    80003a80:	07252e23          	sw	s2,124(a0)
    80003a84:	f75ff06f          	j	800039f8 <acquire+0x3c>

0000000080003a88 <release>:
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00813823          	sd	s0,16(sp)
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	01213023          	sd	s2,0(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00052783          	lw	a5,0(a0)
    80003aa4:	00079a63          	bnez	a5,80003ab8 <release+0x30>
    80003aa8:	00001517          	auipc	a0,0x1
    80003aac:	7a050513          	addi	a0,a0,1952 # 80005248 <digits+0x28>
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	1dc080e7          	jalr	476(ra) # 80002c8c <panic>
    80003ab8:	01053903          	ld	s2,16(a0)
    80003abc:	00050493          	mv	s1,a0
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	808080e7          	jalr	-2040(ra) # 800022c8 <mycpu>
    80003ac8:	fea910e3          	bne	s2,a0,80003aa8 <release+0x20>
    80003acc:	0004b823          	sd	zero,16(s1)
    80003ad0:	0ff0000f          	fence
    80003ad4:	0f50000f          	fence	iorw,ow
    80003ad8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	7ec080e7          	jalr	2028(ra) # 800022c8 <mycpu>
    80003ae4:	100027f3          	csrr	a5,sstatus
    80003ae8:	0027f793          	andi	a5,a5,2
    80003aec:	04079a63          	bnez	a5,80003b40 <release+0xb8>
    80003af0:	07852783          	lw	a5,120(a0)
    80003af4:	02f05e63          	blez	a5,80003b30 <release+0xa8>
    80003af8:	fff7871b          	addiw	a4,a5,-1
    80003afc:	06e52c23          	sw	a4,120(a0)
    80003b00:	00071c63          	bnez	a4,80003b18 <release+0x90>
    80003b04:	07c52783          	lw	a5,124(a0)
    80003b08:	00078863          	beqz	a5,80003b18 <release+0x90>
    80003b0c:	100027f3          	csrr	a5,sstatus
    80003b10:	0027e793          	ori	a5,a5,2
    80003b14:	10079073          	csrw	sstatus,a5
    80003b18:	01813083          	ld	ra,24(sp)
    80003b1c:	01013403          	ld	s0,16(sp)
    80003b20:	00813483          	ld	s1,8(sp)
    80003b24:	00013903          	ld	s2,0(sp)
    80003b28:	02010113          	addi	sp,sp,32
    80003b2c:	00008067          	ret
    80003b30:	00001517          	auipc	a0,0x1
    80003b34:	73850513          	addi	a0,a0,1848 # 80005268 <digits+0x48>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	154080e7          	jalr	340(ra) # 80002c8c <panic>
    80003b40:	00001517          	auipc	a0,0x1
    80003b44:	71050513          	addi	a0,a0,1808 # 80005250 <digits+0x30>
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	144080e7          	jalr	324(ra) # 80002c8c <panic>

0000000080003b50 <holding>:
    80003b50:	00052783          	lw	a5,0(a0)
    80003b54:	00079663          	bnez	a5,80003b60 <holding+0x10>
    80003b58:	00000513          	li	a0,0
    80003b5c:	00008067          	ret
    80003b60:	fe010113          	addi	sp,sp,-32
    80003b64:	00813823          	sd	s0,16(sp)
    80003b68:	00913423          	sd	s1,8(sp)
    80003b6c:	00113c23          	sd	ra,24(sp)
    80003b70:	02010413          	addi	s0,sp,32
    80003b74:	01053483          	ld	s1,16(a0)
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	750080e7          	jalr	1872(ra) # 800022c8 <mycpu>
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	01013403          	ld	s0,16(sp)
    80003b88:	40a48533          	sub	a0,s1,a0
    80003b8c:	00153513          	seqz	a0,a0
    80003b90:	00813483          	ld	s1,8(sp)
    80003b94:	02010113          	addi	sp,sp,32
    80003b98:	00008067          	ret

0000000080003b9c <push_off>:
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00113c23          	sd	ra,24(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	02010413          	addi	s0,sp,32
    80003bb0:	100024f3          	csrr	s1,sstatus
    80003bb4:	100027f3          	csrr	a5,sstatus
    80003bb8:	ffd7f793          	andi	a5,a5,-3
    80003bbc:	10079073          	csrw	sstatus,a5
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	708080e7          	jalr	1800(ra) # 800022c8 <mycpu>
    80003bc8:	07852783          	lw	a5,120(a0)
    80003bcc:	02078663          	beqz	a5,80003bf8 <push_off+0x5c>
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	6f8080e7          	jalr	1784(ra) # 800022c8 <mycpu>
    80003bd8:	07852783          	lw	a5,120(a0)
    80003bdc:	01813083          	ld	ra,24(sp)
    80003be0:	01013403          	ld	s0,16(sp)
    80003be4:	0017879b          	addiw	a5,a5,1
    80003be8:	06f52c23          	sw	a5,120(a0)
    80003bec:	00813483          	ld	s1,8(sp)
    80003bf0:	02010113          	addi	sp,sp,32
    80003bf4:	00008067          	ret
    80003bf8:	0014d493          	srli	s1,s1,0x1
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	6cc080e7          	jalr	1740(ra) # 800022c8 <mycpu>
    80003c04:	0014f493          	andi	s1,s1,1
    80003c08:	06952e23          	sw	s1,124(a0)
    80003c0c:	fc5ff06f          	j	80003bd0 <push_off+0x34>

0000000080003c10 <pop_off>:
    80003c10:	ff010113          	addi	sp,sp,-16
    80003c14:	00813023          	sd	s0,0(sp)
    80003c18:	00113423          	sd	ra,8(sp)
    80003c1c:	01010413          	addi	s0,sp,16
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	6a8080e7          	jalr	1704(ra) # 800022c8 <mycpu>
    80003c28:	100027f3          	csrr	a5,sstatus
    80003c2c:	0027f793          	andi	a5,a5,2
    80003c30:	04079663          	bnez	a5,80003c7c <pop_off+0x6c>
    80003c34:	07852783          	lw	a5,120(a0)
    80003c38:	02f05a63          	blez	a5,80003c6c <pop_off+0x5c>
    80003c3c:	fff7871b          	addiw	a4,a5,-1
    80003c40:	06e52c23          	sw	a4,120(a0)
    80003c44:	00071c63          	bnez	a4,80003c5c <pop_off+0x4c>
    80003c48:	07c52783          	lw	a5,124(a0)
    80003c4c:	00078863          	beqz	a5,80003c5c <pop_off+0x4c>
    80003c50:	100027f3          	csrr	a5,sstatus
    80003c54:	0027e793          	ori	a5,a5,2
    80003c58:	10079073          	csrw	sstatus,a5
    80003c5c:	00813083          	ld	ra,8(sp)
    80003c60:	00013403          	ld	s0,0(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret
    80003c6c:	00001517          	auipc	a0,0x1
    80003c70:	5fc50513          	addi	a0,a0,1532 # 80005268 <digits+0x48>
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	018080e7          	jalr	24(ra) # 80002c8c <panic>
    80003c7c:	00001517          	auipc	a0,0x1
    80003c80:	5d450513          	addi	a0,a0,1492 # 80005250 <digits+0x30>
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	008080e7          	jalr	8(ra) # 80002c8c <panic>

0000000080003c8c <push_on>:
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00113c23          	sd	ra,24(sp)
    80003c98:	00913423          	sd	s1,8(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    80003ca0:	100024f3          	csrr	s1,sstatus
    80003ca4:	100027f3          	csrr	a5,sstatus
    80003ca8:	0027e793          	ori	a5,a5,2
    80003cac:	10079073          	csrw	sstatus,a5
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	618080e7          	jalr	1560(ra) # 800022c8 <mycpu>
    80003cb8:	07852783          	lw	a5,120(a0)
    80003cbc:	02078663          	beqz	a5,80003ce8 <push_on+0x5c>
    80003cc0:	ffffe097          	auipc	ra,0xffffe
    80003cc4:	608080e7          	jalr	1544(ra) # 800022c8 <mycpu>
    80003cc8:	07852783          	lw	a5,120(a0)
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	0017879b          	addiw	a5,a5,1
    80003cd8:	06f52c23          	sw	a5,120(a0)
    80003cdc:	00813483          	ld	s1,8(sp)
    80003ce0:	02010113          	addi	sp,sp,32
    80003ce4:	00008067          	ret
    80003ce8:	0014d493          	srli	s1,s1,0x1
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	5dc080e7          	jalr	1500(ra) # 800022c8 <mycpu>
    80003cf4:	0014f493          	andi	s1,s1,1
    80003cf8:	06952e23          	sw	s1,124(a0)
    80003cfc:	fc5ff06f          	j	80003cc0 <push_on+0x34>

0000000080003d00 <pop_on>:
    80003d00:	ff010113          	addi	sp,sp,-16
    80003d04:	00813023          	sd	s0,0(sp)
    80003d08:	00113423          	sd	ra,8(sp)
    80003d0c:	01010413          	addi	s0,sp,16
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	5b8080e7          	jalr	1464(ra) # 800022c8 <mycpu>
    80003d18:	100027f3          	csrr	a5,sstatus
    80003d1c:	0027f793          	andi	a5,a5,2
    80003d20:	04078463          	beqz	a5,80003d68 <pop_on+0x68>
    80003d24:	07852783          	lw	a5,120(a0)
    80003d28:	02f05863          	blez	a5,80003d58 <pop_on+0x58>
    80003d2c:	fff7879b          	addiw	a5,a5,-1
    80003d30:	06f52c23          	sw	a5,120(a0)
    80003d34:	07853783          	ld	a5,120(a0)
    80003d38:	00079863          	bnez	a5,80003d48 <pop_on+0x48>
    80003d3c:	100027f3          	csrr	a5,sstatus
    80003d40:	ffd7f793          	andi	a5,a5,-3
    80003d44:	10079073          	csrw	sstatus,a5
    80003d48:	00813083          	ld	ra,8(sp)
    80003d4c:	00013403          	ld	s0,0(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret
    80003d58:	00001517          	auipc	a0,0x1
    80003d5c:	53850513          	addi	a0,a0,1336 # 80005290 <digits+0x70>
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	f2c080e7          	jalr	-212(ra) # 80002c8c <panic>
    80003d68:	00001517          	auipc	a0,0x1
    80003d6c:	50850513          	addi	a0,a0,1288 # 80005270 <digits+0x50>
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	f1c080e7          	jalr	-228(ra) # 80002c8c <panic>

0000000080003d78 <__memset>:
    80003d78:	ff010113          	addi	sp,sp,-16
    80003d7c:	00813423          	sd	s0,8(sp)
    80003d80:	01010413          	addi	s0,sp,16
    80003d84:	1a060e63          	beqz	a2,80003f40 <__memset+0x1c8>
    80003d88:	40a007b3          	neg	a5,a0
    80003d8c:	0077f793          	andi	a5,a5,7
    80003d90:	00778693          	addi	a3,a5,7
    80003d94:	00b00813          	li	a6,11
    80003d98:	0ff5f593          	andi	a1,a1,255
    80003d9c:	fff6071b          	addiw	a4,a2,-1
    80003da0:	1b06e663          	bltu	a3,a6,80003f4c <__memset+0x1d4>
    80003da4:	1cd76463          	bltu	a4,a3,80003f6c <__memset+0x1f4>
    80003da8:	1a078e63          	beqz	a5,80003f64 <__memset+0x1ec>
    80003dac:	00b50023          	sb	a1,0(a0)
    80003db0:	00100713          	li	a4,1
    80003db4:	1ae78463          	beq	a5,a4,80003f5c <__memset+0x1e4>
    80003db8:	00b500a3          	sb	a1,1(a0)
    80003dbc:	00200713          	li	a4,2
    80003dc0:	1ae78a63          	beq	a5,a4,80003f74 <__memset+0x1fc>
    80003dc4:	00b50123          	sb	a1,2(a0)
    80003dc8:	00300713          	li	a4,3
    80003dcc:	18e78463          	beq	a5,a4,80003f54 <__memset+0x1dc>
    80003dd0:	00b501a3          	sb	a1,3(a0)
    80003dd4:	00400713          	li	a4,4
    80003dd8:	1ae78263          	beq	a5,a4,80003f7c <__memset+0x204>
    80003ddc:	00b50223          	sb	a1,4(a0)
    80003de0:	00500713          	li	a4,5
    80003de4:	1ae78063          	beq	a5,a4,80003f84 <__memset+0x20c>
    80003de8:	00b502a3          	sb	a1,5(a0)
    80003dec:	00700713          	li	a4,7
    80003df0:	18e79e63          	bne	a5,a4,80003f8c <__memset+0x214>
    80003df4:	00b50323          	sb	a1,6(a0)
    80003df8:	00700e93          	li	t4,7
    80003dfc:	00859713          	slli	a4,a1,0x8
    80003e00:	00e5e733          	or	a4,a1,a4
    80003e04:	01059e13          	slli	t3,a1,0x10
    80003e08:	01c76e33          	or	t3,a4,t3
    80003e0c:	01859313          	slli	t1,a1,0x18
    80003e10:	006e6333          	or	t1,t3,t1
    80003e14:	02059893          	slli	a7,a1,0x20
    80003e18:	40f60e3b          	subw	t3,a2,a5
    80003e1c:	011368b3          	or	a7,t1,a7
    80003e20:	02859813          	slli	a6,a1,0x28
    80003e24:	0108e833          	or	a6,a7,a6
    80003e28:	03059693          	slli	a3,a1,0x30
    80003e2c:	003e589b          	srliw	a7,t3,0x3
    80003e30:	00d866b3          	or	a3,a6,a3
    80003e34:	03859713          	slli	a4,a1,0x38
    80003e38:	00389813          	slli	a6,a7,0x3
    80003e3c:	00f507b3          	add	a5,a0,a5
    80003e40:	00e6e733          	or	a4,a3,a4
    80003e44:	000e089b          	sext.w	a7,t3
    80003e48:	00f806b3          	add	a3,a6,a5
    80003e4c:	00e7b023          	sd	a4,0(a5)
    80003e50:	00878793          	addi	a5,a5,8
    80003e54:	fed79ce3          	bne	a5,a3,80003e4c <__memset+0xd4>
    80003e58:	ff8e7793          	andi	a5,t3,-8
    80003e5c:	0007871b          	sext.w	a4,a5
    80003e60:	01d787bb          	addw	a5,a5,t4
    80003e64:	0ce88e63          	beq	a7,a4,80003f40 <__memset+0x1c8>
    80003e68:	00f50733          	add	a4,a0,a5
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	0017871b          	addiw	a4,a5,1
    80003e74:	0cc77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	0027871b          	addiw	a4,a5,2
    80003e84:	0ac77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	0037871b          	addiw	a4,a5,3
    80003e94:	0ac77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0047871b          	addiw	a4,a5,4
    80003ea4:	08c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0057871b          	addiw	a4,a5,5
    80003eb4:	08c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0067871b          	addiw	a4,a5,6
    80003ec4:	06c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0077871b          	addiw	a4,a5,7
    80003ed4:	06c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0087871b          	addiw	a4,a5,8
    80003ee4:	04c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0097871b          	addiw	a4,a5,9
    80003ef4:	04c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	00a7871b          	addiw	a4,a5,10
    80003f04:	02c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	00b7871b          	addiw	a4,a5,11
    80003f14:	02c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	00c7871b          	addiw	a4,a5,12
    80003f24:	00c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	00d7879b          	addiw	a5,a5,13
    80003f34:	00c7f663          	bgeu	a5,a2,80003f40 <__memset+0x1c8>
    80003f38:	00f507b3          	add	a5,a0,a5
    80003f3c:	00b78023          	sb	a1,0(a5)
    80003f40:	00813403          	ld	s0,8(sp)
    80003f44:	01010113          	addi	sp,sp,16
    80003f48:	00008067          	ret
    80003f4c:	00b00693          	li	a3,11
    80003f50:	e55ff06f          	j	80003da4 <__memset+0x2c>
    80003f54:	00300e93          	li	t4,3
    80003f58:	ea5ff06f          	j	80003dfc <__memset+0x84>
    80003f5c:	00100e93          	li	t4,1
    80003f60:	e9dff06f          	j	80003dfc <__memset+0x84>
    80003f64:	00000e93          	li	t4,0
    80003f68:	e95ff06f          	j	80003dfc <__memset+0x84>
    80003f6c:	00000793          	li	a5,0
    80003f70:	ef9ff06f          	j	80003e68 <__memset+0xf0>
    80003f74:	00200e93          	li	t4,2
    80003f78:	e85ff06f          	j	80003dfc <__memset+0x84>
    80003f7c:	00400e93          	li	t4,4
    80003f80:	e7dff06f          	j	80003dfc <__memset+0x84>
    80003f84:	00500e93          	li	t4,5
    80003f88:	e75ff06f          	j	80003dfc <__memset+0x84>
    80003f8c:	00600e93          	li	t4,6
    80003f90:	e6dff06f          	j	80003dfc <__memset+0x84>

0000000080003f94 <__memmove>:
    80003f94:	ff010113          	addi	sp,sp,-16
    80003f98:	00813423          	sd	s0,8(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    80003fa0:	0e060863          	beqz	a2,80004090 <__memmove+0xfc>
    80003fa4:	fff6069b          	addiw	a3,a2,-1
    80003fa8:	0006881b          	sext.w	a6,a3
    80003fac:	0ea5e863          	bltu	a1,a0,8000409c <__memmove+0x108>
    80003fb0:	00758713          	addi	a4,a1,7
    80003fb4:	00a5e7b3          	or	a5,a1,a0
    80003fb8:	40a70733          	sub	a4,a4,a0
    80003fbc:	0077f793          	andi	a5,a5,7
    80003fc0:	00f73713          	sltiu	a4,a4,15
    80003fc4:	00174713          	xori	a4,a4,1
    80003fc8:	0017b793          	seqz	a5,a5
    80003fcc:	00e7f7b3          	and	a5,a5,a4
    80003fd0:	10078863          	beqz	a5,800040e0 <__memmove+0x14c>
    80003fd4:	00900793          	li	a5,9
    80003fd8:	1107f463          	bgeu	a5,a6,800040e0 <__memmove+0x14c>
    80003fdc:	0036581b          	srliw	a6,a2,0x3
    80003fe0:	fff8081b          	addiw	a6,a6,-1
    80003fe4:	02081813          	slli	a6,a6,0x20
    80003fe8:	01d85893          	srli	a7,a6,0x1d
    80003fec:	00858813          	addi	a6,a1,8
    80003ff0:	00058793          	mv	a5,a1
    80003ff4:	00050713          	mv	a4,a0
    80003ff8:	01088833          	add	a6,a7,a6
    80003ffc:	0007b883          	ld	a7,0(a5)
    80004000:	00878793          	addi	a5,a5,8
    80004004:	00870713          	addi	a4,a4,8
    80004008:	ff173c23          	sd	a7,-8(a4)
    8000400c:	ff0798e3          	bne	a5,a6,80003ffc <__memmove+0x68>
    80004010:	ff867713          	andi	a4,a2,-8
    80004014:	02071793          	slli	a5,a4,0x20
    80004018:	0207d793          	srli	a5,a5,0x20
    8000401c:	00f585b3          	add	a1,a1,a5
    80004020:	40e686bb          	subw	a3,a3,a4
    80004024:	00f507b3          	add	a5,a0,a5
    80004028:	06e60463          	beq	a2,a4,80004090 <__memmove+0xfc>
    8000402c:	0005c703          	lbu	a4,0(a1)
    80004030:	00e78023          	sb	a4,0(a5)
    80004034:	04068e63          	beqz	a3,80004090 <__memmove+0xfc>
    80004038:	0015c603          	lbu	a2,1(a1)
    8000403c:	00100713          	li	a4,1
    80004040:	00c780a3          	sb	a2,1(a5)
    80004044:	04e68663          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004048:	0025c603          	lbu	a2,2(a1)
    8000404c:	00200713          	li	a4,2
    80004050:	00c78123          	sb	a2,2(a5)
    80004054:	02e68e63          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004058:	0035c603          	lbu	a2,3(a1)
    8000405c:	00300713          	li	a4,3
    80004060:	00c781a3          	sb	a2,3(a5)
    80004064:	02e68663          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004068:	0045c603          	lbu	a2,4(a1)
    8000406c:	00400713          	li	a4,4
    80004070:	00c78223          	sb	a2,4(a5)
    80004074:	00e68e63          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004078:	0055c603          	lbu	a2,5(a1)
    8000407c:	00500713          	li	a4,5
    80004080:	00c782a3          	sb	a2,5(a5)
    80004084:	00e68663          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004088:	0065c703          	lbu	a4,6(a1)
    8000408c:	00e78323          	sb	a4,6(a5)
    80004090:	00813403          	ld	s0,8(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret
    8000409c:	02061713          	slli	a4,a2,0x20
    800040a0:	02075713          	srli	a4,a4,0x20
    800040a4:	00e587b3          	add	a5,a1,a4
    800040a8:	f0f574e3          	bgeu	a0,a5,80003fb0 <__memmove+0x1c>
    800040ac:	02069613          	slli	a2,a3,0x20
    800040b0:	02065613          	srli	a2,a2,0x20
    800040b4:	fff64613          	not	a2,a2
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00c78633          	add	a2,a5,a2
    800040c0:	fff7c683          	lbu	a3,-1(a5)
    800040c4:	fff78793          	addi	a5,a5,-1
    800040c8:	fff70713          	addi	a4,a4,-1
    800040cc:	00d70023          	sb	a3,0(a4)
    800040d0:	fec798e3          	bne	a5,a2,800040c0 <__memmove+0x12c>
    800040d4:	00813403          	ld	s0,8(sp)
    800040d8:	01010113          	addi	sp,sp,16
    800040dc:	00008067          	ret
    800040e0:	02069713          	slli	a4,a3,0x20
    800040e4:	02075713          	srli	a4,a4,0x20
    800040e8:	00170713          	addi	a4,a4,1
    800040ec:	00e50733          	add	a4,a0,a4
    800040f0:	00050793          	mv	a5,a0
    800040f4:	0005c683          	lbu	a3,0(a1)
    800040f8:	00178793          	addi	a5,a5,1
    800040fc:	00158593          	addi	a1,a1,1
    80004100:	fed78fa3          	sb	a3,-1(a5)
    80004104:	fee798e3          	bne	a5,a4,800040f4 <__memmove+0x160>
    80004108:	f89ff06f          	j	80004090 <__memmove+0xfc>

000000008000410c <__putc>:
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00813823          	sd	s0,16(sp)
    80004114:	00113c23          	sd	ra,24(sp)
    80004118:	02010413          	addi	s0,sp,32
    8000411c:	00050793          	mv	a5,a0
    80004120:	fef40593          	addi	a1,s0,-17
    80004124:	00100613          	li	a2,1
    80004128:	00000513          	li	a0,0
    8000412c:	fef407a3          	sb	a5,-17(s0)
    80004130:	fffff097          	auipc	ra,0xfffff
    80004134:	b3c080e7          	jalr	-1220(ra) # 80002c6c <console_write>
    80004138:	01813083          	ld	ra,24(sp)
    8000413c:	01013403          	ld	s0,16(sp)
    80004140:	02010113          	addi	sp,sp,32
    80004144:	00008067          	ret

0000000080004148 <__getc>:
    80004148:	fe010113          	addi	sp,sp,-32
    8000414c:	00813823          	sd	s0,16(sp)
    80004150:	00113c23          	sd	ra,24(sp)
    80004154:	02010413          	addi	s0,sp,32
    80004158:	fe840593          	addi	a1,s0,-24
    8000415c:	00100613          	li	a2,1
    80004160:	00000513          	li	a0,0
    80004164:	fffff097          	auipc	ra,0xfffff
    80004168:	ae8080e7          	jalr	-1304(ra) # 80002c4c <console_read>
    8000416c:	fe844503          	lbu	a0,-24(s0)
    80004170:	01813083          	ld	ra,24(sp)
    80004174:	01013403          	ld	s0,16(sp)
    80004178:	02010113          	addi	sp,sp,32
    8000417c:	00008067          	ret

0000000080004180 <console_handler>:
    80004180:	fe010113          	addi	sp,sp,-32
    80004184:	00813823          	sd	s0,16(sp)
    80004188:	00113c23          	sd	ra,24(sp)
    8000418c:	00913423          	sd	s1,8(sp)
    80004190:	02010413          	addi	s0,sp,32
    80004194:	14202773          	csrr	a4,scause
    80004198:	100027f3          	csrr	a5,sstatus
    8000419c:	0027f793          	andi	a5,a5,2
    800041a0:	06079e63          	bnez	a5,8000421c <console_handler+0x9c>
    800041a4:	00074c63          	bltz	a4,800041bc <console_handler+0x3c>
    800041a8:	01813083          	ld	ra,24(sp)
    800041ac:	01013403          	ld	s0,16(sp)
    800041b0:	00813483          	ld	s1,8(sp)
    800041b4:	02010113          	addi	sp,sp,32
    800041b8:	00008067          	ret
    800041bc:	0ff77713          	andi	a4,a4,255
    800041c0:	00900793          	li	a5,9
    800041c4:	fef712e3          	bne	a4,a5,800041a8 <console_handler+0x28>
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	6dc080e7          	jalr	1756(ra) # 800028a4 <plic_claim>
    800041d0:	00a00793          	li	a5,10
    800041d4:	00050493          	mv	s1,a0
    800041d8:	02f50c63          	beq	a0,a5,80004210 <console_handler+0x90>
    800041dc:	fc0506e3          	beqz	a0,800041a8 <console_handler+0x28>
    800041e0:	00050593          	mv	a1,a0
    800041e4:	00001517          	auipc	a0,0x1
    800041e8:	fb450513          	addi	a0,a0,-76 # 80005198 <CONSOLE_STATUS+0x188>
    800041ec:	fffff097          	auipc	ra,0xfffff
    800041f0:	afc080e7          	jalr	-1284(ra) # 80002ce8 <__printf>
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	01813083          	ld	ra,24(sp)
    800041fc:	00048513          	mv	a0,s1
    80004200:	00813483          	ld	s1,8(sp)
    80004204:	02010113          	addi	sp,sp,32
    80004208:	ffffe317          	auipc	t1,0xffffe
    8000420c:	6d430067          	jr	1748(t1) # 800028dc <plic_complete>
    80004210:	fffff097          	auipc	ra,0xfffff
    80004214:	3e0080e7          	jalr	992(ra) # 800035f0 <uartintr>
    80004218:	fddff06f          	j	800041f4 <console_handler+0x74>
    8000421c:	00001517          	auipc	a0,0x1
    80004220:	07c50513          	addi	a0,a0,124 # 80005298 <digits+0x78>
    80004224:	fffff097          	auipc	ra,0xfffff
    80004228:	a68080e7          	jalr	-1432(ra) # 80002c8c <panic>
	...
