all: number-server

number-server: number-server.c http-server.c http-server.h 
	gcc -std=c11 -Wall -Wno-unused-variable -fsanitize=address -g number-server.c http-server.c -o number-server 

clean:
	rm -f number-server http-server 

