#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n070w4 --weeks 3-6-5-1 --his 0 --param paramfiles/param.txt --sol outfiles/param/n070w4_0_3-6-5-1 --timeout 1740 2> outfiles/param/n070w4_0_3-6-5-1/log.txt
java -jar validator.jar --sce datasets/n070w4/Sc-n070w4.txt --his datasets/n070w4/H0-n070w4-0.txt --weeks datasets/n070w4/WD-n070w4-3.txt datasets/n070w4/WD-n070w4-6.txt datasets/n070w4/WD-n070w4-5.txt datasets/n070w4/WD-n070w4-1.txt --sols outfiles/param/n070w4_0_3-6-5-1/sol-week0.txt outfiles/param/n070w4_0_3-6-5-1/sol-week1.txt outfiles/param/n070w4_0_3-6-5-1/sol-week2.txt outfiles/param/n070w4_0_3-6-5-1/sol-week3.txt > outfiles/param/n070w4_0_3-6-5-1/validator.txt
