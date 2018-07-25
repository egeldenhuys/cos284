build: main.asm
	yasm -f elf64 -g dwarf2 -o main.o main.asm
	mkdir -p bin
	ld -o bin/main main.o

run: build
	./bin/main

clean:
	rm -f *.o
	rm -fr bin/