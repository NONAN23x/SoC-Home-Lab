# Detailed Configuration for Ubuntu Server

| S.no | Contents |
| --- | --- |
| 1. | Configuring Wazuh Dashboard on Ubuntu |
| 2. | Setting up Rules and Decoding alerts from Honeypot |
| 3. | Setting up Malware Removal with XDR |


## 1. Configuring Wazuh Dashboard on Ubuntu
- After successfull Wazuh Installation, make sure it's running by executing

```shell-session
systemctl status wazuh-manager
```
- > If it's running, visit `https://UBUNTU_IP/` on any device: (windows/kali)
- Enter the password you had saved after the installation message
- Open the sidebar by clicking on the top left corner, scroll down to Agents Management and press Add an Agent, You'd be presented with a screen like this
- Now repeat the steps for every agent: Kali/Windows/Fedora
TROPHY

## 2. Setting up Rules and Decoding alerts from Honeypot
### Setting up Custom Rules and Decoders for Honeypot Alerts

1.  **Copy the OpenCanary Decoders Configuration File:**
    -   Navigate to the directory containing the `opencanary_decoders.xml` file.
    -   Copy this file to the Wazuh decoders directory.

    ```bash
    sudo cp opencanary_decoders.xml /var/ossec/etc/decoders/
    ```

2.  **Copy the OpenCanary Rules Configuration File:**
    -   Navigate to the directory containing the `opencanary_rules.xml` file.
    -   Copy this file to the Wazuh rules directory.

    ```bash
    sudo cp opencanary_rules.xml /var/ossec/etc/rules/
    ```

## 3. Setup Malware Removal with Virustotal
### Obtaining Virustotal API Key

-   To configure malware removal with VirusTotal, you'll need an API key. Here's how to obtain it:

    1.  **Sign up for a VirusTotal account:**
        -   Go to the VirusTotal website: `https://www.virustotal.com/gui/home/upload`.
        -   Create a free account.
    2.  **Obtain your API key:**
        -   Once logged in, go to your profile settings or account page.
        -   Look for the "API key" section.
        -   Copy your personal API key.

### Configuring Wazuh to use the Virustotal API
1.  **Copy `ossec.conf`:**
    -   Copy the `ossec.conf` file from the provided directory to the Wazuh server's configuration directory.

    ```bash
    sudo cp ossec.conf /var/ossec/etc/ossec.conf
    ```
2.  **Restart Wazuh Manager:**
    -   Restart the Wazuh Manager to apply the changes.

    ```bash
    sudo systemctl restart wazuh-manager
    ```
    
### Configuring rules for malware detection and removal
- Ensure that the virustotal_integration_rules.xml file is added to the /var/ossec/etc/rules/ directory for proper VirusTotal integration
