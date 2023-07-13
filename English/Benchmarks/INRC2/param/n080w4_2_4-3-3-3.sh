#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n080w4 --weeks 4-3-3-3 --his 2 --param paramfiles/param.txt --sol outfiles/param/n080w4_2_4-3-3-3 --timeout 1980 2> outfiles/param/n080w4_2_4-3-3-3/log.txt
java -jar validator.jar --sce datasets/n080w4/Sc-n080w4.txt --his datasets/n080w4/H0-n080w4-2.txt --weeks datasets/n080w4/WD-n080w4-4.txt datasets/n080w4/WD-n080w4-3.txt datasets/n080w4/WD-n080w4-3.txt datasets/n080w4/WD-n080w4-3.txt --sols outfiles/param/n080w4_2_4-3-3-3/sol-week0.txt outfiles/param/n080w4_2_4-3-3-3/sol-week1.txt outfiles/param/n080w4_2_4-3-3-3/sol-week2.txt outfiles/param/n080w4_2_4-3-3-3/sol-week3.txt > outfiles/param/n080w4_2_4-3-3-3/validator.txt
