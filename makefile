all: stl

stl: main.o listTest.o vectorTest.o alloc.o dequeTest.o heapTest.o rbtreeTest.o setTest.o mapTest.o
	g++ -g -std=c++11 -pie -o stl main.o listTest.o vectorTest.o alloc.o dequeTest.o heapTest.o rbtreeTest.o setTest.o mapTest.o

main.o: main.cpp ./test/mapTest.h
	g++ -g -std=c++11 -fPIE -c main.cpp

listTest.o: ./test/listTest.cpp ./test/listTest.h
	g++ -g -std=c++11 -fPIE -c ./test/listTest.cpp

vectorTest.o: ./test/vectorTest.cpp ./test/vectorTest.h
	g++ -g -std=c++11 -fPIE -c ./test/vectorTest.cpp

dequeTest.o: ./test/dequeTest.cpp ./test/dequeTest.h
	g++ -g -std=c++11 -fPIE -c ./test/dequeTest.cpp

heapTest.o: ./test/heapTest.cpp ./test/heapTest.h
	g++ -g -std=c++11 -fPIE -c ./test/heapTest.cpp

rbtreeTest.o: ./test/rbtreeTest.cpp ./test/rbtreeTest.h
	g++ -g -std=c++11 -fPIE -c ./test/rbtreeTest.cpp

setTest.o: ./test/setTest.cpp ./test/setTest.h
	g++ -g -std=c++11 -fPIE -c ./test/setTest.cpp

mapTest.o: ./test/mapTest.cpp ./test/mapTest.h
	g++ -g -std=c++11 -fPIE -c ./test/mapTest.cpp

alloc.o: alloc.cpp alloc.h
	g++ -g -std=c++11 -fPIE -c alloc.cpp

clean:
	rm -f stl main.o listTest.o vectorTest.o alloc.o dequeTest.o heapTest.o rbtreeTest.o setTest.o mapTest.o
