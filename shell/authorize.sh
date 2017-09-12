#bin/sh
#ssh-copy-id user@host
#exit 1
echo "check ssh key"
cd ~
if [ ! -d ".ssh/" ]; then
echo "can not find .ssh"
exit
fi
cd ~
if [ ! -s ".ssh/id_rsa.pub" ]; then
echo "creat ssh key"
echo "\n"| ssh-keygen -t rsa
fi
key=$(cat ~/.ssh/id_rsa.pub)
echo "ssh key is ready,authorizing..."
echo "connect remote server..."
echo "enter the server address:"
read address
echo "enter the server usr:"
read usr
echo "enter the server password:"
ssh $usr@$address "mkdir ~/.ssh | echo "$key" >>~/.ssh/authorized_keys"
echo "this device has been anthorized"
