## k8s-docker-cleanup

Cleans up exited containers, dangling images/volumes and unused images on each k8s nodes, running as a DaemonSet.



### Deployment

``` bash
kubectl apply -f k8s-docker-clean.yml
```



### Environment Variables
you can set `DOCKER_CLEAN_INTERVAL` to modify the interval when it cleans up; defaults to 12 hours (43200s).



### Notes
 - Based on docker server version on k8s nodes, custom docker images tag version on images (17, 18, 19, 20), or just use **latest** for lastest version of docker
 - Based on k8s version custom Daemonset apiVersion or just use default **apps/v1**
