name "redis"
description "redis server"
run_list(
  'recipe[redis2::default_instance]'
)
override_attributes(
  :redis2 => {
    :install_from => "source",
    :source_url => "http://redis.googlecode.com/files/redis-2.4.5.tar.gz",
    :instances => {
      :default => {
        :data_dir => "/datafast/redis",
        :vm => { :swap_file => "/datafast/redis/swap" }
      }
    }
  }
)
