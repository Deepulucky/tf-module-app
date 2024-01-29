#!/bin/bash

set-hostname -skip-apply ${component}
labauto ansible
ansible-pull -i localhost, -U https://github.com/Deepulucky/roboshop-ansible main.yml -e role_name=${component} -e env=${env} &>>/opt/ansible.log