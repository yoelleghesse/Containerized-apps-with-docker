ls
root
cd ..
ssh -p 22 root@[200~159.203.38.86~
ssh -p 22 root@159.203.38.86
apt update && full-upgrade -y
apt update && apt full-upgrade -y
ssh-keygen -t rsa -b 2048 -C 'keys generated on Jan 2024'
ls .ssh/
cat id_rsa.pub
cat .ssh/id_rsa.pub
ssh-copy-id root@162.243.188.66
cat .ssh/authorized_keys
ssh-copy-id root@162.243.188.66
cat .ssh/id_rsa.pub
cat .ssh/authorized_keys
ssh root@[200~162.243.188.66~
clear
sudo apt remove docker docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce docker-ce-cli containerd.io
sudo systemctl status docker
sudo usermod -aG docker ${USER}
docker --version
su
su - student
s
su
docker version
docker info
docker container
docker container ls
docker image ls
docker container run hello-world
docker run hello-world
docker search debian
docker container create -p 80:80 httpd
docker container ls -a
docker container start 1c8d9b3fa276
docker container ls -a
docker ps -a
docker 
docker--help
docker help
docker container
docker container run -d -p 8080:80 --name mysite nginx
docker container ls
ip ad
docker container run -d -p 8081:80 --name mysite1 nginx
docker container run -d -p 8082:80 --name mysite2 httpd
docker container ls
docker pull centos:latest
docker container run centos
docker container run centos ping 127.0.0.1
docker ps
docker container ls
vps
su - student
su - first-project
su - firstproject
