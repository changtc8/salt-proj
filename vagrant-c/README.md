vagrant-c
=========

Vagrant to setup salt master and minion on Centos.    
Salt master and minion are setup using static private ip of     
192.168.10.80 and 192.168.10.60      
invoke master using vagrant up/ssh master     
invoke minion using vagrant up/ssh minion    

NOTE: For CentOS, the minion id: in minion file need to be specified.    
vagrant hotname does not work well.     

##Master Config
Add following changes in salt/master     
file_roots:      
        base:      
          - /srv/salt     


##Minion Config
Make following changes in salt/minion      
master: 192.168.10.80       
srv: minion1

