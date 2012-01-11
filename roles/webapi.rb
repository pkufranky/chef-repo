name "webapi"
description "webapi role"
run_list(
  'recipe[mysql::client]',
  'recipe[application]',
  'recipe[webapi]',
  'recipe[user::data_bag]'
)
override_attributes(
  :users => ["www-data"],
  :user => {:ssh_keygen => false}
)
