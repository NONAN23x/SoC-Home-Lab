# Detailed Configuration for Ubuntu Server

| S.no | Contents |
| --- | --- |
| 1. | Setting up the Wazuh Agent |
| 2. | Setting up Rules and Decoding alerts from Honeypot |
| 3. | Setting up Malware Removal with XDR |


## 7.1 Configuring Wazuh Dashboard on Ubuntu
- After successfull Wazuh Installation, make sure it's running by executing

```shell-session
systemctl status wazuh-manager
```
- > If it's running, visit `https://UBUNTU_IP/` on any device: (windows/kali)
- Enter the password you had saved after the installation message
- Open the sidebar by clicking on the top left corner, scroll down to Agents Management and press Add an Agent, You'd be presented with a screen like this
- Now repeat the steps for every agent: Kali/Windows/Fedora
TROPHY

## Setup Malware Removal XDR with Wazuh using Virustotal
