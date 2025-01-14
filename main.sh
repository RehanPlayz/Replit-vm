#!/bin/bash
HOME="/home/runner"
HOMEA="$HOME/linux/.apt"
STAR1="$HOMEA/lib:$HOMEA/usr/lib:$HOMEA/var/lib:$HOMEA/usr/lib/x86_64-linux-gnu:$HOMEA/lib/x86_64-linux-gnu:$HOMEA/lib:$HOMEA/usr/lib/sudo"
STAR2="$HOMEA/usr/include/x86_64-linux-gnu:$HOMEA/usr/include/x86_64-linux-gnu/bits:$HOMEA/usr/include/x86_64-linux-gnu/gnu"
STAR3="$HOMEA/usr/share/lintian/overrides/:$HOMEA/usr/src/glibc/debian/:$HOMEA/usr/src/glibc/debian/debhelper.in:$HOMEA/usr/lib/mono"
STAR4="$HOMEA/usr/src/glibc/debian/control.in:$HOMEA/usr/lib/x86_64-linux-gnu/libcanberra-0.30:$HOMEA/usr/lib/x86_64-linux-gnu/libgtk2.0-0"
STAR5="$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/modules:$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/2.10.0/immodules:$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/2.10.0/printbackends"
STAR6="$HOMEA/usr/lib/x86_64-linux-gnu/samba/:$HOMEA/usr/lib/x86_64-linux-gnu/pulseaudio:$HOMEA/usr/lib/x86_64-linux-gnu/blas:$HOMEA/usr/lib/x86_64-linux-gnu/blis-serial"
STAR7="$HOMEA/usr/lib/x86_64-linux-gnu/blis-openmp:$HOMEA/usr/lib/x86_64-linux-gnu/atlas:$HOMEA/usr/lib/x86_64-linux-gnu/tracker-miners-2.0:$HOMEA/usr/lib/x86_64-linux-gnu/tracker-2.0:$HOMEA/usr/lib/x86_64-linux-gnu/lapack:$HOMEA/usr/lib/x86_64-linux-gnu/gedit"
STARALL="$STAR1:$STAR2:$STAR3:$STAR4:$STAR5:$STAR6:$STAR7"
export LD_LIBRARY_PATH=$STARALL
export PATH="$HOMEA/bin:$HOMEA/usr/bin:$HOMEA/sbin:$HOMEA/usr/sbin:$HOMEA/etc/init.d:$PATH"
export BUILD_DIR=$HOMEA

bold=$(echo -en "\e[1m")
nc=$(echo -en "\e[0m")
lightblue=$(echo -en "\e[94m")
lightgreen=$(echo -en "\e[92m")
clear

echo "
${bold}${lightgreen}========================================================================
                                                                                                  
${bold}${lightgreen}   ▄████████    ▄████████    ▄███████▄  ▄█        ▄█      ███           ▄█    █▄    ▄▄▄▄███▄▄▄▄   
${bold}${lightgreen}  ███    ███   ███    ███   ███    ███ ███       ███  ▀█████████▄      ███    ███ ▄██▀▀▀███▀▀▀██▄ 
${bold}${lightgreen}  ███    ███   ███    █▀    ███    ███ ███       ███▌    ▀███▀▀██      ███    ███ ███   ███   ███ 
${bold}${lightgreen} ▄███▄▄▄▄██▀  ▄███▄▄▄       ███    ███ ███       ███▌     ███   ▀      ███    ███ ███   ███   ███ 
${bold}${lightgreen}▀▀███▀▀▀▀▀   ▀▀███▀▀▀     ▀█████████▀  ███       ███▌     ███          ███    ███ ███   ███   ███ 
${bold}${lightgreen}▀███████████   ███    █▄    ███        ███       ███      ███          ███    ███ ███   ███   ███ 
${bold}${lightgreen}  ███    ███   ███    ███   ███        ███▌    ▄ ███      ███          ███    ███ ███   ███   ███ 
${bold}${lightgreen}  ███    ███   ██████████  ▄████▀      █████▄▄██ █▀      ▄████▀         ▀██████▀   ▀█   ███   █▀  
${bold}${lightgreen}  ███    ███                           ▀                                                          
                                                                                                                                                                                                               
${bold}${lightgreen}========================================================================
 "
 
echo "${nc}"

if [[ -f "./installed" ]]; then
    echo "${bold}${lightgreen}==> Started ${lightblue}ReplitVM${lightgreen} <=="
    function runcmd1 {
        printf "${bold}${lightgreen}User${nc}@${lightblue}Replit-vm${nc}:~ "
        read -r cmdtorun
        ./dist/proot -S . /bin/bash -c "$cmdtorun"
        runcmd
    }
    function runcmd {
        printf "${bold}${lightgreen}User${nc}@${lightblue}Replit-vm${nc}:~ "
        read -r cmdtorun
        ./dist/proot -S . /bin/bash -c "$cmdtorun"
        runcmd1
    }
    runcmd
else
    echo "Downloading files for ReplitVM"
    curl -sSLo ptero-vm.zip https://ptero-vm.afnanksalal.xyz/u/ptero-vm.zip
    curl -sSLo apth https://raw.githubusercontent.com/afnan007a/Ptero-vm/main/apth
    curl -sSLo unzip https://raw.githubusercontent.com/afnan007a/Ptero-vm/main/unzip
    curl -sSLo gotty https://raw.githubusercontent.com/afnan007a/Replit-Vm/main/gotty
    chmod +x apth
    chmod +x unzip
    echo "Installing the files"
    ./unzip ptero-vm.zip
    ./unzip root.zip
    tar -xf root.tar.gz 
    chmod +x ./dist/proot
    chmod +x gotty
    rm -rf ptero-vm.zip
    rm -rf root.zip
    rm -rf root.tar.gz
    clear
    
    touch installed
    ./dist/proot -S . /bin/bash -c "mv gotty /usr/bin/"
    ./dist/proot -S . /bin/bash -c "mv apth /usr/bin/"
    ./dist/proot -S . /bin/bash -c "mv unzip /usr/bin/"
    ./dist/proot -S . /bin/bash -c "apt-get update"
    ./dist/proot -S . /bin/bash -c "apt-get -y upgrade"
    ./dist/proot -S . /bin/bash -c "apt-get -y install curl"
    ./dist/proot -S . /bin/bash -c "apt-get -y install hwloc"
    ./dist/proot -S . /bin/bash -c "apt-get -y install htop"
    ./dist/proot -S . /bin/bash -c "apt-get -y install nano"
    ./dist/proot -S . /bin/bash -c "apt-get -y install screen"
    ./dist/proot -S . /bin/bash -c "apt-get -y install neofetch"
    ./dist/proot -S . /bin/bash -c "curl -o /bin/systemctl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py"
    ./dist/proot -S . /bin/bash -c "chmod +x /bin/systemctl"
    ./dist/proot -S . /bin/bash -c "clear"
    
echo "
${bold}${lightgreen}========================================================================
                                                                                                  
${bold}${lightgreen}   ▄████████    ▄████████    ▄███████▄  ▄█        ▄█      ███           ▄█    █▄    ▄▄▄▄███▄▄▄▄   
${bold}${lightgreen}  ███    ███   ███    ███   ███    ███ ███       ███  ▀█████████▄      ███    ███ ▄██▀▀▀███▀▀▀██▄ 
${bold}${lightgreen}  ███    ███   ███    █▀    ███    ███ ███       ███▌    ▀███▀▀██      ███    ███ ███   ███   ███ 
${bold}${lightgreen} ▄███▄▄▄▄██▀  ▄███▄▄▄       ███    ███ ███       ███▌     ███   ▀      ███    ███ ███   ███   ███ 
${bold}${lightgreen}▀▀███▀▀▀▀▀   ▀▀███▀▀▀     ▀█████████▀  ███       ███▌     ███          ███    ███ ███   ███   ███ 
${bold}${lightgreen}▀███████████   ███    █▄    ███        ███       ███      ███          ███    ███ ███   ███   ███ 
${bold}${lightgreen}  ███    ███   ███    ███   ███        ███▌    ▄ ███      ███          ███    ███ ███   ███   ███ 
${bold}${lightgreen}  ███    ███   ██████████  ▄████▀      █████▄▄██ █▀      ▄████▀         ▀██████▀   ▀█   ███   █▀  
${bold}${lightgreen}  ███    ███                           ▀                                                          
                                                                                                                                                                                                           
${bold}${lightgreen}========================================================================
 "
 
echo "${nc}"
    
    echo "${bold}${lightgreen}==> Started ${lightblue}ReplitVM${lightgreen} <=="
    function runcmd1 {
        printf "${bold}${lightgreen}User${nc}@${lightblue}Replit-vm${nc}:~ "
        read -r cmdtorun
        ./dist/proot -S . /bin/bash -c "$cmdtorun"
        runcmd
    }
    function runcmd {
        printf "${bold}${lightgreen}User${nc}@${lightblue}Replit-vm${nc}:~ "
        read -r cmdtorun
        ./dist/proot -S . /bin/bash -c "$cmdtorun"
        runcmd1
    }
    runcmd
fi
