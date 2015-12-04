.PHONY: clean

CC=g++
CFLAGS=-c -Wall
LDFLAGS= -lsqlite3
SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=main.out

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ 

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@ 

clean: 
	rm -f $(EXECUTABLE) $(OBJECTS)
