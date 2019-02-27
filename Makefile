CPP = g++
CC = gcc
CFLAGS = -c -Wall -g
CPPFLAGS = -c -Wall -g

LIB =
INCLUDE =

all:helloworld

helloworld: main.o
	#$(CPP) main.o -o helloworld $(LIB) $(INCLUDE)
	$(CPP) $(LIB) $(INCLUDE) $^ -o $@

#%.o:%.c
#	$(CC) $(CFLAGS) $(INCLUDE) $< -o $@
#
#%.o:%.cpp
#	$(CPP) $(CPPFLAGS) $(INCLUDE) $< -o $@
#
#.c.o:
#	$(CC) $(CFLAGS) $(INCLUDE) $< -o $@
#
#.cpp.o:
#	$(CPP) $(CPPFLAGS) $(INCLUDE) $< -o $@
#
.c.o:
	$(CC) $(CFLAGS) $(INCLUDE) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) $(INCLUDE) -c $<

clean:
	rm -rf *.o helloworld 
