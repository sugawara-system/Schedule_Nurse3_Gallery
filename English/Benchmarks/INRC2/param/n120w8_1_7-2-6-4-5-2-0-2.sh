#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n120w8 --weeks 7-2-6-4-5-2-0-2 --his 1 --param paramfiles/param.txt --sol outfiles/param/n120w8_1_7-2-6-4-5-2-0-2 --timeout 5820 2> outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/log.txt
java -jar validator.jar --sce datasets/n120w8/Sc-n120w8.txt --his datasets/n120w8/H0-n120w8-1.txt --weeks datasets/n120w8/WD-n120w8-7.txt datasets/n120w8/WD-n120w8-2.txt datasets/n120w8/WD-n120w8-6.txt datasets/n120w8/WD-n120w8-4.txt datasets/n120w8/WD-n120w8-5.txt datasets/n120w8/WD-n120w8-2.txt datasets/n120w8/WD-n120w8-0.txt datasets/n120w8/WD-n120w8-2.txt --sols outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week0.txt outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week1.txt outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week2.txt outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week3.txt outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week4.txt outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week5.txt outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week6.txt outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/sol-week7.txt > outfiles/param/n120w8_1_7-2-6-4-5-2-0-2/validator.txt
