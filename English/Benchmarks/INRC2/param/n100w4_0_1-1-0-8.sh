#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n100w4 --weeks 1-1-0-8 --his 0 --param paramfiles/param.txt --sol outfiles/param/n100w4_0_1-1-0-8 --timeout 2460 2> outfiles/param/n100w4_0_1-1-0-8/log.txt
java -jar validator.jar --sce datasets/n100w4/Sc-n100w4.txt --his datasets/n100w4/H0-n100w4-0.txt --weeks datasets/n100w4/WD-n100w4-1.txt datasets/n100w4/WD-n100w4-1.txt datasets/n100w4/WD-n100w4-0.txt datasets/n100w4/WD-n100w4-8.txt --sols outfiles/param/n100w4_0_1-1-0-8/sol-week0.txt outfiles/param/n100w4_0_1-1-0-8/sol-week1.txt outfiles/param/n100w4_0_1-1-0-8/sol-week2.txt outfiles/param/n100w4_0_1-1-0-8/sol-week3.txt > outfiles/param/n100w4_0_1-1-0-8/validator.txt
