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

#Buka direktori /home
nautilus ~ &

#Buka e-book shell scriptingnya Machtelt Garrels
evince "/root/falconflame/ebook/Bash/Bash-Beginners-Guide.pdf" &

#Buka e-book shell scriptingnya Mendel Cooper
evince "/root/falconflame/ebook/Bash/advanced bash - Mendel Cooper.pdf" &

#Buka e-book awk sed Frederick J. Tan
evince "/root/falconflame/ebook/Bash/sedawkbashkey.pdf" &

#Buka e-book shell scriptingnya Steve Parker
evince "/root/falconflame/ebook/Bash/ShellScripting.pdf" &

#Buka e-book apress Beginning Python From Novice To Professional  Magnus Lie Hetland
evince "/root/falconflame/ebook/python/Apress_Beginning_Python_From_N.pdf" &

#Buka e-book packt Python Testing Beginner's Guide Daniel Arbuckle
evince "/root/falconflame/ebook/python/Python Testing - Beginner's Guide (2010).pdf" &

#Buka e-book Beginning Python Using Python 2.6 and 3.1 James Payne
evince "/root/falconflame/ebook/python/Beginning Python Using Python 2.6 and Python 3.1 (2010) (ATTiCA).pdf" && fg

exit 0

#Pemisahan karakter di atas ada yang pakai backslash ( \ ) dan ada yang pakai double quote (" ")
#Sengaja demikian hanya untuk menunjukkan ada banyak cara dalam scripting
#Pilih yang paling efisien sesuai kebutuhan anda
#Tested by falconflame
#Any comments or ideas? contact me on flame.axoneme@gmail.com flame_axoneme@yahoo.fr 
#http://fajarichwannoor.wordpress.com
