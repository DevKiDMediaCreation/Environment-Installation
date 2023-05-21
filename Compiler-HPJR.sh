#!/bin/bash

# Download and install Haskell
echo "Download Haskell"
curl -o haskell-installer.sh https://get.haskellstack.org/stable/linux-x86_64.tar.gz
tar -xf haskell-installer.sh
cd stack-*/ && ./install.sh
cd ..
rm -rf stack-* haskell-installer.sh
echo "Haskell installation completed."

# Download and install Python 3.9.7
echo "Download Python 3.9.7"
curl -o python-installer-3.9.7.sh https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz
tar -xf python-installer-3.9.7.sh
cd Python-3.9.7/ && ./configure --enable-optimizations
make && sudo make install
cd ..
rm -rf Python-3.9.7/ python-installer-3.9.7.sh
echo "Python 3.9.7 installation completed."

# Download and install Python 3.10.0
echo "Download Python 3.10.0"
curl -o python-installer-3.10.0.sh https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
tar -xf python-installer-3.10.0.sh
cd Python-3.10.0/ && ./configure --enable-optimizations
make && sudo make install
cd ..
rm -rf Python-3.10.0/ python-installer-3.10.0.sh
echo "Python 3.10.0 installation completed."

# Download and install Python 3.11.3
echo "Download Python 3.11.3"
curl -o python-installer-3.11.3.sh https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz
tar -xf python-installer-3.11.3.sh
cd Python-3.11.3/ && ./configure --enable-optimizations
make && sudo make install
cd ..
rm -rf Python-3.11.3/ python-installer-3.11.3.sh
echo "Python 3.11.3 installation completed."

# Download and install Java 17
echo "Download Java 17"
curl -o java17.tar.gz https://download.java.net/java/GA/jdk17.0.1/2cac34d838244d808ed16a5cf5b26a27/12/GPL/openjdk-17.0.1_linux-x64_bin.tar.gz
tar -xf java17.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo mv jdk-17* /usr/lib/jvm/java-17
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-17/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/java-17/bin/java
rm -f java17.tar.gz
echo "Java 17 installation completed."

# Download and install Java 16
echo "Download Java 16"
curl -o java16.tar.gz https://download.java.net/java/GA/jdk16.0.2/7147401fd7354114ac51ef3e1328291f/9/GPL/openjdk-16.0.2_linux-x64_bin.tar.gz
tar -xf java16.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo mv jdk-16* /usr/lib/jvm/java-16
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-16/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/java-16/bin/java
rm -f java16.tar.gz
echo "Java 16 installation completed."

# Download and install Java 11
echo "Download Java 11"
curl -o java11.tar.gz https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.9_linux-x64_bin.tar.gz
tar -xf java11.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo mv jdk-11* /usr/lib/jvm/java-11
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-11/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/java-11/bin/java
rm -f java11.tar.gz
echo "Java 11 installation completed."

# Download and install Java 8
echo "Download Java 8"
curl -o java8.tar.gz https://download.java.net/java/GA/jdk8/303-b08/jdk-8u303-linux-x64.tar.gz
tar -xf java8.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo mv jdk1.8.0_303 /usr/lib/jvm/java-8
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/java-8/bin/java
rm -f java8.tar.gz
echo "Java 8 installation completed."

# Download and install Java 7
echo "Download Java 7"
curl -o java7.tar.gz https://download.java.net/openjdk/jdk7u75/ri/openjdk-7u75-b13-linux-x64-18_dec_2014.tar.gz
tar -xf java7.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo mv jdk1.7.0_75 /usr/lib/jvm/java-7
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-7/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/java-7/bin/java
rm -f java7.tar.gz
echo "Java 7 installation completed."

# Download and install Rust
echo "Download Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "Rust installation completed."
