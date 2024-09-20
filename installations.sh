#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run the script with admin previlages"
dnf install nginx -y
