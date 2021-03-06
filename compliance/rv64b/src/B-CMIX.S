#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN
    la a1,test_results
    li t4, 0xf38e07165dd79cfa
    li a5, 0xf2f25a0bc4ed4893
    li s2, 0x72c8a75d987a10dd
    cmix t6,t4,a5,s2
    sd t6,0(a1)
    li a7, 0x25f269ba9c6f7aa2
    li a6, 0x11fe7c5ffcae8655
    li s0, 0x3ee8d76702a2826c
    cmix s1,a7,a6,s0
    sd s1,8(a1)
    li a5, 0xe6b16607a8a22391
    li t1, 0xb4ea93d41b4286dd
    li t3, 0x682ae2c6988c0022
    cmix a7,a5,t1,t3
    sd a7,16(a1)
    li t5, 0xb6213a3c430b3272
    li s7, 0xd1ced3e82b77485c
    li t2, 0xfde0bbd38b8e8f3e
    cmix s11,t5,s7,t2
    sd s11,24(a1)
    li s5, 0xf0190cecadd85909
    li s11, 0x38b5a7ff116023b7
    li a2, 0x0557f01f29d882a1
    cmix t0,s5,s11,a2
    sd t0,32(a1)
    li s6, 0x0000000000000000
    li s8, 0x6198b4fc2ba53005
    li a4, 0x33f7912ab208965f
    cmix t2,s6,s8,a4
    sd t2,40(a1)
    RV_COMPLIANCE_HALT
RV_COMPLIANCE_CODE_END

.data
RV_COMPLIANCE_DATA_BEGIN
test_results:
.fill 6,8,-1
RV_COMPLIANCE_DATA_END
