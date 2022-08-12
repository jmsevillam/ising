#!/bin/bash

g++ -O3 -ffast-math main.cpp -o ising.out

for j in $(seq 1 1 50)
do
mkdir $j
for i in $(seq 10 10 110)
do
  echo $i
  time ./ising.out $i 100 1000 > $j/$i.dat
done
done
