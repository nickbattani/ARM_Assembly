@ Prints hello world
@ Based on chapter 1 of 
@ "Raspberry Pi Assembly 
@ Language Programming" by 
@ Stephen Smith

.global _start				@ declare start variable


_start:					
	mov R0, #1 			@ 1 = stdout
	ldr R1, =helloworld		@ load string into r1
	mov R2, #13			@ length of string
	mov R7, #4			@ linux write system call
	svc 0				@ call to linux


	mov R0, #0			@ 0 = return code
	mov R7, #1			@ service sommand code 0
	svc 0				@ call to linux 

.data
helloworld:	.ascii "Hello World!\n"

