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

## setup

1. Install `nrich`

Grab the [latest release](https://gitlab.com/shodan-public/nrich/-/releases) for your operating system. For example, to install the ``nrich`` command in Ubuntu:

```shell
$ wget https://gitlab.com/api/v4/projects/33695681/packages/generic/nrich/latest/nrich_latest_amd64.deb
$ sudo dpkg -i nrich_latest_amd64.deb
```

For MacOS, install from tap repository with **homebrew**
```shell
$ brew tap shodan-public/homebrew-nrich https://gitlab.com/shodan-public/homebrew-nrich
$ brew install nrich
```

2. run `sh setup.sh`

#### setup.sh requirments

I made a `setup.sh` file that *downloads* `table.txt` and `asns.csv` from bgp.tools using `wget` and 
*installs* `mapcidr` which I used to turn ASNs into CIDR4 netblocks into IPV4 lists and `grepaddr` to parse out CIDR4 and IPV4 text as typing `grepaddr -IPV4` is a bit less typing than `grep -Ei '^regex\.for\.IP\.addresses$'` when it already was installed. 

`mapcidr` install requires `go`

`grepaddr` install requires `git`and `python`

3. `chmod +x asn2nriched.sh`

## Usage
Giveth string query and ye shall be blessed with enriched ip addresses

`./asn2nriched.sh Saskpower`

## TODO
- add manual regex for cidr4 and ipv4 to make grepaddr optional
- add cidr2iplist step with builtin unix binaries to make mapcidr optional
- HACKTHEPLANET
