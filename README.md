#### Author ###
Zander Hamidi
System Engineer, Cerner Corporation

#### Prerequisites ####

# Fork zandabanda/4CInsights-Challenge repo

git clone 

# Install Vagrant, VirtualBox

https://www.vagrantup.com/downloads.html - Vagrant
https://www.virtualbox.org/wiki/Downloads - VirtualBox

sudo pip install ansible
pip3 install python-wordpress-xmlrpc

# Prepare Vagrant

-- Can pull ubuntu/trusty64 image to local machine before running, but not necessary.
-> vagrant box add ubuntu/trusty64

-- Install vagrant-berkshelf plugin
-> vagrant plugin install vagrant-berkshelf

# Testing
nginx -
http://localhost:8080

wordpress - 
http://localhost:8081

enter site = 4ctest 
enter user = 4ctest
enter pwd = 4ctest

* check box to confirm weak password for testing purposes
* enter your email or a fake address (irrelelvant)

login with user/pwd set above.


# Post to site
./post2wordpress.py <plain text file containing post> "<title of post>"

-> check site, http://localhost:8081

 
