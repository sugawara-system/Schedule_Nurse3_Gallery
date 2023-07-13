#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n120w4 --weeks 5-6-9-8 --his 1 --param paramfiles/param.txt --sol outfiles/param/n120w4_1_5-6-9-8 --timeout 2940 2> outfiles/param/n120w4_1_5-6-9-8/log.txt
java -jar validator.jar --sce datasets/n120w4/Sc-n120w4.txt --his datasets/n120w4/H0-n120w4-1.txt --weeks datasets/n120w4/WD-n120w4-5.txt datasets/n120w4/WD-n120w4-6.txt datasets/n120w4/WD-n120w4-9.txt datasets/n120w4/WD-n120w4-8.txt --sols outfiles/param/n120w4_1_5-6-9-8/sol-week0.txt outfiles/param/n120w4_1_5-6-9-8/sol-week1.txt outfiles/param/n120w4_1_5-6-9-8/sol-week2.txt outfiles/param/n120w4_1_5-6-9-8/sol-week3.txt > outfiles/param/n120w4_1_5-6-9-8/validator.txt
