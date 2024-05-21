<<EOF
dnf install nginx -y
systemctl enable nginx
systemctl start nginx

cp expense.conf /etc/nginx/default.d/expense.conf


curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip
frnt_end_file=/tmp/frontend.zip
cd /usr/share/nginx/html/
if [ -s "${frnt_end_file}"  ]; then
  echo "frontend contents downloaded"
  else
   unzip /tmp/frontend.zip
fi



systemctl restart nginx
EOF

dnf install nginx -y  &>>$/tmp/expense.log
systemctl enable nginx &>>$/tmp/expense.log
systemctl start nginx
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip &>>$/tmp/expense.log
cd /usr/share/nginx/html
unzip /tmp/frontend.zip &>>$/tmp/expense.log
systemctl restart nginx &>>$/tmp/expense.log


