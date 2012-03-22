name "mongodb-replicaset-single-server"
description "setup a mongodb replicaset with 3 instances"
run_list(
  'recipe[mongodb::10gen_repo]',
  'recipe[mongodb::replicaset]',
  'recipe[mongodb::replicaset2]',
  'recipe[mongodb::replicaset3]'
)
override_attributes(
	:mongodb => {
		:cluster_name => 'default',
		:dbpath => '/datafast/mongodb',
	},
	:mongodb2 => {
		:logpath => '/var/log/mongodb2',
		:dbpath => '/datafast/mongodb2',
		:port => 27018
	},
	:mongodb3 => {
		:logpath => '/var/log/mongodb3',
		:dbpath => '/datafast/mongodb3',
		:port => 27019
	}
)
