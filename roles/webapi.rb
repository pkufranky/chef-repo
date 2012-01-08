name "webapi"
description "webapi role"
run_list(
  'recipe[mysql::client]',
  'recipe[application]',
  'recipe[webapi]'
)
