#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n100w8 --weeks 2-4-7-9-3-9-2-8 --his 1 --param paramfiles/param.txt --sol outfiles/param/n100w8_1_2-4-7-9-3-9-2-8 --timeout 4860 2> outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/log.txt
java -jar validator.jar --sce datasets/n100w8/Sc-n100w8.txt --his datasets/n100w8/H0-n100w8-1.txt --weeks datasets/n100w8/WD-n100w8-2.txt datasets/n100w8/WD-n100w8-4.txt datasets/n100w8/WD-n100w8-7.txt datasets/n100w8/WD-n100w8-9.txt datasets/n100w8/WD-n100w8-3.txt datasets/n100w8/WD-n100w8-9.txt datasets/n100w8/WD-n100w8-2.txt datasets/n100w8/WD-n100w8-8.txt --sols outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week0.txt outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week1.txt outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week2.txt outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week3.txt outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week4.txt outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week5.txt outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week6.txt outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/sol-week7.txt > outfiles/param/n100w8_1_2-4-7-9-3-9-2-8/validator.txt
