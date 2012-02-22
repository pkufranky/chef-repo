#!/bin/sh

node=$1
knife node run_list add $node "$2"
