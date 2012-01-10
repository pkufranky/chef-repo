name "redis"
description "redis server"
run_list(
  'recipe[redis::install_from_release]',
  'recipe[redis::server]',
  'recipe[redis::default]'
)
override_attributes(
  :redis => {
    :install_url => "http://redis.googlecode.com/files/redis-2.4.5.tar.gz",
    :version => "2.4.5",
    :data_dir => "/datafast/redis"
  }
)
