print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
dnf module disable nodejs -y &>>/tmp/expense.log
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
dnf module enable nodejs:20 -y &>>/tmp/expense.log
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
dnf install nodejs -y &>>/tmp/expense.log
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
useradd expense
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
mkdir /app
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
cp backend.service /etc/systemd/system/backend.service
curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip &>>/tmp/expense.log
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
cd /app
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
unzip /tmp/backend.zip &>>/tmp/expense.log
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
npm install
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}

print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
systemctl daemon-reload
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
systemctl enable backend
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
systemctl start backend
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
dnf install mysql -y
print_task_heading(){
  if [ $? = 0 ]; then
      echo -e "\e[32mSuccess\e[0m"
  else
     echo -e "\e[32mFailure\e[0m"
  fi
}
mysql -h 172.31.45.99 -uroot -pExpenseApp@1 < /app/schema/backend.sql

