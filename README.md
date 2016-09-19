hinagata-chef
====

## dependencies

- [Vagrant](https://www.vagrantup.com/)
- [vagrant-hostupdater](https://github.com/cogitatio/vagrant-hostsupdater)
- [chef](https://www.chef.io/chef/)
- [knife-solo](https://matschaffer.github.io/knife-solo/)

## setup

### init vm

```
# edit vagrant config
vi Vagrantfile

# init local vm
vagrant up

# add vm ssh config
vagrant ssh-config >> ~/.ssh/config

# test ssh
ssh vagrant_hinagata_chef
```

### run chef

```
# prepare
knife solo prepare <hostname>

# cook
knife solo cook <hostname>
```

#### for vm enviornment

```
# turn off iptables
service iptables stop
chkconfig iptables off

# test web server
open http://hinagata-chef.vagrant/
```
