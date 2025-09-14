# Detailed Configuration for Windows Machine

| S.no | Contents |
| --- | --- |
| 1. | Setting up the Wazuh Agent |
| 2. | Attacking Mysql Service |

## Setting up the Wazuh Agent
- After successful installation and initial update, head over to `https://UBUNTU_IP` to access the Wazuh Dashboard
- Open the left side bar, expand the *Agents management* view
![Sidebar](images/sidebar.png)
- Go to Summary > Deploy New Agent
> Follow the on screen insturctions! they're sufficient alone to get this done
1. Select the package to download and install on your system
2. Server address
3. Optional settings
4. Run the following commands to download and install the agent
5. Start the agent

## Setup SMB Discoverability for attacks with Kali Linux
Step 1: Enable SMB
1. Enable Network Discovery and File Sharing
2. Open Settings → Win + I
3. Go to:
- Network & Internet → Advanced network settings → Advanced sharing settings
4. Under Private network, turn ON:
- ✅ Network discovery
- ✅ File and printer sharing
5. Under All networks, scroll down and:

6. Set Password protected sharing → Off (optional, makes access easier for testing)

7. Allow public folder sharing → On

> 💡 Tip: If you don’t see "Private network," make sure your network profile is set to Private:
- Go to Settings → Network & Internet → Wi-Fi / Ethernet → select your connection → set Network profile to Private.

Step 2. Enable SMBv1 Support
1. Windows 11 disables SMBv1 by default. To enable:
2. Press Win + S, type Windows Features, and open
“Turn Windows features on or off”.
3. Scroll down, check:
4. SMB 1.0/CIFS File Sharing Support

- ✅ SMB 1.0/CIFS Client

- ✅ SMB 1.0/CIFS Server

5. Click OK, then Restart your computer.

Step 3. Create a Shared Folder

1. Navigate to where you want the shared folder, e.g., C:\Desktop\NodeShare

2. Right-click the folder → Properties

3. Go to the Sharing tab → click Advanced Sharing:
- ✅ Check Share this folder
4. Give it a name (e.g., NodeShare)
5. Click Permissions, then set:
- Everyone → Full Control
6. Click Apply and OK.
Back in Properties, go to the Security tab:
Click Edit, add Everyone, give Full Control permissions.
Apply and close