	.macro arm_func_start name
	.align 2, 0
	.global \name
	.arm
	.type \name, function
	.endm

	.macro arm_func_end name
	.size \name, .-\name
	.endm

	.macro thumb_func_start name
	    .align 2, 0
	    .global \name
	    .thumb
	    .thumb_func
	    .type \name, function
	.endm

	.macro thumb_func_end name
	    .size \name, .-\name
	.endm

.syntax unified

thumb_func_start irq_non
irq_non:
	BX		LR
thumb_func_end irq_non



	thumb_func_start irq_init
irq_init:
	PUSH		{R4,LR}
	MOVS		R0, #0
	MOVS		R1, #0
	BL		irq_set_ie
	LDR		R0, =irq_func_table
	LDR		R1, =irq_func_table_ram
	MOVS		R2, #0x1E
	BL		Dma_romToRam
	LDR		R0, =irq
	LDR		R4, =irq_ram
	MOVS            R2, #0x80
	LSLS            R2, R2, #1
	ADDS            R1, R4, #0
	BL		Dma_romToRam
	LDR		R0, =0x3007FFC
	STR		R4, [R0]
	POP		{R4,PC}
.pool
	thumb_func_end irq_init




    thumb_func_start irq_set
irq_set:
	PUSH		{R4,R5,LR}
	 ADDS            R2, R1, #0
	LDR		R5, =0x4000200
	LDR		R1, =irq_ie
	LDR		R4, [R1]
	LDR		R1, =irq_beki
	LSLS		R3, R0,	#2
	ADDS		R1, R3,	R1
	LDR		R1, [R1]
	 ADDS            R0, R4, #0
	BICS		R0, R1
	STRH		R0, [R5]
	CMP		R2, #0
	BNE		loc_200EA0A
	LDR		R2, =(irq_non+1)
loc_200EA0A:
	LDR		R0, =irq_func_table_ram
	ADDS		R0, R3,	R0
	STR		R2, [R0]
	STRH		R4, [R5]
	POP		{R4,R5,PC}
    .pool
    thumb_func_end irq_set

    thumb_func_start irq_getIrqFuncTable_address
irq_getIrqFuncTable_address:
	LSLS		R0, R0,	#2
	LDR		R1, =irq_func_table_ram
	ADDS		R0, R0,	R1
	BX		LR
    .pool
    thumb_func_end irq_getIrqFuncTable_address

    thumb_func_start irq_set_ie
irq_set_ie:
	PUSH		{LR}
	ADDS            R2, R1, #0
	CMP		R0, #1
	BEQ		loc_200EA68
	CMP		R0, #1
	BGT		loc_200EA4C
	CMP		R0, #0
	BEQ		loc_200EA5C
	LDR		R1, =irq_ie
	B		loc_200EA88
    .pool
loc_200EA4C:
	CMP		R0, #2
	BEQ		loc_200EA74
	CMP		R0, #3
	BEQ		loc_200EA80
	LDR		R1, =irq_ie
	B		loc_200EA88
    .pool
loc_200EA5C:
	LDR		R0, =irq_ie
	STR		R2, [R0]
	 ADDS            R1, R0, #0
	B		loc_200EA88
    .pool
loc_200EA68:
	LDR		R1, =irq_ie
	LDR		R0, [R1]
	ANDS		R0, R2
	B		loc_200EA86
    .pool
loc_200EA74:
	LDR		R1, =irq_ie
	LDR		R0, [R1]
	ORRS		R0, R2
	B		loc_200EA86
    .pool
loc_200EA80:
	LDR		R1, =irq_ie
	LDR		R0, [R1]
	BICS		R0, R2
loc_200EA86:
	STR		R0, [R1]
loc_200EA88:
	LDR		R0, =0x4000200
	LDR		R1, [R1]
	STRH		R1, [R0]
	MOVS            R2, #0x80
	LSLS            R2, R2, #9
	ANDS		R2, R1
	CMP		R2, #0
	BEQ		loc_200EAAC
	LDR		R1, =0x4000208
	MOVS		R0, #1
	STRH		R0, [R1]
	B		locret_200EAB0
	.align	2, 0
    .pool
loc_200EAAC:
	LDR		R0, =0x4000208
	STRH		R2, [R0]
locret_200EAB0:
	POP		{PC}
	.align	2, 0
    .pool
    thumb_func_end irq_set_ie



thumb_func_start irq_get_ie
irq_get_ie:
	LDR		R0, =irq_ie
	LDR		R0, [R0]
	BX		LR
	.align	2, 0
    .pool
thumb_func_end irq_get_ie


arm_func_start irq
irq:
	LDR		R3, =0x4000200
	LDR		R2, [R3]
	MOV		R1, R2,LSL#16
	MOV		R1, R1,LSR#16
	MRS		R0, SPSR
	STMFD		SP!, {R0,R1,R3,LR}
	AND		R1, R2,	R2,LSR#16
	MOV		R2, #0
	ANDS		R0, R1,	#1
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#2
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#4
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#8
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x10
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x20
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x40
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x80
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x100
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x200
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x400
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x800
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x1000
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x2000
	BNE		jump_intr
	ADD		R2, R2,	#4
	ANDS		R0, R1,	#0x4000

jump_intr:

	STRH		R0, [R3,#2]
	LDR		R0, =0x8002
	STRH		R0, [R3]
	MRS		R3, CPSR
	BIC		R3, R3,	#0xCF
	ORR		R3, R3,	#0x1F
	MSR		CPSR_cf, R3
	LDR		R1, =irq_func_table_ram
	ADD		R1, R1,	R2
	LDR		R0, [R1]
	STMFD		SP!, {R12,LR}
	ADR		LR, (loc_200EBC6+1)
	BX		R0

.thumb

	EORS		R0, R0

loc_200EBC6:
	EORS		R0, R0
	ADD		R0, PC
	BX		R0

	.arm

intr_return:
	LDMFD		SP!, {R12,LR}
	MRS		R3, CPSR
	BIC		R3, R3,	#0xCF
	ORR		R3, R3,	#0x92
	MSR		CPSR_cf, R3
	LDMFD		SP!, {R0,R1,R3,LR}
	STRH		R1, [R3]
	MSR		SPSR_cf, R0
	BX		LR
.pool
arm_func_end irq




thumb_func_start Dma_romToRam
Dma_romToRam:
	LSLS		R2, R2,	#0x10
	LSRS		R2, R2,	#0x10
	LDR		R3, =0x40000D4
	STRH		R0, [R3]
	ADDS		R3, #2
	ASRS		R0, R0,	#0x10
	STRH		R0, [R3]
	LDR		R0, =0x40000D8
	STRH		R1, [R0]
	ADDS		R0, #2
	ASRS		R1, R1,	#0x10
	STRH		R1, [R0]
	ADDS		R0, #2
	STRH		R2, [R0]
	LDR		R1, =0x40000DE
	MOVS            R2, #0x80
	LSLS            R2, R2, #8
	ADDS            R0, R2, #0
	STRH		R0, [R1]
	BX		LR



    .pool



    thumb_func_start dma
dma:
	PUSH		{R4-R6,LR}
	LDR		R5, [SP,#0x10]
	LSLS		R4, R0,	#1
	ADDS		R4, R4,	R0
	LSLS		R4, R4,	#2
	LDR		R6, =0x40000B0
	ADDS		R0, R4,	R6
	STR		R2, [R0]
	LDR		R2, =0x40000B4
	ADDS		R0, R4,	R2
	STR		R1, [R0]
	ADDS		R6, #8
	ADDS		R0, R4,	R6
	STRH		R3, [R0]
	LDR		R1, =0x40000BA
	ADDS		R0, R4,	R1
	STRH		R5, [R0]
	POP		{R4-R6,PC}

    .pool
    thumb_func_end dma




thumb_func_start dma_box4bit
dma_box4bit:
	PUSH		{R4-R7,LR}
	MOV		R7, R8
	PUSH		{R7}
	CMP		R3, #0
	BLE		loc_200EC96
	LSLS		R0, R0,	#5
	MOVS            R4, #0xC0
	LSLS            R4, R4, #0x13
	ADDS		R6, R0,	R4
	ADDS            R5, R1, #0
	LSLS		R0, R2,	#0x14
	MOV		R8, R0
	LSLS		R7, R2,	#5
	ADDS		R4, R3,	#0

loc_200EC7C:
	ADDS            R0, R5, #0
	ADDS            R1, R6, #0
	MOV		R3, R8
	ASRS		R2, R3,	#0x10
	BL		Dma_romToRam
	MOVS            R0, #0x80
	LSLS            R0, R0, #3
	ADDS		R6, R6,	R0
	ADDS		R5, R5,	R7
	SUBS		R4, #1
	CMP		R4, #0
	BNE		loc_200EC7C

loc_200EC96:
	POP		{R3}
	MOV		R8, R3
	POP		{R4-R7,PC}






thumb_func_start dma_objchr
dma_objchr:
	PUSH		{R4,LR}
	MOVS		R4, #0x80
	   LSLS            R4, R4, #4
	ADDS		R0, R0,	R4
	BL		dma_box4bit
	POP		{R4,PC}
thumb_func_end dma_objchr

	thumb_func_start dma_boxScreen
dma_boxScreen:
	PUSH		{R4-R7,LR}
	MOV		R7, R8
	PUSH		{R7}
	CMP		R3, #0
	BLE		loc_200ECD8
	ADDS            R6, R0, #0
	ADDS		R5, R1, #0
	LSLS		R0, R2,	#0x10
	MOV		R8, R0
	LSLS		R7, R2,	#1
	ADDS		R4, R3,	#0

loc_200ECC2:
	ADDS		R0, R5, #0
	ADDS		R1, R6, #0
	MOV		R3, R8
	ASRS		R2, R3,	#0x10
	BL		Dma_romToRam
	ADDS		R6, #0x40
	ADDS		R5, R5,	R7
	SUBS		R4, #1
	CMP		R4, #0
	BNE		loc_200ECC2

loc_200ECD8:
	POP		{R3}
	MOV		R8, R3
	POP		{R4-R7,PC}
	thumb_func_end dma_boxScreen

    .align 2,0
