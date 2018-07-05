all: compile link clean

compile: reply.s
	@gcc -c reply.s -o reply.o
	@echo "\033[1;33mCompile\033[0m -  \033[0;32msuccess"

link: reply.o
	@ld reply.o -o reply
	@echo "\033[1;33mLink\033[0m - \033[0;32msuccess\033[0;0m"
clean: reply
	@rm -rf *.o
