# Author
Zander Hamidi 

# Prerequisites

[ Install Vagrant, VirtualBox, Python 3 + Modules ]

https://www.vagrantup.com/downloads.html - Vagrant  
https://www.virtualbox.org/wiki/Downloads - VirtualBox

[ Prepare Vagrant ]<br/>  
Can pull ubuntu/trusty64 image to local machine before running, but not necessary.  
* vagrant box add ubuntu/trusty64

Install vagrant-berkshelf plugin  
* vagrant plugin install vagrant-berkshelf

[ Prepare Python ]<br/>   
Ensure Python 3.5 or greater is installed for posting to Wordpress
* pip3 install python-wordpress-xmlrpc


# Testing

* please make sure ports 8080/8081 are open and listening without other processes attached to them  
-> kill $(lsof -t -i:<8080|8081>)  

[Launch Nginx Hello World Site]    
* cd wordpress-deploy-template/nginx && vagrant up  
-> nginx Site - http://localhost:8080  

[Launch Wordpress Site]  
* cd wordpress-deploy-template/wordpress && vagrant up  

-> wordpress Site - http://localhost:8081

[Install Wordpress Site]  
- site = 4ctest, user = 4ctest, pwd = 4ctest
- check box to confirm 'weak' password for testing purposes  
- enter your email  
- login 

[ Post to site ]
* cd wordpress-deploy-template/wordpress  
* chmod +x post2wordpress.py
* ./post2wordpress.py plainTextContent.file "title of post"

-> check Site

 
