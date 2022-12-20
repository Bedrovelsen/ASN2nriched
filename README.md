```

    |      .|'''.|  '|.   '|'                        ||          '||                   '||  
   |||     ||..  '   |'|   |   /\  .. ...   ... ..  ...    ....   || ..     ....     .. ||  
  |  ||     ''|||.   | '|. |  (  )  ||  ||   ||' ''  ||  .|   ''  ||' ||  .|...||  .'  '||  
 .''''|.  .     '||  |   |||    //  ||  ||   ||      ||  ||       ||  ||  ||       |.   ||  
.|.  .||. |'....|'  .|.   '|   //  .||. ||. .||.    .||.  '|...' .||. ||.  '|...'  '|..'||. 
                              /(                                                            
                              {___                                                          

```

> Type an organization name or AS name text query get netblocks of nriched IP address json out

---

## setup.sh requirments

I made a `setup.sh` file that *downloads* `table.txt` and `asns.csv` from bgp.tools using `wget` and 
*installs* `mapcidr` which I used to turn ASNs into CIDR4 netblocks into IPV4 lists and `grepaddr` to parse out CIDR4 and IPV4 text as typing `grepaddr -IPV4` is a bit less typing than `grep -Ei '^regex\.for\.IP\.addresses$'` when it already was installed. 

`mapcidr` install requires `go`

`grepaddr` install requires `git`and `python`

`nrich` install requires a nrich binary or `rust`
---

## Usage
Giveth string query and ye shall be blessed with enriched ip addresses
