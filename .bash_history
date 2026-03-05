ls
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
sudo docker run hello-world
ls
clear
docker network ls
dockeer network create app-network
docker network create app-network
docker run -d --name node-app --network app-network -p 3000:3000 node
docker ps
docker exec -it node-app bash
docker ps -a
docker network ls
docker rm 0137d8a4ea6c
docker run -it --name node-app --network app-network node:latest bash
ls
docker ps
docker ps -a
docker rm 
docker rm 149058db1c7d
docker ps
docker run -it node:latest
docker ps
docker ps -a
docker rm 96521bb157da
ls
ls
docker network ls
docker run -d --name node-app --network app-network -p 3000:3000 node:18 ls
docker ps 
docker ls
docker ps -a
docker rm b0686c7f8357 
ls
docker run -dit --name node-app --network app-network -p 3000:3000 node:18 /bin/bash
ls
docker ps
docker exec -it node-app /bin/bash
ls
docker ps
ls
vim default.conf
docker run -itd --name nginx-proxy --network app-network -p 8080:80 -v $(pwd)/default.conf:/etc/nginx/conf.d/default.conf nginx
docker ps
docker network ls
docker inspect b787ce2b1c66
history
docker exec -it node-app bash
ls
histroy
history
ls
logut
exit
ls
docker ps
docker exec -it 4a9bf4912536 /bin/bash
docker network ls
ls
docker inspect app-network
docker ps
ls
cat default conf
cat default.conf
vim server2.js
ls
docker ps
docker network ls
ls
mkdir node2
ls
mv server2.js node2
ls
docker run -itd --name node-app2 --network app-network -v $(pwd)/node2:/app -w /app node server2.js
ls
docker ps
ls
vim default.conf
ls
vim node2
cd node2
ls
vim server2.js
ls
docker ps
docker exec -it bec44b253fe7 /bin/bash
ls
systemctl restart docker
ls
cd  ..
ls
docker ps
mkdir node1
cd node1
ls
vim server1.js
ls
cd ..
ls
default.conf
ls
cat default.conf
ls node1
vim node1/server1.js
vim node2/server2.js
s
ls
vim default.conf
ls
git init
sl
sudo apt update
apt install git -y
git init
ls
ls -la
git add .
git commit -m "nginx"
vim .gitignore
git add .
git commit -m "latest"
git branch -M main
git remote add origin https://github.com/sahil9079/nginx.git
git push -u origin main
git remote add origin https://github.com/sahil9079/nginx.git
git branch -M main
git push -u origin main
git remote set-url origin git@github.com:sahil9079/nginx.git
ssh -T git@github.com
ls
cat node1/server1.js
cat default.conf
docker network create app-network
docker network ls
docker ps -a
docker ps
docker rm b06d2a6ea408 4a9bf4912536 bec44b253fe7
docker ps
docker ps -a
ls
docker run -itd --name nginx-proxy --network app-network -p 8080:80 -v $(pwd)/default.conf:/etc/nginx/conf.d/default.conf nginx
docker ps
docker ps -a
docker rm c8560bd7dcb0 
ld
ls
cat defult.conf
cat default.conf
docker run -dit --name node-app1 --network app-network -p 3001:3001 node:18
docker ps
docker run -dit --name node-app2 --network app-network -p 30012:3002 node:18
docker ps
docker stop 219adda620bd  69af2d7eb7a8 
docker ps -a
docker rm 219adda620bd 69af2d7eb7a8
ls
ld
docker run -itd --name node-app1 --network app-network -v $(pwd)/node1:/app -w /app node:18 node server1.js
docker run -itd --name node-app2 --network app-network -v $(pwd)/node2:/app -w /app node:18 node server2.js
docker ps
docker run -itd --name nginx-proxy --network app-network -p 8080:80 -v $(pwd)/default.conf:/etc/nginx/conf.d/default.conf nginx
docker ps
cat default.conf
cat node1/server1.js
cat node2/server2.js
