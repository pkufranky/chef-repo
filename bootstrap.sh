#!/bin/sh

die() {
	echo "$@"
	exit 2
}
usage() {
	die "$USAGE"
}

USAGE="USAGE:
	$0 ip node
EXAMPLE:
	$0 10.6.0.1 gate
"

ip=$1
node=$2
user=${3:-ping}

test -z "$2" && usage


echo knife bootstrap $ip -N $node -r 'recipe[chef-client],role[base]' -x $user --sudo
knife bootstrap $ip -N $node -r 'recipe[chef-client],role[base]' -x $user --sudo

#knife bootstrap dog -r 'recipe[chef-client]' -x root
#knife bootstrap web -r 'recipe[chef-client]' -x ping --sudo
#knife bootstrap web -r 'recipe[chef-client]' -x ping --sudo -P 123456


