name "hongyun"
description "hongyun role"
run_list(
  'role[crawler]',
  'recipe[application]',
  'recipe[user::data_bag]',
  'recipe[mysql::server]',
  'recipe[rabbitmq]',
  'recipe[rabbitmq-management]'
)
override_attributes(
  :users => ["himalayas"],
  :user => {:ssh_keygen => false},
  :mysql => {:server_root_password => 'letoueee168'}
)
