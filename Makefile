main.o: main.c
	gcc -o hello main.c

# Simple wildcard use
clean:
	rm -f *.o

# Advanced wildcard use
files_to_delete = $(wildcard *.o)

clean:
	rm -f $(files_to_delete)

%.out: %.c
	gcc -o $* $*.c

files = foo.c bar.c foo.o bar.o

foo:
	cat $(filter %.c, $(files))

patsubst:
	echo $(patsubst he%,%x,hello world)
