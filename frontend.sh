dnf install nginx -y
systemctl enable nginx
systemctl start nginx
rm -rf /usr/share/nginx/html/*
cp expense.conf /etc/nginx/default.d/expense.conf
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip
unzip /tmp/frontend.zip
cd /usr/share/nginx/html

systemctl restart nginx

