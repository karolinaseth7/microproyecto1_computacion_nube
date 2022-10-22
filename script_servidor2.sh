echo "*** INSTALANDO PAQUETES ***"

sudo apt-get update -y
sudo apt-get install net-tools -y

echo "*** INSTALAR NODEJS ***"
echo 'archivo de la aplicacion'
sudo git clone https://github.com/omondragon/consulService

echo 'Instalando node js'
sudo apt install nodejs -y

echo 'Instalando npm'
sudo apt install npm -y

echo 'Accediendo al directorio'
cd consulService/app

echo 'Instalando con npm el consul'
sudo npm install consul -y

echo 'Instalando con npm servicio express'
sudo npm install express -y


echo "*** INSTALAR CONSUL ***"
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt install consul -y
