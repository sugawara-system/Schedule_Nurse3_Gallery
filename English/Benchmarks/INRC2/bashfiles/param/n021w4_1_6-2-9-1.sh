#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n021w4 --weeks 6-2-9-1 --his 1 --param paramfiles/param.txt --sol outfiles/param/n021w4_1_6-2-9-1 --timeout 780 2> outfiles/param/n021w4_1_6-2-9-1/log.txt
java -jar validator.jar --sce datasets/n021w4/Sc-n021w4.txt --his datasets/n021w4/H0-n021w4-1.txt --weeks datasets/n021w4/WD-n021w4-6.txt datasets/n021w4/WD-n021w4-2.txt datasets/n021w4/WD-n021w4-9.txt datasets/n021w4/WD-n021w4-1.txt --sols outfiles/param/n021w4_1_6-2-9-1/sol-week0.txt outfiles/param/n021w4_1_6-2-9-1/sol-week1.txt outfiles/param/n021w4_1_6-2-9-1/sol-week2.txt outfiles/param/n021w4_1_6-2-9-1/sol-week3.txt > outfiles/param/n021w4_1_6-2-9-1/validator.txt
