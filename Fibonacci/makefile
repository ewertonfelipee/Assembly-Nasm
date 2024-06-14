NOME = fibo

all: $(NOME).c $(NOME).o
	gcc $(NOME).o $(NOME).c -o $(NOME)
	rm -rf $(NOME).o

%.o: %.asm
	nasm -f elf64 $<   