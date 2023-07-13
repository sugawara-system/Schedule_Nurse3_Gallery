#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n080w8 --weeks 4-4-9-9-3-6-0-5 --his 1 --param paramfiles/param.txt --sol outfiles/param/n080w8_1_4-4-9-9-3-6-0-5 --timeout 3900 2> outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/log.txt
java -jar validator.jar --sce datasets/n080w8/Sc-n080w8.txt --his datasets/n080w8/H0-n080w8-1.txt --weeks datasets/n080w8/WD-n080w8-4.txt datasets/n080w8/WD-n080w8-4.txt datasets/n080w8/WD-n080w8-9.txt datasets/n080w8/WD-n080w8-9.txt datasets/n080w8/WD-n080w8-3.txt datasets/n080w8/WD-n080w8-6.txt datasets/n080w8/WD-n080w8-0.txt datasets/n080w8/WD-n080w8-5.txt --sols outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week0.txt outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week1.txt outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week2.txt outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week3.txt outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week4.txt outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week5.txt outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week6.txt outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/sol-week7.txt > outfiles/param/n080w8_1_4-4-9-9-3-6-0-5/validator.txt
