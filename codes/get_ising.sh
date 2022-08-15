#!/bin/bash

g++ -O3 -ffast-math main.cpp -o ising.out

for T in $(seq 0.00 0.02 4.00)
do
mkdir $T
for i in $(seq 1 1 100)
do
  echo $i $T
  time ./ising.out 100 10000 $T > $T/$i.dat
done
done
