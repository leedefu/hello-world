CPP = g++
CC = gcc
CFLAGS = -c -Wall -g
CPPFLAGS = -c -Wall -g

LIB =
INCLUDE =


all:helloworld

helloworld: main.o
	$(CPP) main.o -o helloworld $(LIB) $(INCLUDE)

clean:
	rm -rf *.o helloworld 
