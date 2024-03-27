# k8s-demo

k create deployment webapp --image nginx --replicas 3 --port 80 --dry-run=client -o yaml > deploy.yml
k expose -f deploy.yml --port=80 --protocol=TCP --target-port=80 --type=LoadBalancer --name=webapp --dry-run=client -oyaml > service.yml
k port-forward svc/webapp 3000:80 --address='0.0.0.0'

```
http://<server-ip>:3000
```