# Hello, World on x86

.data

	msg:
		.ascii "Hello, World!\n\0"

.text

	_start:

		.global _start

		mov $msg, %eax
 		call _print

		mov $1, %eax
		mov $0, %ebx
		int $0x80

	_print:
		push %eax
		mov $0, %edx
	_printLoop:
		inc %eax
		inc %edx
		mov (%eax), %cl
		cmp $0, %cl
		jne _printLoop

		mov $4, %eax
		mov $1, %ebx
		pop %ecx
		int $0x80

		ret
