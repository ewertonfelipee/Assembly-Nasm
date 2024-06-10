TARGET = prog1-7-2
OBJECT = prog1-7-2.o

all: $(OBJECT)
	ld -s -o $(TARGET) $(OBJECT)
	rm -rf *.o;

%.o: %.asm
	nasm -f elf64 $<