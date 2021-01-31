#!/bin/bash

source ../common.sh

# We can list available types by running kubectl-api-resources
print "kubectl api-resources"
kubectl api-resources

print "We can view the definition for a resource type with : kubectl explain type"
kubectl explain node.spec

print "Or get the list of all fields and sub-fields"
kubectl explain node --recursive