# serverDeploy

Ubuntu:

```
wget -O - https://raw.githubusercontent.com/RubenHarms/serverDeploy/master/installUbuntu.sh | bash
```

Centos

```
yum install git -y
cd ~/
git clone https://github.com/RubenHarms/serverDeploy.git
cd serverDeploy
./install
```


## MajesticInstance:

Ubuntu 14.04 LTS 64bit

``` 
wget -O - https://raw.githubusercontent.com/RubenHarms/serverDeploy/master/majesticInstance/installScratch | bash
```

CentOS 7

``` 
bash <(wget -O - https://raw.githubusercontent.com/RubenHarms/serverDeploy/master/majesticInstance/installScratchCentOs)
```

## Exim:


CentOS 7

``` 
bash <(wget -O - https://raw.githubusercontent.com/RubenHarms/serverDeploy/master/exim/installCentOsScratch)
```


## EximVmail:


CentOS 7

``` 
bash <(wget -O - https://raw.githubusercontent.com/RubenHarms/serverDeploy/master/eximVmail/installScratchCentOs)
