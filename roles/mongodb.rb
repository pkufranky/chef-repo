name "mongodb"
description "mongodb role (with replicaset)"
run_list(
  'recipe[mongodb::10gen_repo]',
  'recipe[mongodb::replicaset]'
)
override_attributes(
	:mongodb => {:cluster_name => 'default'}
)

