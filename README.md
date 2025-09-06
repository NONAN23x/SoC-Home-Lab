<div align="center">

# 🛡️ Security Operations Centre 🛡️
A home lab project :)

![GitHub repo size](https://img.shields.io/github/repo-size/NONAN23x/SoC-Home-Lab?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/NONAN23x/SoC-Home-Lab?style=for-the-badge)
![Open Source](https://img.shields.io/badge/Open%20Source-Yes-brightgreen?style=for-the-badge)
![Issue Skill](https://img.shields.io/badge/Issues-Skill-red?style=for-the-badge)

![SoCLab](assets/socLab.png)
Hey everyone 👾! 

This repository documents the steps I took for building a personal, modern, free and open source Security Operations Centre (SoC) lab at home!

Whether you're a blue team rookie or a seasoned cyber geek, this lab will help you level up your home defense game

-- -

| Section | Content             |
|------|------------------------|
| 1    | Problem Statement     |
| 2    | Techical Overview    |
| 3    | Proof Of Concept |
| 4    | Pre Requisites |
| 5    | Configuration |
| 6    | Trouble Shooting       |
| 7    | Future Enhancements |

<br><br>

## Problem Statement
</div>

Building a Security Operations Centre (SoC) at home presents challenges such as limited resources, tool integration, and complexity. This project provides a practical, cost-effective guide for setting up a modern SoC lab using open source technologies. Beginners can use this lab to showcase their knowledge and gain hands-on experience, while seasoned professionals can simulate and experiment with security solutions before deploying them in production environments.

<div align=center>
<br><br>

## Technical Overview

![Technical Image](assets/technicals.png)
</div>

<div align=center>
<br><br>

# Proof Of Concept
</div>

// Fill Later

<div align=center>
<br><br>

# Pre Requisites
</div>

### Hardware Requirements

You do need a beefy computer to run every component mentioned in this Lab, if you happen to fall short in some areas, like memory for example, you could sacrifice one of the units like honeypot to make space for other devices that matter more

| Component | Minimum Specifications |
| ---- | ---- |
| Processor | Intel i5 10th Gen / AMD Ryzen 5|
| Logical Processors| 8|
| Memory | 16 GB DDR4 |
| Storage Space | 128 GB (Free)|

### Software Requirements

<div align=center>
<table>
    <tr>
        <td align="center" width="120">
            <img src="assets/vbox.png" alt="VirtualBox Logo" width="64" height="64"><br>
            <a href="https://www.virtualbox.org/wiki/Downloads">Get VirtualBox</a>
        </td>
        <td align="center" width="120">
            <img src="assets/pfSense.png" alt="pfSense Logo" width="64" height="64"><br>
            <a href="https://www.pfsense.org/download/">Get pfSense</a>
        </td>
        <td align="center" width="120">
            <img src="assets/ubuntu.png" alt="Ubuntu Logo" width="64" height="64"><br>
            <a href="https://ubuntu.com/download/server">Get Ubuntu Server</a>
        </td>
    </tr>
    <tr>
        <td align="center" width="120">
            <img src="assets/win.png" alt="Windows Logo" width="64" height="64"><br>
            <a href="https://www.microsoft.com/en-us/software-download/windows11">Get Windows 11</a>
        </td>
        <td align="center" width="120">
            <img src="assets/fedora.png" alt="Fedora Logo" width="64" height="64"><br>
            <a href="https://getfedora.org/en/server/download/">Get Fedora Server</a>
        </td>
        <td align="center" width="120">
            <img src="assets/kali.png" alt="Kali Logo" width="64" height="64"><br>
            <a href="https://www.kali.org/get-kali/">Get Kali Linux</a>
        </td>
    </tr>
</table>
<br><br>

# Configuration
</div>

### Step 1: Install Oracle VirtualBox
Follow specific instructions for your main operating system to setup and install virtualbox, detailed walkthrough for this part is not covered

### Step 2: Download the Iso files
Download the guest operating systems image files (.iso) from the links given above
- Visit pfSense website, create an account, download the netgate installer iso
- Visit Ubuntu Downloads page, get Ubuntu Server
- Visit Microsoft's Download page to obtain Windows 11 disk image
- Visit Fedora's Web page to download the Fedora Server ISO Image
- Visit Kali Linux's download page, click on Pre-Configured virtual machines, download one for virtualbox

### Step 3: Setting up the pfSense router

*   Create a new Virtual Machine in VirtualBox, allocate sufficient memory and storage.
*   Configure **two** network adapters in VirtualBox settings:
    *   Adapter 1: Attached to "Bridged Adapter" (WAN).
    *   Adapter 2: Attached to "Internal Network" (LAN).
*   Boot the VM from the pfSense ISO.
*   Follow the pfSense installer prompts.
*   When prompted, assign the first adapter (WAN) as `WAN` and the second adapter (LAN) as `LAN`.
*   Complete the installation and reboot.
*   Access the pfSense web interface through the LAN IP address to configure further.

### Step 4: Setting up Windows 11 Virtual Machine (User)
*   Create a new Virtual Machine in VirtualBox, allocate sufficient memory and storage.
*   Attach the first network adapter to "Internal Network" (Same Network as LAN in pfSense).
*   Boot the VM from the Windows 11 ISO.
*   Follow the Windows 11 installation prompts.
*   Disable Windows Defender for testing purposes (not recommended in a production environment).
*   Open Command Prompt and run `ipconfig` to verify the IP address and internet connectivity.
*   (Optional) Set a static IP address (e.g., 192.168.1.11) to match the Windows version.

### Step 5: Setting up Kali Linux Virtual Machine (Adversary)
*   Unpack the downloaded zip file, double click on the blue icon file to automatically setup a vm entry in virtualbox
*   Attach the first network adapter to "Internal Network" (Same Network as LAN in pfSense).
*   Ensure network is allright
*   Update Kali
*   (Optional) Set a static IP address (e.g., 192.168.1.8)

### Step 6: Setting up Fedora Server (Honeypot)
*   Create a new Virtual Machine in VirtualBox, allocate sufficient memory and storage.
*   Attach the first network adapter to "Internal Network" (Same Network as LAN in pfSense).
*   Boot up the Fedora Server
*   Install python and opencanary
```bash
sudo apt install python3 && cd ~
python -m venv .
pip3 install opencanary
```

### Step 7: Setting up Ubuntu Server (SIEM Node)
*   Create a new Virtual Machine in VirtualBox, allocate sufficient memory and storage.
*   Attach the first network adapter to "Internal Network" (Same Network as LAN in pfSense).
*   Boot up the Ubuntu Server
*   Install wazuh manager
```bash
curl -sO https://packages.wazuh.com/4.12/wazuh-install.sh && sudo bash ./wazuh-install.sh -a
```
<br><br>

# Troubleshooting
// Fill Later

<br><br>

# Future Enhancements
// Fill Later