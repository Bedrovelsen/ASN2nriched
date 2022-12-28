#!/bin/bash

nrich -o json <(mapcidr -silent -cl <(grep -Ei "$1" asns.csv | tee orgz.txt | grep -Ei -o '^AS[0-9]*' | sed 's#AS##g' | xargs -I {} grep -Ei ' {}$' table.txt | grepaddr -cidr4 | tee cidrz.txt) | tee ipz.txt) | tee nrichedASNz.json
