cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 14)

project(Lab2_MB)

add_library(Calculator
	src/Calculator.h
	src/Calculator.cpp
)


target_include_directories(
	Calculator
	PUBLIC
		"src"
)

add_executable(run
  src/main.cpp
)

target_link_libraries(run Calculator)