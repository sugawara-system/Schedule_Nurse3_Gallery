#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n060w8 --weeks 1-0-3-4-0-3-9-1 --his 2 --param paramfiles/param.txt --sol outfiles/param/n060w8_2_1-0-3-4-0-3-9-1 --timeout 2940 2> outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/log.txt
java -jar validator.jar --sce datasets/n060w8/Sc-n060w8.txt --his datasets/n060w8/H0-n060w8-2.txt --weeks datasets/n060w8/WD-n060w8-1.txt datasets/n060w8/WD-n060w8-0.txt datasets/n060w8/WD-n060w8-3.txt datasets/n060w8/WD-n060w8-4.txt datasets/n060w8/WD-n060w8-0.txt datasets/n060w8/WD-n060w8-3.txt datasets/n060w8/WD-n060w8-9.txt datasets/n060w8/WD-n060w8-1.txt --sols outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week0.txt outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week1.txt outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week2.txt outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week3.txt outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week4.txt outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week5.txt outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week6.txt outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/sol-week7.txt > outfiles/param/n060w8_2_1-0-3-4-0-3-9-1/validator.txt
