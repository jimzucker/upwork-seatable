# seatable.io docker instructions
https://docs.seatable.io/published/seatable-manual/docker/ce-edition/Deploy%20SeaTable-ce%20with%20Docker.md

# Startup instructions
## To start run 
```start_seatable.io```

This script does the 2 steps required on the seatable.io instructions
```
docker-compose up -d
sleep 60
docker exec -d seatable /shared/seatable/scripts/seatable.sh start
```

## First time instructions
### Create a super user, this is done once
#### Note: it will hang at the end and you have to kill your terminal
docker exec -it seatable /shared/seatable/scripts/seatable.sh superuser  

# Modifications to original seatable.io files
1. changed path for local files form hardcoded /opt/xxx -> $PWD/seatable_home
2. Created start and stop scritps for convience