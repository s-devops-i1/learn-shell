dnf module disable nodejs -y &>>/tmp/expense.log
echo $?
dnf module enable nodejs:20 -y &>>/tmp/expense.log
echo $?
dnf install nodejs -y &>>/tmp/expense.log
echo $?
useradd expense
echo $?
mkdir /app
echo $?
curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip &>>/tmp/expense.log
echo $?
cd /app
echo $?
unzip /tmp/backend.zip &>>/tmp/expense.log
echo $?
npm install
echo $?
cp backend.service /etc/systemd/system/backend.service
systemctl daemon-reload
echo $?
systemctl enable backend
echo $?
systemctl start backend
echo $?
dnf install mysql -y
echo $?
mysql -h 172.31.45.99 -uroot -pExpenseApp@1 < /app/schema/backend.sql

