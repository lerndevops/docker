### create / delete services with compose 
```
docker-compose -f compose.yml up -d  # create single container for each service 
docker-compose -f compose.yml down # delete all cont created 
```

### scale up / down containers for each service 
```
docker-compose -f compose.yml up --scale web=1 --scale app=2 --scale db=1 -d 
docker-compose -f compose.yml up --scale web=3 --scale app=5 --scale db=2 -d
```
