# bubuntu
An Ubuntu based containers with some tools for debug and simple file editing


Installed services:
* git
* vim
* dnsutils
* curl
* net-tools
* wget
* SSH

# SSH
This container expose an SSH daemon that has `PermitRootLogin yes` and `PasswordAuthentication`. Do not leave it running.
SSH daemon is started by default. The root password is configured with env variable `SSH_ROOT_PASS`.

Example:
```bash
docker run -e SSH_ROOT_PASS=yoursupersecurerandompass -p 47858:22 beekube/bubuntu
```
