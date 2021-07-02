#!bin/bash
read -p "name of directory:" dir_name
cd /home/luciferat02/Documents/SRFP_2021/MRS_LAMOST/Objects
mkdir $dir_name
cd $dir_name
cwd=$(pwd)
cd
cd /home/luciferat02/Downloads
read -p "name of text file:" txt_file
mv /home/luciferat02/Downloads/$txt_file $cwd
cd $cwd
wget --content-disposition -i $txt_file
