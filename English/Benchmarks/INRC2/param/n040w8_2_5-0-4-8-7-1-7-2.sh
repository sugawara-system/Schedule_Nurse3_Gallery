#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n040w8 --weeks 5-0-4-8-7-1-7-2 --his 2 --param paramfiles/param.txt --sol outfiles/param/n040w8_2_5-0-4-8-7-1-7-2 --timeout 1980 2> outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/log.txt
java -jar validator.jar --sce datasets/n040w8/Sc-n040w8.txt --his datasets/n040w8/H0-n040w8-2.txt --weeks datasets/n040w8/WD-n040w8-5.txt datasets/n040w8/WD-n040w8-0.txt datasets/n040w8/WD-n040w8-4.txt datasets/n040w8/WD-n040w8-8.txt datasets/n040w8/WD-n040w8-7.txt datasets/n040w8/WD-n040w8-1.txt datasets/n040w8/WD-n040w8-7.txt datasets/n040w8/WD-n040w8-2.txt --sols outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week0.txt outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week1.txt outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week2.txt outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week3.txt outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week4.txt outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week5.txt outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week6.txt outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/sol-week7.txt > outfiles/param/n040w8_2_5-0-4-8-7-1-7-2/validator.txt
