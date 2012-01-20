name "dataserver"
description "dataserver role"
run_list(
  'recipe[application]',
  'recipe[user::data_bag]'
)
override_attributes(
  :users => ["himalayas"],
  :user => {:ssh_keygen => false}
)
