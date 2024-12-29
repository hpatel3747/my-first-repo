# Getting started on DevOps 
1. Register on github
2. Create a repo named my-first-repo on github
3. Install gitbash on your desktop (search for gitbash on google and download)
4. Create a folder github-repos on local disk (c:\user\github-repos)
5. Clone github-repos to github\my-first-repo
6. Install intellij IDEA community edition editor (visual studio is fine too) (search for intellij IDEA on google)
7. Edit readme.md file and commit changes
8. Use token to push instead of github login
9. Verify you are able to push changes
10. Register a domain name: hptldevops.online on hostinger.com website
11. Create a hosted zone on aws route 53 for "htpldevops.online"
12. Take four NS records from aws route 53 for "hptldevops.online" and add in hostinger DNS records
13. Wait for 24 hours to propagate DNS information

## Create shell script and run on the server
1. Create subfolder roboshop in /my-first-repo/
2. Create file frontend.sh (copy cmds from the project document)
this is how frontend.sh looks like

```bash
dnf module disable nginx -y
dnf module enable nginx:1.24 -y
dnf install nginx -y
systemctl enable nginx
systemctl start nginx
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
systemctl restart nginx
```
3. create frontend server on AWS
4. Clone repo and run the shell script on the server

```bash
git clone https://github.com/hpatel3747/my-first-repo.git
sudo bash frontend.sh
```
<details open>

<summary>Tips for collapsed sections</summary>

### You can add a header

You can add text within a collapsed section. 

You can add an image or a code block, too.

```ruby
   puts "Hello World"
```

</details>
