# ansible

To run the ntp role execute that requires both user and sudo access :--> 
     
     ```ansible-playbook -i hosts.ini ntp.yml -u openshift -kK```

Note: the `k` is for ssh password and `K` is for sudo password

To run the vnc role execute: 

``` ansible-playbook -i hosts.ini vncsetup.yml -u openshift -k```

To run the docker role execute:

``` ansible-playbook -i hosts.ini docker.yml -u root -k```

To run the ovs role execute:

``` ansible-playbook -i hosts.ini ovs.yml -u ubuntu -kK```
