name "webdev"
description "web dev"
run_list(
	'role[webapi]',
	'role[redis]',
	'recipe[mongodb::10gen_repo]'
)
