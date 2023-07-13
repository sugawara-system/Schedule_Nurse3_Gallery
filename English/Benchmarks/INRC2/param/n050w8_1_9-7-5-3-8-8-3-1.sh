#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n050w8 --weeks 9-7-5-3-8-8-3-1 --his 1 --param paramfiles/param.txt --sol outfiles/param/n050w8_1_9-7-5-3-8-8-3-1 --timeout 2460 2> outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/log.txt
java -jar validator.jar --sce datasets/n050w8/Sc-n050w8.txt --his datasets/n050w8/H0-n050w8-1.txt --weeks datasets/n050w8/WD-n050w8-9.txt datasets/n050w8/WD-n050w8-7.txt datasets/n050w8/WD-n050w8-5.txt datasets/n050w8/WD-n050w8-3.txt datasets/n050w8/WD-n050w8-8.txt datasets/n050w8/WD-n050w8-8.txt datasets/n050w8/WD-n050w8-3.txt datasets/n050w8/WD-n050w8-1.txt --sols outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week0.txt outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week1.txt outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week2.txt outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week3.txt outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week4.txt outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week5.txt outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week6.txt outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/sol-week7.txt > outfiles/param/n050w8_1_9-7-5-3-8-8-3-1/validator.txt
