curl -kL git.io/nodebrew | perl - setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile
nodebrew install-binary stable
nodebrew use stable
npm install -g grunt-cli express-generator bower node-dev
