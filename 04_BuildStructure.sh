# This bash file generate the file arborescende of projects
# Following command make directories if directory does not exist already
printf "\n\n---- ---- ---- ----> Script 04_BuildStructure"
pwd
mkdir -p project
pwd

printf "Creating src\n"
mkdir -p project/src

printf "Creating include\n"
mkdir -p project/include

printf "Creating app\n"
mkdir -p project/app

printf "Creating tests\n"
mkdir -p project/tests

pwd
printf "Script 04_BuildStructure <---- ---- ---- ---- \n\n"
