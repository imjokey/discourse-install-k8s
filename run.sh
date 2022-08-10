#! /bin/sh

# clone discourse_docker project
git clone https://github.com/discourse/discourse_docker.git

# build container image
cp web_only.yml discourse_docker/containers/
cd discourse_docker  && ./launcher bootstrap web_only 
cd -

# containerd runtime import 
docker save local_discourse/web_only > web_only.tar
ctr -n=k8s.io images import web_only.tar 

# rm -f web_only.tar

# deploy discourse
kubectl apply -f discourse.yaml -f ingress.yaml  
