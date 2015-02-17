#!/bin/bash
#Script sederhana agar banyak proses bisa berjalan secara simultan
#Jumlah proses sebenarnya bisa tanpa batas, just for example
#Silakan berkreasi

#Ke TKP di mana kumpulan file shell scripting disimpan dan akan diproses
cd /root/Data/my\ documents/scripting/Shell\ Scripting/ && gnome-terminal

#Jalankan seluruh lagu bloody monday dari console, path yang berisi mp3 silakan disesuaikan
#Alternatif lain dari mplayer: cvlc, sox, herrie, mp3blaster, moc, dll
mplayer /root/Data/my\ music/bloody\ monday\ 2\ ost/*mp3 &

#Buka browser iceweasel
iceweasel facebook.com google.com wordpress.com &

#Buka e-book shell scriptingnya Machtelt Garrels
evince "/root/Data/my documents/linux/Bash-Beginners-Guide.pdf" &

#Buka e-book shell scriptingnya Mendel Cooper
evince "/root/falconflame/materi dilo/advanced bash - Mendel Cooper.pdf" &

#Buka e-book awk sed Frederick J. Tan
evince "/root/falconflame/materi dilo/sedawkbashkey.pdf" &

#Buka e-book shell scriptingnya Steve Parker
evince "/root/falconflame/materi dilo/ShellScripting.pdf" && fg

#Pemisahan karakter di atas ada yang pakai backslash ( \ ) dan ada yang pakai double quote (" ")
#Sengaja demikian hanya untuk menunjukkan ada banyak cara dalam scripting
#Pilih yang paling efisien sesuai kebutuhan anda
#Tested by falconflame
#Any comments or ideas? contact me on flame.axoneme@gmail.com flame_axoneme@yahoo.fr 
#http://fajarichwannoor.wordpress.com
