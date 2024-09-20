#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run the script with admin previlages"
    exit 1
    fi
dnf install nginx -y
