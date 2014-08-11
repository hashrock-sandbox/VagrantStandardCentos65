curl -kL git.io/nodebrew | perl - setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile
nodebrew install-binary stable
nodebrew use stable
npm install -g grunt-cli express-generator bower node-dev

#Install Ruby
#git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
#echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
#source ~/.bash_profile
#git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
#rbenv install 2.1.0
#rbenv global 2.1.0
