#!/bin/sh

# create a new default ssh key
ssh-keygen -b 4096 -t rsa -f $HOME/.ssh/id_rsa -q -N "" 0>&-
