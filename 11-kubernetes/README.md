# Connect to Kubernetes MKE Cluster from CLI

## Install kubectl client CLI 

```
wget https://raw.githubusercontent.com/lerndevops/labs/master/scripts/installKubectl.sh -P /tmp 
sudo bash /tmp/installKubectl.sh
```

## Download Client Bundle from MKE Manager Node 

```
sudo apt-get install -y jq 
sudo apt-get install -y unzip
```
```
#AUTHTOKEN=$(curl -sk -d '{"username":"<username>","password":"<pass>"}' https://<mke-ip>/auth/login | jq -r .auth_token)
AUTHTOKEN=$(curl -sk -d '{"username":"admin","password":"admin@1234"}' https://10.142.0.5/auth/login | jq -r .auth_token)

#curl -k -H "Authorization: Bearer $AUTHTOKEN" https://<mke-ip>/api/clientbundle -o client-bundle.zip
curl -k -H "Authorization: Bearer $AUTHTOKEN" https://10.142.0.5/api/clientbundle -o $HOME/client-bundle.zip
```

## Configure the Client Bundle 
```
unzip $HOME/client-bundle.zip -d $HOME/client-bundle
cd client-bundle && eval "$(<env.sh)"
```
## For Kuberentes Topics Refer below
### https://github.com/lerndevops/educka
