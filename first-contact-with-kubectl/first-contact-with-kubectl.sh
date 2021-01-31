#!/bin/bash

source ../common.sh

# kubectl is the tool to communicate with kubernetes
# rich cli tool around kubernetes api
# ~/.kube/config file exists :
#   * The kubernetes API address
#   * The path to our tls certificates used to authenticate
# can use --kubeconfig flag to pass a config file
# or directly --server, --user, etc


print "Look at our Node resources with kubectl get"
print "Look at the composition of our cluster: "
### Equivalent to node are no, node , nodes
kubectl get node

print "Get node with yaml file expanded"
kubectl get node -o yaml

print "show the capacity of all our nodes as a stream of JSON objects"
kubectl get nodes -o json | \
    jq ".items[] | { name: .metadata.name } + .status.capacity"