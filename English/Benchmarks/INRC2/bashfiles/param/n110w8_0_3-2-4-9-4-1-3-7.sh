#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n110w8 --weeks 3-2-4-9-4-1-3-7 --his 0 --param paramfiles/param.txt --sol outfiles/param/n110w8_0_3-2-4-9-4-1-3-7 --timeout 5340 2> outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/log.txt
java -jar validator.jar --sce datasets/n110w8/Sc-n110w8.txt --his datasets/n110w8/H0-n110w8-0.txt --weeks datasets/n110w8/WD-n110w8-3.txt datasets/n110w8/WD-n110w8-2.txt datasets/n110w8/WD-n110w8-4.txt datasets/n110w8/WD-n110w8-9.txt datasets/n110w8/WD-n110w8-4.txt datasets/n110w8/WD-n110w8-1.txt datasets/n110w8/WD-n110w8-3.txt datasets/n110w8/WD-n110w8-7.txt --sols outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week0.txt outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week1.txt outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week2.txt outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week3.txt outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week4.txt outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week5.txt outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week6.txt outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/sol-week7.txt > outfiles/param/n110w8_0_3-2-4-9-4-1-3-7/validator.txt
