#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n120w4 --weeks 4-6-2-6 --his 1 --param paramfiles/param.txt --sol outfiles/param/n120w4_1_4-6-2-6 --timeout 2940 2> outfiles/param/n120w4_1_4-6-2-6/log.txt
java -jar validator.jar --sce datasets/n120w4/Sc-n120w4.txt --his datasets/n120w4/H0-n120w4-1.txt --weeks datasets/n120w4/WD-n120w4-4.txt datasets/n120w4/WD-n120w4-6.txt datasets/n120w4/WD-n120w4-2.txt datasets/n120w4/WD-n120w4-6.txt --sols outfiles/param/n120w4_1_4-6-2-6/sol-week0.txt outfiles/param/n120w4_1_4-6-2-6/sol-week1.txt outfiles/param/n120w4_1_4-6-2-6/sol-week2.txt outfiles/param/n120w4_1_4-6-2-6/sol-week3.txt > outfiles/param/n120w4_1_4-6-2-6/validator.txt
