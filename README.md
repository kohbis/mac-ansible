```
vi ~/setting.sh
./setting.sh
```

```bash
#!/bin/bash

# mkdir workspace & setting files
mkdir -p ~/workspace/settings


# git color
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors


# brew setup
## command line tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install ansible
brew install ansible


# ansible
cd ~/workspace/settings
git clone https://github.com/kohbis/mac-ansible.git
 
ansible-playbook -i inventory/localhost localhost.yml
```
