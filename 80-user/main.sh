#!/bin/bash

component=$1
dnf install ansible -y
ansible-pull -U https://github.com/joindevops-1/roboshop-ansible-roles1.git -e component=$1 -e env=$2 main.yaml