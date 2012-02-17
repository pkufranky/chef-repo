name "sysadmins"
description "sys administrators"
run_list(
  'recipe[user::data_bag]'
)
override_attributes(
  :users => ["wplong"],
  :user => {:ssh_keygen => false}
)

