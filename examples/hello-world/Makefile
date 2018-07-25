build: hello-world.asm
	yasm -f elf64 -g dwarf2 -o hello-world.o hello-world.asm
	mkdir -p bin
	ld -o bin/hello-world hello-world.o

run: build
	./bin/hello-world

clean:
	rm -f *.o
	rm -fr bin/