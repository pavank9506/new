#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run the script with admin previlages"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "mysql is not installed installing"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "mysql is not installed please check"
        exit 1
    else
         echo "mysql is installed"
    fi
fi    






