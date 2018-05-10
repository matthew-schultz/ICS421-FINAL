#install cassandra on a debian 9 google cloud instance and get cassandra config files from repository
# curl https://raw.githubusercontent.com/matthew-schultz/ICS421-FINAL/master/cassandra/setup.sh | bash
# curl https://raw.githubusercontent.com/matthew-schultz/ICS421-FINAL/master/cassandra/setup.sh | bash -s cassandra/cassandra.yaml
# curl https://raw.githubusercontent.com/matthew-schultz/ICS421-FINAL/master/cassandra/setup.sh | bash -s /cassandra/10-138-0-3/cassandra.yaml

CASS_YAML=$1

echo "deb http://www.apache.org/dist/cassandra/debian 39x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y cassandra
sudo sh -c "curl https://raw.githubusercontent.com/matthew-schultz/ICS421-FINAL/master/$CASS_YAML > /etc/cassandra/cassandra.yaml"
