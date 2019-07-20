#!/bin/bash

  sudo apt update
  sudo apt upgrade
  sudo apt install ffmpeg
  mkdir dab
  cd dab/
  sudo apt-get -y install build-essential git wget  sox alsa-tools alsa-utils/
  automake libtool mpg123  libasound2 libasound2-dev  libjack-jackd2-dev jackd2/
  ncdu vim ntp links cpufrequtils  libfftw3-dev  libcurl4-openssl-dev/
  libmagickwand-dev  libvlc-dev vlc-data  libfaad2 libfaad-dev  python-mako python-requests
  sudo apt-get -y install libzmq5-dev libzmq5
  #edit soursec.list uncomment - deb-src http://archive.ubuntu.com/ubuntu bionic universe
  sudo apt-get update
  sudo apt-get -y build-dep uhd
  sudo vi /etc/apt/sources.list
  sudo apt update
  git clone http://github.com/EttusResearch/uhd.git
  pushd uhd
  git checkout release_003_010_003_000
  mkdir build
  cd build
  cmake ../host
  make
  sudo make install
  popd
  git clone https://github.com/mpbraendli/mmbtools-aux.git
  git clone https://github.com/Opendigitalradio/fdk-aac.git
  pushd fdk-aac
  ./bootstrap
  ./configure
  make
  sudo make install
  popd
  sudo ldconfig
  git clone https://github.com/Opendigitalradio/ODR-PadEnc.git
  pushd ODR-PadEnc
  ./bootstrap
  ./configure
  make
  sudo make install
  popd
  git clone https://github.com/Opendigitalradio/ODR-AudioEnc.git
  pushd ODR-AudioEnc
  ./bootstrap
  ./configure --enable-jack --enable-vlc --enable-alsa
  make
  sudo make install
  popd
  sudo apt update
