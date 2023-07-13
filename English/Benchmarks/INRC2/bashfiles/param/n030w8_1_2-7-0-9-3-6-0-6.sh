#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n030w8 --weeks 2-7-0-9-3-6-0-6 --his 1 --param paramfiles/param.txt --sol outfiles/param/n030w8_1_2-7-0-9-3-6-0-6 --timeout 1500 2> outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/log.txt
java -jar validator.jar --sce datasets/n030w8/Sc-n030w8.txt --his datasets/n030w8/H0-n030w8-1.txt --weeks datasets/n030w8/WD-n030w8-2.txt datasets/n030w8/WD-n030w8-7.txt datasets/n030w8/WD-n030w8-0.txt datasets/n030w8/WD-n030w8-9.txt datasets/n030w8/WD-n030w8-3.txt datasets/n030w8/WD-n030w8-6.txt datasets/n030w8/WD-n030w8-0.txt datasets/n030w8/WD-n030w8-6.txt --sols outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week0.txt outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week1.txt outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week2.txt outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week3.txt outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week4.txt outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week5.txt outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week6.txt outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/sol-week7.txt > outfiles/param/n030w8_1_2-7-0-9-3-6-0-6/validator.txt
