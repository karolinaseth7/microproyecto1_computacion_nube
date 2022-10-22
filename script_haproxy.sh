echo "*** INSTALANDO PAQUETES ***"

sudo apt-get update -y
sudo apt-get install net-tools -y

echo "*** CONFIG HAPROXY ***"
sudo apt-get install haproxy -y
sudo systemctl enable haproxy

echo "*** IMPORTAR HAPROXY CONFIG FILE ***"
sudo cp /home/vagrant/compartidos/haproxy.cfg /etc/haproxy/

echo "*** START HAPROXY ***"
sudo systemctl start haproxy
sudo systemctl restart haproxy