#!/bin/bash
component=$1
environment=$2 #dont use env here, it is reserved in linux
ansible-pull -U https://github.com/daws-84s/ansible-roboshop-roles.git -e component=$component main.yaml