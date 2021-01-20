CC = gcc
FLAG = -Wall 


all: sniffer myping

#sniffer: sniffer.o
#	$(CC) $(FLAG) -o sniffer sniffer.o
myping: myping.o
	$(CC) $(FLAG) -o myping myping.o
	

#sniffer.o: sniffer.cpp
#	$(CC) $(FLAG) -c $*.cpp
myping.o: myping.c
	$(CC) $(FLAG) -c $*.c


#sniffer
	
.PHONY: clean all  myping


clean:
	rm -f *.o sniffer myping