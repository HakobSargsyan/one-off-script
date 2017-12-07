#run comands and reboot if installation process is successed

#google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -&&
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' &&
sudo apt-get update && 
sudo apt-get install google-chrome-stable &&

#git instalation
echo -ne '\n' | sudo apt-get install git &&

#node,npm
sudo apt-get update &&
echo -ne '\n' | sudo apt-get install nodejs &&
echo -ne '\n' | sudo apt-get install npm && 
sudo apt install nodejs-legacy &&
    
#ember instalation
sudo npm i -g ember-cli@2.13.0 &&

#bower
sudo npm i -g bower &&

#nginx
echo -ne '\n' | sudo apt-get install nginx &&

#sublime-text3
echo -ne '\n' | sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update &&
sudo apt-get install sublime-text-installer &&

#install phpstorm
sudo apt-get purge openjdk* &&
echo -ne '\n' | sudo add-apt-repository ppa:webupd8team/java &&
sudo apt-get update &&
echo -ne '\n' | sudo apt-get install oracle-java8-installer oracle-java8-set-default &&
cd /usr/bin &&  sudo wget https://download-cf.jetbrains.com/webide/PhpStorm-2016.2.2.tar.gz &&
cd /usr/bin && sudo tar -xvf PhpStorm-2016.2.2.tar.gz && cd ../../ &&  

#install zsh
sudo apt-get install zsh &&
sudo apt-get install git-core &&
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh &&
chsh -s `which zsh` &&

#install ssh server and generate id_rsa keys
sudo apt install openssh-client &&
echo -ne '\n' '\n' '\n' | ssh-keygen -t rsa && 

#install mysql-server
sudo apt-get update && 
echo -ne '\n' | sudo apt-get install mysql-server &&

#install gauke terminal
sudo apt-get install guake &&

#install php version 7.1
sudo apt-get install -y python-software-properties &&
echo -ne '\n' | sudo add-apt-repository -y ppa:ondrej/php &&
sudo apt-get update -y &&
sudo apt-get install -y php7.1 php7.1-fpm php7.1-cli php7.1-common php7.1-mbstring php7.1-gd php7.1-intl php7.1-xml php7.1-mysql php7.1-mcrypt php7.1-zip &&

#instal composer
sudo apt-get update && sudo apt-get install curl php7.1-cli git && curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer &&


#create projects folder
cd $HOME && sudo mkdir projects && sudo chmod -R 777 $HOME/projects && cd $HOME/projects && git clone https://github.com/phpmyadmin/phpmyadmin.git &&

#install emacs(shell editor)
sudo apt-get install emacs &&

#install pdf okular redactor
sudo apt-get update && 
sudo apt-get install okular

if [ $? -eq 0 ]; then
    echo "SUCESSFULY INSTALED"
    sudo reboot
else
 	echo "FAILED"
fi
