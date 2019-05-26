#!/usr/bin/env bash

export AWS_ACCESS_KEY_ID=$(cat ../credentials.csv | tail -1 | cut -d "," -f 3)
export AWS_SECRET_ACCESS_KEY=$(cat ../credentials.csv | tail -1 | cut -d "," -f 4)
export AWS_DEFAULT_REGION="eu-west-1"
export KUBECONFIG=~/.kube/eks.config

echo AWS_ACCESS_KEY_ID = $AWS_ACCESS_KEY_ID
echo AWS_SECRET_ACCESS_KEY = $AWS_SECRET_ACCESS_KEY
echo AWS_DEFAULT_REGION = $AWS_DEFAULT_REGION
echo KUBECONFIG = $KUBECONFIG


eksctl create nodegroup \
--cluster my-eks-cluster2 \
--version auto \
--name standard-workers \
--node-type t3.medium \
--node-ami ami-08716b70cac884aaa \
--nodes 1 \
--nodes-min 1 \
--nodes-max 1