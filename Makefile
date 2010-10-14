all: test-media-window

test-media-window: test-media-window.o gsd-media-keys-window.o
	gcc `pkg-config --cflags --libs gtk+-2.0` -o test-media-window test-media-window.o gsd-media-keys-window.o

test-media-window.o: test-media-window.c gsd-media-keys-window.h
	gcc `pkg-config --cflags --libs gtk+-2.0` -c test-media-window.c

gsd-media-keys-window.o: gsd-media-keys-window.c gsd-media-keys-window.h
	gcc `pkg-config --cflags --libs gtk+-2.0` -c gsd-media-keys-window.c

clean:
	rm -f test-media-window *.o
	
