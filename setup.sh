sudo yum remove docker \
                  docker-common \
                  docker-selinux \
                  docker-engine
				  
				  
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
  
sudo yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo

curl https://releases.rancher.com/install-docker/17.06.sh | sh
	

sudo systemctl enable docker
sudo systemctl start docker

sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

curl -s https://raw.githubusercontent.com/ZZROTDesign/docker-clean/v2.0.4/docker-clean |
sudo tee /usr/local/bin/docker-clean > /dev/null && \
sudo chmod +x /usr/local/bin/docker-clean
