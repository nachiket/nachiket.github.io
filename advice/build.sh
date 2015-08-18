#!/bin/zsh

pandoc fyp_plan.md -o fyp_plan.html 
pandoc fyp_report.md -o fyp_report.html 
cp fyp_plan.md fyp_plan.md.html 
cp fyp_report.md fyp_report.md.html
