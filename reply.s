.bss
	.lcomm name, 32

.data
	question1:
		.ascii "What is your name?\n"
		len = . - question1
	ans:
		.ascii "Hello, "

.text

	_start:

		.global _start

		mov $4, %eax
		mov $1, %ebx
		mov $question1, %ecx
		mov $len, %edx
		int $0x80

		mov $3, %eax
		mov $1, %ebx
		mov $name, %ecx
		mov $0x20, %edx
		int $0x80

		mov $4, %eax
		mov $1, %ebx
		mov $ans, %ecx
		mov $7, %edx
		int $0x80

		mov $4, %eax
		mov $1, %ebx
		mov $name, %ecx
		mov $0x20, %edx
		int $0x80

		mov $1, %eax
		mov $0, %ebx
		int $0x80
