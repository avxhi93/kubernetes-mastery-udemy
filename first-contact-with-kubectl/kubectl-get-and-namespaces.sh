#!/bin/bash

source ../common.sh

print "kubectl get services"
kubectl get services
kubectl get services

print "list pods on our cluster"
kubectl get pods


# kubectl uses the default namespace
print "kubectl get namespaces"
kubectl get namespaces
kubectl get namespace
kubectl get ns

print "we can see resources in all namespaces with --all-namespaces or with -A"
# etcd is our etcd server
# kube-apiserver is the api server
# kube-controller-manager and kube-scheduler are the control plane components
# coredns provides dns-based service discovery
# kube-proxy is the (per-node) component managing port mappings and such
# <net name> is the optional ( per-node ) component managing the network overlay
kubectl get pods --all-namespaces

print "list only pods in the kube-system namespace other than default"
kubectl get pods --namespace=kube-system
kubectl get pods -n kube-system

print "list the configmaps in the kube-public namespace"
kubectl -n kube-public get configmaps

print "inspect cluster-info"
kubectl -n kube-public get configmap cluster-info -o yaml
