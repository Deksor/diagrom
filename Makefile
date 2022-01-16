all: bin

bin:
	nasm -f bin src/main.asm -o diagrom.bin

com:
	nasm -f bin src/main.asm -o diagrom.com -D COMFILE