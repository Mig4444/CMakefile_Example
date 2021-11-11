 #How to launch the CMakeLists.txt
#Example for eclipse:
#cmake -G Eclipse - Unix Makefiles

#XXXX sections are to be adapted in function of the project
set(CMakeVersion CMAKE__ARV0)
set(ProjectName CMAKE__ARV1)
set(LibraryName CMAKE__ARV2)
set(IncludeName CMAKE__ARV3)

#CMake version to be used
cmake_minimum_required(VERSION ${CMakeVersion})

#Project name - To be adapted
project(${ProjectName})

#All resources location are attributed to a variable
file( GLOB_RECURSE SRC_C /home/mig/Documents/github/CMakefile_Example/project/src/*.c)
message("found c src files are:" ${SRC_C} "\n")
#file( GLOB_RECURSE SRC_CPP src/*.cpp)
#message("found cpp src files are:" ${SRC_CPP})

#All include location are attributed to a variable
file( GLOB_RECURSE INC_H /home/mig/Documents/github/CMakefile_Example/project/include/*.h)
message("found h includes files are:" ${INC_H} "\n")
#file( GLOB_RECURSE INC_HPP include/*.hpp)
#message("found hpp includes files are:" ${INC_HPP})

#All app location are attributed to a variable
file( GLOB_RECURSE APP_C /home/mig/Documents/github/CMakefile_Example/project/app/*.c)
message("found c app files are:" ${APP_C} "\n")
#file( GLOB_RECURSE APP_CPP apps/*.cpp)
#message("found cpp apps files are:" ${APP_CPP})

#Directores to include - headers
include_directories($IncludeName ${INC_H})
#include_directories(${INC_HPP}

#Add libraries - src *.c *.cpp - Library to be adapted
add_library(${LibraryName} ${SRC_C})
#add_library(${LibraryName} ${SRC_CPP})

#Application - main.c or main.cpp
add_executable(${ProjectName} ${APP_C})
#add_executable(${ProjectName} APP_CPP)

#Target Link Libraries
target_link_libraries(${ProjectName} ${LibraryName})
