
# Download and install Haskell
Write-Host "Download Haskell"
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
Write-Host "Haskell installation completed."

# Download and install Python 3.9.7
Write-Host "Download Python 3.9.7"
Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.9.7/python-3.9.7-amd64.exe' -OutFile 'python-installer-3.9.7.exe'
Write-Host "Install Python 3.9.7"
Start-Process -FilePath .\python-installer-3.9.7.exe -ArgumentList '/quiet', 'PrependPath=1' -Wait
Remove-Item .\python-installer-3.9.7.exe
Write-Host "Python 3.9.7 installation completed."

# Download and install Python latest version
Write-Host "Download Python 3.10.0"
Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe' -OutFile 'python-installer-3.10.0.exe'
Write-Host "Install Python 3.10.0"
Start-Process -FilePath .\python-installer-3.10.0.exe -ArgumentList '/quiet', 'PrependPath=1' -Wait
Remove-Item .\python-installer-3.10.0.exe
Write-Host "Python 3.10.0 installation completed."

# Download and install Python latest version
Write-Host "Download Latest Python (3.11.3)"
Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.3/python-3.11.3-amd64.exe' -OutFile 'python-installer-3.11.3.exe'
Write-Host "Install Latest Python (3.11.3)"
Start-Process -FilePath .\python-installer-3.11.3.exe -ArgumentList '/quiet', 'PrependPath=1' -Wait
Remove-Item .\python-installer-3.11.3.exe
Write-Host "Python 3.11.3 installation completed."

# Download and install Java 17
Write-Host "Download Java 17"
Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk17.0.1/2cac34d838244d808ed16a5cf5b26a27/12/GPL/openjdk-17.0.1_windows-x64_bin.zip' -OutFile 'java17.zip'
Write-Host "Extract Java 17"
Expand-Archive -Path .\java17.zip -DestinationPath 'C:\Program Files\Java\jdk-17'
[Environment]::SetEnvironmentVariable('Path', "$($env:Path);C:\Program Files\Java\jdk-17\bin", 'Machine')
Remove-Item .\java17.zip
Write-Host "Java 17 installation completed."

# Download and install Java 16
Write-Host "Download Java 16"
Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk16.0.2/7147401fd7354114ac51ef3e1328291f/9/GPL/openjdk-16.0.2_windows-x64_bin.zip' -OutFile 'java16.zip'
Write-Host "Extract Java 16"
Expand-Archive -Path .\java16.zip -DestinationPath 'C:\Program Files\Java\jdk-16'
[Environment]::SetEnvironmentVariable('Path', "$($env:Path);C:\Program Files\Java\jdk-16\bin", 'Machine')
Remove-Item .\java16.zip
Write-Host "Java 16 installation completed."

# Download and install Java 11
Write-Host "Download Java 11"
Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.9_windows-x64_bin.zip' -OutFile 'java11.zip'
Write-Host "Extract Java 11"
Expand-Archive -Path .\java11.zip -DestinationPath 'C:\Program Files\Java\jdk-11'
[Environment]::SetEnvironmentVariable('Path', "$($env:Path);C:\Program Files\Java\jdk-11\bin", 'Machine')
Remove-Item .\java11.zip
Write-Host "Java 11 installation completed."

# Download and install Java 8
Write-Host "Download Java 8"
Invoke-WebRequest -Uri 'https://download.java.net/java/GA/jdk8/303-b08/jdk-8u303-windows-x64.exe' -OutFile 'java8.exe'
Write-Host "Install Java 8"
Start-Process -FilePath .\java8.exe -ArgumentList '/s' -Wait
[Environment]::SetEnvironmentVariable('Path', "$($env:Path);C:\Program Files\Java\jdk1.8.0_303\bin", 'Machine')
Remove-Item .\java8.exe
Write-Host "Java 8 installation completed."

# Download and install Java 7
Write-Host "Download Java 7"
Invoke-WebRequest -Uri 'https://download.java.net/openjdk/jdk7u75/ri/openjdk-7u75-b13-windows-x64-18_dec_2014.zip' -OutFile 'java7.zip'
Write-Host "Extract Java 7"
Expand-Archive -Path .\java7.zip -DestinationPath 'C:\Program Files\Java\jdk-7'
[Environment]::SetEnvironmentVariable('Path', "$($env:Path);C:\Program Files\Java\jdk-7\bin", 'Machine')
Remove-Item .\java7.zip
Write-Host "Java 7 installation completed."

# Download and install Rust
Write-Host "Download Rust"
Invoke-WebRequest -Uri 'https://win.rustup.rs/x86_64' -OutFile 'rust-installer.exe'
Write-Host "Install Rust"
Start-Process -FilePath .\rust-installer.exe -ArgumentList '-y' -Wait
Remove-Item .\rust-installer.exe
Write-Host "Rust installation completed."
