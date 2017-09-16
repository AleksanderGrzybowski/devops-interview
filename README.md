# Solution to the assignment

Almost everything is automated. To boot up and provision new Ubuntu virtual machine,

```
$ vagrant up
```

should be enough (you might need to `chmod 600 ssh_keys/private_key` locally though).

I concluded that creating provisioning for 'imaginary' apps makes absolutely no sense (how I am going to test it?), so I created two Hello worlds (Express + React) to prove my solution correct.

I created a public Docker registry in DigitalOcean on my private account. Running

```
$ cd apps; ./push-to-private-registry.sh
```

and then

```
$ ansible-playbook -i hosts deploy.yml
```

should make the app accessible at http://192.168.33.10 .


