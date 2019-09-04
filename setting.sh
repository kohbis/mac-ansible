#!/bin/bash

SETTINGS_PATH=~/workspace/settings

mkdir -p ${SETTINGS_PATH}

## command line tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" ${SETTINGS_PATH}/mac-ansible

## install ansible
brew install ansible

## ansible
cd ${SETTINGS_PATH}/mac-ansibe
ansible-playbook -i inventory/localhost localhost.yml
