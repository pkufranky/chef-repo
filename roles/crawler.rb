name "crawler"
description "crawler role"
run_list(
  'recipe[crawler]',
  'recipe[user::data_bag]'
)
override_attributes(
  :users => ["himalayas"],
  :user => {:ssh_keygen => false}
)

