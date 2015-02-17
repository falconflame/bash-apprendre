#!/bin/bash

#Belajar Bahasa Asing
#Sekedar script ringan sebagai joke untuk memahami control structure --> case
#Sekaligus ngetes penggunaan command tr
#One thing to be sure... No offense

cat << EOF
Masukkan nama bahasa asing yang ingin anda pelajari di tahun 2015 ini.
EOF

read bahasa
#terjemahkan semua bahasa ke uppercase
bahasa=`echo $bahasa | tr a-z A-Z`

#jalankan test
case $bahasa in 
	FRENCH | FRANÇAIS | PERANCIS)
	echo -e "\t\tOui, t'as raison. Tepat sekali jika anda ingin mempelajari bahasa romantis ini. \n
	        Banyak negara di dunia ini yang menggunakannya sebagai bahasa official atau bahasa ibu."
	;;
	GERMANY | DEUTSCHE | JERMAN)
	echo -e "\t\tJa, ich versteche. Target pasarnya juga baik. Kalau perancis bicaranya yang susah,\n
		maka jerman tulisannya yang susah. Untuk melanjutkan studi juga sangat tepat."
	;;
	NETHERLAND | HOLLAND | BELANDA)
	echo -e "\t\tYang bener? Mau belajar bahasa ini apa pengen dijajah lagi? Ga usa becanda deh.\n
		Belanda juga reputasinya ga baik di Eropa. Paling2 nanti ada cuma bisa nyanyi lagu \n
		'Geef Mij Maar Nasi Goreng'"
	;;
	JAPAN | NIHON | KATAKA | HIRAGANA | ROMAJI | KANJI | JEPANG)
	echo -e "\t\tHonto desu ka? Ga cuma belajar bahasanya mungkin agan juga bisa jadi pemeran JAV \n
		Atau mungkin bisa berjodoh dengan wanita jepang yang 'Ikeh Ikeh Kimochi'. Tapi di luar\n
		itu semua, memilih bahasa ini juga siap dengan kemajuan teknologi dan modernisasi \n
		Karena jepang kuat di segala lini kehidupan. Bahasa lain yang keren setelah perancis."
	;;
	KOREAN | HANGUL | KOREA)
	echo -e "\t\tAigoo... Korea selatan? Hm... Mungkin anda harus operasi plastik dulu untuk \n
		menguasai bahasa ini. Everything is fake. How do we know?"
	;;
	ENGLISH | AMERICAN\ ENGLISH | BRITISH\ ENGLISH | INGGRIS)
	echo -e "\t\tHello... Wanna learn english? Hari gini belum bisa bahasa inggris? Ke laut sana \n
		Inggris itu bahasa wajib selain bahasa nasional kita. Pedagang kaki lima aja bisa. \n
		Masa anda yang ngakunya terpelajar ga bisa. Mau ditaruh di mana mulut dan lidah anda?"
	;;
	INDONESIAN | BAHASA\ INDONESIA | INDONESIA)
	echo -e "\t\tHadeeh... Indonesia sudah merdeka bung. Anda masih belum bisa? oy oy oy... heran... \n
		di mana jiwa nasionalisme dan patriotisme anda? Mungkin para pemuda yang bersumpah \n
		dulu di 28 Oktober 1928 pada ga tenang di alam kuburnya. Miris dengan nasib anda."
	;;
	MALAYSIAN | BAHASA\ MALAYSIA | MELAYU | MALAYSIA)
	echo -e "\t\te... lambat lah... cepat lah sikit... Ingin pusing-pusing menghantak-hantak bumi? \n
		Cik gu... macam mana lah ada rumah sakit korban lelaki... +_+"
	;;
	ARABIAN | ARABIC | ARAB)
	echo -e "\t\tNa'am...  Fardhu 'ain. Wajib nih kalau agama kita agama samawi. Di hari akhir \n
		cuma bahasa ini yang nantinya terpakai."
	;;
	ITALIAN | ITALIANO | ITALIA)
	echo -e "\t\tCozy romantica... Cozy passionalet... Mau jualan pizza atau vespa oom?"
	;;
	SPANISH | ESPANOLA | SPANYOL)
	echo -e "\t\tAmigos pro siempre... Anna amigos gimana kabarnya ya? Dolce Maria sudah besar ya?"
	;;
	CHINESE | MANDARIN | CINA)
	echo -e "\t\tAi you wa la... Ada pepatah tuntutlah ilmu sampai ke negeri cina. Memang, cina \n
		ini fenomenal. Seperti jepang, di sektor apapun sangat mendominasi. Kumpulan ilmu \n
		sex terbaik ya dari cina. Kumpulan ilmu hacking terbaik ya dari cina. Superkomputer \n
		di dunia sebagian besar cina yang menciptakan. Lihat semua produk semuanya \n
		'made in china'. So, chinese? Consider it as alternative..."
	;;
	*)
	echo -e "\t\tHah? Itu bahasa apaan? Bahasa hutan? Atau bahasa dunia mistis?"
	;;
esac
exit 0

#This is merely a joke. Don't be angry
#Created by falconflame
#Any comments or idea? Contact me at: flame.axoneme@gmail.com flame_axoneme@yahoo.fr
#See me also in http://fajarichwannoor.wordpress.com
