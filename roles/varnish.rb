name "varnish"
description "varnish"
run_list(
  'recipe[apache2]',
  'recipe[apache2::mod_ssl]',
  'recipe[apache2::mod_proxy]',
  'recipe[apache2::mod_proxy_http]',
  'recipe[varnish::varnish_repo]'
)

override_attributes(
	:apache => {
		:listen_ports => ["8080", "443"],
	},
	:varnish => {
		:port => "80",
		:storage_dir => "/datafast/varnish",
		:instance => "default",
	}
)
