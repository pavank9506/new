#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run the script wit admin previlages"
    exit 1
fi

validate()
          {
            echo "exit status : $1"
          }
dnf list installed git
validate $?          