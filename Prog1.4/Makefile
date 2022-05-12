TARGET = converte
converte = converte.o

all: $(OBJECT)
	ld -s -o $(TARGET) $(OBJECT)
	rm -rf *.o;

%.o: %.asm
	nasm -f elf64 $<