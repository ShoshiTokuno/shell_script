#!/bin bash

#desktop from Jap to Eng
LANG=C xdg-user-dirs-gtk-update

#emacs and emacs's package install
sudo apt-get install emacs
git clone https://github.com/ShoshiTokuno/.emacs.d.git
sudo apt-get install python-pip python3-pip
sudo apt-get install python-mode
pip3 install pyflakes
cd ~/.emacs.d
git clone https://github.com/python-mode/python-mode.git
git clone https://github.com/paetzke/py-autopep8.el.git
git clone --recursive https://github.com/joaotavora/yasnippet

#ros kinetic install
cd ~
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://ha.pool.sks-keyservers.net:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python-rosinstall

#tex install
cd ~
sudo apt-get update
sudo apt-get upgrade
sudo apt-add-repository ppa:texlive-backports/ppa
sudo apt-get install texlive-lang-cjk
