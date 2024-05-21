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

