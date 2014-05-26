CFLAGS=-Wall -g
CC=cc#g++

all: build ex19 ex20 ex22 ex23 ex24

build:
	$(CC) $(CFLAGS) ex1.c   -o ex1
	$(CC) $(CFLAGS) ex3.c   -o ex3
	$(CC) $(CFLAGS) ex4.c   -o ex4
	$(CC) $(CFLAGS) ex5.c   -o ex5
	$(CC) $(CFLAGS) ex6.c   -o ex6
	$(CC) $(CFLAGS) ex7.c   -o ex7
	$(CC) $(CFLAGS) ex8.c   -o ex8
	$(CC) $(CFLAGS) ex9.c   -o ex9
	$(CC) $(CFLAGS) ex10.c  -o ex10
	$(CC) $(CFLAGS) ex11.c  -o ex11
	$(CC) $(CFLAGS) ex12.c  -o ex12
	$(CC) $(CFLAGS) ex13.c  -o ex13
	$(CC) $(CFLAGS) ex14.c  -o ex14
	$(CC) $(CFLAGS) ex15.c  -o ex15
	$(CC) $(CFLAGS) ex16.c  -o ex16
	$(CC) $(CFLAGS) ex17.c  -o ex17
	$(CC) $(CFLAGS) ex18.c  -o ex18

ex19:
	$(CC) $(CFLAGS) -c -o object.o object.c
	$(CC) $(CFLAGS) ex19.c object.o    -o ex19


ex20:
	$(CC) $(CFLAGS) -DNDEBUG    ex20.c   -o ex20

ex22:
	$(CC) $(CFLAGS) -DNDEBUG   -c -o ex22.o ex22.c
	$(CC) $(CFLAGS) -DNDEBUG    ex22_main.c ex22.o   -o ex22_main

ex23:
	$(CC) $(CFLAGS)	-DNDEBUG ex23.c -o ex23

ex24:
	$(CC) $(CFLAGS) -DNDEBUG ex24.c -o ex24

ex25:
	$(CC) $(CFLAGS) -DNDEBUG ex25.c -o ex25

ex29:
	cc -c -fPIC libex29.c -o libex29.o
	cc -shared -o libex29.so libex29.o
	cc -Wall -g -DNDEBUG ex29.c -ldl -o ex29

clean:
	rm -f ex1 ex3 ex4 ex5 ex6 ex7 ex8 ex9
	rm -f ex10 ex11 ex12 ex13 ex14 ex15 ex16 ex17 ex18 ex19 object.o ex20
	rm -f ex22_main ex23 ex24 ex25 ex29
