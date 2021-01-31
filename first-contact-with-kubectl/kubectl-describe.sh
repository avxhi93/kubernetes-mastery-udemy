#!/bin/bash

source ../common.sh


# kubectl describe needs a resource type and optionally a resource name
# kubectl describe will retreive some extra information about the resource
# kubectl describe node/<node>
# kubectl describe node <node>
print "Describing docker-desktop"
kubectl describe node/docker-desktop