#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n060w8 --weeks 6-2-9-9-0-8-1-3 --his 0 --param paramfiles/param.txt --sol outfiles/param/n060w8_0_6-2-9-9-0-8-1-3 --timeout 2940 2> outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/log.txt
java -jar validator.jar --sce datasets/n060w8/Sc-n060w8.txt --his datasets/n060w8/H0-n060w8-0.txt --weeks datasets/n060w8/WD-n060w8-6.txt datasets/n060w8/WD-n060w8-2.txt datasets/n060w8/WD-n060w8-9.txt datasets/n060w8/WD-n060w8-9.txt datasets/n060w8/WD-n060w8-0.txt datasets/n060w8/WD-n060w8-8.txt datasets/n060w8/WD-n060w8-1.txt datasets/n060w8/WD-n060w8-3.txt --sols outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week0.txt outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week1.txt outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week2.txt outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week3.txt outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week4.txt outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week5.txt outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week6.txt outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/sol-week7.txt > outfiles/param/n060w8_0_6-2-9-9-0-8-1-3/validator.txt
