#!/usr/local/env bash

# Identify Linux distro
DISTRO=$(cat /etc/issue | awk '{print $1}')
PGK_MANAGER=""

#echo $DISTRO

case $DISTRO in
    "Arch")
        PGK_MANAGER="sudo pacman -S "
        ;;

    "Kali" || "Debian" || "Ubuntu")
        PGK_MANAGER="sudo apt install "
        ;;

    "Fedora")
        PGK_MANAGER="sudo dnf install "
        ;;

    *)
        echo -n "Linux distribution not found"
        exit 1
        ;;
esac

# Core Tools
PKG_MANAGER tcpdump
PKG_MANAGER nmap
PKG_MANAGER nc
PKG_MANAGER vim

# Programming Languages
PKG_MANAGER golang
PKG_MANAGER nodejs
PKG_MANAGER python3
PKG_Manager python3-pip

sudo pip install scapy


# Cloudlist
go install -v github.com/projectdiscovery/cloudlist/cmd/cloudlist@latest

# Subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Dalfox
go install -v github.com/hahwul/dalfox/v2@latest

# Anew
go install -v github.com/tomnomnom/anew@latest

# Interactsh
go install -v github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest

# Gf
go install -v github.com/tomnomnom/gf

# assetfinder
go install -u github.com/tomnomnom/assetfinder

# Httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# Nuclei
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

# notify
go install -v github.com/projectdiscovery/notify/cmd/notify@latest

# Gau
go install -v github.com/lc/gau/v2/cmd/gau@latest

# Dnsx
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

# Ffuf
go install github.com/ffuf/ffuf@latest

# Feroxbuster
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash

# Arjun 
pip3 install arjun
 
mkdir -p ~/tools

# Nuclei templates
git clone https://github.com/projectdiscovery/nuclei-templates ~/tools/

# linkefinder
git clone https://github.com/GerbenJavado/LinkFinder.git  ~/tools/linkfinder

# gdorks
git clone https://github.com/techgaun/github-dorks ~/tools/gdorks

#Getjs
git https://github.com/003random/getJS ~/tools/getjs








