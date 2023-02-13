#! /bin/bash

mapcidr -silent -cl <(grep -Ei "$1" asns.csv | tee orgz.txt | grep -Ei -o '^AS[0-9]*' | sed 's#AS##g' | xargs -I {} grep -Ei ' {}$' table.txt | tee ASnetblocks.txt | grepaddr -cidr4 | tee cidrz.txt) > ipz.txt
