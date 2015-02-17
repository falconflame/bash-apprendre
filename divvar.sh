#!/bin/bash

#Bash tidak mengenal kalkulasi floating point pada pembagian
#Untuk mendapatkan hasil desimal harus menggunakan operator bc
#Skala angka di belakang koma bisa disesuaikan kebutuhan

echo -n "masukkan angka pertama dan kedua: "
read angka1 angka2

echo hasil=`echo "scale=2;$angka1/$angka2" |  bc -l`
