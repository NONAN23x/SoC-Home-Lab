<div align="center">

# 🛡️ Security Operations Centre Home Lab 🛡️
By [NONAN23x](https://github.com/NONAN23x/)

![GitHub repo size](https://img.shields.io/github/repo-size/NONAN23x/SoC-Home-Lab?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/NONAN23x/SoC-Home-Lab?style=for-the-badge)
![Open Source](https://img.shields.io/badge/Open%20Source-Yes-brightgreen?style=for-the-badge)
![Issue Skill](https://img.shields.io/badge/Issues-Skill-red?style=for-the-badge)

Hi everyone 👾! This repository is a nerdy, ready, up-to-date guide for building your own free Security Operations Centre (SoC) at home using open source tools!

Whether you're a blue team rookie or a seasoned cyber sentinel, this lab will help you level up your home defense game.

Here is a high-level overview of technologies and systems incorporated in the current version of this repo 
</div>

> Structural Overview

<div align=center>

### Contents of this page

| Section | Content             |
|------|------------------------|
| 1    | Technical Overview     |
| 2    | Networking Overview    |
| 3    | Dependencies |
| 4    | Software Installation  |
| 5    | Software Configuration |
| 6    | Trouble Shooting       |

</div>

-- -

## Technical Overview

## Networking Overview

## Software Installation
### Installing SIEM/XDR (Wazuh)
```bash
curl -sO https://packages.wazuh.com/4.12/wazuh-install.sh && sudo bash ./wazuh-install.sh -a
```

### Installing IDS/IPS (Snort)
- On Ubuntu Server 25

> Install dependencies
```bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y libpcre2-dev flex bison cmake \
    build-essential pkg-config \
    libpcap-dev libpcre3-dev libdumbnet-dev \
    zlib1g-dev liblzma-dev libnghttp2-dev \
    libssl-dev libhwloc-dev curl \
    libluajit-5.1-dev libsqlite3-dev
```

> Install Data Acquisition Library (Needed for Snort)
```bash
cd ~
git clone https://github.com/snort3/libdaq.git
./bootstrap
./configure
make
make install
```

> Install Snort
```bash
git clone https://github.com/snort3/snort3.git
mkdir ~/snort && export my_path=~/snort
cd snort3/
./configure_cmake.sh --prefix=$my_path
cd build
make -j $(nproc) install
```
### Installing Honeypot (Opencanary)
```bash
sudo apt install python3 && cd ~
python -m venv .
pip3 install opencanary
```
