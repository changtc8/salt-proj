vagrant-u
=========

Vagrant to setup salt master and minion on Ubuntu.  
Salt master and minion are setup using static private ip of   
192.168.10.8 and 192.168.10.12    
invoke master using vagrant up/ssh master    
invoke minion using vagrant up/ssh minion    

#Master Config
Add following changes in salt/master   
file_roots:    
        base:   
          - /srv/salt   


#Minion config
Make following changes in salt/minion    
master: 192.168.10.8     
