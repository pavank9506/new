#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run the script with admin previlages"
    exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
then
echo "git is not installed installing"
fi
dnf install git -y



