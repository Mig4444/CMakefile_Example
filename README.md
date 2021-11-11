# CMakefile_Example

This repository contains an example of a CMakeLists.txt and some other scripts and files.
The purpose of all files is to be able to generate an eclipse project structure with one click

Passing from 
── 00_buildEclipseProject.sh
── 01_basic_main.c
── 02_src.c
── 03_header.h
── 04_BuildStructure.sh
── 05_generateEclipseProject.sh
── CMakeLists.txt

to 

── 00_buildEclipseProject.sh
── 01_basic_main.c
── 02_src.c
── 03_header.h
── 04_BuildStructure.sh
── 05_generateEclipseProject.sh
── CMakeLists.txt
── project
    ├── app
    │   └── main.c
    ├── CMakeCache.txt
    ├── CMakeFiles
    │   ├── 3.16.3
    │   │   ├── CMakeCCompiler.cmake
    │   │   ├── CMakeCXXCompiler.cmake
    │   │   ├── CMakeDetermineCompilerABI_C.bin
    │   │   ├── CMakeDetermineCompilerABI_CXX.bin
    │   │   ├── CMakeSystem.cmake
    │   │   ├── CompilerIdC
    │   │   │   ├── a.out
    │   │   │   ├── CMakeCCompilerId.c
    │   │   │   └── tmp
    │   │   └── CompilerIdCXX
    │   │       ├── a.out
    │   │       ├── CMakeCXXCompilerId.cpp
    │   │       └── tmp
    │   ├── cmake.check_cache
    │   ├── CMakeOutput.log
    │   └── CMakeTmp
    ├── CMakeLists.txt
    ├── generateEclipseProject.sh
    ├── include
    │   └── header.h
    ├── src
    │   └── src.c
    └── tests

