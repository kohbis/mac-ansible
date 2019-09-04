#!/bin/bash

ANSIBLE_PATH=~/workspace/settings/mac-ansible

mkdir -p ${ANSIBLE_PATH}

## command line tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" ${ANSIBLE_PATH}

## install ansible
brew install ansible

## ansible
cd ${ANSIBLE_PATH}
ansible-playbook -i inventory/localhost localhost.yml
