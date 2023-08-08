CC = gcc
CXX = g++

C_FLAGS = -std=c99
CXX_FLAGS = -std=c++11

CXX_FLAGS += -Wall -Wextra -Wno-conversion -Wno-unknown-pragmas -O3 -march=native -pedantic

HEADER_INCLUDES = -I.  -I ../include/  -I ../fp16/include/ -I ../robin-map/include/

.PHONY: build_static
build_static:
	$(CXX) $(CXX_FLAGS) -o libusearch.a -O3 -c lib.cpp $(HEADER_INCLUDES) ar rcs libusearch.a lib.o

.PHONY: test_static
test_static:
	$(CC) $(C_FLAGS) test.c -L. -lusearch -Wl,-rpath,. -o test_static

.PHONY: clean
clean:
	rm -f libusearch.a lib.o test_static
