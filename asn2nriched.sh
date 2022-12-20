#!/bin/bash

nrich -o json <(mapcidr -l <(grep -Ei "$1" asns.csv | grep -Ei -o '^AS[0-9]*' | sed 's#AS##g' | xargs -I {} grep -Ei ' {}$' table.txt | grepaddr -cidr4)) | tee rangz.txt | tee asnriched.json