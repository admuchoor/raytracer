CC=g++ -g -Wall -std=c++17

# List of source files 
SOURCES=main.cpp

# Generate the names of the object files
OBJS=${SOURCES:.cpp=.o}

all: raytracer

# Compile 
raytracer: ${OBJS}
	${CC} -o $@ $^

# Generic rules for compiling a source file to an object file
%.o: %.cpp
	${CC} -c $<
%.o: %.cc
	${CC} -c $<

clean:
	rm -f ${OBJS} raytracer 
