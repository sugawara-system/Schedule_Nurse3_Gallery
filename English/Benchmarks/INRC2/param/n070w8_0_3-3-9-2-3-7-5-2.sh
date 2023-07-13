#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n070w8 --weeks 3-3-9-2-3-7-5-2 --his 0 --param paramfiles/param.txt --sol outfiles/param/n070w8_0_3-3-9-2-3-7-5-2 --timeout 3420 2> outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/log.txt
java -jar validator.jar --sce datasets/n070w8/Sc-n070w8.txt --his datasets/n070w8/H0-n070w8-0.txt --weeks datasets/n070w8/WD-n070w8-3.txt datasets/n070w8/WD-n070w8-3.txt datasets/n070w8/WD-n070w8-9.txt datasets/n070w8/WD-n070w8-2.txt datasets/n070w8/WD-n070w8-3.txt datasets/n070w8/WD-n070w8-7.txt datasets/n070w8/WD-n070w8-5.txt datasets/n070w8/WD-n070w8-2.txt --sols outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week0.txt outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week1.txt outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week2.txt outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week3.txt outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week4.txt outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week5.txt outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week6.txt outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/sol-week7.txt > outfiles/param/n070w8_0_3-3-9-2-3-7-5-2/validator.txt
