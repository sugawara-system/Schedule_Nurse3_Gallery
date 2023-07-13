#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n100w8 --weeks 0-1-7-8-9-1-5-4 --his 0 --param paramfiles/param.txt --sol outfiles/param/n100w8_0_0-1-7-8-9-1-5-4 --timeout 4860 2> outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/log.txt
java -jar validator.jar --sce datasets/n100w8/Sc-n100w8.txt --his datasets/n100w8/H0-n100w8-0.txt --weeks datasets/n100w8/WD-n100w8-0.txt datasets/n100w8/WD-n100w8-1.txt datasets/n100w8/WD-n100w8-7.txt datasets/n100w8/WD-n100w8-8.txt datasets/n100w8/WD-n100w8-9.txt datasets/n100w8/WD-n100w8-1.txt datasets/n100w8/WD-n100w8-5.txt datasets/n100w8/WD-n100w8-4.txt --sols outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week0.txt outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week1.txt outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week2.txt outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week3.txt outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week4.txt outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week5.txt outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week6.txt outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/sol-week7.txt > outfiles/param/n100w8_0_0-1-7-8-9-1-5-4/validator.txt
