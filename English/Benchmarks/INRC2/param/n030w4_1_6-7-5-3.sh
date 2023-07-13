#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n030w4 --weeks 6-7-5-3 --his 1 --param paramfiles/param.txt --sol outfiles/param/n030w4_1_6-7-5-3 --timeout 780 2> outfiles/param/n030w4_1_6-7-5-3/log.txt
java -jar validator.jar --sce datasets/n030w4/Sc-n030w4.txt --his datasets/n030w4/H0-n030w4-1.txt --weeks datasets/n030w4/WD-n030w4-6.txt datasets/n030w4/WD-n030w4-7.txt datasets/n030w4/WD-n030w4-5.txt datasets/n030w4/WD-n030w4-3.txt --sols outfiles/param/n030w4_1_6-7-5-3/sol-week0.txt outfiles/param/n030w4_1_6-7-5-3/sol-week1.txt outfiles/param/n030w4_1_6-7-5-3/sol-week2.txt outfiles/param/n030w4_1_6-7-5-3/sol-week3.txt > outfiles/param/n030w4_1_6-7-5-3/validator.txt
