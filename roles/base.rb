name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[sysadmin]",
  "recipe[users::sysadmins]",
  "recipe[sudo]",
  "recipe[apt]",
  "recipe[git]",
  "recipe[build-essential]",
  "recipe[lrzsz]",
  "recipe[exuberant-ctags]",
  "recipe[ssh_known_hosts]"
)
override_attributes(
  :authorization => {
    :sudo => {
      :groups => ["admin", "sysadmin"],
      :users => ["ubuntu", "ping"],
      :passwordless => false
    }
  }
)
