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
dnf install git -y
if [ $? -ne 0 ]
echo "git is not installed please check"
exit 1
fi
else
echo "git is installed"
fi




