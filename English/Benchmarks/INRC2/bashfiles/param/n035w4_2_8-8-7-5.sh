#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n035w4 --weeks 8-8-7-5 --his 2 --param paramfiles/param.txt --sol outfiles/param/n035w4_2_8-8-7-5 --timeout 780 2> outfiles/param/n035w4_2_8-8-7-5/log.txt
java -jar validator.jar --sce datasets/n035w4/Sc-n035w4.txt --his datasets/n035w4/H0-n035w4-2.txt --weeks datasets/n035w4/WD-n035w4-8.txt datasets/n035w4/WD-n035w4-8.txt datasets/n035w4/WD-n035w4-7.txt datasets/n035w4/WD-n035w4-5.txt --sols outfiles/param/n035w4_2_8-8-7-5/sol-week0.txt outfiles/param/n035w4_2_8-8-7-5/sol-week1.txt outfiles/param/n035w4_2_8-8-7-5/sol-week2.txt outfiles/param/n035w4_2_8-8-7-5/sol-week3.txt > outfiles/param/n035w4_2_8-8-7-5/validator.txt
