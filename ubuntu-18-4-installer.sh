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
  sudo vi /etc/apt/sources.list
  #edit soursec.list uncomment - deb-src http://archive.ubuntu.com/ubuntu bionic universe
  sudo apt-get update
  sudo apt-get -y build-dep uhd
sudo add-apt-repository -y ppa:pothosware/framework
   33  sudo add-apt-repository -y ppa:pothosware/support
   34  sudo add-apt-repository -y ppa:myriadrf/drivers
   35  sudo apt-get update
   36  sudo apt-get install pothos-all python-pothos python3-pothos pothos-python-dev
   37  sudo apt-get install python-pothos
   38  sudo apt-get install python3-pothos
   39  sudo apt-get install pothos-all
   40  sudo apt-get install python-pothos
   41  sudo apt-get install python3-pothos
   42  sudo apt-get install pothos-python-dev
   43  sudo apt-get install soapysdr-tools 
   44  sudo apt-get install python-soapysdr python-numpy
   45  sudo apt-get install python3-soapysdr python3-numpy
   46  sudo apt-get install soapysdr-module-remote soapysdr-server
   47  SoapySDRUtil --info
   48  sudo apt install soapysdr-module-all
   49  sudo apt-get remove soapysdr-module-remote soapysdr-server
   50  sudo apt install soapysdr-module-all
   51  sudo apt remove limesdr0.6-module-audio
   52  sudo apt update
   53  sudo apt upgrade
   54  sudo apt autoremove
   55  sudo apt install soapysdr-module-all
   61  SoapySDRUtil --info
   62  sudo apt install soapysdr-module-all
   63  sudo add-apt-repository -y ppa:myriadrf/drivers
   64  sudo apt-get update
   65  sudo apt-get install limesuite liblimesuite-dev limesuite-udev limesuite-images
   66  sudo apt-get install soapysdr soapysdr-module-lms7
   67  sudo apt-get install soapysdr soapysdr-module-all

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
