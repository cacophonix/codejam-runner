#!/bin/sh
javac -d $(pwd)   ~/IdeaProjects/problem_solving/output/Main.java
if [ ! -e "${2}" ] ; then
    touch "${2}"
fi
cat ${1} | java Main > ${2}
rm *.class