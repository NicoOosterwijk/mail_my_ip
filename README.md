## Mail my IP address ##

This playbook wil create a Vitrual Machine on your local VirtualBox environment using CentOS 7 as the OS.
After the VM is running we'll capture it's IP address(es) and mail them to the addressee, defined in the variables.

### Requirements ###
- VirtualBox
- Ansible
- GIT

### Execute ###
Pull this repository to your local machine and enter the following command:
```sh
 $ vagrant up
```
- Check your mail!

To remove the VM from your VirtualBox environment, enter the following command:
```sh
  $ vagrant destoy -f
```

