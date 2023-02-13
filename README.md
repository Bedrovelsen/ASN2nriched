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

2. Get pre-requirments by following Automated or Manual instructions below.```

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

2. Get pre-requirments by following Automated or Manual instructions below.
 
**Automated:** run `sh setup.sh`

#### setup.sh requirments

I made a `setup.sh` file that *downloads* `table.txt` and `asns.csv` from bgp.tools using `wget` and 
*installs* `mapcidr` which I used to turn ASNs into CIDR4 netblocks into IPV4 lists and `grepaddr` to parse out CIDR4 and IPV4 text as typing `grepaddr -IPV4` is a bit less typing than `grep -Ei '^regex\.for\.IP\.addresses$'` when it already was installed. 

`mapcidr` install requires `go`

`grepaddr` install requires `git`and `python`

*OR*

**Manual:** manually download [table.txt](https://bgp.tools/table.txt) & [asns.csv](https://bgp.tools/asns.csv) from bgp.tools and install [mapcidr](https://github.com/projectdiscovery/mapcidr) & [grepaddr](https://github.com/Zarcolio/grepaddr)

3. `chmod +x asn2nriched.sh`

## Usage
Giveth string query and ye shall be blessed with enriched ip addresses

`./asn2nriched.sh Saskpower`

If not wanting automatic nrich'ing you can get the CIDRs on their own using

`./getcidrz.sh Saskpower`

### Known issues

nrich has no built in rate limiting on it's functions making requests to the internetdb api so a a query that results in a large ip address list or running the tool to quickly or a combination of the two may result in empty output / json file output results that are not due to a non entry on internetdb api responses. Project discoveries uncover tool has built in internetdb look up ability just like nrich but has a built in 1 second request rate limit that can be adjusted as needed, using uncover instead of nrich in future is one fix. Manually splitting up the ip list into small chunks with a pause between each nrich run is another solution.   

## TODO
- change out using nrich for using uncover due to built in request limiting to prevent to many request status codes in responses on internetdb.com requests caused using nrich on large amounts of ip addresses in one run 
- add manual regex for cidr4 and ipv4 to make grepaddr optional
- add cidr2iplist step with builtin unix binaries to make mapcidr optional
- HACKTHEPLANET
