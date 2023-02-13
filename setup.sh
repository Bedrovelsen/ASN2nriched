#! /bin/bash

echo "downloading table.txt and asns.csv from bgp.tools..."

wget https://bgp.tools/table.txt
wget https://bgp.tools/asns.csv

echo "...done"

echo "installing grepaddr"

git clone https://github.com/Zarcolio/grepaddr
cd grepaddr
sudo bash install.sh
cd ..

echo "done"
echo "installing mapcidr"

go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest

echo "setup finished"#! /bin/bash

echo "downloading table.txt and asns.csv from bgp.tools..."

wget https://bgp.tools/table.txt
wget https://bgp.tools/asns.csv

echo "...done"

echo "installing grepaddr"

git clone https://github.com/Zarcolio/grepaddr
cd grepaddr
sudo bash install.sh
cd ..

echo "done"
echo "installing mapcidr"

go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest

echo "setup finished"
