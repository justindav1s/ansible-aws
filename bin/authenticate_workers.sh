#!/usr/bin/env bash

echo KUBECONFIG = $KUBECONFIG

# substiute nodegroup arn into ../kube/aws-auth-cm.yaml
# are produced by cloudformation process, arn looks like this
# arn:aws:iam::************:role/eks-worker-nodes1-1-NodeInstanceRole-XGUWNN6Y2E3

kubectl apply -f ../kube/aws-auth-cm.yaml