docker network create --driver overlay frontend
docker network create --driver overlay backend
docker service create --detach --replicas 2 --network frontend --publish 80:80 --name vote dockersamples/examplevotingapp_vote:before
docker service create --detach --replicas 1 --network frontend --name redis redis:3.2 
docker service create --detach --replicas 1 --network frontend --network backend --name worker dockersamples/examplevotingapp_worker
docker service create --detach --replicas 1 --network backend --name db --mount type=volume,source=db-data,target=/var/lib/postgresql/data postgres:9.4
docker service create --detach --replicas 1 --network backend --name result --publish 5001:80 dockersamples/examplevotingapp_result:before
