@echo off
cls

:: Download and install Haskell
echo Download Haskell
powershell -Command "Invoke-WebRequest -Uri 'https://get.haskellstack.org/stable/windows-x86_64-installer.exe' -OutFile 'haskell-installer.exe'"
echo Install Haskell
start /wait haskell-installer.exe /S
del haskell-installer.exe
echo Haskell installation completed.

cls

:: Download and install Python 3.9.7
echo Download Python 3.9.7
powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.9.7/python-3.9.7-amd64.exe' -OutFile 'python-installer-3.9.7.exe'"
echo Install Python 3.9.7
start /wait python-installer-3.9.7.exe /quiet PrependPath=1
del python-installer-3.9.7.exe
echo Python 3.9.7 installation completed.

cls

:: Download and install Python latest version
echo Donwload 3.10.0 Python
powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe' -OutFile 'python-installer-3.10.0.exe'"
echo Install 3.10.0 Python
start /wait python-installer-3.10.0.exe /quiet PrependPath=1
del python-installer-3.10.0.exe
echo Python 3.10.0 installation completed.

cls

:: Download and install Python latest version
echo Donwload Latest Python (3.11.3)
powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.3/python-3.11.3-amd64.exe' -OutFile 'python-installer-3.11.3.exe'"
echo Install Latest Python (3.11.3)
start /wait python-installer-3.11.3.exe /quiet PrependPath=1
del python-installer-3.11.3.exe
echo Python 3.11.3 installation completed.

cls

:: Download and install Java 17
echo Download Java 17
powershell -Command "Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk17.0.1/2cac34d838244d808ed16a5cf5b26a27/12/GPL/openjdk-17.0.1_windows-x64_bin.zip' -OutFile 'java17.zip'"
echo Extract Java 17
powershell -Command "Expand-Archive -Path 'java17.zip' -DestinationPath 'C:\Program Files\Java\jdk-17'"
setx /M PATH "%PATH%;C:\Program Files\Java\jdk-17\bin"
del java17.zip
echo Java 17 installation completed.

cls

:: Download and install Java 16
echo Download Java 16
powershell -Command "Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk16.0.2/7147401fd7354114ac51ef3e1328291f/9/GPL/openjdk-16.0.2_windows-x64_bin.zip' -OutFile 'java16.zip'"
echo Extract Java 16
powershell -Command "Expand-Archive -Path 'java16.zip' -DestinationPath 'C:\Program Files\Java\jdk-16'"
setx /M PATH "%PATH%;C:\Program Files\Java\jdk-16\bin"
del java16.zip
echo Java 16 installation completed.

cls

:: Download and install Java 11
echo Download Java 11
powershell -Command "Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.9_windows-x64_bin.zip' -OutFile 'java11.zip'"
echo Extract Java 11
powershell -Command "Expand-Archive -Path 'java11.zip' -DestinationPath 'C:\Program Files\Java\jdk-11'"
setx /M PATH "%PATH%;C:\Program Files\Java\jdk-11\bin"
del java11.zip
echo Java 11 installation completed.

cls

:: Download and install Java 8
echo Download Java 8
powershell -Command "Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk8/303-b08/jdk-8u303-windows-x64.exe' -OutFile 'java8.exe'"
echo Download Java 8
start /wait java8.exe /s
setx /M PATH "%PATH%;C:\Program Files\Java\jdk1.8.0_303\bin"
del java8.exe
echo Java 8 installation completed.

cls

:: Download and install Java 7
echo Donwload Java 7
powershell -Command "Invoke-WebRequest -Uri 'https://download.java.net/openjdk/jdk7u75/ri/openjdk-7u75-b13-windows-x64-18_dec_2014.zip' -OutFile 'java7.zip'"
echo Extract Java 7
powershell -Command "Expand-Archive -Path 'java7.zip' -DestinationPath 'C:\Program Files\Java
setx /M PATH "%PATH%;C:\Program Files\Java\jdk-7\bin"
del java7.zip
echo Java 7 installation completed.

cls

:: Download and install Rust
echo Download Rust
powershell -Command "Invoke-WebRequest -Uri 'https://win.rustup.rs/x86_64' -OutFile 'rust-installer.exe'"
echo Install Rust
start /wait rust-installer.exe -y
del rust-installer.exe
echo Rust installation completed.
