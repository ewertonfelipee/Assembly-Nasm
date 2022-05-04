TARGET = compara
OBJECT = compara.o

all: $(OBJECT)
	ld -s -o $(TARGET) $(OBJECT)
	rm -rf *.o;

%.o: %.asm
	nasm -f elf64 $<
