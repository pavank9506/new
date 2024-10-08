   #!/bin/bash
   
   userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "please run the script with admin previlages"
    exit 1
fi

validate(){
  if [ $1 -ne 0 ]
  then
      echo "$2 is failed"
      exit 1
  else 
      echo "$2 is sucess" 
  fi       
}

R="\e[31m"
G="\e[32m"
N="\e[0m"

dnf list installed nginx 
if [ $? -ne 0 ]
then
    echo-e  " $R nginx not installed please installed $N "
    dnf install nginx -y
   validate $? " installing nginx"
else
    echo -e "$G nginx is installed $N"   
fi   

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo -e " $R mysql not installed please installed $N "
    dnf install mysql -y
    validate $? "installing mysql"
else
    echo -e " $G nginx is installed $N " 
    echo   
fi   