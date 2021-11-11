printf "\n---- ---- ---- ---- Building arboresence\n"
pwd
bash 04_BuildStructure.sh


printf "\n---- ---- ---- ----> Copying files templates into APP - SRC - INCLUDE\n"
pwd
cp 01_basic_main.c project/app/main.c
cp 02_src.c project/src/src.c
cp 03_header.h project/include/header.h
cp CMakeLists.txt project/CMakeLists.txt
printf "\n<---- ---- ---- ---- Copying files templates into APP - SRC - INCLUDE\n"


printf "\n---- ---- ---- ----> Executing cmake file\n"
cd project
pwd
cmake ..
printf "\n<---- ---- ---- ---- Executing cmake file\n"


printf "\n---- ---- ---- ----> Executing make file\n"
pwd
make
printf "\n<---- ---- ---- ---- Executing make file\n"


printf "\n---- ---- ---- ----> Copying file to generate eclipse project\n"
pwd
cp ~/Documents/github/CMakefile_Example/05_generateEclipseProject.sh ~/Documents/github/CMakefile_Example/project/generateEclipseProject.sh
printf "\n<---- ---- ---- ---- Copying file to generate eclipse project\n"

printf "\n---- ---- ---- ----> Generating eclipse project\n"
pwd
cd project
bash generateEclipseProject.sh
printf "\n<---- ---- ---- ---- Generating eclipse project\n"

read -p "Press enter to continue"