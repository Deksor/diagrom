all: bin

bin:
	nasm -f bin src/main.asm -o diagrom.bin

com:
	nasm -f bin src/main.asm -o ~/Documents/DOSBox/C/diagrom.com -D COMFILE
