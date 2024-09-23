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

dnf list installed nginx 
if [ $? -ne 0 ]
then
    echo "nginx not installed please installed"
    dnf install nginx -y
   validate $? " installing nginx"
fi   

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "mysql not installed please installed"
    dnf install mysql -y
    validate $? "installing mysql"
fi   