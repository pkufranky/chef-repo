name "webapp"
description "apache sites"
run_list(
  'recipe[apache2]',
  'recipe[apache2::mod_ssl]',
  'recipe[apache2::mod_proxy]',
  'recipe[apache2::mod_proxy_http]',
  'recipe[webapi::app]'
)

override_attributes(
	:apache => {
		:listen_ports => ["80", "443"],
		:prefork => {
			:startservers => 50,
			:minspareservers => 25,
			:maxspareservers => 75,
			:maxclients => 500,
			:serverlimit => 800
		}
	}
)
