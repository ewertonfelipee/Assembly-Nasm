TARGET = entrada
OBJECT = entrada.o

all: $(OBJECT)
	ld -s -o $(TARGET) $(OBJECT)
	rm -rf *.o;

%.o: %.asm
	nasm -f elf64 $<