hinagata-chef
====

## dependencies

- [Vagrant](https://www.vagrantup.com/)
- knife-solo

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

#### for vm enviornment

```
# prepare
knife solo prepare vagrant_hinagata_chef

# cook
knife solo cook vagrant_hinagata_chef

# test web server
open http://vagrant-hinagata-chef.dev/
```
