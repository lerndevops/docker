# customize the docker daemon process 

```
{
  "data-root": "/new_dir_structure/docker"
}

```
```
# Enable debugging of docker daemon 

vi /etc/docker/daemon.json

 {
      "debug": true
 }
```
```
## configure the logging driver / log size

sudo vi /etc/docker/daemon.json
  {
       "log-driver": "syslog"
  }

  OR

  {
       "log-driver": "json-file",
       "log-opts": {
        "max-size": "15m"
       }
  }
```
```
## configure Storage driver 

sudo vi /etc/docker/daemon.json

  {
  "storage-driver": "devicemapper"
  }
```

```
## configure a default registry 

  {
    "registry-mirrors": ["https://<my-docker-mirror-host>"]
  }
```
```
## secure the docker daemon with TLS / SSL 
  sudo vi /etc/docker/daemon.json

  {
    "tlsverify": true,
    "tlscacert": "/home/certs/ca.pem",
    "tlscert": "/home/certs/server-cert.pem",
    "tlskey": "/home/certs/server-key.pem"
  }
 ```
