# Author
Zander Hamidi, System Engineer, Cerner Corporation


# Prerequisites

[ Install Vagrant, VirtualBox, Python 2.7 / 3.7 + Modules ]

https://www.vagrantup.com/downloads.html - Vagrant
https://www.virtualbox.org/wiki/Downloads - VirtualBox

[ Prepare Vagrant ]
-- Can pull ubuntu/trusty64 image to local machine before running, but not necessary.
* vagrant box add ubuntu/trusty64

-- Install vagrant-berkshelf plugin
* vagrant plugin install vagrant-berkshelf

[ Prepare Python ]
* pip3 install python-wordpress-xmlrpc


[ Fork zandabanda/4CInsights-Challenge repo ]
* git clone https://github.com/zandabanda/4CInsights-Challenge


# Testing
* cd nginx-helloworld && vagrant up
nginx - http://localhost:8080

* cd wordpress && vagrant up
wordpress - http://localhost:8081

enter site = 4ctest 
enter user = 4ctest
enter pwd = 4ctest

* check box to confirm weak password for testing purposes
* enter your email or a fake address (irrelelvant)

login with user/pwd set above.


[ Post to site ]
* cd wordpress
./post2wordpress.py <plain text file containing post> "<title of post>"

-> check site, http://localhost:8081

 
