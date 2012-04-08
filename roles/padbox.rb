name "padbox"
description "padbox role"
run_list(
  'recipe[mysql::client]',
  'recipe[application]',
  'recipe[apache2]',
  'recipe[apache2::mod_php5]',
  'recipe[apache2::mod_rewrite]',
  'recipe[apache2::mod_ssl]',
  'recipe[apache2::mod_proxy]',
  'recipe[apache2::mod_proxy_http]'
)

override_attributes(
	:apache => {
		:listen_ports => ["80", "443"],
		:prefork => {
			:startservers => 50,
			:minspareservers => 25,
			:maxspareservers => 75,
			:maxclients => 300,
			:serverlimit => 600
		}
	}
)
