# #!/bin/bash
# userid=$(id -u)
# if [ $userid -ne 0 ]
# then
#     echo "please run the script with admin previlages"
#     exit 1
# fi

# dnf list installed mysql
# if [ $? -ne 0 ]
# then
#     echo "mysql is not installed installing"
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then
#         echo "mysql is not installed please check"
#         exit 1
#     else
#          echo "mysql is installed"
#     fi
# fi    


# need to run the script using admin previlages
# if not admin mode omit out telling, please run with admin credentials
# check if the software already installed
# if not please install the script
# please install the script
# mention if it is installed sucessfully or not.

userid=$(id -u)
if[ $userid -ne 0 ]
then
    echo "please run the script with admin previlages"
    exit 1
fi

dnf list installed nginx 
if [ $? -ne 0 ]
then
    echo "nginx not installed please installed"
    dnf install nginx -y
    if [ $? -ne 0 ]
    then
        echo "problem with the script please check"
        exit 1
    else
        echo "nginx installed"
    fi
fi            



