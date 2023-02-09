# RemoteDesktop

## Use cases: 
### To add credentials: 
```.\configure.ps1```
Enter the hostname (IP Address), Username and Password as prompted. 
The credentials will be saved under `Generic Credentials` in local window Credential Manager with the Hostname as key. 

### To remove credentials: 
```.\configure.ps1 -remove [-Address <hostname>]```
If not entered, the hostname will be prompted once commenced. 

### To rdp connect: 
```.\rdp.ps1 [-Address <hostname>]```
If not entered, the hostname will be prompted once commenced. 
