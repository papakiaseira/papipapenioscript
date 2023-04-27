sudo apt update
sudo apt upgrade -y
sudo apt install neofetch sl cmatrix nodejs npm python3 python3-pip default-jdk docker.io docker-compose build-essential curl -y
curl -fsSL https://get.casaos.io | sudo bash
sudo docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
