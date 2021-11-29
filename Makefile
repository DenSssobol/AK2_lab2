CXX = g++

RM = del /Q /F

CXXFLAGS = -Wall -Wextra -c

all: run

run: Calculator.a Calculator.o main.o 
	$(CXX) $? -o $@

Calculator.a: Calculator.o
	ar cr $@  $?

Calculator.o: src/Calculator.cpp src/Calculator.h
	$(CXX) $(CXXFLAGS) src/Calculator.cpp -o $@

main.o: src/main.cpp src/Calculator.h
	$(CXX) $(CXXFLAGS) src/main.cpp -o $@

clean:
	$(RM) *.o run.exe *.a