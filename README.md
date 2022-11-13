# reduce50coron

To compile into a singularity container: 
`sudo singularity build 50coron setup.def > build.log`



## pipeline

to interact with the built container: `singularity shell 50coron `

```
┌──────────────────────────────┐      ┌────────────────────────────────-┐
│Download all STIS `50coron`   │      │sort according to mask position: │
│data                          ├─────>┤                                 │
│                              │      │`sort_50coron_observations.ipynb`│
└──────────────────────────────┘      │                                 │
                                      └────────────────────────────────-┘
                                      
 
### Downloading data:
 
 ```
go to https://archive.stsci.edu/hst/search.php
 
request all data with 50CORON as the aperture for staging

to download data:

    import ftplib # https://archive.stsci.edu/ftp.html
    ftps = ftplib.FTP_TLS('archive.stsci.edu')
    ftps.login(user="anonymous", passwd="email")
    ftps.prot_p() # This is a really good idea :)
    ftps.cwd('stage')
    ftps.cwd("/stage/anonymous/anonymous97729") # stagedir is something like 'anonymous/anonyumous12345'

    filenames = ftps.nlst()
    for filename in filenames:
        print("getting " + filename)
        with open(filename, 'wb') as fp: 
            ftps.retrbinary('RETR {}'.format(filename), fp.write)
```