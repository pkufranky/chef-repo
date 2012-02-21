name "mongodb2"
description "mongodb role (with replicaset) for another instance in the same host"
run_list(
  'recipe[mongodb::10gen_repo]',
  'recipe[mongodb::replicaset2]'
)
override_attributes(
	:mongodb2 => {
		:logpath => '/var/log/mongodb2',
		:dbpath => '/datafast/mongodb2',
		:port => 27018
	}
)

