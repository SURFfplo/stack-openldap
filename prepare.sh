#!/bin/bash

# clean mounts
rm -rf /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/conf/*
rm -rf /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/tmp/*

# create nfs mount
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/conf
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/tmp
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/data

# write data
cp -a provision /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/tmp
