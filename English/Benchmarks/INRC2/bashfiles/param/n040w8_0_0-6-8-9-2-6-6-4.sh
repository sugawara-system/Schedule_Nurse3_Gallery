#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n040w8 --weeks 0-6-8-9-2-6-6-4 --his 0 --param paramfiles/param.txt --sol outfiles/param/n040w8_0_0-6-8-9-2-6-6-4 --timeout 1980 2> outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/log.txt
java -jar validator.jar --sce datasets/n040w8/Sc-n040w8.txt --his datasets/n040w8/H0-n040w8-0.txt --weeks datasets/n040w8/WD-n040w8-0.txt datasets/n040w8/WD-n040w8-6.txt datasets/n040w8/WD-n040w8-8.txt datasets/n040w8/WD-n040w8-9.txt datasets/n040w8/WD-n040w8-2.txt datasets/n040w8/WD-n040w8-6.txt datasets/n040w8/WD-n040w8-6.txt datasets/n040w8/WD-n040w8-4.txt --sols outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week0.txt outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week1.txt outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week2.txt outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week3.txt outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week4.txt outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week5.txt outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week6.txt outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/sol-week7.txt > outfiles/param/n040w8_0_0-6-8-9-2-6-6-4/validator.txt
