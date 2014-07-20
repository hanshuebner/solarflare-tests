
OPENONLOAD = 	$(HOME)/openonload-201310-u3

CFLAGS +=	-I$(OPENONLOAD)/src/include -std=c99 -g
LDFLAGS +=	-L$(OPENONLOAD)/build/gnu_x86_64/lib/ciul
LDLIBS +=	-lciul -lm

all: recv send

recv send: hexdump.o

clean:
	rm -f recv send *.o *~
