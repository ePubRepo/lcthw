CFLAGS=-Wall -g
CC=cc#g++

all: ex29

ex29:
	cc -c -fPIC libex29.c -o libex29.o
	cc -shared -o libex29.so libex29.o
	cc -Wall -g -DNDEBUG ex29.c -ldl -o ex29

ex31:
	cc -c ex31.c -o ex31
