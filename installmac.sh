#! /bin/bash

####################################################
# install xcode
####################################################
echo Installing X-Code package manager...; echo

xcode-select --install

if [ $? != 0 ]
then
    echo X-Code already installed, or error has occured.
fi; echo

####################################################
# install homebrew package manager
####################################################
echo Installing Homebrew package manager...; echo

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if [ $? != 0 ]
then
    echo Homebrew already installed, or error has occured.
fi; echo

####################################################
# install and configure git
#####################################################
echo Installing git... ; echo

brew install git

if [ $? != 0]
then
    echo Git already installed, or error has occured.
fi; echo


#echo Type in your github username:
#read USERNAME; echo
#echo Type in your github email:
#read EMAIL; echo

#git config --global user.name "$USERNAME"
#git config --global user.email "$EMAIL"

#####################################################
# install curl if not installed
####################################################
echo Installing curl...; echo
brew install curl

if [ $? != 0 ]
then
    echo Curl already installed, or error has occured.
fi; echo

####################################################
# install python if not installed
####################################################
echo Installing python...; echo
brew install python3

if [ $? != 0 ]
then
    echo Python already installed, or error has occured.
fi; echo

######################################################
# install SEO scraper
######################################################
echo Installing SEO scraper program; echo
install_path=$(dirname "$0")
cd $install_path
mkdir SEO-Optimizer
cd SEO-Optimizer
git init
git remote add origin https://github.com/jsigee87/SEO-Optimizer.git
git pull origin master

######################################################
# install dependencies
######################################################
echo Installing required libraries and dependencies; echo
pip install -r requirements
echo; echo Installation complete!; echo
