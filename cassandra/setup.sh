#install cassandra on a debian 9 google cloud instance and get cassandra config files from repository
echo "deb http://www.apache.org/dist/cassandra/debian 39x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y cassandra
# sudo sh -c 'curl https://raw.githubusercontent.com/matthew-schultz/ICS421-FINAL/master/cassandra/cassandra.yaml > /etc/cassandra/cassandra.yaml'

