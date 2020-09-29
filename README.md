## Setup for working in HPE cluster

*TODO: eventually move it to a puppet script*   

Assuming the user is authenticated and user login works, now it is time to install the necessary software. 

### Find OS and version
`cat /etc/os-release`

I found CENTOS/RHEL 7 was installed.

### List of software to install
- screen/byobu
- R
- Python

`sudo yum install screen`   
`sudo yum install htop`  


