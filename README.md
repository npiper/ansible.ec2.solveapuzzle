

## To start
```
ansible-playbook webservers.yml
```

## Vagrant

ssh vagrant@127.0.0.1 -p 2222 -i $(pwd)/playbooks/.vagrant/machines/default/virtualbox/private_key

## Skills required

```
Connect to a remote machine using SSH

Interact with the Bash command-line shell (pipes and redirection)

Install packages

Use the sudo command

Check and set file permissions

Start and stop services

Set environment variables

Write scripts (any language)
```




## Where to get re-usable roles

Ansible galaxy - https://galaxy.ansible.com/

https://valdhaus.co/books/taste-test-puppet-chef-salt-stack-ansible.html

An approach to test anisble roles with Travis-ci:
https://www.jeffgeerling.com/blog/testing-ansible-roles-travis-ci-github

## References

http://docs.ansible.com/ansible/latest/guide_aws.html#provisioning

## Structure

```
production                # inventory file for production servers
staging                   # inventory file for staging environment

group_vars/
   group1                 # here we assign variables to particular groups
   group2                 # ""
host_vars/
   hostname1              # if systems need specific variables, put them here
   hostname2              # ""

library/                  # if any custom modules, put them here (optional)
module_utils/             # if any custom module_utils to support modules, put them here (optional)
filter_plugins/           # if any custom filter plugins, put them here (optional)

site.yml                  # master playbook
security.yml            # playbook for security/idam tier
infra.yml               # playbook for infrastructure tier

roles/
    common/               # this hierarchy represents a "role"
        tasks/            #
            main.yml      #  <-- tasks file can include smaller files if warranted
        handlers/         #
            main.yml      #  <-- handlers file
        templates/        #  <-- files for use with the template resource
            ntp.conf.j2   #  <------- templates end in .j2
        files/            #
            bar.txt       #  <-- files for use with the copy resource
            foo.sh        #  <-- script files for use with the script resource
        vars/             #
            main.yml      #  <-- variables associated with this role
        defaults/         #
            main.yml      #  <-- default lower priority variables for this role
        meta/             #
            main.yml      #  <-- role dependencies
        library/          # roles can also include custom modules
        module_utils/     # roles can also include custom module_utils
        lookup_plugins/   # or other types of plugins, like lookup in this case

    webtier/              # same kind of structure as "common" was above, done for the webtier role
    monitoring/           # ""
    fooapp/               # ""
  ```
