#!/bin/bash

#Metode berikut lebih efektif dan efisien dibanding menggunakan tool GUI semacam Brasero, Furious Iso Mount, dll
#Pastikan jumlah block size dan volume size
sudo isoinfo -d -i /dev/sr0 | grep -i -E 'block size' | cut -d ' ' -f5 > /tmp/blocksize.txt
sudo isoinfo -d -i /dev/sr0 | grep -i -E 'volume size' | cut -d ' ' -f4 > /tmp/volumesize.txt
read blocksize < /tmp/blocksize.txt
read volumesize < /tmp/volumesize.txt

#Perintah berikut sifatnya optional. Untuk melihat proses 'dd' secara verbose yang normalnya ga kelihatan
#Perintah di bawah jalan dalam background (membutuhkan hak akses root)
sudo killall -USR1 dd &
sudo watch -n 1 killall -USR1 dd &

#Masukkan jumlah block size dan volume size hasil perintah 'isoinfo' ke perintah 'dd' di bawah sebelum dieksekusi
#Output file secara default akan masuk di direktori ~/ (home) jika path tidak disertakan
#Ganti nama output file test.iso secara manual sesuai keinginan
sudo dd if=/dev/sr0 of=test.iso bs=$blocksize count=$volumesize && fg

#Proses akan berjalan tiap detik di window terminal di mana kita mengeksekusi dd hingga selesai
#Selamat menikmati, in testing by falconflame
#Any idea? or Any explanation? Contact me on: flame.axoneme@gmail.com / flame_axoneme@yahoo.fr
#http://fajarichwannoor.wordpress.com
