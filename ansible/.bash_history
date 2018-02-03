ls
cd ..
ls
cd ubuntu/
ls
ls -a
cd .ssh/
hmod u+xr,go-rwx ~/.ssh
chmod u+xr,go-rwx ~/.ssh
pwd
chmod u+xr,go-rwx /home/ubuntu/.ssh
sudo su
ls
ssh-keygen -t rsa -b 4096 -C "khchoksi@ncsu.edu"
eval "$(ssh-agent -s)"
pbcopy < ~/.ssh/id_rsa
cat ~/.ssh/id_rsa
cat ~/.ssh/config
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
cd ..
ls
cd vagrant/
ls
vim ansible_script.yml 
ls
ansible-playbook -s ansible_script.yml
ansible-playbook -s ansible_script.yml
ls
ls -a
exit
