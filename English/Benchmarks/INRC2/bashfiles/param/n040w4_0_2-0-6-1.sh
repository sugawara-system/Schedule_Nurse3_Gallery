#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n040w4 --weeks 2-0-6-1 --his 0 --param paramfiles/param.txt --sol outfiles/param/n040w4_0_2-0-6-1 --timeout 1020 2> outfiles/param/n040w4_0_2-0-6-1/log.txt
java -jar validator.jar --sce datasets/n040w4/Sc-n040w4.txt --his datasets/n040w4/H0-n040w4-0.txt --weeks datasets/n040w4/WD-n040w4-2.txt datasets/n040w4/WD-n040w4-0.txt datasets/n040w4/WD-n040w4-6.txt datasets/n040w4/WD-n040w4-1.txt --sols outfiles/param/n040w4_0_2-0-6-1/sol-week0.txt outfiles/param/n040w4_0_2-0-6-1/sol-week1.txt outfiles/param/n040w4_0_2-0-6-1/sol-week2.txt outfiles/param/n040w4_0_2-0-6-1/sol-week3.txt > outfiles/param/n040w4_0_2-0-6-1/validator.txt
