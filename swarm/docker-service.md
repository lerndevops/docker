## what is docker service ? 

> **A service is used to run an application on a Docker Swarm. A service specifies a set of one or more replica tasks. These tasks will be distributed automatically acorss the nodes in the cluster and executed as containers.**

```
## create a service in docker swarm

   docker service create --name pyapp --mode replicated --replicas 2 -p 9080:8080 lerndevops/samples:pyapp-v1
   docker service create --name test --mode replicated --replicas 5 -p 9099:80 nginx:atest 
```
```
## list the services & check the containers behind 

   docker service ls
   docker service ps pyapp
```
```
## inspect a server 

   docker service inspect pyapp
   docker service inspect --pretty pyapp
```
```
## Scale a Service 

docker service scale pyapp=6 # scale up
docker service scale pyapp=4 # scale down 
 
OR 
docker service update --replicas 6 pyapp # scale up
docker service update --replicas 2 pyapp # scale down

```

```
## check the service logs 

  docker service logs pyapp
```

```
Update a Service 

update service with new image ( rolling update )
   docker service update --image=lerndevops/samples:pyapp-v2 pyapp

updating service with new network
   docker service update --network-add myoverlay <servicename/id>
	
updating/adding service port after creating a service 
   docker service update --publish-add 9080:80 <servicename/id>
	
updating/adding mount on service after creating service 
   docker service update --mount-add source=abc,target=/tmp <servicename/id>
   docker service update --mount-add type=volume,source=abc,target=/tmp <servicename/id>
```
```
## remove a Service 

   docker service rm test 
```
