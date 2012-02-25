CFLAGS=-c -Wall -W -Wno-sign-compare -Wstrict-prototypes -Wmissing-declarations -Wwrite-strings -g -O2 -fno-strict-aliasing -D_REENTRANT -D_FILE_OFFSET_BITS=64
CC=gcc

all: fusehalt

fusehalt: fusehalt.o
	$(CC) -o fusehalt -Wall fusehalt.o -lpthread -ldl -lrt -lfuse

fusehalt.o: fusehalt.c
	$(CC) $(CFLAGS) fusehalt.c

clean:
	rm fusehalt fusehalt.o
