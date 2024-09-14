
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	3a013103          	ld	sp,928(sp) # 800043a0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	458010ef          	jal	ra,80001474 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001004:	00b29a63          	bne	t0,a1,80001018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000100c:	fe029ae3          	bnez	t0,80001000 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001010:	00000513          	li	a0,0
    jr ra                  # Return.
    80001014:	00008067          	ret

0000000080001018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001018:	00100513          	li	a0,1
    8000101c:	00008067          	ret

0000000080001020 <main>:
#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

int main() {
    80001020:	fe010113          	addi	sp,sp,-32
    80001024:	00113c23          	sd	ra,24(sp)
    80001028:	00813823          	sd	s0,16(sp)
    8000102c:	00913423          	sd	s1,8(sp)
    80001030:	02010413          	addi	s0,sp,32
    MemoryAllocator::initFreeSegment();
    80001034:	00000097          	auipc	ra,0x0
    80001038:	3e8080e7          	jalr	1000(ra) # 8000141c <_ZN15MemoryAllocator15initFreeSegmentEv>

    int velicinaZaglavlja = sizeof(Segment); // meni je ovoliko

    const size_t maxMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaZaglavlja)/MEM_BLOCK_SIZE - 1)*MEM_BLOCK_SIZE ;
    8000103c:	00003797          	auipc	a5,0x3
    80001040:	36c7b783          	ld	a5,876(a5) # 800043a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001044:	0007b503          	ld	a0,0(a5)
    80001048:	00003797          	auipc	a5,0x3
    8000104c:	3507b783          	ld	a5,848(a5) # 80004398 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001050:	0007b783          	ld	a5,0(a5)
    80001054:	40f50533          	sub	a0,a0,a5
    80001058:	ff050513          	addi	a0,a0,-16 # ff0 <_entry-0x7ffff010>
    8000105c:	00655513          	srli	a0,a0,0x6
    80001060:	fff50513          	addi	a0,a0,-1
    char* niz = (char*)MemoryAllocator::mem_alloc(maxMemorija); // celokupan prostor
    80001064:	00651513          	slli	a0,a0,0x6
    80001068:	00000097          	auipc	ra,0x0
    8000106c:	1b0080e7          	jalr	432(ra) # 80001218 <_ZN15MemoryAllocator9mem_allocEm>
    80001070:	00050493          	mv	s1,a0
    if(niz == nullptr) {
    80001074:	04050663          	beqz	a0,800010c0 <main+0xa0>
        __putc('?');
    }

    int n = 200;
    char* niz2 = (char*)MemoryAllocator::mem_alloc(n*sizeof(char));
    80001078:	0c800513          	li	a0,200
    8000107c:	00000097          	auipc	ra,0x0
    80001080:	19c080e7          	jalr	412(ra) # 80001218 <_ZN15MemoryAllocator9mem_allocEm>
    if(niz2 == nullptr) {
    80001084:	04050663          	beqz	a0,800010d0 <main+0xb0>
        __putc('k');
    }

    int status = MemoryAllocator::mem_free(niz);
    80001088:	00048513          	mv	a0,s1
    8000108c:	00000097          	auipc	ra,0x0
    80001090:	284080e7          	jalr	644(ra) # 80001310 <_ZN15MemoryAllocator8mem_freeEPv>
    if(status) {
    80001094:	04051663          	bnez	a0,800010e0 <main+0xc0>
        __putc('?');
    }
    niz2 = (char*)MemoryAllocator::mem_alloc(n*sizeof(char));
    80001098:	0c800513          	li	a0,200
    8000109c:	00000097          	auipc	ra,0x0
    800010a0:	17c080e7          	jalr	380(ra) # 80001218 <_ZN15MemoryAllocator9mem_allocEm>
    if(niz2 == nullptr) {
    800010a4:	04050663          	beqz	a0,800010f0 <main+0xd0>
        __putc('?');
    }

    return 0;
    800010a8:	00000513          	li	a0,0
    800010ac:	01813083          	ld	ra,24(sp)
    800010b0:	01013403          	ld	s0,16(sp)
    800010b4:	00813483          	ld	s1,8(sp)
    800010b8:	02010113          	addi	sp,sp,32
    800010bc:	00008067          	ret
        __putc('?');
    800010c0:	03f00513          	li	a0,63
    800010c4:	00002097          	auipc	ra,0x2
    800010c8:	478080e7          	jalr	1144(ra) # 8000353c <__putc>
    800010cc:	fadff06f          	j	80001078 <main+0x58>
        __putc('k');
    800010d0:	06b00513          	li	a0,107
    800010d4:	00002097          	auipc	ra,0x2
    800010d8:	468080e7          	jalr	1128(ra) # 8000353c <__putc>
    800010dc:	fadff06f          	j	80001088 <main+0x68>
        __putc('?');
    800010e0:	03f00513          	li	a0,63
    800010e4:	00002097          	auipc	ra,0x2
    800010e8:	458080e7          	jalr	1112(ra) # 8000353c <__putc>
    800010ec:	fadff06f          	j	80001098 <main+0x78>
        __putc('?');
    800010f0:	03f00513          	li	a0,63
    800010f4:	00002097          	auipc	ra,0x2
    800010f8:	448080e7          	jalr	1096(ra) # 8000353c <__putc>
    800010fc:	fadff06f          	j	800010a8 <main+0x88>

0000000080001100 <_ZN15MemoryAllocator9tryToJoinEP7Segment>:
    }

    return -2; // Data adresa nije dobijena sa mem_alloc
}

void MemoryAllocator::tryToJoin(Segment *segment) {
    80001100:	ff010113          	addi	sp,sp,-16
    80001104:	00813423          	sd	s0,8(sp)
    80001108:	01010413          	addi	s0,sp,16
    if(!segment || !segment->next) return;
    8000110c:	00050e63          	beqz	a0,80001128 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    80001110:	00053783          	ld	a5,0(a0)
    80001114:	00078a63          	beqz	a5,80001128 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>
    if((char*) segment + sizeof(Segment) + segment->size == (char*) segment->next) {
    80001118:	00853683          	ld	a3,8(a0)
    8000111c:	01068713          	addi	a4,a3,16
    80001120:	00e50733          	add	a4,a0,a4
    80001124:	00e78863          	beq	a5,a4,80001134 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x34>
        segment->size += sizeof(Segment) + segment->next->size;
        segment->next = segment->next->next;
    }
}
    80001128:	00813403          	ld	s0,8(sp)
    8000112c:	01010113          	addi	sp,sp,16
    80001130:	00008067          	ret
        segment->size += sizeof(Segment) + segment->next->size;
    80001134:	0087b703          	ld	a4,8(a5)
    80001138:	00e686b3          	add	a3,a3,a4
    8000113c:	01068693          	addi	a3,a3,16
    80001140:	00d53423          	sd	a3,8(a0)
        segment->next = segment->next->next;
    80001144:	0007b783          	ld	a5,0(a5)
    80001148:	00f53023          	sd	a5,0(a0)
    8000114c:	fddff06f          	j	80001128 <_ZN15MemoryAllocator9tryToJoinEP7Segment+0x28>

0000000080001150 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>:

void MemoryAllocator::insert_segment(Segment* segment, Segment* prev, int code) {
    80001150:	ff010113          	addi	sp,sp,-16
    80001154:	00813423          	sd	s0,8(sp)
    80001158:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    8000115c:	02050063          	beqz	a0,8000117c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    80001160:	00064e63          	bltz	a2,8000117c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    80001164:	00100793          	li	a5,1
    80001168:	00c7ca63          	blt	a5,a2,8000117c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    8000116c:	00058e63          	beqz	a1,80001188 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x38>
            segment->next = head_data_segment;
            head_data_segment = segment;
        }
    }
    else {
        segment->next = prev->next;
    80001170:	0005b783          	ld	a5,0(a1)
    80001174:	00f53023          	sd	a5,0(a0)
        prev->next = segment;
    80001178:	00a5b023          	sd	a0,0(a1)
    }
}
    8000117c:	00813403          	ld	s0,8(sp)
    80001180:	01010113          	addi	sp,sp,16
    80001184:	00008067          	ret
        if(code == 0) {
    80001188:	00061e63          	bnez	a2,800011a4 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x54>
            segment->next = head_free_segment;
    8000118c:	00003797          	auipc	a5,0x3
    80001190:	26478793          	addi	a5,a5,612 # 800043f0 <_ZN15MemoryAllocator17head_free_segmentE>
    80001194:	0007b703          	ld	a4,0(a5)
    80001198:	00e53023          	sd	a4,0(a0)
            head_free_segment = segment;
    8000119c:	00a7b023          	sd	a0,0(a5)
    800011a0:	fddff06f          	j	8000117c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>
            segment->next = head_data_segment;
    800011a4:	00003797          	auipc	a5,0x3
    800011a8:	24c78793          	addi	a5,a5,588 # 800043f0 <_ZN15MemoryAllocator17head_free_segmentE>
    800011ac:	0087b703          	ld	a4,8(a5)
    800011b0:	00e53023          	sd	a4,0(a0)
            head_data_segment = segment;
    800011b4:	00a7b423          	sd	a0,8(a5)
    800011b8:	fc5ff06f          	j	8000117c <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i+0x2c>

00000000800011bc <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>:

void MemoryAllocator::remove_segment(Segment* segment, Segment* prev, int code) {
    800011bc:	ff010113          	addi	sp,sp,-16
    800011c0:	00813423          	sd	s0,8(sp)
    800011c4:	01010413          	addi	s0,sp,16
    if(!segment || code < 0 || code > 1) return;
    800011c8:	02050063          	beqz	a0,800011e8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    800011cc:	00064e63          	bltz	a2,800011e8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    800011d0:	00100793          	li	a5,1
    800011d4:	00c7ca63          	blt	a5,a2,800011e8 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x2c>
    if(!prev) {
    800011d8:	00058e63          	beqz	a1,800011f4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x38>
        if(code == 0) head_free_segment = segment->next;
        else head_data_segment = segment->next;
    }
    else prev->next = segment->next;
    800011dc:	00053783          	ld	a5,0(a0)
    800011e0:	00f5b023          	sd	a5,0(a1)
    segment->next = nullptr;
    800011e4:	00053023          	sd	zero,0(a0)
}
    800011e8:	00813403          	ld	s0,8(sp)
    800011ec:	01010113          	addi	sp,sp,16
    800011f0:	00008067          	ret
        if(code == 0) head_free_segment = segment->next;
    800011f4:	00061a63          	bnez	a2,80001208 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x4c>
    800011f8:	00053783          	ld	a5,0(a0)
    800011fc:	00003717          	auipc	a4,0x3
    80001200:	1ef73a23          	sd	a5,500(a4) # 800043f0 <_ZN15MemoryAllocator17head_free_segmentE>
    80001204:	fe1ff06f          	j	800011e4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>
        else head_data_segment = segment->next;
    80001208:	00053783          	ld	a5,0(a0)
    8000120c:	00003717          	auipc	a4,0x3
    80001210:	1ef73623          	sd	a5,492(a4) # 800043f8 <_ZN15MemoryAllocator17head_data_segmentE>
    80001214:	fd1ff06f          	j	800011e4 <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i+0x28>

0000000080001218 <_ZN15MemoryAllocator9mem_allocEm>:
void* MemoryAllocator::mem_alloc(size_t size) {
    80001218:	fd010113          	addi	sp,sp,-48
    8000121c:	02113423          	sd	ra,40(sp)
    80001220:	02813023          	sd	s0,32(sp)
    80001224:	00913c23          	sd	s1,24(sp)
    80001228:	01213823          	sd	s2,16(sp)
    8000122c:	01313423          	sd	s3,8(sp)
    80001230:	03010413          	addi	s0,sp,48
    if(size == 0) return nullptr; // Greska
    80001234:	0c050a63          	beqz	a0,80001308 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
    size_t new_size = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80001238:	03f50513          	addi	a0,a0,63
    8000123c:	fc057913          	andi	s2,a0,-64
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80001240:	00003497          	auipc	s1,0x3
    80001244:	1b04b483          	ld	s1,432(s1) # 800043f0 <_ZN15MemoryAllocator17head_free_segmentE>
    80001248:	00000993          	li	s3,0
    8000124c:	08048e63          	beqz	s1,800012e8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
        if(segment->size >= new_size) {
    80001250:	0084b783          	ld	a5,8(s1)
    80001254:	0127f863          	bgeu	a5,s2,80001264 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    for(Segment* segment = head_free_segment, *prev = nullptr ; segment; prev = segment, segment = segment->next) {
    80001258:	00048993          	mv	s3,s1
    8000125c:	0004b483          	ld	s1,0(s1)
    80001260:	fedff06f          	j	8000124c <_ZN15MemoryAllocator9mem_allocEm+0x34>
            remove_segment(segment, prev, 0); // Izbacivanje slobodnog segmenta iz liste slobodnih segmenata
    80001264:	00000613          	li	a2,0
    80001268:	00098593          	mv	a1,s3
    8000126c:	00048513          	mv	a0,s1
    80001270:	00000097          	auipc	ra,0x0
    80001274:	f4c080e7          	jalr	-180(ra) # 800011bc <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            if(segment->size - new_size >= sizeof(Segment)) {
    80001278:	0084b783          	ld	a5,8(s1)
    8000127c:	41278733          	sub	a4,a5,s2
    80001280:	00f00693          	li	a3,15
    80001284:	02e6e463          	bltu	a3,a4,800012ac <_ZN15MemoryAllocator9mem_allocEm+0x94>
            data_segment->size = data_size;
    80001288:	00f4b423          	sd	a5,8(s1)
            for(segment = head_data_segment, prev = nullptr; segment && segment < data_segment; prev = segment, segment = segment->next){}
    8000128c:	00003797          	auipc	a5,0x3
    80001290:	16c7b783          	ld	a5,364(a5) # 800043f8 <_ZN15MemoryAllocator17head_data_segmentE>
    80001294:	00000593          	li	a1,0
    80001298:	02078e63          	beqz	a5,800012d4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    8000129c:	0297fc63          	bgeu	a5,s1,800012d4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    800012a0:	00078593          	mv	a1,a5
    800012a4:	0007b783          	ld	a5,0(a5)
    800012a8:	ff1ff06f          	j	80001298 <_ZN15MemoryAllocator9mem_allocEm+0x80>
                Segment* new_segment = (Segment*) ((char*) segment + sizeof(Segment) + new_size);
    800012ac:	01090513          	addi	a0,s2,16
    800012b0:	00a48533          	add	a0,s1,a0
                new_segment->size = segment->size - new_size - sizeof(Segment);
    800012b4:	ff070713          	addi	a4,a4,-16
    800012b8:	00e53423          	sd	a4,8(a0)
                insert_segment(new_segment, prev, 0); // Ubacivanje slobodnog segmenta koji je ostao nakon alokacije
    800012bc:	00000613          	li	a2,0
    800012c0:	00098593          	mv	a1,s3
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	e8c080e7          	jalr	-372(ra) # 80001150 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
                data_size = new_size;
    800012cc:	00090793          	mv	a5,s2
    800012d0:	fb9ff06f          	j	80001288 <_ZN15MemoryAllocator9mem_allocEm+0x70>
            insert_segment(data_segment, prev, 1); // Ubacivanje segmenta u listu zauzetih segmenata
    800012d4:	00100613          	li	a2,1
    800012d8:	00048513          	mv	a0,s1
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	e74080e7          	jalr	-396(ra) # 80001150 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            return (char*)data_segment + sizeof(Segment);
    800012e4:	01048493          	addi	s1,s1,16
}
    800012e8:	00048513          	mv	a0,s1
    800012ec:	02813083          	ld	ra,40(sp)
    800012f0:	02013403          	ld	s0,32(sp)
    800012f4:	01813483          	ld	s1,24(sp)
    800012f8:	01013903          	ld	s2,16(sp)
    800012fc:	00813983          	ld	s3,8(sp)
    80001300:	03010113          	addi	sp,sp,48
    80001304:	00008067          	ret
    if(size == 0) return nullptr; // Greska
    80001308:	00000493          	li	s1,0
    8000130c:	fddff06f          	j	800012e8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>

0000000080001310 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    80001310:	0c050863          	beqz	a0,800013e0 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    80001314:	00003797          	auipc	a5,0x3
    80001318:	0847b783          	ld	a5,132(a5) # 80004398 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000131c:	0007b783          	ld	a5,0(a5)
    80001320:	0cf56463          	bltu	a0,a5,800013e8 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
    80001324:	00003797          	auipc	a5,0x3
    80001328:	0847b783          	ld	a5,132(a5) # 800043a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000132c:	0007b783          	ld	a5,0(a5)
    80001330:	0cf57063          	bgeu	a0,a5,800013f0 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
int MemoryAllocator::mem_free(void* ptr) {
    80001334:	fe010113          	addi	sp,sp,-32
    80001338:	00113c23          	sd	ra,24(sp)
    8000133c:	00813823          	sd	s0,16(sp)
    80001340:	00913423          	sd	s1,8(sp)
    80001344:	01213023          	sd	s2,0(sp)
    80001348:	02010413          	addi	s0,sp,32
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    8000134c:	00003497          	auipc	s1,0x3
    80001350:	0ac4b483          	ld	s1,172(s1) # 800043f8 <_ZN15MemoryAllocator17head_data_segmentE>
    80001354:	00000593          	li	a1,0
    80001358:	0a048063          	beqz	s1,800013f8 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
        if((char*) segment + sizeof(Segment) == (char*) ptr) {
    8000135c:	01048793          	addi	a5,s1,16
    80001360:	00a78a63          	beq	a5,a0,80001374 <_ZN15MemoryAllocator8mem_freeEPv+0x64>
        if((char*) segment + sizeof(Segment) > (char*) ptr) break;
    80001364:	0af56863          	bltu	a0,a5,80001414 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    for(Segment* segment = head_data_segment, *prev = nullptr; segment; prev = segment, segment = segment->next) {
    80001368:	00048593          	mv	a1,s1
    8000136c:	0004b483          	ld	s1,0(s1)
    80001370:	fe9ff06f          	j	80001358 <_ZN15MemoryAllocator8mem_freeEPv+0x48>
            remove_segment(segment, prev, 1); // Izbacivanje segmenta iz liste zauzetih segmenata
    80001374:	00100613          	li	a2,1
    80001378:	00048513          	mv	a0,s1
    8000137c:	00000097          	auipc	ra,0x0
    80001380:	e40080e7          	jalr	-448(ra) # 800011bc <_ZN15MemoryAllocator14remove_segmentEP7SegmentS1_i>
            for(prev = head_free_segment; prev && prev->next && prev->next < segment; prev = prev->next){}
    80001384:	00003917          	auipc	s2,0x3
    80001388:	06c93903          	ld	s2,108(s2) # 800043f0 <_ZN15MemoryAllocator17head_free_segmentE>
    8000138c:	0080006f          	j	80001394 <_ZN15MemoryAllocator8mem_freeEPv+0x84>
    80001390:	00078913          	mv	s2,a5
    80001394:	00090863          	beqz	s2,800013a4 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80001398:	00093783          	ld	a5,0(s2)
    8000139c:	00078463          	beqz	a5,800013a4 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    800013a0:	fe97e8e3          	bltu	a5,s1,80001390 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
            if(prev > segment) prev = nullptr;
    800013a4:	0124f463          	bgeu	s1,s2,800013ac <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    800013a8:	00000913          	li	s2,0
            insert_segment(segment, prev, 0); // Ubacivanje segmenta u listu slobodnih segmenata
    800013ac:	00000613          	li	a2,0
    800013b0:	00090593          	mv	a1,s2
    800013b4:	00048513          	mv	a0,s1
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	d98080e7          	jalr	-616(ra) # 80001150 <_ZN15MemoryAllocator14insert_segmentEP7SegmentS1_i>
            tryToJoin(segment);
    800013c0:	00048513          	mv	a0,s1
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	d3c080e7          	jalr	-708(ra) # 80001100 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            tryToJoin(prev);
    800013cc:	00090513          	mv	a0,s2
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	d30080e7          	jalr	-720(ra) # 80001100 <_ZN15MemoryAllocator9tryToJoinEP7Segment>
            return 0; //OK
    800013d8:	00000513          	li	a0,0
    800013dc:	0200006f          	j	800013fc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr >= HEAP_END_ADDR) return -1; // Adresa se nalazi van opsega
    800013e0:	fff00513          	li	a0,-1
    800013e4:	00008067          	ret
    800013e8:	fff00513          	li	a0,-1
    800013ec:	00008067          	ret
    800013f0:	fff00513          	li	a0,-1
}
    800013f4:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    800013f8:	ffe00513          	li	a0,-2
}
    800013fc:	01813083          	ld	ra,24(sp)
    80001400:	01013403          	ld	s0,16(sp)
    80001404:	00813483          	ld	s1,8(sp)
    80001408:	00013903          	ld	s2,0(sp)
    8000140c:	02010113          	addi	sp,sp,32
    80001410:	00008067          	ret
    return -2; // Data adresa nije dobijena sa mem_alloc
    80001414:	ffe00513          	li	a0,-2
    80001418:	fe5ff06f          	j	800013fc <_ZN15MemoryAllocator8mem_freeEPv+0xec>

000000008000141c <_ZN15MemoryAllocator15initFreeSegmentEv>:

void MemoryAllocator::initFreeSegment() {
    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00813423          	sd	s0,8(sp)
    80001424:	01010413          	addi	s0,sp,16
    head_free_segment = (Segment*) HEAP_START_ADDR;
    80001428:	00003697          	auipc	a3,0x3
    8000142c:	f706b683          	ld	a3,-144(a3) # 80004398 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001430:	0006b783          	ld	a5,0(a3)
    80001434:	00003717          	auipc	a4,0x3
    80001438:	fbc70713          	addi	a4,a4,-68 # 800043f0 <_ZN15MemoryAllocator17head_free_segmentE>
    8000143c:	00f73023          	sd	a5,0(a4)
    head_data_segment = nullptr;
    80001440:	00073423          	sd	zero,8(a4)

    head_free_segment->next = nullptr;
    80001444:	0007b023          	sd	zero,0(a5)
    head_free_segment->size = (char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(Segment);
    80001448:	00003797          	auipc	a5,0x3
    8000144c:	f607b783          	ld	a5,-160(a5) # 800043a8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001450:	0007b783          	ld	a5,0(a5)
    80001454:	0006b683          	ld	a3,0(a3)
    80001458:	40d787b3          	sub	a5,a5,a3
    8000145c:	00073703          	ld	a4,0(a4)
    80001460:	ff078793          	addi	a5,a5,-16
    80001464:	00f73423          	sd	a5,8(a4)
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <start>:
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    80001480:	300027f3          	csrr	a5,mstatus
    80001484:	ffffe737          	lui	a4,0xffffe
    80001488:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff91af>
    8000148c:	00e7f7b3          	and	a5,a5,a4
    80001490:	00001737          	lui	a4,0x1
    80001494:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001498:	00e7e7b3          	or	a5,a5,a4
    8000149c:	30079073          	csrw	mstatus,a5
    800014a0:	00000797          	auipc	a5,0x0
    800014a4:	16078793          	addi	a5,a5,352 # 80001600 <system_main>
    800014a8:	34179073          	csrw	mepc,a5
    800014ac:	00000793          	li	a5,0
    800014b0:	18079073          	csrw	satp,a5
    800014b4:	000107b7          	lui	a5,0x10
    800014b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800014bc:	30279073          	csrw	medeleg,a5
    800014c0:	30379073          	csrw	mideleg,a5
    800014c4:	104027f3          	csrr	a5,sie
    800014c8:	2227e793          	ori	a5,a5,546
    800014cc:	10479073          	csrw	sie,a5
    800014d0:	fff00793          	li	a5,-1
    800014d4:	00a7d793          	srli	a5,a5,0xa
    800014d8:	3b079073          	csrw	pmpaddr0,a5
    800014dc:	00f00793          	li	a5,15
    800014e0:	3a079073          	csrw	pmpcfg0,a5
    800014e4:	f14027f3          	csrr	a5,mhartid
    800014e8:	0200c737          	lui	a4,0x200c
    800014ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800014f0:	0007869b          	sext.w	a3,a5
    800014f4:	00269713          	slli	a4,a3,0x2
    800014f8:	000f4637          	lui	a2,0xf4
    800014fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001500:	00d70733          	add	a4,a4,a3
    80001504:	0037979b          	slliw	a5,a5,0x3
    80001508:	020046b7          	lui	a3,0x2004
    8000150c:	00d787b3          	add	a5,a5,a3
    80001510:	00c585b3          	add	a1,a1,a2
    80001514:	00371693          	slli	a3,a4,0x3
    80001518:	00003717          	auipc	a4,0x3
    8000151c:	ee870713          	addi	a4,a4,-280 # 80004400 <timer_scratch>
    80001520:	00b7b023          	sd	a1,0(a5)
    80001524:	00d70733          	add	a4,a4,a3
    80001528:	00f73c23          	sd	a5,24(a4)
    8000152c:	02c73023          	sd	a2,32(a4)
    80001530:	34071073          	csrw	mscratch,a4
    80001534:	00000797          	auipc	a5,0x0
    80001538:	6ec78793          	addi	a5,a5,1772 # 80001c20 <timervec>
    8000153c:	30579073          	csrw	mtvec,a5
    80001540:	300027f3          	csrr	a5,mstatus
    80001544:	0087e793          	ori	a5,a5,8
    80001548:	30079073          	csrw	mstatus,a5
    8000154c:	304027f3          	csrr	a5,mie
    80001550:	0807e793          	ori	a5,a5,128
    80001554:	30479073          	csrw	mie,a5
    80001558:	f14027f3          	csrr	a5,mhartid
    8000155c:	0007879b          	sext.w	a5,a5
    80001560:	00078213          	mv	tp,a5
    80001564:	30200073          	mret
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <timerinit>:
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16
    80001580:	f14027f3          	csrr	a5,mhartid
    80001584:	0200c737          	lui	a4,0x200c
    80001588:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000158c:	0007869b          	sext.w	a3,a5
    80001590:	00269713          	slli	a4,a3,0x2
    80001594:	000f4637          	lui	a2,0xf4
    80001598:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000159c:	00d70733          	add	a4,a4,a3
    800015a0:	0037979b          	slliw	a5,a5,0x3
    800015a4:	020046b7          	lui	a3,0x2004
    800015a8:	00d787b3          	add	a5,a5,a3
    800015ac:	00c585b3          	add	a1,a1,a2
    800015b0:	00371693          	slli	a3,a4,0x3
    800015b4:	00003717          	auipc	a4,0x3
    800015b8:	e4c70713          	addi	a4,a4,-436 # 80004400 <timer_scratch>
    800015bc:	00b7b023          	sd	a1,0(a5)
    800015c0:	00d70733          	add	a4,a4,a3
    800015c4:	00f73c23          	sd	a5,24(a4)
    800015c8:	02c73023          	sd	a2,32(a4)
    800015cc:	34071073          	csrw	mscratch,a4
    800015d0:	00000797          	auipc	a5,0x0
    800015d4:	65078793          	addi	a5,a5,1616 # 80001c20 <timervec>
    800015d8:	30579073          	csrw	mtvec,a5
    800015dc:	300027f3          	csrr	a5,mstatus
    800015e0:	0087e793          	ori	a5,a5,8
    800015e4:	30079073          	csrw	mstatus,a5
    800015e8:	304027f3          	csrr	a5,mie
    800015ec:	0807e793          	ori	a5,a5,128
    800015f0:	30479073          	csrw	mie,a5
    800015f4:	00813403          	ld	s0,8(sp)
    800015f8:	01010113          	addi	sp,sp,16
    800015fc:	00008067          	ret

0000000080001600 <system_main>:
    80001600:	fe010113          	addi	sp,sp,-32
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	00913423          	sd	s1,8(sp)
    8000160c:	00113c23          	sd	ra,24(sp)
    80001610:	02010413          	addi	s0,sp,32
    80001614:	00000097          	auipc	ra,0x0
    80001618:	0c4080e7          	jalr	196(ra) # 800016d8 <cpuid>
    8000161c:	00003497          	auipc	s1,0x3
    80001620:	da448493          	addi	s1,s1,-604 # 800043c0 <started>
    80001624:	02050263          	beqz	a0,80001648 <system_main+0x48>
    80001628:	0004a783          	lw	a5,0(s1)
    8000162c:	0007879b          	sext.w	a5,a5
    80001630:	fe078ce3          	beqz	a5,80001628 <system_main+0x28>
    80001634:	0ff0000f          	fence
    80001638:	00003517          	auipc	a0,0x3
    8000163c:	a1850513          	addi	a0,a0,-1512 # 80004050 <CONSOLE_STATUS+0x40>
    80001640:	00001097          	auipc	ra,0x1
    80001644:	a7c080e7          	jalr	-1412(ra) # 800020bc <panic>
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	9d0080e7          	jalr	-1584(ra) # 80002018 <consoleinit>
    80001650:	00001097          	auipc	ra,0x1
    80001654:	15c080e7          	jalr	348(ra) # 800027ac <printfinit>
    80001658:	00003517          	auipc	a0,0x3
    8000165c:	ad850513          	addi	a0,a0,-1320 # 80004130 <CONSOLE_STATUS+0x120>
    80001660:	00001097          	auipc	ra,0x1
    80001664:	ab8080e7          	jalr	-1352(ra) # 80002118 <__printf>
    80001668:	00003517          	auipc	a0,0x3
    8000166c:	9b850513          	addi	a0,a0,-1608 # 80004020 <CONSOLE_STATUS+0x10>
    80001670:	00001097          	auipc	ra,0x1
    80001674:	aa8080e7          	jalr	-1368(ra) # 80002118 <__printf>
    80001678:	00003517          	auipc	a0,0x3
    8000167c:	ab850513          	addi	a0,a0,-1352 # 80004130 <CONSOLE_STATUS+0x120>
    80001680:	00001097          	auipc	ra,0x1
    80001684:	a98080e7          	jalr	-1384(ra) # 80002118 <__printf>
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	4b0080e7          	jalr	1200(ra) # 80002b38 <kinit>
    80001690:	00000097          	auipc	ra,0x0
    80001694:	148080e7          	jalr	328(ra) # 800017d8 <trapinit>
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	16c080e7          	jalr	364(ra) # 80001804 <trapinithart>
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	5c0080e7          	jalr	1472(ra) # 80001c60 <plicinit>
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	5e0080e7          	jalr	1504(ra) # 80001c88 <plicinithart>
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	078080e7          	jalr	120(ra) # 80001728 <userinit>
    800016b8:	0ff0000f          	fence
    800016bc:	00100793          	li	a5,1
    800016c0:	00003517          	auipc	a0,0x3
    800016c4:	97850513          	addi	a0,a0,-1672 # 80004038 <CONSOLE_STATUS+0x28>
    800016c8:	00f4a023          	sw	a5,0(s1)
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	a4c080e7          	jalr	-1460(ra) # 80002118 <__printf>
    800016d4:	0000006f          	j	800016d4 <system_main+0xd4>

00000000800016d8 <cpuid>:
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
    800016e4:	00020513          	mv	a0,tp
    800016e8:	00813403          	ld	s0,8(sp)
    800016ec:	0005051b          	sext.w	a0,a0
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <mycpu>:
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    80001704:	00020793          	mv	a5,tp
    80001708:	00813403          	ld	s0,8(sp)
    8000170c:	0007879b          	sext.w	a5,a5
    80001710:	00779793          	slli	a5,a5,0x7
    80001714:	00004517          	auipc	a0,0x4
    80001718:	d1c50513          	addi	a0,a0,-740 # 80005430 <cpus>
    8000171c:	00f50533          	add	a0,a0,a5
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <userinit>:
    80001728:	ff010113          	addi	sp,sp,-16
    8000172c:	00813423          	sd	s0,8(sp)
    80001730:	01010413          	addi	s0,sp,16
    80001734:	00813403          	ld	s0,8(sp)
    80001738:	01010113          	addi	sp,sp,16
    8000173c:	00000317          	auipc	t1,0x0
    80001740:	8e430067          	jr	-1820(t1) # 80001020 <main>

0000000080001744 <either_copyout>:
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00813023          	sd	s0,0(sp)
    8000174c:	00113423          	sd	ra,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    80001754:	02051663          	bnez	a0,80001780 <either_copyout+0x3c>
    80001758:	00058513          	mv	a0,a1
    8000175c:	00060593          	mv	a1,a2
    80001760:	0006861b          	sext.w	a2,a3
    80001764:	00002097          	auipc	ra,0x2
    80001768:	c60080e7          	jalr	-928(ra) # 800033c4 <__memmove>
    8000176c:	00813083          	ld	ra,8(sp)
    80001770:	00013403          	ld	s0,0(sp)
    80001774:	00000513          	li	a0,0
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret
    80001780:	00003517          	auipc	a0,0x3
    80001784:	8f850513          	addi	a0,a0,-1800 # 80004078 <CONSOLE_STATUS+0x68>
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	934080e7          	jalr	-1740(ra) # 800020bc <panic>

0000000080001790 <either_copyin>:
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00813023          	sd	s0,0(sp)
    80001798:	00113423          	sd	ra,8(sp)
    8000179c:	01010413          	addi	s0,sp,16
    800017a0:	02059463          	bnez	a1,800017c8 <either_copyin+0x38>
    800017a4:	00060593          	mv	a1,a2
    800017a8:	0006861b          	sext.w	a2,a3
    800017ac:	00002097          	auipc	ra,0x2
    800017b0:	c18080e7          	jalr	-1000(ra) # 800033c4 <__memmove>
    800017b4:	00813083          	ld	ra,8(sp)
    800017b8:	00013403          	ld	s0,0(sp)
    800017bc:	00000513          	li	a0,0
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret
    800017c8:	00003517          	auipc	a0,0x3
    800017cc:	8d850513          	addi	a0,a0,-1832 # 800040a0 <CONSOLE_STATUS+0x90>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	8ec080e7          	jalr	-1812(ra) # 800020bc <panic>

00000000800017d8 <trapinit>:
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00813423          	sd	s0,8(sp)
    800017e0:	01010413          	addi	s0,sp,16
    800017e4:	00813403          	ld	s0,8(sp)
    800017e8:	00003597          	auipc	a1,0x3
    800017ec:	8e058593          	addi	a1,a1,-1824 # 800040c8 <CONSOLE_STATUS+0xb8>
    800017f0:	00004517          	auipc	a0,0x4
    800017f4:	cc050513          	addi	a0,a0,-832 # 800054b0 <tickslock>
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00001317          	auipc	t1,0x1
    80001800:	5cc30067          	jr	1484(t1) # 80002dc8 <initlock>

0000000080001804 <trapinithart>:
    80001804:	ff010113          	addi	sp,sp,-16
    80001808:	00813423          	sd	s0,8(sp)
    8000180c:	01010413          	addi	s0,sp,16
    80001810:	00000797          	auipc	a5,0x0
    80001814:	30078793          	addi	a5,a5,768 # 80001b10 <kernelvec>
    80001818:	10579073          	csrw	stvec,a5
    8000181c:	00813403          	ld	s0,8(sp)
    80001820:	01010113          	addi	sp,sp,16
    80001824:	00008067          	ret

0000000080001828 <usertrap>:
    80001828:	ff010113          	addi	sp,sp,-16
    8000182c:	00813423          	sd	s0,8(sp)
    80001830:	01010413          	addi	s0,sp,16
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <usertrapret>:
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00813423          	sd	s0,8(sp)
    80001848:	01010413          	addi	s0,sp,16
    8000184c:	00813403          	ld	s0,8(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <kerneltrap>:
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00813823          	sd	s0,16(sp)
    80001860:	00113c23          	sd	ra,24(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	02010413          	addi	s0,sp,32
    8000186c:	142025f3          	csrr	a1,scause
    80001870:	100027f3          	csrr	a5,sstatus
    80001874:	0027f793          	andi	a5,a5,2
    80001878:	10079c63          	bnez	a5,80001990 <kerneltrap+0x138>
    8000187c:	142027f3          	csrr	a5,scause
    80001880:	0207ce63          	bltz	a5,800018bc <kerneltrap+0x64>
    80001884:	00003517          	auipc	a0,0x3
    80001888:	88c50513          	addi	a0,a0,-1908 # 80004110 <CONSOLE_STATUS+0x100>
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	88c080e7          	jalr	-1908(ra) # 80002118 <__printf>
    80001894:	141025f3          	csrr	a1,sepc
    80001898:	14302673          	csrr	a2,stval
    8000189c:	00003517          	auipc	a0,0x3
    800018a0:	88450513          	addi	a0,a0,-1916 # 80004120 <CONSOLE_STATUS+0x110>
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	874080e7          	jalr	-1932(ra) # 80002118 <__printf>
    800018ac:	00003517          	auipc	a0,0x3
    800018b0:	88c50513          	addi	a0,a0,-1908 # 80004138 <CONSOLE_STATUS+0x128>
    800018b4:	00001097          	auipc	ra,0x1
    800018b8:	808080e7          	jalr	-2040(ra) # 800020bc <panic>
    800018bc:	0ff7f713          	andi	a4,a5,255
    800018c0:	00900693          	li	a3,9
    800018c4:	04d70063          	beq	a4,a3,80001904 <kerneltrap+0xac>
    800018c8:	fff00713          	li	a4,-1
    800018cc:	03f71713          	slli	a4,a4,0x3f
    800018d0:	00170713          	addi	a4,a4,1
    800018d4:	fae798e3          	bne	a5,a4,80001884 <kerneltrap+0x2c>
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	e00080e7          	jalr	-512(ra) # 800016d8 <cpuid>
    800018e0:	06050663          	beqz	a0,8000194c <kerneltrap+0xf4>
    800018e4:	144027f3          	csrr	a5,sip
    800018e8:	ffd7f793          	andi	a5,a5,-3
    800018ec:	14479073          	csrw	sip,a5
    800018f0:	01813083          	ld	ra,24(sp)
    800018f4:	01013403          	ld	s0,16(sp)
    800018f8:	00813483          	ld	s1,8(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret
    80001904:	00000097          	auipc	ra,0x0
    80001908:	3d0080e7          	jalr	976(ra) # 80001cd4 <plic_claim>
    8000190c:	00a00793          	li	a5,10
    80001910:	00050493          	mv	s1,a0
    80001914:	06f50863          	beq	a0,a5,80001984 <kerneltrap+0x12c>
    80001918:	fc050ce3          	beqz	a0,800018f0 <kerneltrap+0x98>
    8000191c:	00050593          	mv	a1,a0
    80001920:	00002517          	auipc	a0,0x2
    80001924:	7d050513          	addi	a0,a0,2000 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	7f0080e7          	jalr	2032(ra) # 80002118 <__printf>
    80001930:	01013403          	ld	s0,16(sp)
    80001934:	01813083          	ld	ra,24(sp)
    80001938:	00048513          	mv	a0,s1
    8000193c:	00813483          	ld	s1,8(sp)
    80001940:	02010113          	addi	sp,sp,32
    80001944:	00000317          	auipc	t1,0x0
    80001948:	3c830067          	jr	968(t1) # 80001d0c <plic_complete>
    8000194c:	00004517          	auipc	a0,0x4
    80001950:	b6450513          	addi	a0,a0,-1180 # 800054b0 <tickslock>
    80001954:	00001097          	auipc	ra,0x1
    80001958:	498080e7          	jalr	1176(ra) # 80002dec <acquire>
    8000195c:	00003717          	auipc	a4,0x3
    80001960:	a6870713          	addi	a4,a4,-1432 # 800043c4 <ticks>
    80001964:	00072783          	lw	a5,0(a4)
    80001968:	00004517          	auipc	a0,0x4
    8000196c:	b4850513          	addi	a0,a0,-1208 # 800054b0 <tickslock>
    80001970:	0017879b          	addiw	a5,a5,1
    80001974:	00f72023          	sw	a5,0(a4)
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	540080e7          	jalr	1344(ra) # 80002eb8 <release>
    80001980:	f65ff06f          	j	800018e4 <kerneltrap+0x8c>
    80001984:	00001097          	auipc	ra,0x1
    80001988:	09c080e7          	jalr	156(ra) # 80002a20 <uartintr>
    8000198c:	fa5ff06f          	j	80001930 <kerneltrap+0xd8>
    80001990:	00002517          	auipc	a0,0x2
    80001994:	74050513          	addi	a0,a0,1856 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	724080e7          	jalr	1828(ra) # 800020bc <panic>

00000000800019a0 <clockintr>:
    800019a0:	fe010113          	addi	sp,sp,-32
    800019a4:	00813823          	sd	s0,16(sp)
    800019a8:	00913423          	sd	s1,8(sp)
    800019ac:	00113c23          	sd	ra,24(sp)
    800019b0:	02010413          	addi	s0,sp,32
    800019b4:	00004497          	auipc	s1,0x4
    800019b8:	afc48493          	addi	s1,s1,-1284 # 800054b0 <tickslock>
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	42c080e7          	jalr	1068(ra) # 80002dec <acquire>
    800019c8:	00003717          	auipc	a4,0x3
    800019cc:	9fc70713          	addi	a4,a4,-1540 # 800043c4 <ticks>
    800019d0:	00072783          	lw	a5,0(a4)
    800019d4:	01013403          	ld	s0,16(sp)
    800019d8:	01813083          	ld	ra,24(sp)
    800019dc:	00048513          	mv	a0,s1
    800019e0:	0017879b          	addiw	a5,a5,1
    800019e4:	00813483          	ld	s1,8(sp)
    800019e8:	00f72023          	sw	a5,0(a4)
    800019ec:	02010113          	addi	sp,sp,32
    800019f0:	00001317          	auipc	t1,0x1
    800019f4:	4c830067          	jr	1224(t1) # 80002eb8 <release>

00000000800019f8 <devintr>:
    800019f8:	142027f3          	csrr	a5,scause
    800019fc:	00000513          	li	a0,0
    80001a00:	0007c463          	bltz	a5,80001a08 <devintr+0x10>
    80001a04:	00008067          	ret
    80001a08:	fe010113          	addi	sp,sp,-32
    80001a0c:	00813823          	sd	s0,16(sp)
    80001a10:	00113c23          	sd	ra,24(sp)
    80001a14:	00913423          	sd	s1,8(sp)
    80001a18:	02010413          	addi	s0,sp,32
    80001a1c:	0ff7f713          	andi	a4,a5,255
    80001a20:	00900693          	li	a3,9
    80001a24:	04d70c63          	beq	a4,a3,80001a7c <devintr+0x84>
    80001a28:	fff00713          	li	a4,-1
    80001a2c:	03f71713          	slli	a4,a4,0x3f
    80001a30:	00170713          	addi	a4,a4,1
    80001a34:	00e78c63          	beq	a5,a4,80001a4c <devintr+0x54>
    80001a38:	01813083          	ld	ra,24(sp)
    80001a3c:	01013403          	ld	s0,16(sp)
    80001a40:	00813483          	ld	s1,8(sp)
    80001a44:	02010113          	addi	sp,sp,32
    80001a48:	00008067          	ret
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	c8c080e7          	jalr	-884(ra) # 800016d8 <cpuid>
    80001a54:	06050663          	beqz	a0,80001ac0 <devintr+0xc8>
    80001a58:	144027f3          	csrr	a5,sip
    80001a5c:	ffd7f793          	andi	a5,a5,-3
    80001a60:	14479073          	csrw	sip,a5
    80001a64:	01813083          	ld	ra,24(sp)
    80001a68:	01013403          	ld	s0,16(sp)
    80001a6c:	00813483          	ld	s1,8(sp)
    80001a70:	00200513          	li	a0,2
    80001a74:	02010113          	addi	sp,sp,32
    80001a78:	00008067          	ret
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	258080e7          	jalr	600(ra) # 80001cd4 <plic_claim>
    80001a84:	00a00793          	li	a5,10
    80001a88:	00050493          	mv	s1,a0
    80001a8c:	06f50663          	beq	a0,a5,80001af8 <devintr+0x100>
    80001a90:	00100513          	li	a0,1
    80001a94:	fa0482e3          	beqz	s1,80001a38 <devintr+0x40>
    80001a98:	00048593          	mv	a1,s1
    80001a9c:	00002517          	auipc	a0,0x2
    80001aa0:	65450513          	addi	a0,a0,1620 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	674080e7          	jalr	1652(ra) # 80002118 <__printf>
    80001aac:	00048513          	mv	a0,s1
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	25c080e7          	jalr	604(ra) # 80001d0c <plic_complete>
    80001ab8:	00100513          	li	a0,1
    80001abc:	f7dff06f          	j	80001a38 <devintr+0x40>
    80001ac0:	00004517          	auipc	a0,0x4
    80001ac4:	9f050513          	addi	a0,a0,-1552 # 800054b0 <tickslock>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	324080e7          	jalr	804(ra) # 80002dec <acquire>
    80001ad0:	00003717          	auipc	a4,0x3
    80001ad4:	8f470713          	addi	a4,a4,-1804 # 800043c4 <ticks>
    80001ad8:	00072783          	lw	a5,0(a4)
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	9d450513          	addi	a0,a0,-1580 # 800054b0 <tickslock>
    80001ae4:	0017879b          	addiw	a5,a5,1
    80001ae8:	00f72023          	sw	a5,0(a4)
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	3cc080e7          	jalr	972(ra) # 80002eb8 <release>
    80001af4:	f65ff06f          	j	80001a58 <devintr+0x60>
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	f28080e7          	jalr	-216(ra) # 80002a20 <uartintr>
    80001b00:	fadff06f          	j	80001aac <devintr+0xb4>
	...

0000000080001b10 <kernelvec>:
    80001b10:	f0010113          	addi	sp,sp,-256
    80001b14:	00113023          	sd	ra,0(sp)
    80001b18:	00213423          	sd	sp,8(sp)
    80001b1c:	00313823          	sd	gp,16(sp)
    80001b20:	00413c23          	sd	tp,24(sp)
    80001b24:	02513023          	sd	t0,32(sp)
    80001b28:	02613423          	sd	t1,40(sp)
    80001b2c:	02713823          	sd	t2,48(sp)
    80001b30:	02813c23          	sd	s0,56(sp)
    80001b34:	04913023          	sd	s1,64(sp)
    80001b38:	04a13423          	sd	a0,72(sp)
    80001b3c:	04b13823          	sd	a1,80(sp)
    80001b40:	04c13c23          	sd	a2,88(sp)
    80001b44:	06d13023          	sd	a3,96(sp)
    80001b48:	06e13423          	sd	a4,104(sp)
    80001b4c:	06f13823          	sd	a5,112(sp)
    80001b50:	07013c23          	sd	a6,120(sp)
    80001b54:	09113023          	sd	a7,128(sp)
    80001b58:	09213423          	sd	s2,136(sp)
    80001b5c:	09313823          	sd	s3,144(sp)
    80001b60:	09413c23          	sd	s4,152(sp)
    80001b64:	0b513023          	sd	s5,160(sp)
    80001b68:	0b613423          	sd	s6,168(sp)
    80001b6c:	0b713823          	sd	s7,176(sp)
    80001b70:	0b813c23          	sd	s8,184(sp)
    80001b74:	0d913023          	sd	s9,192(sp)
    80001b78:	0da13423          	sd	s10,200(sp)
    80001b7c:	0db13823          	sd	s11,208(sp)
    80001b80:	0dc13c23          	sd	t3,216(sp)
    80001b84:	0fd13023          	sd	t4,224(sp)
    80001b88:	0fe13423          	sd	t5,232(sp)
    80001b8c:	0ff13823          	sd	t6,240(sp)
    80001b90:	cc9ff0ef          	jal	ra,80001858 <kerneltrap>
    80001b94:	00013083          	ld	ra,0(sp)
    80001b98:	00813103          	ld	sp,8(sp)
    80001b9c:	01013183          	ld	gp,16(sp)
    80001ba0:	02013283          	ld	t0,32(sp)
    80001ba4:	02813303          	ld	t1,40(sp)
    80001ba8:	03013383          	ld	t2,48(sp)
    80001bac:	03813403          	ld	s0,56(sp)
    80001bb0:	04013483          	ld	s1,64(sp)
    80001bb4:	04813503          	ld	a0,72(sp)
    80001bb8:	05013583          	ld	a1,80(sp)
    80001bbc:	05813603          	ld	a2,88(sp)
    80001bc0:	06013683          	ld	a3,96(sp)
    80001bc4:	06813703          	ld	a4,104(sp)
    80001bc8:	07013783          	ld	a5,112(sp)
    80001bcc:	07813803          	ld	a6,120(sp)
    80001bd0:	08013883          	ld	a7,128(sp)
    80001bd4:	08813903          	ld	s2,136(sp)
    80001bd8:	09013983          	ld	s3,144(sp)
    80001bdc:	09813a03          	ld	s4,152(sp)
    80001be0:	0a013a83          	ld	s5,160(sp)
    80001be4:	0a813b03          	ld	s6,168(sp)
    80001be8:	0b013b83          	ld	s7,176(sp)
    80001bec:	0b813c03          	ld	s8,184(sp)
    80001bf0:	0c013c83          	ld	s9,192(sp)
    80001bf4:	0c813d03          	ld	s10,200(sp)
    80001bf8:	0d013d83          	ld	s11,208(sp)
    80001bfc:	0d813e03          	ld	t3,216(sp)
    80001c00:	0e013e83          	ld	t4,224(sp)
    80001c04:	0e813f03          	ld	t5,232(sp)
    80001c08:	0f013f83          	ld	t6,240(sp)
    80001c0c:	10010113          	addi	sp,sp,256
    80001c10:	10200073          	sret
    80001c14:	00000013          	nop
    80001c18:	00000013          	nop
    80001c1c:	00000013          	nop

0000000080001c20 <timervec>:
    80001c20:	34051573          	csrrw	a0,mscratch,a0
    80001c24:	00b53023          	sd	a1,0(a0)
    80001c28:	00c53423          	sd	a2,8(a0)
    80001c2c:	00d53823          	sd	a3,16(a0)
    80001c30:	01853583          	ld	a1,24(a0)
    80001c34:	02053603          	ld	a2,32(a0)
    80001c38:	0005b683          	ld	a3,0(a1)
    80001c3c:	00c686b3          	add	a3,a3,a2
    80001c40:	00d5b023          	sd	a3,0(a1)
    80001c44:	00200593          	li	a1,2
    80001c48:	14459073          	csrw	sip,a1
    80001c4c:	01053683          	ld	a3,16(a0)
    80001c50:	00853603          	ld	a2,8(a0)
    80001c54:	00053583          	ld	a1,0(a0)
    80001c58:	34051573          	csrrw	a0,mscratch,a0
    80001c5c:	30200073          	mret

0000000080001c60 <plicinit>:
    80001c60:	ff010113          	addi	sp,sp,-16
    80001c64:	00813423          	sd	s0,8(sp)
    80001c68:	01010413          	addi	s0,sp,16
    80001c6c:	00813403          	ld	s0,8(sp)
    80001c70:	0c0007b7          	lui	a5,0xc000
    80001c74:	00100713          	li	a4,1
    80001c78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001c7c:	00e7a223          	sw	a4,4(a5)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <plicinithart>:
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	00113423          	sd	ra,8(sp)
    80001c94:	01010413          	addi	s0,sp,16
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	a40080e7          	jalr	-1472(ra) # 800016d8 <cpuid>
    80001ca0:	0085171b          	slliw	a4,a0,0x8
    80001ca4:	0c0027b7          	lui	a5,0xc002
    80001ca8:	00e787b3          	add	a5,a5,a4
    80001cac:	40200713          	li	a4,1026
    80001cb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001cb4:	00813083          	ld	ra,8(sp)
    80001cb8:	00013403          	ld	s0,0(sp)
    80001cbc:	00d5151b          	slliw	a0,a0,0xd
    80001cc0:	0c2017b7          	lui	a5,0xc201
    80001cc4:	00a78533          	add	a0,a5,a0
    80001cc8:	00052023          	sw	zero,0(a0)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <plic_claim>:
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00813023          	sd	s0,0(sp)
    80001cdc:	00113423          	sd	ra,8(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	9f4080e7          	jalr	-1548(ra) # 800016d8 <cpuid>
    80001cec:	00813083          	ld	ra,8(sp)
    80001cf0:	00013403          	ld	s0,0(sp)
    80001cf4:	00d5151b          	slliw	a0,a0,0xd
    80001cf8:	0c2017b7          	lui	a5,0xc201
    80001cfc:	00a78533          	add	a0,a5,a0
    80001d00:	00452503          	lw	a0,4(a0)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret

0000000080001d0c <plic_complete>:
    80001d0c:	fe010113          	addi	sp,sp,-32
    80001d10:	00813823          	sd	s0,16(sp)
    80001d14:	00913423          	sd	s1,8(sp)
    80001d18:	00113c23          	sd	ra,24(sp)
    80001d1c:	02010413          	addi	s0,sp,32
    80001d20:	00050493          	mv	s1,a0
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	9b4080e7          	jalr	-1612(ra) # 800016d8 <cpuid>
    80001d2c:	01813083          	ld	ra,24(sp)
    80001d30:	01013403          	ld	s0,16(sp)
    80001d34:	00d5179b          	slliw	a5,a0,0xd
    80001d38:	0c201737          	lui	a4,0xc201
    80001d3c:	00f707b3          	add	a5,a4,a5
    80001d40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001d44:	00813483          	ld	s1,8(sp)
    80001d48:	02010113          	addi	sp,sp,32
    80001d4c:	00008067          	ret

0000000080001d50 <consolewrite>:
    80001d50:	fb010113          	addi	sp,sp,-80
    80001d54:	04813023          	sd	s0,64(sp)
    80001d58:	04113423          	sd	ra,72(sp)
    80001d5c:	02913c23          	sd	s1,56(sp)
    80001d60:	03213823          	sd	s2,48(sp)
    80001d64:	03313423          	sd	s3,40(sp)
    80001d68:	03413023          	sd	s4,32(sp)
    80001d6c:	01513c23          	sd	s5,24(sp)
    80001d70:	05010413          	addi	s0,sp,80
    80001d74:	06c05c63          	blez	a2,80001dec <consolewrite+0x9c>
    80001d78:	00060993          	mv	s3,a2
    80001d7c:	00050a13          	mv	s4,a0
    80001d80:	00058493          	mv	s1,a1
    80001d84:	00000913          	li	s2,0
    80001d88:	fff00a93          	li	s5,-1
    80001d8c:	01c0006f          	j	80001da8 <consolewrite+0x58>
    80001d90:	fbf44503          	lbu	a0,-65(s0)
    80001d94:	0019091b          	addiw	s2,s2,1
    80001d98:	00148493          	addi	s1,s1,1
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	a9c080e7          	jalr	-1380(ra) # 80002838 <uartputc>
    80001da4:	03298063          	beq	s3,s2,80001dc4 <consolewrite+0x74>
    80001da8:	00048613          	mv	a2,s1
    80001dac:	00100693          	li	a3,1
    80001db0:	000a0593          	mv	a1,s4
    80001db4:	fbf40513          	addi	a0,s0,-65
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	9d8080e7          	jalr	-1576(ra) # 80001790 <either_copyin>
    80001dc0:	fd5518e3          	bne	a0,s5,80001d90 <consolewrite+0x40>
    80001dc4:	04813083          	ld	ra,72(sp)
    80001dc8:	04013403          	ld	s0,64(sp)
    80001dcc:	03813483          	ld	s1,56(sp)
    80001dd0:	02813983          	ld	s3,40(sp)
    80001dd4:	02013a03          	ld	s4,32(sp)
    80001dd8:	01813a83          	ld	s5,24(sp)
    80001ddc:	00090513          	mv	a0,s2
    80001de0:	03013903          	ld	s2,48(sp)
    80001de4:	05010113          	addi	sp,sp,80
    80001de8:	00008067          	ret
    80001dec:	00000913          	li	s2,0
    80001df0:	fd5ff06f          	j	80001dc4 <consolewrite+0x74>

0000000080001df4 <consoleread>:
    80001df4:	f9010113          	addi	sp,sp,-112
    80001df8:	06813023          	sd	s0,96(sp)
    80001dfc:	04913c23          	sd	s1,88(sp)
    80001e00:	05213823          	sd	s2,80(sp)
    80001e04:	05313423          	sd	s3,72(sp)
    80001e08:	05413023          	sd	s4,64(sp)
    80001e0c:	03513c23          	sd	s5,56(sp)
    80001e10:	03613823          	sd	s6,48(sp)
    80001e14:	03713423          	sd	s7,40(sp)
    80001e18:	03813023          	sd	s8,32(sp)
    80001e1c:	06113423          	sd	ra,104(sp)
    80001e20:	01913c23          	sd	s9,24(sp)
    80001e24:	07010413          	addi	s0,sp,112
    80001e28:	00060b93          	mv	s7,a2
    80001e2c:	00050913          	mv	s2,a0
    80001e30:	00058c13          	mv	s8,a1
    80001e34:	00060b1b          	sext.w	s6,a2
    80001e38:	00003497          	auipc	s1,0x3
    80001e3c:	69048493          	addi	s1,s1,1680 # 800054c8 <cons>
    80001e40:	00400993          	li	s3,4
    80001e44:	fff00a13          	li	s4,-1
    80001e48:	00a00a93          	li	s5,10
    80001e4c:	05705e63          	blez	s7,80001ea8 <consoleread+0xb4>
    80001e50:	09c4a703          	lw	a4,156(s1)
    80001e54:	0984a783          	lw	a5,152(s1)
    80001e58:	0007071b          	sext.w	a4,a4
    80001e5c:	08e78463          	beq	a5,a4,80001ee4 <consoleread+0xf0>
    80001e60:	07f7f713          	andi	a4,a5,127
    80001e64:	00e48733          	add	a4,s1,a4
    80001e68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001e6c:	0017869b          	addiw	a3,a5,1
    80001e70:	08d4ac23          	sw	a3,152(s1)
    80001e74:	00070c9b          	sext.w	s9,a4
    80001e78:	0b370663          	beq	a4,s3,80001f24 <consoleread+0x130>
    80001e7c:	00100693          	li	a3,1
    80001e80:	f9f40613          	addi	a2,s0,-97
    80001e84:	000c0593          	mv	a1,s8
    80001e88:	00090513          	mv	a0,s2
    80001e8c:	f8e40fa3          	sb	a4,-97(s0)
    80001e90:	00000097          	auipc	ra,0x0
    80001e94:	8b4080e7          	jalr	-1868(ra) # 80001744 <either_copyout>
    80001e98:	01450863          	beq	a0,s4,80001ea8 <consoleread+0xb4>
    80001e9c:	001c0c13          	addi	s8,s8,1
    80001ea0:	fffb8b9b          	addiw	s7,s7,-1
    80001ea4:	fb5c94e3          	bne	s9,s5,80001e4c <consoleread+0x58>
    80001ea8:	000b851b          	sext.w	a0,s7
    80001eac:	06813083          	ld	ra,104(sp)
    80001eb0:	06013403          	ld	s0,96(sp)
    80001eb4:	05813483          	ld	s1,88(sp)
    80001eb8:	05013903          	ld	s2,80(sp)
    80001ebc:	04813983          	ld	s3,72(sp)
    80001ec0:	04013a03          	ld	s4,64(sp)
    80001ec4:	03813a83          	ld	s5,56(sp)
    80001ec8:	02813b83          	ld	s7,40(sp)
    80001ecc:	02013c03          	ld	s8,32(sp)
    80001ed0:	01813c83          	ld	s9,24(sp)
    80001ed4:	40ab053b          	subw	a0,s6,a0
    80001ed8:	03013b03          	ld	s6,48(sp)
    80001edc:	07010113          	addi	sp,sp,112
    80001ee0:	00008067          	ret
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	1d8080e7          	jalr	472(ra) # 800030bc <push_on>
    80001eec:	0984a703          	lw	a4,152(s1)
    80001ef0:	09c4a783          	lw	a5,156(s1)
    80001ef4:	0007879b          	sext.w	a5,a5
    80001ef8:	fef70ce3          	beq	a4,a5,80001ef0 <consoleread+0xfc>
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	234080e7          	jalr	564(ra) # 80003130 <pop_on>
    80001f04:	0984a783          	lw	a5,152(s1)
    80001f08:	07f7f713          	andi	a4,a5,127
    80001f0c:	00e48733          	add	a4,s1,a4
    80001f10:	01874703          	lbu	a4,24(a4)
    80001f14:	0017869b          	addiw	a3,a5,1
    80001f18:	08d4ac23          	sw	a3,152(s1)
    80001f1c:	00070c9b          	sext.w	s9,a4
    80001f20:	f5371ee3          	bne	a4,s3,80001e7c <consoleread+0x88>
    80001f24:	000b851b          	sext.w	a0,s7
    80001f28:	f96bf2e3          	bgeu	s7,s6,80001eac <consoleread+0xb8>
    80001f2c:	08f4ac23          	sw	a5,152(s1)
    80001f30:	f7dff06f          	j	80001eac <consoleread+0xb8>

0000000080001f34 <consputc>:
    80001f34:	10000793          	li	a5,256
    80001f38:	00f50663          	beq	a0,a5,80001f44 <consputc+0x10>
    80001f3c:	00001317          	auipc	t1,0x1
    80001f40:	9f430067          	jr	-1548(t1) # 80002930 <uartputc_sync>
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00800513          	li	a0,8
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	9d8080e7          	jalr	-1576(ra) # 80002930 <uartputc_sync>
    80001f60:	02000513          	li	a0,32
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	9cc080e7          	jalr	-1588(ra) # 80002930 <uartputc_sync>
    80001f6c:	00013403          	ld	s0,0(sp)
    80001f70:	00813083          	ld	ra,8(sp)
    80001f74:	00800513          	li	a0,8
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00001317          	auipc	t1,0x1
    80001f80:	9b430067          	jr	-1612(t1) # 80002930 <uartputc_sync>

0000000080001f84 <consoleintr>:
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00813823          	sd	s0,16(sp)
    80001f8c:	00913423          	sd	s1,8(sp)
    80001f90:	01213023          	sd	s2,0(sp)
    80001f94:	00113c23          	sd	ra,24(sp)
    80001f98:	02010413          	addi	s0,sp,32
    80001f9c:	00003917          	auipc	s2,0x3
    80001fa0:	52c90913          	addi	s2,s2,1324 # 800054c8 <cons>
    80001fa4:	00050493          	mv	s1,a0
    80001fa8:	00090513          	mv	a0,s2
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	e40080e7          	jalr	-448(ra) # 80002dec <acquire>
    80001fb4:	02048c63          	beqz	s1,80001fec <consoleintr+0x68>
    80001fb8:	0a092783          	lw	a5,160(s2)
    80001fbc:	09892703          	lw	a4,152(s2)
    80001fc0:	07f00693          	li	a3,127
    80001fc4:	40e7873b          	subw	a4,a5,a4
    80001fc8:	02e6e263          	bltu	a3,a4,80001fec <consoleintr+0x68>
    80001fcc:	00d00713          	li	a4,13
    80001fd0:	04e48063          	beq	s1,a4,80002010 <consoleintr+0x8c>
    80001fd4:	07f7f713          	andi	a4,a5,127
    80001fd8:	00e90733          	add	a4,s2,a4
    80001fdc:	0017879b          	addiw	a5,a5,1
    80001fe0:	0af92023          	sw	a5,160(s2)
    80001fe4:	00970c23          	sb	s1,24(a4)
    80001fe8:	08f92e23          	sw	a5,156(s2)
    80001fec:	01013403          	ld	s0,16(sp)
    80001ff0:	01813083          	ld	ra,24(sp)
    80001ff4:	00813483          	ld	s1,8(sp)
    80001ff8:	00013903          	ld	s2,0(sp)
    80001ffc:	00003517          	auipc	a0,0x3
    80002000:	4cc50513          	addi	a0,a0,1228 # 800054c8 <cons>
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00001317          	auipc	t1,0x1
    8000200c:	eb030067          	jr	-336(t1) # 80002eb8 <release>
    80002010:	00a00493          	li	s1,10
    80002014:	fc1ff06f          	j	80001fd4 <consoleintr+0x50>

0000000080002018 <consoleinit>:
    80002018:	fe010113          	addi	sp,sp,-32
    8000201c:	00113c23          	sd	ra,24(sp)
    80002020:	00813823          	sd	s0,16(sp)
    80002024:	00913423          	sd	s1,8(sp)
    80002028:	02010413          	addi	s0,sp,32
    8000202c:	00003497          	auipc	s1,0x3
    80002030:	49c48493          	addi	s1,s1,1180 # 800054c8 <cons>
    80002034:	00048513          	mv	a0,s1
    80002038:	00002597          	auipc	a1,0x2
    8000203c:	11058593          	addi	a1,a1,272 # 80004148 <CONSOLE_STATUS+0x138>
    80002040:	00001097          	auipc	ra,0x1
    80002044:	d88080e7          	jalr	-632(ra) # 80002dc8 <initlock>
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	7ac080e7          	jalr	1964(ra) # 800027f4 <uartinit>
    80002050:	01813083          	ld	ra,24(sp)
    80002054:	01013403          	ld	s0,16(sp)
    80002058:	00000797          	auipc	a5,0x0
    8000205c:	d9c78793          	addi	a5,a5,-612 # 80001df4 <consoleread>
    80002060:	0af4bc23          	sd	a5,184(s1)
    80002064:	00000797          	auipc	a5,0x0
    80002068:	cec78793          	addi	a5,a5,-788 # 80001d50 <consolewrite>
    8000206c:	0cf4b023          	sd	a5,192(s1)
    80002070:	00813483          	ld	s1,8(sp)
    80002074:	02010113          	addi	sp,sp,32
    80002078:	00008067          	ret

000000008000207c <console_read>:
    8000207c:	ff010113          	addi	sp,sp,-16
    80002080:	00813423          	sd	s0,8(sp)
    80002084:	01010413          	addi	s0,sp,16
    80002088:	00813403          	ld	s0,8(sp)
    8000208c:	00003317          	auipc	t1,0x3
    80002090:	4f433303          	ld	t1,1268(t1) # 80005580 <devsw+0x10>
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00030067          	jr	t1

000000008000209c <console_write>:
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    800020a8:	00813403          	ld	s0,8(sp)
    800020ac:	00003317          	auipc	t1,0x3
    800020b0:	4dc33303          	ld	t1,1244(t1) # 80005588 <devsw+0x18>
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00030067          	jr	t1

00000000800020bc <panic>:
    800020bc:	fe010113          	addi	sp,sp,-32
    800020c0:	00113c23          	sd	ra,24(sp)
    800020c4:	00813823          	sd	s0,16(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	02010413          	addi	s0,sp,32
    800020d0:	00050493          	mv	s1,a0
    800020d4:	00002517          	auipc	a0,0x2
    800020d8:	07c50513          	addi	a0,a0,124 # 80004150 <CONSOLE_STATUS+0x140>
    800020dc:	00003797          	auipc	a5,0x3
    800020e0:	5407a623          	sw	zero,1356(a5) # 80005628 <pr+0x18>
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	034080e7          	jalr	52(ra) # 80002118 <__printf>
    800020ec:	00048513          	mv	a0,s1
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	028080e7          	jalr	40(ra) # 80002118 <__printf>
    800020f8:	00002517          	auipc	a0,0x2
    800020fc:	03850513          	addi	a0,a0,56 # 80004130 <CONSOLE_STATUS+0x120>
    80002100:	00000097          	auipc	ra,0x0
    80002104:	018080e7          	jalr	24(ra) # 80002118 <__printf>
    80002108:	00100793          	li	a5,1
    8000210c:	00002717          	auipc	a4,0x2
    80002110:	2af72e23          	sw	a5,700(a4) # 800043c8 <panicked>
    80002114:	0000006f          	j	80002114 <panic+0x58>

0000000080002118 <__printf>:
    80002118:	f3010113          	addi	sp,sp,-208
    8000211c:	08813023          	sd	s0,128(sp)
    80002120:	07313423          	sd	s3,104(sp)
    80002124:	09010413          	addi	s0,sp,144
    80002128:	05813023          	sd	s8,64(sp)
    8000212c:	08113423          	sd	ra,136(sp)
    80002130:	06913c23          	sd	s1,120(sp)
    80002134:	07213823          	sd	s2,112(sp)
    80002138:	07413023          	sd	s4,96(sp)
    8000213c:	05513c23          	sd	s5,88(sp)
    80002140:	05613823          	sd	s6,80(sp)
    80002144:	05713423          	sd	s7,72(sp)
    80002148:	03913c23          	sd	s9,56(sp)
    8000214c:	03a13823          	sd	s10,48(sp)
    80002150:	03b13423          	sd	s11,40(sp)
    80002154:	00003317          	auipc	t1,0x3
    80002158:	4bc30313          	addi	t1,t1,1212 # 80005610 <pr>
    8000215c:	01832c03          	lw	s8,24(t1)
    80002160:	00b43423          	sd	a1,8(s0)
    80002164:	00c43823          	sd	a2,16(s0)
    80002168:	00d43c23          	sd	a3,24(s0)
    8000216c:	02e43023          	sd	a4,32(s0)
    80002170:	02f43423          	sd	a5,40(s0)
    80002174:	03043823          	sd	a6,48(s0)
    80002178:	03143c23          	sd	a7,56(s0)
    8000217c:	00050993          	mv	s3,a0
    80002180:	4a0c1663          	bnez	s8,8000262c <__printf+0x514>
    80002184:	60098c63          	beqz	s3,8000279c <__printf+0x684>
    80002188:	0009c503          	lbu	a0,0(s3)
    8000218c:	00840793          	addi	a5,s0,8
    80002190:	f6f43c23          	sd	a5,-136(s0)
    80002194:	00000493          	li	s1,0
    80002198:	22050063          	beqz	a0,800023b8 <__printf+0x2a0>
    8000219c:	00002a37          	lui	s4,0x2
    800021a0:	00018ab7          	lui	s5,0x18
    800021a4:	000f4b37          	lui	s6,0xf4
    800021a8:	00989bb7          	lui	s7,0x989
    800021ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800021b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800021b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800021b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800021bc:	00148c9b          	addiw	s9,s1,1
    800021c0:	02500793          	li	a5,37
    800021c4:	01998933          	add	s2,s3,s9
    800021c8:	38f51263          	bne	a0,a5,8000254c <__printf+0x434>
    800021cc:	00094783          	lbu	a5,0(s2)
    800021d0:	00078c9b          	sext.w	s9,a5
    800021d4:	1e078263          	beqz	a5,800023b8 <__printf+0x2a0>
    800021d8:	0024849b          	addiw	s1,s1,2
    800021dc:	07000713          	li	a4,112
    800021e0:	00998933          	add	s2,s3,s1
    800021e4:	38e78a63          	beq	a5,a4,80002578 <__printf+0x460>
    800021e8:	20f76863          	bltu	a4,a5,800023f8 <__printf+0x2e0>
    800021ec:	42a78863          	beq	a5,a0,8000261c <__printf+0x504>
    800021f0:	06400713          	li	a4,100
    800021f4:	40e79663          	bne	a5,a4,80002600 <__printf+0x4e8>
    800021f8:	f7843783          	ld	a5,-136(s0)
    800021fc:	0007a603          	lw	a2,0(a5)
    80002200:	00878793          	addi	a5,a5,8
    80002204:	f6f43c23          	sd	a5,-136(s0)
    80002208:	42064a63          	bltz	a2,8000263c <__printf+0x524>
    8000220c:	00a00713          	li	a4,10
    80002210:	02e677bb          	remuw	a5,a2,a4
    80002214:	00002d97          	auipc	s11,0x2
    80002218:	f64d8d93          	addi	s11,s11,-156 # 80004178 <digits>
    8000221c:	00900593          	li	a1,9
    80002220:	0006051b          	sext.w	a0,a2
    80002224:	00000c93          	li	s9,0
    80002228:	02079793          	slli	a5,a5,0x20
    8000222c:	0207d793          	srli	a5,a5,0x20
    80002230:	00fd87b3          	add	a5,s11,a5
    80002234:	0007c783          	lbu	a5,0(a5)
    80002238:	02e656bb          	divuw	a3,a2,a4
    8000223c:	f8f40023          	sb	a5,-128(s0)
    80002240:	14c5d863          	bge	a1,a2,80002390 <__printf+0x278>
    80002244:	06300593          	li	a1,99
    80002248:	00100c93          	li	s9,1
    8000224c:	02e6f7bb          	remuw	a5,a3,a4
    80002250:	02079793          	slli	a5,a5,0x20
    80002254:	0207d793          	srli	a5,a5,0x20
    80002258:	00fd87b3          	add	a5,s11,a5
    8000225c:	0007c783          	lbu	a5,0(a5)
    80002260:	02e6d73b          	divuw	a4,a3,a4
    80002264:	f8f400a3          	sb	a5,-127(s0)
    80002268:	12a5f463          	bgeu	a1,a0,80002390 <__printf+0x278>
    8000226c:	00a00693          	li	a3,10
    80002270:	00900593          	li	a1,9
    80002274:	02d777bb          	remuw	a5,a4,a3
    80002278:	02079793          	slli	a5,a5,0x20
    8000227c:	0207d793          	srli	a5,a5,0x20
    80002280:	00fd87b3          	add	a5,s11,a5
    80002284:	0007c503          	lbu	a0,0(a5)
    80002288:	02d757bb          	divuw	a5,a4,a3
    8000228c:	f8a40123          	sb	a0,-126(s0)
    80002290:	48e5f263          	bgeu	a1,a4,80002714 <__printf+0x5fc>
    80002294:	06300513          	li	a0,99
    80002298:	02d7f5bb          	remuw	a1,a5,a3
    8000229c:	02059593          	slli	a1,a1,0x20
    800022a0:	0205d593          	srli	a1,a1,0x20
    800022a4:	00bd85b3          	add	a1,s11,a1
    800022a8:	0005c583          	lbu	a1,0(a1)
    800022ac:	02d7d7bb          	divuw	a5,a5,a3
    800022b0:	f8b401a3          	sb	a1,-125(s0)
    800022b4:	48e57263          	bgeu	a0,a4,80002738 <__printf+0x620>
    800022b8:	3e700513          	li	a0,999
    800022bc:	02d7f5bb          	remuw	a1,a5,a3
    800022c0:	02059593          	slli	a1,a1,0x20
    800022c4:	0205d593          	srli	a1,a1,0x20
    800022c8:	00bd85b3          	add	a1,s11,a1
    800022cc:	0005c583          	lbu	a1,0(a1)
    800022d0:	02d7d7bb          	divuw	a5,a5,a3
    800022d4:	f8b40223          	sb	a1,-124(s0)
    800022d8:	46e57663          	bgeu	a0,a4,80002744 <__printf+0x62c>
    800022dc:	02d7f5bb          	remuw	a1,a5,a3
    800022e0:	02059593          	slli	a1,a1,0x20
    800022e4:	0205d593          	srli	a1,a1,0x20
    800022e8:	00bd85b3          	add	a1,s11,a1
    800022ec:	0005c583          	lbu	a1,0(a1)
    800022f0:	02d7d7bb          	divuw	a5,a5,a3
    800022f4:	f8b402a3          	sb	a1,-123(s0)
    800022f8:	46ea7863          	bgeu	s4,a4,80002768 <__printf+0x650>
    800022fc:	02d7f5bb          	remuw	a1,a5,a3
    80002300:	02059593          	slli	a1,a1,0x20
    80002304:	0205d593          	srli	a1,a1,0x20
    80002308:	00bd85b3          	add	a1,s11,a1
    8000230c:	0005c583          	lbu	a1,0(a1)
    80002310:	02d7d7bb          	divuw	a5,a5,a3
    80002314:	f8b40323          	sb	a1,-122(s0)
    80002318:	3eeaf863          	bgeu	s5,a4,80002708 <__printf+0x5f0>
    8000231c:	02d7f5bb          	remuw	a1,a5,a3
    80002320:	02059593          	slli	a1,a1,0x20
    80002324:	0205d593          	srli	a1,a1,0x20
    80002328:	00bd85b3          	add	a1,s11,a1
    8000232c:	0005c583          	lbu	a1,0(a1)
    80002330:	02d7d7bb          	divuw	a5,a5,a3
    80002334:	f8b403a3          	sb	a1,-121(s0)
    80002338:	42eb7e63          	bgeu	s6,a4,80002774 <__printf+0x65c>
    8000233c:	02d7f5bb          	remuw	a1,a5,a3
    80002340:	02059593          	slli	a1,a1,0x20
    80002344:	0205d593          	srli	a1,a1,0x20
    80002348:	00bd85b3          	add	a1,s11,a1
    8000234c:	0005c583          	lbu	a1,0(a1)
    80002350:	02d7d7bb          	divuw	a5,a5,a3
    80002354:	f8b40423          	sb	a1,-120(s0)
    80002358:	42ebfc63          	bgeu	s7,a4,80002790 <__printf+0x678>
    8000235c:	02079793          	slli	a5,a5,0x20
    80002360:	0207d793          	srli	a5,a5,0x20
    80002364:	00fd8db3          	add	s11,s11,a5
    80002368:	000dc703          	lbu	a4,0(s11)
    8000236c:	00a00793          	li	a5,10
    80002370:	00900c93          	li	s9,9
    80002374:	f8e404a3          	sb	a4,-119(s0)
    80002378:	00065c63          	bgez	a2,80002390 <__printf+0x278>
    8000237c:	f9040713          	addi	a4,s0,-112
    80002380:	00f70733          	add	a4,a4,a5
    80002384:	02d00693          	li	a3,45
    80002388:	fed70823          	sb	a3,-16(a4)
    8000238c:	00078c93          	mv	s9,a5
    80002390:	f8040793          	addi	a5,s0,-128
    80002394:	01978cb3          	add	s9,a5,s9
    80002398:	f7f40d13          	addi	s10,s0,-129
    8000239c:	000cc503          	lbu	a0,0(s9)
    800023a0:	fffc8c93          	addi	s9,s9,-1
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	b90080e7          	jalr	-1136(ra) # 80001f34 <consputc>
    800023ac:	ffac98e3          	bne	s9,s10,8000239c <__printf+0x284>
    800023b0:	00094503          	lbu	a0,0(s2)
    800023b4:	e00514e3          	bnez	a0,800021bc <__printf+0xa4>
    800023b8:	1a0c1663          	bnez	s8,80002564 <__printf+0x44c>
    800023bc:	08813083          	ld	ra,136(sp)
    800023c0:	08013403          	ld	s0,128(sp)
    800023c4:	07813483          	ld	s1,120(sp)
    800023c8:	07013903          	ld	s2,112(sp)
    800023cc:	06813983          	ld	s3,104(sp)
    800023d0:	06013a03          	ld	s4,96(sp)
    800023d4:	05813a83          	ld	s5,88(sp)
    800023d8:	05013b03          	ld	s6,80(sp)
    800023dc:	04813b83          	ld	s7,72(sp)
    800023e0:	04013c03          	ld	s8,64(sp)
    800023e4:	03813c83          	ld	s9,56(sp)
    800023e8:	03013d03          	ld	s10,48(sp)
    800023ec:	02813d83          	ld	s11,40(sp)
    800023f0:	0d010113          	addi	sp,sp,208
    800023f4:	00008067          	ret
    800023f8:	07300713          	li	a4,115
    800023fc:	1ce78a63          	beq	a5,a4,800025d0 <__printf+0x4b8>
    80002400:	07800713          	li	a4,120
    80002404:	1ee79e63          	bne	a5,a4,80002600 <__printf+0x4e8>
    80002408:	f7843783          	ld	a5,-136(s0)
    8000240c:	0007a703          	lw	a4,0(a5)
    80002410:	00878793          	addi	a5,a5,8
    80002414:	f6f43c23          	sd	a5,-136(s0)
    80002418:	28074263          	bltz	a4,8000269c <__printf+0x584>
    8000241c:	00002d97          	auipc	s11,0x2
    80002420:	d5cd8d93          	addi	s11,s11,-676 # 80004178 <digits>
    80002424:	00f77793          	andi	a5,a4,15
    80002428:	00fd87b3          	add	a5,s11,a5
    8000242c:	0007c683          	lbu	a3,0(a5)
    80002430:	00f00613          	li	a2,15
    80002434:	0007079b          	sext.w	a5,a4
    80002438:	f8d40023          	sb	a3,-128(s0)
    8000243c:	0047559b          	srliw	a1,a4,0x4
    80002440:	0047569b          	srliw	a3,a4,0x4
    80002444:	00000c93          	li	s9,0
    80002448:	0ee65063          	bge	a2,a4,80002528 <__printf+0x410>
    8000244c:	00f6f693          	andi	a3,a3,15
    80002450:	00dd86b3          	add	a3,s11,a3
    80002454:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002458:	0087d79b          	srliw	a5,a5,0x8
    8000245c:	00100c93          	li	s9,1
    80002460:	f8d400a3          	sb	a3,-127(s0)
    80002464:	0cb67263          	bgeu	a2,a1,80002528 <__printf+0x410>
    80002468:	00f7f693          	andi	a3,a5,15
    8000246c:	00dd86b3          	add	a3,s11,a3
    80002470:	0006c583          	lbu	a1,0(a3)
    80002474:	00f00613          	li	a2,15
    80002478:	0047d69b          	srliw	a3,a5,0x4
    8000247c:	f8b40123          	sb	a1,-126(s0)
    80002480:	0047d593          	srli	a1,a5,0x4
    80002484:	28f67e63          	bgeu	a2,a5,80002720 <__printf+0x608>
    80002488:	00f6f693          	andi	a3,a3,15
    8000248c:	00dd86b3          	add	a3,s11,a3
    80002490:	0006c503          	lbu	a0,0(a3)
    80002494:	0087d813          	srli	a6,a5,0x8
    80002498:	0087d69b          	srliw	a3,a5,0x8
    8000249c:	f8a401a3          	sb	a0,-125(s0)
    800024a0:	28b67663          	bgeu	a2,a1,8000272c <__printf+0x614>
    800024a4:	00f6f693          	andi	a3,a3,15
    800024a8:	00dd86b3          	add	a3,s11,a3
    800024ac:	0006c583          	lbu	a1,0(a3)
    800024b0:	00c7d513          	srli	a0,a5,0xc
    800024b4:	00c7d69b          	srliw	a3,a5,0xc
    800024b8:	f8b40223          	sb	a1,-124(s0)
    800024bc:	29067a63          	bgeu	a2,a6,80002750 <__printf+0x638>
    800024c0:	00f6f693          	andi	a3,a3,15
    800024c4:	00dd86b3          	add	a3,s11,a3
    800024c8:	0006c583          	lbu	a1,0(a3)
    800024cc:	0107d813          	srli	a6,a5,0x10
    800024d0:	0107d69b          	srliw	a3,a5,0x10
    800024d4:	f8b402a3          	sb	a1,-123(s0)
    800024d8:	28a67263          	bgeu	a2,a0,8000275c <__printf+0x644>
    800024dc:	00f6f693          	andi	a3,a3,15
    800024e0:	00dd86b3          	add	a3,s11,a3
    800024e4:	0006c683          	lbu	a3,0(a3)
    800024e8:	0147d79b          	srliw	a5,a5,0x14
    800024ec:	f8d40323          	sb	a3,-122(s0)
    800024f0:	21067663          	bgeu	a2,a6,800026fc <__printf+0x5e4>
    800024f4:	02079793          	slli	a5,a5,0x20
    800024f8:	0207d793          	srli	a5,a5,0x20
    800024fc:	00fd8db3          	add	s11,s11,a5
    80002500:	000dc683          	lbu	a3,0(s11)
    80002504:	00800793          	li	a5,8
    80002508:	00700c93          	li	s9,7
    8000250c:	f8d403a3          	sb	a3,-121(s0)
    80002510:	00075c63          	bgez	a4,80002528 <__printf+0x410>
    80002514:	f9040713          	addi	a4,s0,-112
    80002518:	00f70733          	add	a4,a4,a5
    8000251c:	02d00693          	li	a3,45
    80002520:	fed70823          	sb	a3,-16(a4)
    80002524:	00078c93          	mv	s9,a5
    80002528:	f8040793          	addi	a5,s0,-128
    8000252c:	01978cb3          	add	s9,a5,s9
    80002530:	f7f40d13          	addi	s10,s0,-129
    80002534:	000cc503          	lbu	a0,0(s9)
    80002538:	fffc8c93          	addi	s9,s9,-1
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	9f8080e7          	jalr	-1544(ra) # 80001f34 <consputc>
    80002544:	ff9d18e3          	bne	s10,s9,80002534 <__printf+0x41c>
    80002548:	0100006f          	j	80002558 <__printf+0x440>
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	9e8080e7          	jalr	-1560(ra) # 80001f34 <consputc>
    80002554:	000c8493          	mv	s1,s9
    80002558:	00094503          	lbu	a0,0(s2)
    8000255c:	c60510e3          	bnez	a0,800021bc <__printf+0xa4>
    80002560:	e40c0ee3          	beqz	s8,800023bc <__printf+0x2a4>
    80002564:	00003517          	auipc	a0,0x3
    80002568:	0ac50513          	addi	a0,a0,172 # 80005610 <pr>
    8000256c:	00001097          	auipc	ra,0x1
    80002570:	94c080e7          	jalr	-1716(ra) # 80002eb8 <release>
    80002574:	e49ff06f          	j	800023bc <__printf+0x2a4>
    80002578:	f7843783          	ld	a5,-136(s0)
    8000257c:	03000513          	li	a0,48
    80002580:	01000d13          	li	s10,16
    80002584:	00878713          	addi	a4,a5,8
    80002588:	0007bc83          	ld	s9,0(a5)
    8000258c:	f6e43c23          	sd	a4,-136(s0)
    80002590:	00000097          	auipc	ra,0x0
    80002594:	9a4080e7          	jalr	-1628(ra) # 80001f34 <consputc>
    80002598:	07800513          	li	a0,120
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	998080e7          	jalr	-1640(ra) # 80001f34 <consputc>
    800025a4:	00002d97          	auipc	s11,0x2
    800025a8:	bd4d8d93          	addi	s11,s11,-1068 # 80004178 <digits>
    800025ac:	03ccd793          	srli	a5,s9,0x3c
    800025b0:	00fd87b3          	add	a5,s11,a5
    800025b4:	0007c503          	lbu	a0,0(a5)
    800025b8:	fffd0d1b          	addiw	s10,s10,-1
    800025bc:	004c9c93          	slli	s9,s9,0x4
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	974080e7          	jalr	-1676(ra) # 80001f34 <consputc>
    800025c8:	fe0d12e3          	bnez	s10,800025ac <__printf+0x494>
    800025cc:	f8dff06f          	j	80002558 <__printf+0x440>
    800025d0:	f7843783          	ld	a5,-136(s0)
    800025d4:	0007bc83          	ld	s9,0(a5)
    800025d8:	00878793          	addi	a5,a5,8
    800025dc:	f6f43c23          	sd	a5,-136(s0)
    800025e0:	000c9a63          	bnez	s9,800025f4 <__printf+0x4dc>
    800025e4:	1080006f          	j	800026ec <__printf+0x5d4>
    800025e8:	001c8c93          	addi	s9,s9,1
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	948080e7          	jalr	-1720(ra) # 80001f34 <consputc>
    800025f4:	000cc503          	lbu	a0,0(s9)
    800025f8:	fe0518e3          	bnez	a0,800025e8 <__printf+0x4d0>
    800025fc:	f5dff06f          	j	80002558 <__printf+0x440>
    80002600:	02500513          	li	a0,37
    80002604:	00000097          	auipc	ra,0x0
    80002608:	930080e7          	jalr	-1744(ra) # 80001f34 <consputc>
    8000260c:	000c8513          	mv	a0,s9
    80002610:	00000097          	auipc	ra,0x0
    80002614:	924080e7          	jalr	-1756(ra) # 80001f34 <consputc>
    80002618:	f41ff06f          	j	80002558 <__printf+0x440>
    8000261c:	02500513          	li	a0,37
    80002620:	00000097          	auipc	ra,0x0
    80002624:	914080e7          	jalr	-1772(ra) # 80001f34 <consputc>
    80002628:	f31ff06f          	j	80002558 <__printf+0x440>
    8000262c:	00030513          	mv	a0,t1
    80002630:	00000097          	auipc	ra,0x0
    80002634:	7bc080e7          	jalr	1980(ra) # 80002dec <acquire>
    80002638:	b4dff06f          	j	80002184 <__printf+0x6c>
    8000263c:	40c0053b          	negw	a0,a2
    80002640:	00a00713          	li	a4,10
    80002644:	02e576bb          	remuw	a3,a0,a4
    80002648:	00002d97          	auipc	s11,0x2
    8000264c:	b30d8d93          	addi	s11,s11,-1232 # 80004178 <digits>
    80002650:	ff700593          	li	a1,-9
    80002654:	02069693          	slli	a3,a3,0x20
    80002658:	0206d693          	srli	a3,a3,0x20
    8000265c:	00dd86b3          	add	a3,s11,a3
    80002660:	0006c683          	lbu	a3,0(a3)
    80002664:	02e557bb          	divuw	a5,a0,a4
    80002668:	f8d40023          	sb	a3,-128(s0)
    8000266c:	10b65e63          	bge	a2,a1,80002788 <__printf+0x670>
    80002670:	06300593          	li	a1,99
    80002674:	02e7f6bb          	remuw	a3,a5,a4
    80002678:	02069693          	slli	a3,a3,0x20
    8000267c:	0206d693          	srli	a3,a3,0x20
    80002680:	00dd86b3          	add	a3,s11,a3
    80002684:	0006c683          	lbu	a3,0(a3)
    80002688:	02e7d73b          	divuw	a4,a5,a4
    8000268c:	00200793          	li	a5,2
    80002690:	f8d400a3          	sb	a3,-127(s0)
    80002694:	bca5ece3          	bltu	a1,a0,8000226c <__printf+0x154>
    80002698:	ce5ff06f          	j	8000237c <__printf+0x264>
    8000269c:	40e007bb          	negw	a5,a4
    800026a0:	00002d97          	auipc	s11,0x2
    800026a4:	ad8d8d93          	addi	s11,s11,-1320 # 80004178 <digits>
    800026a8:	00f7f693          	andi	a3,a5,15
    800026ac:	00dd86b3          	add	a3,s11,a3
    800026b0:	0006c583          	lbu	a1,0(a3)
    800026b4:	ff100613          	li	a2,-15
    800026b8:	0047d69b          	srliw	a3,a5,0x4
    800026bc:	f8b40023          	sb	a1,-128(s0)
    800026c0:	0047d59b          	srliw	a1,a5,0x4
    800026c4:	0ac75e63          	bge	a4,a2,80002780 <__printf+0x668>
    800026c8:	00f6f693          	andi	a3,a3,15
    800026cc:	00dd86b3          	add	a3,s11,a3
    800026d0:	0006c603          	lbu	a2,0(a3)
    800026d4:	00f00693          	li	a3,15
    800026d8:	0087d79b          	srliw	a5,a5,0x8
    800026dc:	f8c400a3          	sb	a2,-127(s0)
    800026e0:	d8b6e4e3          	bltu	a3,a1,80002468 <__printf+0x350>
    800026e4:	00200793          	li	a5,2
    800026e8:	e2dff06f          	j	80002514 <__printf+0x3fc>
    800026ec:	00002c97          	auipc	s9,0x2
    800026f0:	a6cc8c93          	addi	s9,s9,-1428 # 80004158 <CONSOLE_STATUS+0x148>
    800026f4:	02800513          	li	a0,40
    800026f8:	ef1ff06f          	j	800025e8 <__printf+0x4d0>
    800026fc:	00700793          	li	a5,7
    80002700:	00600c93          	li	s9,6
    80002704:	e0dff06f          	j	80002510 <__printf+0x3f8>
    80002708:	00700793          	li	a5,7
    8000270c:	00600c93          	li	s9,6
    80002710:	c69ff06f          	j	80002378 <__printf+0x260>
    80002714:	00300793          	li	a5,3
    80002718:	00200c93          	li	s9,2
    8000271c:	c5dff06f          	j	80002378 <__printf+0x260>
    80002720:	00300793          	li	a5,3
    80002724:	00200c93          	li	s9,2
    80002728:	de9ff06f          	j	80002510 <__printf+0x3f8>
    8000272c:	00400793          	li	a5,4
    80002730:	00300c93          	li	s9,3
    80002734:	dddff06f          	j	80002510 <__printf+0x3f8>
    80002738:	00400793          	li	a5,4
    8000273c:	00300c93          	li	s9,3
    80002740:	c39ff06f          	j	80002378 <__printf+0x260>
    80002744:	00500793          	li	a5,5
    80002748:	00400c93          	li	s9,4
    8000274c:	c2dff06f          	j	80002378 <__printf+0x260>
    80002750:	00500793          	li	a5,5
    80002754:	00400c93          	li	s9,4
    80002758:	db9ff06f          	j	80002510 <__printf+0x3f8>
    8000275c:	00600793          	li	a5,6
    80002760:	00500c93          	li	s9,5
    80002764:	dadff06f          	j	80002510 <__printf+0x3f8>
    80002768:	00600793          	li	a5,6
    8000276c:	00500c93          	li	s9,5
    80002770:	c09ff06f          	j	80002378 <__printf+0x260>
    80002774:	00800793          	li	a5,8
    80002778:	00700c93          	li	s9,7
    8000277c:	bfdff06f          	j	80002378 <__printf+0x260>
    80002780:	00100793          	li	a5,1
    80002784:	d91ff06f          	j	80002514 <__printf+0x3fc>
    80002788:	00100793          	li	a5,1
    8000278c:	bf1ff06f          	j	8000237c <__printf+0x264>
    80002790:	00900793          	li	a5,9
    80002794:	00800c93          	li	s9,8
    80002798:	be1ff06f          	j	80002378 <__printf+0x260>
    8000279c:	00002517          	auipc	a0,0x2
    800027a0:	9c450513          	addi	a0,a0,-1596 # 80004160 <CONSOLE_STATUS+0x150>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	918080e7          	jalr	-1768(ra) # 800020bc <panic>

00000000800027ac <printfinit>:
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00813823          	sd	s0,16(sp)
    800027b4:	00913423          	sd	s1,8(sp)
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	02010413          	addi	s0,sp,32
    800027c0:	00003497          	auipc	s1,0x3
    800027c4:	e5048493          	addi	s1,s1,-432 # 80005610 <pr>
    800027c8:	00048513          	mv	a0,s1
    800027cc:	00002597          	auipc	a1,0x2
    800027d0:	9a458593          	addi	a1,a1,-1628 # 80004170 <CONSOLE_STATUS+0x160>
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	5f4080e7          	jalr	1524(ra) # 80002dc8 <initlock>
    800027dc:	01813083          	ld	ra,24(sp)
    800027e0:	01013403          	ld	s0,16(sp)
    800027e4:	0004ac23          	sw	zero,24(s1)
    800027e8:	00813483          	ld	s1,8(sp)
    800027ec:	02010113          	addi	sp,sp,32
    800027f0:	00008067          	ret

00000000800027f4 <uartinit>:
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00813423          	sd	s0,8(sp)
    800027fc:	01010413          	addi	s0,sp,16
    80002800:	100007b7          	lui	a5,0x10000
    80002804:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002808:	f8000713          	li	a4,-128
    8000280c:	00e781a3          	sb	a4,3(a5)
    80002810:	00300713          	li	a4,3
    80002814:	00e78023          	sb	a4,0(a5)
    80002818:	000780a3          	sb	zero,1(a5)
    8000281c:	00e781a3          	sb	a4,3(a5)
    80002820:	00700693          	li	a3,7
    80002824:	00d78123          	sb	a3,2(a5)
    80002828:	00e780a3          	sb	a4,1(a5)
    8000282c:	00813403          	ld	s0,8(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <uartputc>:
    80002838:	00002797          	auipc	a5,0x2
    8000283c:	b907a783          	lw	a5,-1136(a5) # 800043c8 <panicked>
    80002840:	00078463          	beqz	a5,80002848 <uartputc+0x10>
    80002844:	0000006f          	j	80002844 <uartputc+0xc>
    80002848:	fd010113          	addi	sp,sp,-48
    8000284c:	02813023          	sd	s0,32(sp)
    80002850:	00913c23          	sd	s1,24(sp)
    80002854:	01213823          	sd	s2,16(sp)
    80002858:	01313423          	sd	s3,8(sp)
    8000285c:	02113423          	sd	ra,40(sp)
    80002860:	03010413          	addi	s0,sp,48
    80002864:	00002917          	auipc	s2,0x2
    80002868:	b6c90913          	addi	s2,s2,-1172 # 800043d0 <uart_tx_r>
    8000286c:	00093783          	ld	a5,0(s2)
    80002870:	00002497          	auipc	s1,0x2
    80002874:	b6848493          	addi	s1,s1,-1176 # 800043d8 <uart_tx_w>
    80002878:	0004b703          	ld	a4,0(s1)
    8000287c:	02078693          	addi	a3,a5,32
    80002880:	00050993          	mv	s3,a0
    80002884:	02e69c63          	bne	a3,a4,800028bc <uartputc+0x84>
    80002888:	00001097          	auipc	ra,0x1
    8000288c:	834080e7          	jalr	-1996(ra) # 800030bc <push_on>
    80002890:	00093783          	ld	a5,0(s2)
    80002894:	0004b703          	ld	a4,0(s1)
    80002898:	02078793          	addi	a5,a5,32
    8000289c:	00e79463          	bne	a5,a4,800028a4 <uartputc+0x6c>
    800028a0:	0000006f          	j	800028a0 <uartputc+0x68>
    800028a4:	00001097          	auipc	ra,0x1
    800028a8:	88c080e7          	jalr	-1908(ra) # 80003130 <pop_on>
    800028ac:	00093783          	ld	a5,0(s2)
    800028b0:	0004b703          	ld	a4,0(s1)
    800028b4:	02078693          	addi	a3,a5,32
    800028b8:	fce688e3          	beq	a3,a4,80002888 <uartputc+0x50>
    800028bc:	01f77693          	andi	a3,a4,31
    800028c0:	00003597          	auipc	a1,0x3
    800028c4:	d7058593          	addi	a1,a1,-656 # 80005630 <uart_tx_buf>
    800028c8:	00d586b3          	add	a3,a1,a3
    800028cc:	00170713          	addi	a4,a4,1
    800028d0:	01368023          	sb	s3,0(a3)
    800028d4:	00e4b023          	sd	a4,0(s1)
    800028d8:	10000637          	lui	a2,0x10000
    800028dc:	02f71063          	bne	a4,a5,800028fc <uartputc+0xc4>
    800028e0:	0340006f          	j	80002914 <uartputc+0xdc>
    800028e4:	00074703          	lbu	a4,0(a4)
    800028e8:	00f93023          	sd	a5,0(s2)
    800028ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800028f0:	00093783          	ld	a5,0(s2)
    800028f4:	0004b703          	ld	a4,0(s1)
    800028f8:	00f70e63          	beq	a4,a5,80002914 <uartputc+0xdc>
    800028fc:	00564683          	lbu	a3,5(a2)
    80002900:	01f7f713          	andi	a4,a5,31
    80002904:	00e58733          	add	a4,a1,a4
    80002908:	0206f693          	andi	a3,a3,32
    8000290c:	00178793          	addi	a5,a5,1
    80002910:	fc069ae3          	bnez	a3,800028e4 <uartputc+0xac>
    80002914:	02813083          	ld	ra,40(sp)
    80002918:	02013403          	ld	s0,32(sp)
    8000291c:	01813483          	ld	s1,24(sp)
    80002920:	01013903          	ld	s2,16(sp)
    80002924:	00813983          	ld	s3,8(sp)
    80002928:	03010113          	addi	sp,sp,48
    8000292c:	00008067          	ret

0000000080002930 <uartputc_sync>:
    80002930:	ff010113          	addi	sp,sp,-16
    80002934:	00813423          	sd	s0,8(sp)
    80002938:	01010413          	addi	s0,sp,16
    8000293c:	00002717          	auipc	a4,0x2
    80002940:	a8c72703          	lw	a4,-1396(a4) # 800043c8 <panicked>
    80002944:	02071663          	bnez	a4,80002970 <uartputc_sync+0x40>
    80002948:	00050793          	mv	a5,a0
    8000294c:	100006b7          	lui	a3,0x10000
    80002950:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002954:	02077713          	andi	a4,a4,32
    80002958:	fe070ce3          	beqz	a4,80002950 <uartputc_sync+0x20>
    8000295c:	0ff7f793          	andi	a5,a5,255
    80002960:	00f68023          	sb	a5,0(a3)
    80002964:	00813403          	ld	s0,8(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret
    80002970:	0000006f          	j	80002970 <uartputc_sync+0x40>

0000000080002974 <uartstart>:
    80002974:	ff010113          	addi	sp,sp,-16
    80002978:	00813423          	sd	s0,8(sp)
    8000297c:	01010413          	addi	s0,sp,16
    80002980:	00002617          	auipc	a2,0x2
    80002984:	a5060613          	addi	a2,a2,-1456 # 800043d0 <uart_tx_r>
    80002988:	00002517          	auipc	a0,0x2
    8000298c:	a5050513          	addi	a0,a0,-1456 # 800043d8 <uart_tx_w>
    80002990:	00063783          	ld	a5,0(a2)
    80002994:	00053703          	ld	a4,0(a0)
    80002998:	04f70263          	beq	a4,a5,800029dc <uartstart+0x68>
    8000299c:	100005b7          	lui	a1,0x10000
    800029a0:	00003817          	auipc	a6,0x3
    800029a4:	c9080813          	addi	a6,a6,-880 # 80005630 <uart_tx_buf>
    800029a8:	01c0006f          	j	800029c4 <uartstart+0x50>
    800029ac:	0006c703          	lbu	a4,0(a3)
    800029b0:	00f63023          	sd	a5,0(a2)
    800029b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800029b8:	00063783          	ld	a5,0(a2)
    800029bc:	00053703          	ld	a4,0(a0)
    800029c0:	00f70e63          	beq	a4,a5,800029dc <uartstart+0x68>
    800029c4:	01f7f713          	andi	a4,a5,31
    800029c8:	00e806b3          	add	a3,a6,a4
    800029cc:	0055c703          	lbu	a4,5(a1)
    800029d0:	00178793          	addi	a5,a5,1
    800029d4:	02077713          	andi	a4,a4,32
    800029d8:	fc071ae3          	bnez	a4,800029ac <uartstart+0x38>
    800029dc:	00813403          	ld	s0,8(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret

00000000800029e8 <uartgetc>:
    800029e8:	ff010113          	addi	sp,sp,-16
    800029ec:	00813423          	sd	s0,8(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	10000737          	lui	a4,0x10000
    800029f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800029fc:	0017f793          	andi	a5,a5,1
    80002a00:	00078c63          	beqz	a5,80002a18 <uartgetc+0x30>
    80002a04:	00074503          	lbu	a0,0(a4)
    80002a08:	0ff57513          	andi	a0,a0,255
    80002a0c:	00813403          	ld	s0,8(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret
    80002a18:	fff00513          	li	a0,-1
    80002a1c:	ff1ff06f          	j	80002a0c <uartgetc+0x24>

0000000080002a20 <uartintr>:
    80002a20:	100007b7          	lui	a5,0x10000
    80002a24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002a28:	0017f793          	andi	a5,a5,1
    80002a2c:	0a078463          	beqz	a5,80002ad4 <uartintr+0xb4>
    80002a30:	fe010113          	addi	sp,sp,-32
    80002a34:	00813823          	sd	s0,16(sp)
    80002a38:	00913423          	sd	s1,8(sp)
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	02010413          	addi	s0,sp,32
    80002a44:	100004b7          	lui	s1,0x10000
    80002a48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002a4c:	0ff57513          	andi	a0,a0,255
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	534080e7          	jalr	1332(ra) # 80001f84 <consoleintr>
    80002a58:	0054c783          	lbu	a5,5(s1)
    80002a5c:	0017f793          	andi	a5,a5,1
    80002a60:	fe0794e3          	bnez	a5,80002a48 <uartintr+0x28>
    80002a64:	00002617          	auipc	a2,0x2
    80002a68:	96c60613          	addi	a2,a2,-1684 # 800043d0 <uart_tx_r>
    80002a6c:	00002517          	auipc	a0,0x2
    80002a70:	96c50513          	addi	a0,a0,-1684 # 800043d8 <uart_tx_w>
    80002a74:	00063783          	ld	a5,0(a2)
    80002a78:	00053703          	ld	a4,0(a0)
    80002a7c:	04f70263          	beq	a4,a5,80002ac0 <uartintr+0xa0>
    80002a80:	100005b7          	lui	a1,0x10000
    80002a84:	00003817          	auipc	a6,0x3
    80002a88:	bac80813          	addi	a6,a6,-1108 # 80005630 <uart_tx_buf>
    80002a8c:	01c0006f          	j	80002aa8 <uartintr+0x88>
    80002a90:	0006c703          	lbu	a4,0(a3)
    80002a94:	00f63023          	sd	a5,0(a2)
    80002a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002a9c:	00063783          	ld	a5,0(a2)
    80002aa0:	00053703          	ld	a4,0(a0)
    80002aa4:	00f70e63          	beq	a4,a5,80002ac0 <uartintr+0xa0>
    80002aa8:	01f7f713          	andi	a4,a5,31
    80002aac:	00e806b3          	add	a3,a6,a4
    80002ab0:	0055c703          	lbu	a4,5(a1)
    80002ab4:	00178793          	addi	a5,a5,1
    80002ab8:	02077713          	andi	a4,a4,32
    80002abc:	fc071ae3          	bnez	a4,80002a90 <uartintr+0x70>
    80002ac0:	01813083          	ld	ra,24(sp)
    80002ac4:	01013403          	ld	s0,16(sp)
    80002ac8:	00813483          	ld	s1,8(sp)
    80002acc:	02010113          	addi	sp,sp,32
    80002ad0:	00008067          	ret
    80002ad4:	00002617          	auipc	a2,0x2
    80002ad8:	8fc60613          	addi	a2,a2,-1796 # 800043d0 <uart_tx_r>
    80002adc:	00002517          	auipc	a0,0x2
    80002ae0:	8fc50513          	addi	a0,a0,-1796 # 800043d8 <uart_tx_w>
    80002ae4:	00063783          	ld	a5,0(a2)
    80002ae8:	00053703          	ld	a4,0(a0)
    80002aec:	04f70263          	beq	a4,a5,80002b30 <uartintr+0x110>
    80002af0:	100005b7          	lui	a1,0x10000
    80002af4:	00003817          	auipc	a6,0x3
    80002af8:	b3c80813          	addi	a6,a6,-1220 # 80005630 <uart_tx_buf>
    80002afc:	01c0006f          	j	80002b18 <uartintr+0xf8>
    80002b00:	0006c703          	lbu	a4,0(a3)
    80002b04:	00f63023          	sd	a5,0(a2)
    80002b08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002b0c:	00063783          	ld	a5,0(a2)
    80002b10:	00053703          	ld	a4,0(a0)
    80002b14:	02f70063          	beq	a4,a5,80002b34 <uartintr+0x114>
    80002b18:	01f7f713          	andi	a4,a5,31
    80002b1c:	00e806b3          	add	a3,a6,a4
    80002b20:	0055c703          	lbu	a4,5(a1)
    80002b24:	00178793          	addi	a5,a5,1
    80002b28:	02077713          	andi	a4,a4,32
    80002b2c:	fc071ae3          	bnez	a4,80002b00 <uartintr+0xe0>
    80002b30:	00008067          	ret
    80002b34:	00008067          	ret

0000000080002b38 <kinit>:
    80002b38:	fc010113          	addi	sp,sp,-64
    80002b3c:	02913423          	sd	s1,40(sp)
    80002b40:	fffff7b7          	lui	a5,0xfffff
    80002b44:	00004497          	auipc	s1,0x4
    80002b48:	b0b48493          	addi	s1,s1,-1269 # 8000664f <end+0xfff>
    80002b4c:	02813823          	sd	s0,48(sp)
    80002b50:	01313c23          	sd	s3,24(sp)
    80002b54:	00f4f4b3          	and	s1,s1,a5
    80002b58:	02113c23          	sd	ra,56(sp)
    80002b5c:	03213023          	sd	s2,32(sp)
    80002b60:	01413823          	sd	s4,16(sp)
    80002b64:	01513423          	sd	s5,8(sp)
    80002b68:	04010413          	addi	s0,sp,64
    80002b6c:	000017b7          	lui	a5,0x1
    80002b70:	01100993          	li	s3,17
    80002b74:	00f487b3          	add	a5,s1,a5
    80002b78:	01b99993          	slli	s3,s3,0x1b
    80002b7c:	06f9e063          	bltu	s3,a5,80002bdc <kinit+0xa4>
    80002b80:	00003a97          	auipc	s5,0x3
    80002b84:	ad0a8a93          	addi	s5,s5,-1328 # 80005650 <end>
    80002b88:	0754ec63          	bltu	s1,s5,80002c00 <kinit+0xc8>
    80002b8c:	0734fa63          	bgeu	s1,s3,80002c00 <kinit+0xc8>
    80002b90:	00088a37          	lui	s4,0x88
    80002b94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002b98:	00002917          	auipc	s2,0x2
    80002b9c:	84890913          	addi	s2,s2,-1976 # 800043e0 <kmem>
    80002ba0:	00ca1a13          	slli	s4,s4,0xc
    80002ba4:	0140006f          	j	80002bb8 <kinit+0x80>
    80002ba8:	000017b7          	lui	a5,0x1
    80002bac:	00f484b3          	add	s1,s1,a5
    80002bb0:	0554e863          	bltu	s1,s5,80002c00 <kinit+0xc8>
    80002bb4:	0534f663          	bgeu	s1,s3,80002c00 <kinit+0xc8>
    80002bb8:	00001637          	lui	a2,0x1
    80002bbc:	00100593          	li	a1,1
    80002bc0:	00048513          	mv	a0,s1
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	5e4080e7          	jalr	1508(ra) # 800031a8 <__memset>
    80002bcc:	00093783          	ld	a5,0(s2)
    80002bd0:	00f4b023          	sd	a5,0(s1)
    80002bd4:	00993023          	sd	s1,0(s2)
    80002bd8:	fd4498e3          	bne	s1,s4,80002ba8 <kinit+0x70>
    80002bdc:	03813083          	ld	ra,56(sp)
    80002be0:	03013403          	ld	s0,48(sp)
    80002be4:	02813483          	ld	s1,40(sp)
    80002be8:	02013903          	ld	s2,32(sp)
    80002bec:	01813983          	ld	s3,24(sp)
    80002bf0:	01013a03          	ld	s4,16(sp)
    80002bf4:	00813a83          	ld	s5,8(sp)
    80002bf8:	04010113          	addi	sp,sp,64
    80002bfc:	00008067          	ret
    80002c00:	00001517          	auipc	a0,0x1
    80002c04:	59050513          	addi	a0,a0,1424 # 80004190 <digits+0x18>
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	4b4080e7          	jalr	1204(ra) # 800020bc <panic>

0000000080002c10 <freerange>:
    80002c10:	fc010113          	addi	sp,sp,-64
    80002c14:	000017b7          	lui	a5,0x1
    80002c18:	02913423          	sd	s1,40(sp)
    80002c1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002c20:	009504b3          	add	s1,a0,s1
    80002c24:	fffff537          	lui	a0,0xfffff
    80002c28:	02813823          	sd	s0,48(sp)
    80002c2c:	02113c23          	sd	ra,56(sp)
    80002c30:	03213023          	sd	s2,32(sp)
    80002c34:	01313c23          	sd	s3,24(sp)
    80002c38:	01413823          	sd	s4,16(sp)
    80002c3c:	01513423          	sd	s5,8(sp)
    80002c40:	01613023          	sd	s6,0(sp)
    80002c44:	04010413          	addi	s0,sp,64
    80002c48:	00a4f4b3          	and	s1,s1,a0
    80002c4c:	00f487b3          	add	a5,s1,a5
    80002c50:	06f5e463          	bltu	a1,a5,80002cb8 <freerange+0xa8>
    80002c54:	00003a97          	auipc	s5,0x3
    80002c58:	9fca8a93          	addi	s5,s5,-1540 # 80005650 <end>
    80002c5c:	0954e263          	bltu	s1,s5,80002ce0 <freerange+0xd0>
    80002c60:	01100993          	li	s3,17
    80002c64:	01b99993          	slli	s3,s3,0x1b
    80002c68:	0734fc63          	bgeu	s1,s3,80002ce0 <freerange+0xd0>
    80002c6c:	00058a13          	mv	s4,a1
    80002c70:	00001917          	auipc	s2,0x1
    80002c74:	77090913          	addi	s2,s2,1904 # 800043e0 <kmem>
    80002c78:	00002b37          	lui	s6,0x2
    80002c7c:	0140006f          	j	80002c90 <freerange+0x80>
    80002c80:	000017b7          	lui	a5,0x1
    80002c84:	00f484b3          	add	s1,s1,a5
    80002c88:	0554ec63          	bltu	s1,s5,80002ce0 <freerange+0xd0>
    80002c8c:	0534fa63          	bgeu	s1,s3,80002ce0 <freerange+0xd0>
    80002c90:	00001637          	lui	a2,0x1
    80002c94:	00100593          	li	a1,1
    80002c98:	00048513          	mv	a0,s1
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	50c080e7          	jalr	1292(ra) # 800031a8 <__memset>
    80002ca4:	00093703          	ld	a4,0(s2)
    80002ca8:	016487b3          	add	a5,s1,s6
    80002cac:	00e4b023          	sd	a4,0(s1)
    80002cb0:	00993023          	sd	s1,0(s2)
    80002cb4:	fcfa76e3          	bgeu	s4,a5,80002c80 <freerange+0x70>
    80002cb8:	03813083          	ld	ra,56(sp)
    80002cbc:	03013403          	ld	s0,48(sp)
    80002cc0:	02813483          	ld	s1,40(sp)
    80002cc4:	02013903          	ld	s2,32(sp)
    80002cc8:	01813983          	ld	s3,24(sp)
    80002ccc:	01013a03          	ld	s4,16(sp)
    80002cd0:	00813a83          	ld	s5,8(sp)
    80002cd4:	00013b03          	ld	s6,0(sp)
    80002cd8:	04010113          	addi	sp,sp,64
    80002cdc:	00008067          	ret
    80002ce0:	00001517          	auipc	a0,0x1
    80002ce4:	4b050513          	addi	a0,a0,1200 # 80004190 <digits+0x18>
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	3d4080e7          	jalr	980(ra) # 800020bc <panic>

0000000080002cf0 <kfree>:
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00813823          	sd	s0,16(sp)
    80002cf8:	00113c23          	sd	ra,24(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	02010413          	addi	s0,sp,32
    80002d04:	03451793          	slli	a5,a0,0x34
    80002d08:	04079c63          	bnez	a5,80002d60 <kfree+0x70>
    80002d0c:	00003797          	auipc	a5,0x3
    80002d10:	94478793          	addi	a5,a5,-1724 # 80005650 <end>
    80002d14:	00050493          	mv	s1,a0
    80002d18:	04f56463          	bltu	a0,a5,80002d60 <kfree+0x70>
    80002d1c:	01100793          	li	a5,17
    80002d20:	01b79793          	slli	a5,a5,0x1b
    80002d24:	02f57e63          	bgeu	a0,a5,80002d60 <kfree+0x70>
    80002d28:	00001637          	lui	a2,0x1
    80002d2c:	00100593          	li	a1,1
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	478080e7          	jalr	1144(ra) # 800031a8 <__memset>
    80002d38:	00001797          	auipc	a5,0x1
    80002d3c:	6a878793          	addi	a5,a5,1704 # 800043e0 <kmem>
    80002d40:	0007b703          	ld	a4,0(a5)
    80002d44:	01813083          	ld	ra,24(sp)
    80002d48:	01013403          	ld	s0,16(sp)
    80002d4c:	00e4b023          	sd	a4,0(s1)
    80002d50:	0097b023          	sd	s1,0(a5)
    80002d54:	00813483          	ld	s1,8(sp)
    80002d58:	02010113          	addi	sp,sp,32
    80002d5c:	00008067          	ret
    80002d60:	00001517          	auipc	a0,0x1
    80002d64:	43050513          	addi	a0,a0,1072 # 80004190 <digits+0x18>
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	354080e7          	jalr	852(ra) # 800020bc <panic>

0000000080002d70 <kalloc>:
    80002d70:	fe010113          	addi	sp,sp,-32
    80002d74:	00813823          	sd	s0,16(sp)
    80002d78:	00913423          	sd	s1,8(sp)
    80002d7c:	00113c23          	sd	ra,24(sp)
    80002d80:	02010413          	addi	s0,sp,32
    80002d84:	00001797          	auipc	a5,0x1
    80002d88:	65c78793          	addi	a5,a5,1628 # 800043e0 <kmem>
    80002d8c:	0007b483          	ld	s1,0(a5)
    80002d90:	02048063          	beqz	s1,80002db0 <kalloc+0x40>
    80002d94:	0004b703          	ld	a4,0(s1)
    80002d98:	00001637          	lui	a2,0x1
    80002d9c:	00500593          	li	a1,5
    80002da0:	00048513          	mv	a0,s1
    80002da4:	00e7b023          	sd	a4,0(a5)
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	400080e7          	jalr	1024(ra) # 800031a8 <__memset>
    80002db0:	01813083          	ld	ra,24(sp)
    80002db4:	01013403          	ld	s0,16(sp)
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	00813483          	ld	s1,8(sp)
    80002dc0:	02010113          	addi	sp,sp,32
    80002dc4:	00008067          	ret

0000000080002dc8 <initlock>:
    80002dc8:	ff010113          	addi	sp,sp,-16
    80002dcc:	00813423          	sd	s0,8(sp)
    80002dd0:	01010413          	addi	s0,sp,16
    80002dd4:	00813403          	ld	s0,8(sp)
    80002dd8:	00b53423          	sd	a1,8(a0)
    80002ddc:	00052023          	sw	zero,0(a0)
    80002de0:	00053823          	sd	zero,16(a0)
    80002de4:	01010113          	addi	sp,sp,16
    80002de8:	00008067          	ret

0000000080002dec <acquire>:
    80002dec:	fe010113          	addi	sp,sp,-32
    80002df0:	00813823          	sd	s0,16(sp)
    80002df4:	00913423          	sd	s1,8(sp)
    80002df8:	00113c23          	sd	ra,24(sp)
    80002dfc:	01213023          	sd	s2,0(sp)
    80002e00:	02010413          	addi	s0,sp,32
    80002e04:	00050493          	mv	s1,a0
    80002e08:	10002973          	csrr	s2,sstatus
    80002e0c:	100027f3          	csrr	a5,sstatus
    80002e10:	ffd7f793          	andi	a5,a5,-3
    80002e14:	10079073          	csrw	sstatus,a5
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	8e0080e7          	jalr	-1824(ra) # 800016f8 <mycpu>
    80002e20:	07852783          	lw	a5,120(a0)
    80002e24:	06078e63          	beqz	a5,80002ea0 <acquire+0xb4>
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	8d0080e7          	jalr	-1840(ra) # 800016f8 <mycpu>
    80002e30:	07852783          	lw	a5,120(a0)
    80002e34:	0004a703          	lw	a4,0(s1)
    80002e38:	0017879b          	addiw	a5,a5,1
    80002e3c:	06f52c23          	sw	a5,120(a0)
    80002e40:	04071063          	bnez	a4,80002e80 <acquire+0x94>
    80002e44:	00100713          	li	a4,1
    80002e48:	00070793          	mv	a5,a4
    80002e4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002e50:	0007879b          	sext.w	a5,a5
    80002e54:	fe079ae3          	bnez	a5,80002e48 <acquire+0x5c>
    80002e58:	0ff0000f          	fence
    80002e5c:	fffff097          	auipc	ra,0xfffff
    80002e60:	89c080e7          	jalr	-1892(ra) # 800016f8 <mycpu>
    80002e64:	01813083          	ld	ra,24(sp)
    80002e68:	01013403          	ld	s0,16(sp)
    80002e6c:	00a4b823          	sd	a0,16(s1)
    80002e70:	00013903          	ld	s2,0(sp)
    80002e74:	00813483          	ld	s1,8(sp)
    80002e78:	02010113          	addi	sp,sp,32
    80002e7c:	00008067          	ret
    80002e80:	0104b903          	ld	s2,16(s1)
    80002e84:	fffff097          	auipc	ra,0xfffff
    80002e88:	874080e7          	jalr	-1932(ra) # 800016f8 <mycpu>
    80002e8c:	faa91ce3          	bne	s2,a0,80002e44 <acquire+0x58>
    80002e90:	00001517          	auipc	a0,0x1
    80002e94:	30850513          	addi	a0,a0,776 # 80004198 <digits+0x20>
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	224080e7          	jalr	548(ra) # 800020bc <panic>
    80002ea0:	00195913          	srli	s2,s2,0x1
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	854080e7          	jalr	-1964(ra) # 800016f8 <mycpu>
    80002eac:	00197913          	andi	s2,s2,1
    80002eb0:	07252e23          	sw	s2,124(a0)
    80002eb4:	f75ff06f          	j	80002e28 <acquire+0x3c>

0000000080002eb8 <release>:
    80002eb8:	fe010113          	addi	sp,sp,-32
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00113c23          	sd	ra,24(sp)
    80002ec4:	00913423          	sd	s1,8(sp)
    80002ec8:	01213023          	sd	s2,0(sp)
    80002ecc:	02010413          	addi	s0,sp,32
    80002ed0:	00052783          	lw	a5,0(a0)
    80002ed4:	00079a63          	bnez	a5,80002ee8 <release+0x30>
    80002ed8:	00001517          	auipc	a0,0x1
    80002edc:	2c850513          	addi	a0,a0,712 # 800041a0 <digits+0x28>
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	1dc080e7          	jalr	476(ra) # 800020bc <panic>
    80002ee8:	01053903          	ld	s2,16(a0)
    80002eec:	00050493          	mv	s1,a0
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	808080e7          	jalr	-2040(ra) # 800016f8 <mycpu>
    80002ef8:	fea910e3          	bne	s2,a0,80002ed8 <release+0x20>
    80002efc:	0004b823          	sd	zero,16(s1)
    80002f00:	0ff0000f          	fence
    80002f04:	0f50000f          	fence	iorw,ow
    80002f08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	7ec080e7          	jalr	2028(ra) # 800016f8 <mycpu>
    80002f14:	100027f3          	csrr	a5,sstatus
    80002f18:	0027f793          	andi	a5,a5,2
    80002f1c:	04079a63          	bnez	a5,80002f70 <release+0xb8>
    80002f20:	07852783          	lw	a5,120(a0)
    80002f24:	02f05e63          	blez	a5,80002f60 <release+0xa8>
    80002f28:	fff7871b          	addiw	a4,a5,-1
    80002f2c:	06e52c23          	sw	a4,120(a0)
    80002f30:	00071c63          	bnez	a4,80002f48 <release+0x90>
    80002f34:	07c52783          	lw	a5,124(a0)
    80002f38:	00078863          	beqz	a5,80002f48 <release+0x90>
    80002f3c:	100027f3          	csrr	a5,sstatus
    80002f40:	0027e793          	ori	a5,a5,2
    80002f44:	10079073          	csrw	sstatus,a5
    80002f48:	01813083          	ld	ra,24(sp)
    80002f4c:	01013403          	ld	s0,16(sp)
    80002f50:	00813483          	ld	s1,8(sp)
    80002f54:	00013903          	ld	s2,0(sp)
    80002f58:	02010113          	addi	sp,sp,32
    80002f5c:	00008067          	ret
    80002f60:	00001517          	auipc	a0,0x1
    80002f64:	26050513          	addi	a0,a0,608 # 800041c0 <digits+0x48>
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	154080e7          	jalr	340(ra) # 800020bc <panic>
    80002f70:	00001517          	auipc	a0,0x1
    80002f74:	23850513          	addi	a0,a0,568 # 800041a8 <digits+0x30>
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	144080e7          	jalr	324(ra) # 800020bc <panic>

0000000080002f80 <holding>:
    80002f80:	00052783          	lw	a5,0(a0)
    80002f84:	00079663          	bnez	a5,80002f90 <holding+0x10>
    80002f88:	00000513          	li	a0,0
    80002f8c:	00008067          	ret
    80002f90:	fe010113          	addi	sp,sp,-32
    80002f94:	00813823          	sd	s0,16(sp)
    80002f98:	00913423          	sd	s1,8(sp)
    80002f9c:	00113c23          	sd	ra,24(sp)
    80002fa0:	02010413          	addi	s0,sp,32
    80002fa4:	01053483          	ld	s1,16(a0)
    80002fa8:	ffffe097          	auipc	ra,0xffffe
    80002fac:	750080e7          	jalr	1872(ra) # 800016f8 <mycpu>
    80002fb0:	01813083          	ld	ra,24(sp)
    80002fb4:	01013403          	ld	s0,16(sp)
    80002fb8:	40a48533          	sub	a0,s1,a0
    80002fbc:	00153513          	seqz	a0,a0
    80002fc0:	00813483          	ld	s1,8(sp)
    80002fc4:	02010113          	addi	sp,sp,32
    80002fc8:	00008067          	ret

0000000080002fcc <push_off>:
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00813823          	sd	s0,16(sp)
    80002fd4:	00113c23          	sd	ra,24(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	02010413          	addi	s0,sp,32
    80002fe0:	100024f3          	csrr	s1,sstatus
    80002fe4:	100027f3          	csrr	a5,sstatus
    80002fe8:	ffd7f793          	andi	a5,a5,-3
    80002fec:	10079073          	csrw	sstatus,a5
    80002ff0:	ffffe097          	auipc	ra,0xffffe
    80002ff4:	708080e7          	jalr	1800(ra) # 800016f8 <mycpu>
    80002ff8:	07852783          	lw	a5,120(a0)
    80002ffc:	02078663          	beqz	a5,80003028 <push_off+0x5c>
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	6f8080e7          	jalr	1784(ra) # 800016f8 <mycpu>
    80003008:	07852783          	lw	a5,120(a0)
    8000300c:	01813083          	ld	ra,24(sp)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	0017879b          	addiw	a5,a5,1
    80003018:	06f52c23          	sw	a5,120(a0)
    8000301c:	00813483          	ld	s1,8(sp)
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret
    80003028:	0014d493          	srli	s1,s1,0x1
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	6cc080e7          	jalr	1740(ra) # 800016f8 <mycpu>
    80003034:	0014f493          	andi	s1,s1,1
    80003038:	06952e23          	sw	s1,124(a0)
    8000303c:	fc5ff06f          	j	80003000 <push_off+0x34>

0000000080003040 <pop_off>:
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00813023          	sd	s0,0(sp)
    80003048:	00113423          	sd	ra,8(sp)
    8000304c:	01010413          	addi	s0,sp,16
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	6a8080e7          	jalr	1704(ra) # 800016f8 <mycpu>
    80003058:	100027f3          	csrr	a5,sstatus
    8000305c:	0027f793          	andi	a5,a5,2
    80003060:	04079663          	bnez	a5,800030ac <pop_off+0x6c>
    80003064:	07852783          	lw	a5,120(a0)
    80003068:	02f05a63          	blez	a5,8000309c <pop_off+0x5c>
    8000306c:	fff7871b          	addiw	a4,a5,-1
    80003070:	06e52c23          	sw	a4,120(a0)
    80003074:	00071c63          	bnez	a4,8000308c <pop_off+0x4c>
    80003078:	07c52783          	lw	a5,124(a0)
    8000307c:	00078863          	beqz	a5,8000308c <pop_off+0x4c>
    80003080:	100027f3          	csrr	a5,sstatus
    80003084:	0027e793          	ori	a5,a5,2
    80003088:	10079073          	csrw	sstatus,a5
    8000308c:	00813083          	ld	ra,8(sp)
    80003090:	00013403          	ld	s0,0(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret
    8000309c:	00001517          	auipc	a0,0x1
    800030a0:	12450513          	addi	a0,a0,292 # 800041c0 <digits+0x48>
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	018080e7          	jalr	24(ra) # 800020bc <panic>
    800030ac:	00001517          	auipc	a0,0x1
    800030b0:	0fc50513          	addi	a0,a0,252 # 800041a8 <digits+0x30>
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	008080e7          	jalr	8(ra) # 800020bc <panic>

00000000800030bc <push_on>:
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00113c23          	sd	ra,24(sp)
    800030c8:	00913423          	sd	s1,8(sp)
    800030cc:	02010413          	addi	s0,sp,32
    800030d0:	100024f3          	csrr	s1,sstatus
    800030d4:	100027f3          	csrr	a5,sstatus
    800030d8:	0027e793          	ori	a5,a5,2
    800030dc:	10079073          	csrw	sstatus,a5
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	618080e7          	jalr	1560(ra) # 800016f8 <mycpu>
    800030e8:	07852783          	lw	a5,120(a0)
    800030ec:	02078663          	beqz	a5,80003118 <push_on+0x5c>
    800030f0:	ffffe097          	auipc	ra,0xffffe
    800030f4:	608080e7          	jalr	1544(ra) # 800016f8 <mycpu>
    800030f8:	07852783          	lw	a5,120(a0)
    800030fc:	01813083          	ld	ra,24(sp)
    80003100:	01013403          	ld	s0,16(sp)
    80003104:	0017879b          	addiw	a5,a5,1
    80003108:	06f52c23          	sw	a5,120(a0)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret
    80003118:	0014d493          	srli	s1,s1,0x1
    8000311c:	ffffe097          	auipc	ra,0xffffe
    80003120:	5dc080e7          	jalr	1500(ra) # 800016f8 <mycpu>
    80003124:	0014f493          	andi	s1,s1,1
    80003128:	06952e23          	sw	s1,124(a0)
    8000312c:	fc5ff06f          	j	800030f0 <push_on+0x34>

0000000080003130 <pop_on>:
    80003130:	ff010113          	addi	sp,sp,-16
    80003134:	00813023          	sd	s0,0(sp)
    80003138:	00113423          	sd	ra,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	5b8080e7          	jalr	1464(ra) # 800016f8 <mycpu>
    80003148:	100027f3          	csrr	a5,sstatus
    8000314c:	0027f793          	andi	a5,a5,2
    80003150:	04078463          	beqz	a5,80003198 <pop_on+0x68>
    80003154:	07852783          	lw	a5,120(a0)
    80003158:	02f05863          	blez	a5,80003188 <pop_on+0x58>
    8000315c:	fff7879b          	addiw	a5,a5,-1
    80003160:	06f52c23          	sw	a5,120(a0)
    80003164:	07853783          	ld	a5,120(a0)
    80003168:	00079863          	bnez	a5,80003178 <pop_on+0x48>
    8000316c:	100027f3          	csrr	a5,sstatus
    80003170:	ffd7f793          	andi	a5,a5,-3
    80003174:	10079073          	csrw	sstatus,a5
    80003178:	00813083          	ld	ra,8(sp)
    8000317c:	00013403          	ld	s0,0(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret
    80003188:	00001517          	auipc	a0,0x1
    8000318c:	06050513          	addi	a0,a0,96 # 800041e8 <digits+0x70>
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	f2c080e7          	jalr	-212(ra) # 800020bc <panic>
    80003198:	00001517          	auipc	a0,0x1
    8000319c:	03050513          	addi	a0,a0,48 # 800041c8 <digits+0x50>
    800031a0:	fffff097          	auipc	ra,0xfffff
    800031a4:	f1c080e7          	jalr	-228(ra) # 800020bc <panic>

00000000800031a8 <__memset>:
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00813423          	sd	s0,8(sp)
    800031b0:	01010413          	addi	s0,sp,16
    800031b4:	1a060e63          	beqz	a2,80003370 <__memset+0x1c8>
    800031b8:	40a007b3          	neg	a5,a0
    800031bc:	0077f793          	andi	a5,a5,7
    800031c0:	00778693          	addi	a3,a5,7
    800031c4:	00b00813          	li	a6,11
    800031c8:	0ff5f593          	andi	a1,a1,255
    800031cc:	fff6071b          	addiw	a4,a2,-1
    800031d0:	1b06e663          	bltu	a3,a6,8000337c <__memset+0x1d4>
    800031d4:	1cd76463          	bltu	a4,a3,8000339c <__memset+0x1f4>
    800031d8:	1a078e63          	beqz	a5,80003394 <__memset+0x1ec>
    800031dc:	00b50023          	sb	a1,0(a0)
    800031e0:	00100713          	li	a4,1
    800031e4:	1ae78463          	beq	a5,a4,8000338c <__memset+0x1e4>
    800031e8:	00b500a3          	sb	a1,1(a0)
    800031ec:	00200713          	li	a4,2
    800031f0:	1ae78a63          	beq	a5,a4,800033a4 <__memset+0x1fc>
    800031f4:	00b50123          	sb	a1,2(a0)
    800031f8:	00300713          	li	a4,3
    800031fc:	18e78463          	beq	a5,a4,80003384 <__memset+0x1dc>
    80003200:	00b501a3          	sb	a1,3(a0)
    80003204:	00400713          	li	a4,4
    80003208:	1ae78263          	beq	a5,a4,800033ac <__memset+0x204>
    8000320c:	00b50223          	sb	a1,4(a0)
    80003210:	00500713          	li	a4,5
    80003214:	1ae78063          	beq	a5,a4,800033b4 <__memset+0x20c>
    80003218:	00b502a3          	sb	a1,5(a0)
    8000321c:	00700713          	li	a4,7
    80003220:	18e79e63          	bne	a5,a4,800033bc <__memset+0x214>
    80003224:	00b50323          	sb	a1,6(a0)
    80003228:	00700e93          	li	t4,7
    8000322c:	00859713          	slli	a4,a1,0x8
    80003230:	00e5e733          	or	a4,a1,a4
    80003234:	01059e13          	slli	t3,a1,0x10
    80003238:	01c76e33          	or	t3,a4,t3
    8000323c:	01859313          	slli	t1,a1,0x18
    80003240:	006e6333          	or	t1,t3,t1
    80003244:	02059893          	slli	a7,a1,0x20
    80003248:	40f60e3b          	subw	t3,a2,a5
    8000324c:	011368b3          	or	a7,t1,a7
    80003250:	02859813          	slli	a6,a1,0x28
    80003254:	0108e833          	or	a6,a7,a6
    80003258:	03059693          	slli	a3,a1,0x30
    8000325c:	003e589b          	srliw	a7,t3,0x3
    80003260:	00d866b3          	or	a3,a6,a3
    80003264:	03859713          	slli	a4,a1,0x38
    80003268:	00389813          	slli	a6,a7,0x3
    8000326c:	00f507b3          	add	a5,a0,a5
    80003270:	00e6e733          	or	a4,a3,a4
    80003274:	000e089b          	sext.w	a7,t3
    80003278:	00f806b3          	add	a3,a6,a5
    8000327c:	00e7b023          	sd	a4,0(a5)
    80003280:	00878793          	addi	a5,a5,8
    80003284:	fed79ce3          	bne	a5,a3,8000327c <__memset+0xd4>
    80003288:	ff8e7793          	andi	a5,t3,-8
    8000328c:	0007871b          	sext.w	a4,a5
    80003290:	01d787bb          	addw	a5,a5,t4
    80003294:	0ce88e63          	beq	a7,a4,80003370 <__memset+0x1c8>
    80003298:	00f50733          	add	a4,a0,a5
    8000329c:	00b70023          	sb	a1,0(a4)
    800032a0:	0017871b          	addiw	a4,a5,1
    800032a4:	0cc77663          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    800032a8:	00e50733          	add	a4,a0,a4
    800032ac:	00b70023          	sb	a1,0(a4)
    800032b0:	0027871b          	addiw	a4,a5,2
    800032b4:	0ac77e63          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    800032b8:	00e50733          	add	a4,a0,a4
    800032bc:	00b70023          	sb	a1,0(a4)
    800032c0:	0037871b          	addiw	a4,a5,3
    800032c4:	0ac77663          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    800032c8:	00e50733          	add	a4,a0,a4
    800032cc:	00b70023          	sb	a1,0(a4)
    800032d0:	0047871b          	addiw	a4,a5,4
    800032d4:	08c77e63          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    800032d8:	00e50733          	add	a4,a0,a4
    800032dc:	00b70023          	sb	a1,0(a4)
    800032e0:	0057871b          	addiw	a4,a5,5
    800032e4:	08c77663          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    800032e8:	00e50733          	add	a4,a0,a4
    800032ec:	00b70023          	sb	a1,0(a4)
    800032f0:	0067871b          	addiw	a4,a5,6
    800032f4:	06c77e63          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    800032f8:	00e50733          	add	a4,a0,a4
    800032fc:	00b70023          	sb	a1,0(a4)
    80003300:	0077871b          	addiw	a4,a5,7
    80003304:	06c77663          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    80003308:	00e50733          	add	a4,a0,a4
    8000330c:	00b70023          	sb	a1,0(a4)
    80003310:	0087871b          	addiw	a4,a5,8
    80003314:	04c77e63          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    80003318:	00e50733          	add	a4,a0,a4
    8000331c:	00b70023          	sb	a1,0(a4)
    80003320:	0097871b          	addiw	a4,a5,9
    80003324:	04c77663          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    80003328:	00e50733          	add	a4,a0,a4
    8000332c:	00b70023          	sb	a1,0(a4)
    80003330:	00a7871b          	addiw	a4,a5,10
    80003334:	02c77e63          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    80003338:	00e50733          	add	a4,a0,a4
    8000333c:	00b70023          	sb	a1,0(a4)
    80003340:	00b7871b          	addiw	a4,a5,11
    80003344:	02c77663          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    80003348:	00e50733          	add	a4,a0,a4
    8000334c:	00b70023          	sb	a1,0(a4)
    80003350:	00c7871b          	addiw	a4,a5,12
    80003354:	00c77e63          	bgeu	a4,a2,80003370 <__memset+0x1c8>
    80003358:	00e50733          	add	a4,a0,a4
    8000335c:	00b70023          	sb	a1,0(a4)
    80003360:	00d7879b          	addiw	a5,a5,13
    80003364:	00c7f663          	bgeu	a5,a2,80003370 <__memset+0x1c8>
    80003368:	00f507b3          	add	a5,a0,a5
    8000336c:	00b78023          	sb	a1,0(a5)
    80003370:	00813403          	ld	s0,8(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret
    8000337c:	00b00693          	li	a3,11
    80003380:	e55ff06f          	j	800031d4 <__memset+0x2c>
    80003384:	00300e93          	li	t4,3
    80003388:	ea5ff06f          	j	8000322c <__memset+0x84>
    8000338c:	00100e93          	li	t4,1
    80003390:	e9dff06f          	j	8000322c <__memset+0x84>
    80003394:	00000e93          	li	t4,0
    80003398:	e95ff06f          	j	8000322c <__memset+0x84>
    8000339c:	00000793          	li	a5,0
    800033a0:	ef9ff06f          	j	80003298 <__memset+0xf0>
    800033a4:	00200e93          	li	t4,2
    800033a8:	e85ff06f          	j	8000322c <__memset+0x84>
    800033ac:	00400e93          	li	t4,4
    800033b0:	e7dff06f          	j	8000322c <__memset+0x84>
    800033b4:	00500e93          	li	t4,5
    800033b8:	e75ff06f          	j	8000322c <__memset+0x84>
    800033bc:	00600e93          	li	t4,6
    800033c0:	e6dff06f          	j	8000322c <__memset+0x84>

00000000800033c4 <__memmove>:
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00813423          	sd	s0,8(sp)
    800033cc:	01010413          	addi	s0,sp,16
    800033d0:	0e060863          	beqz	a2,800034c0 <__memmove+0xfc>
    800033d4:	fff6069b          	addiw	a3,a2,-1
    800033d8:	0006881b          	sext.w	a6,a3
    800033dc:	0ea5e863          	bltu	a1,a0,800034cc <__memmove+0x108>
    800033e0:	00758713          	addi	a4,a1,7
    800033e4:	00a5e7b3          	or	a5,a1,a0
    800033e8:	40a70733          	sub	a4,a4,a0
    800033ec:	0077f793          	andi	a5,a5,7
    800033f0:	00f73713          	sltiu	a4,a4,15
    800033f4:	00174713          	xori	a4,a4,1
    800033f8:	0017b793          	seqz	a5,a5
    800033fc:	00e7f7b3          	and	a5,a5,a4
    80003400:	10078863          	beqz	a5,80003510 <__memmove+0x14c>
    80003404:	00900793          	li	a5,9
    80003408:	1107f463          	bgeu	a5,a6,80003510 <__memmove+0x14c>
    8000340c:	0036581b          	srliw	a6,a2,0x3
    80003410:	fff8081b          	addiw	a6,a6,-1
    80003414:	02081813          	slli	a6,a6,0x20
    80003418:	01d85893          	srli	a7,a6,0x1d
    8000341c:	00858813          	addi	a6,a1,8
    80003420:	00058793          	mv	a5,a1
    80003424:	00050713          	mv	a4,a0
    80003428:	01088833          	add	a6,a7,a6
    8000342c:	0007b883          	ld	a7,0(a5)
    80003430:	00878793          	addi	a5,a5,8
    80003434:	00870713          	addi	a4,a4,8
    80003438:	ff173c23          	sd	a7,-8(a4)
    8000343c:	ff0798e3          	bne	a5,a6,8000342c <__memmove+0x68>
    80003440:	ff867713          	andi	a4,a2,-8
    80003444:	02071793          	slli	a5,a4,0x20
    80003448:	0207d793          	srli	a5,a5,0x20
    8000344c:	00f585b3          	add	a1,a1,a5
    80003450:	40e686bb          	subw	a3,a3,a4
    80003454:	00f507b3          	add	a5,a0,a5
    80003458:	06e60463          	beq	a2,a4,800034c0 <__memmove+0xfc>
    8000345c:	0005c703          	lbu	a4,0(a1)
    80003460:	00e78023          	sb	a4,0(a5)
    80003464:	04068e63          	beqz	a3,800034c0 <__memmove+0xfc>
    80003468:	0015c603          	lbu	a2,1(a1)
    8000346c:	00100713          	li	a4,1
    80003470:	00c780a3          	sb	a2,1(a5)
    80003474:	04e68663          	beq	a3,a4,800034c0 <__memmove+0xfc>
    80003478:	0025c603          	lbu	a2,2(a1)
    8000347c:	00200713          	li	a4,2
    80003480:	00c78123          	sb	a2,2(a5)
    80003484:	02e68e63          	beq	a3,a4,800034c0 <__memmove+0xfc>
    80003488:	0035c603          	lbu	a2,3(a1)
    8000348c:	00300713          	li	a4,3
    80003490:	00c781a3          	sb	a2,3(a5)
    80003494:	02e68663          	beq	a3,a4,800034c0 <__memmove+0xfc>
    80003498:	0045c603          	lbu	a2,4(a1)
    8000349c:	00400713          	li	a4,4
    800034a0:	00c78223          	sb	a2,4(a5)
    800034a4:	00e68e63          	beq	a3,a4,800034c0 <__memmove+0xfc>
    800034a8:	0055c603          	lbu	a2,5(a1)
    800034ac:	00500713          	li	a4,5
    800034b0:	00c782a3          	sb	a2,5(a5)
    800034b4:	00e68663          	beq	a3,a4,800034c0 <__memmove+0xfc>
    800034b8:	0065c703          	lbu	a4,6(a1)
    800034bc:	00e78323          	sb	a4,6(a5)
    800034c0:	00813403          	ld	s0,8(sp)
    800034c4:	01010113          	addi	sp,sp,16
    800034c8:	00008067          	ret
    800034cc:	02061713          	slli	a4,a2,0x20
    800034d0:	02075713          	srli	a4,a4,0x20
    800034d4:	00e587b3          	add	a5,a1,a4
    800034d8:	f0f574e3          	bgeu	a0,a5,800033e0 <__memmove+0x1c>
    800034dc:	02069613          	slli	a2,a3,0x20
    800034e0:	02065613          	srli	a2,a2,0x20
    800034e4:	fff64613          	not	a2,a2
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00c78633          	add	a2,a5,a2
    800034f0:	fff7c683          	lbu	a3,-1(a5)
    800034f4:	fff78793          	addi	a5,a5,-1
    800034f8:	fff70713          	addi	a4,a4,-1
    800034fc:	00d70023          	sb	a3,0(a4)
    80003500:	fec798e3          	bne	a5,a2,800034f0 <__memmove+0x12c>
    80003504:	00813403          	ld	s0,8(sp)
    80003508:	01010113          	addi	sp,sp,16
    8000350c:	00008067          	ret
    80003510:	02069713          	slli	a4,a3,0x20
    80003514:	02075713          	srli	a4,a4,0x20
    80003518:	00170713          	addi	a4,a4,1
    8000351c:	00e50733          	add	a4,a0,a4
    80003520:	00050793          	mv	a5,a0
    80003524:	0005c683          	lbu	a3,0(a1)
    80003528:	00178793          	addi	a5,a5,1
    8000352c:	00158593          	addi	a1,a1,1
    80003530:	fed78fa3          	sb	a3,-1(a5)
    80003534:	fee798e3          	bne	a5,a4,80003524 <__memmove+0x160>
    80003538:	f89ff06f          	j	800034c0 <__memmove+0xfc>

000000008000353c <__putc>:
    8000353c:	fe010113          	addi	sp,sp,-32
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00113c23          	sd	ra,24(sp)
    80003548:	02010413          	addi	s0,sp,32
    8000354c:	00050793          	mv	a5,a0
    80003550:	fef40593          	addi	a1,s0,-17
    80003554:	00100613          	li	a2,1
    80003558:	00000513          	li	a0,0
    8000355c:	fef407a3          	sb	a5,-17(s0)
    80003560:	fffff097          	auipc	ra,0xfffff
    80003564:	b3c080e7          	jalr	-1220(ra) # 8000209c <console_write>
    80003568:	01813083          	ld	ra,24(sp)
    8000356c:	01013403          	ld	s0,16(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret

0000000080003578 <__getc>:
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00813823          	sd	s0,16(sp)
    80003580:	00113c23          	sd	ra,24(sp)
    80003584:	02010413          	addi	s0,sp,32
    80003588:	fe840593          	addi	a1,s0,-24
    8000358c:	00100613          	li	a2,1
    80003590:	00000513          	li	a0,0
    80003594:	fffff097          	auipc	ra,0xfffff
    80003598:	ae8080e7          	jalr	-1304(ra) # 8000207c <console_read>
    8000359c:	fe844503          	lbu	a0,-24(s0)
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	02010113          	addi	sp,sp,32
    800035ac:	00008067          	ret

00000000800035b0 <console_handler>:
    800035b0:	fe010113          	addi	sp,sp,-32
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00913423          	sd	s1,8(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	14202773          	csrr	a4,scause
    800035c8:	100027f3          	csrr	a5,sstatus
    800035cc:	0027f793          	andi	a5,a5,2
    800035d0:	06079e63          	bnez	a5,8000364c <console_handler+0x9c>
    800035d4:	00074c63          	bltz	a4,800035ec <console_handler+0x3c>
    800035d8:	01813083          	ld	ra,24(sp)
    800035dc:	01013403          	ld	s0,16(sp)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret
    800035ec:	0ff77713          	andi	a4,a4,255
    800035f0:	00900793          	li	a5,9
    800035f4:	fef712e3          	bne	a4,a5,800035d8 <console_handler+0x28>
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	6dc080e7          	jalr	1756(ra) # 80001cd4 <plic_claim>
    80003600:	00a00793          	li	a5,10
    80003604:	00050493          	mv	s1,a0
    80003608:	02f50c63          	beq	a0,a5,80003640 <console_handler+0x90>
    8000360c:	fc0506e3          	beqz	a0,800035d8 <console_handler+0x28>
    80003610:	00050593          	mv	a1,a0
    80003614:	00001517          	auipc	a0,0x1
    80003618:	adc50513          	addi	a0,a0,-1316 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	afc080e7          	jalr	-1284(ra) # 80002118 <__printf>
    80003624:	01013403          	ld	s0,16(sp)
    80003628:	01813083          	ld	ra,24(sp)
    8000362c:	00048513          	mv	a0,s1
    80003630:	00813483          	ld	s1,8(sp)
    80003634:	02010113          	addi	sp,sp,32
    80003638:	ffffe317          	auipc	t1,0xffffe
    8000363c:	6d430067          	jr	1748(t1) # 80001d0c <plic_complete>
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	3e0080e7          	jalr	992(ra) # 80002a20 <uartintr>
    80003648:	fddff06f          	j	80003624 <console_handler+0x74>
    8000364c:	00001517          	auipc	a0,0x1
    80003650:	ba450513          	addi	a0,a0,-1116 # 800041f0 <digits+0x78>
    80003654:	fffff097          	auipc	ra,0xfffff
    80003658:	a68080e7          	jalr	-1432(ra) # 800020bc <panic>
	...
