#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n035w8 --weeks 6-2-9-8-7-7-9-8 --his 0 --param paramfiles/param.txt --sol outfiles/param/n035w8_0_6-2-9-8-7-7-9-8 --timeout 1500 2> outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/log.txt
java -jar validator.jar --sce datasets/n035w8/Sc-n035w8.txt --his datasets/n035w8/H0-n035w8-0.txt --weeks datasets/n035w8/WD-n035w8-6.txt datasets/n035w8/WD-n035w8-2.txt datasets/n035w8/WD-n035w8-9.txt datasets/n035w8/WD-n035w8-8.txt datasets/n035w8/WD-n035w8-7.txt datasets/n035w8/WD-n035w8-7.txt datasets/n035w8/WD-n035w8-9.txt datasets/n035w8/WD-n035w8-8.txt --sols outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week0.txt outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week1.txt outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week2.txt outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week3.txt outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week4.txt outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week5.txt outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week6.txt outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/sol-week7.txt > outfiles/param/n035w8_0_6-2-9-8-7-7-9-8/validator.txt
