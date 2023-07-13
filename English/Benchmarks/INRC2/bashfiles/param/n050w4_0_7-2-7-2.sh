#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n050w4 --weeks 7-2-7-2 --his 0 --param paramfiles/param.txt --sol outfiles/param/n050w4_0_7-2-7-2 --timeout 1260 2> outfiles/param/n050w4_0_7-2-7-2/log.txt
java -jar validator.jar --sce datasets/n050w4/Sc-n050w4.txt --his datasets/n050w4/H0-n050w4-0.txt --weeks datasets/n050w4/WD-n050w4-7.txt datasets/n050w4/WD-n050w4-2.txt datasets/n050w4/WD-n050w4-7.txt datasets/n050w4/WD-n050w4-2.txt --sols outfiles/param/n050w4_0_7-2-7-2/sol-week0.txt outfiles/param/n050w4_0_7-2-7-2/sol-week1.txt outfiles/param/n050w4_0_7-2-7-2/sol-week2.txt outfiles/param/n050w4_0_7-2-7-2/sol-week3.txt > outfiles/param/n050w4_0_7-2-7-2/validator.txt
