#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n100w4 --weeks 0-6-4-6 --his 2 --param paramfiles/param.txt --sol outfiles/param/n100w4_2_0-6-4-6 --timeout 2460 2> outfiles/param/n100w4_2_0-6-4-6/log.txt
java -jar validator.jar --sce datasets/n100w4/Sc-n100w4.txt --his datasets/n100w4/H0-n100w4-2.txt --weeks datasets/n100w4/WD-n100w4-0.txt datasets/n100w4/WD-n100w4-6.txt datasets/n100w4/WD-n100w4-4.txt datasets/n100w4/WD-n100w4-6.txt --sols outfiles/param/n100w4_2_0-6-4-6/sol-week0.txt outfiles/param/n100w4_2_0-6-4-6/sol-week1.txt outfiles/param/n100w4_2_0-6-4-6/sol-week2.txt outfiles/param/n100w4_2_0-6-4-6/sol-week3.txt > outfiles/param/n100w4_2_0-6-4-6/validator.txt
