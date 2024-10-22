#copy the dispatch.service fle to /etc/systemd/system folder
cp dispatch.service /etc/systemd/system/dispatch.service

# Install golang
dnf install golang -y

#add application user roboshop
useradd roboshop

#setup an app directory
mkdir /app

#download application code to created app directory
curl -L -o /tmp/dispatch.zip https://roboshop-artifacts.s3.amazonaws.com/dispatch-v3.zip
cd /app
unzip /tmp/dispatch.zip

# download dependencies and build the software
cd /app
go mod init dispatch
go get
go build

#Start the service
systemctl enable dispatch
systemctl start dispatch

