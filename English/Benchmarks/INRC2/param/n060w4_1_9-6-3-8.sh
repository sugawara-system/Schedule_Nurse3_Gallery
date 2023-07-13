#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n060w4 --weeks 9-6-3-8 --his 1 --param paramfiles/param.txt --sol outfiles/param/n060w4_1_9-6-3-8 --timeout 1500 2> outfiles/param/n060w4_1_9-6-3-8/log.txt
java -jar validator.jar --sce datasets/n060w4/Sc-n060w4.txt --his datasets/n060w4/H0-n060w4-1.txt --weeks datasets/n060w4/WD-n060w4-9.txt datasets/n060w4/WD-n060w4-6.txt datasets/n060w4/WD-n060w4-3.txt datasets/n060w4/WD-n060w4-8.txt --sols outfiles/param/n060w4_1_9-6-3-8/sol-week0.txt outfiles/param/n060w4_1_9-6-3-8/sol-week1.txt outfiles/param/n060w4_1_9-6-3-8/sol-week2.txt outfiles/param/n060w4_1_9-6-3-8/sol-week3.txt > outfiles/param/n060w4_1_9-6-3-8/validator.txt
