#!/bin/bash -l
#$ -cwd
#$ -j y
#$ -o /dev/null
#$ -q 
#
# optimal script: run static scheduler
./bin/staticscheduler --dir datasets/ --instance n110w4 --weeks 1-9-3-5 --his 0 --param paramfiles/param.txt --sol outfiles/param/n110w4_0_1-9-3-5 --timeout 2700 2> outfiles/param/n110w4_0_1-9-3-5/log.txt
java -jar validator.jar --sce datasets/n110w4/Sc-n110w4.txt --his datasets/n110w4/H0-n110w4-0.txt --weeks datasets/n110w4/WD-n110w4-1.txt datasets/n110w4/WD-n110w4-9.txt datasets/n110w4/WD-n110w4-3.txt datasets/n110w4/WD-n110w4-5.txt --sols outfiles/param/n110w4_0_1-9-3-5/sol-week0.txt outfiles/param/n110w4_0_1-9-3-5/sol-week1.txt outfiles/param/n110w4_0_1-9-3-5/sol-week2.txt outfiles/param/n110w4_0_1-9-3-5/sol-week3.txt > outfiles/param/n110w4_0_1-9-3-5/validator.txt
