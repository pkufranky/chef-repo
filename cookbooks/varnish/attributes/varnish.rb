case platform
when "debian","ubuntu"
  set[:varnish][:dir]     = "/etc/varnish"
  set[:varnish][:default] = "/etc/default/varnish"
  set[:varnish][:port] = "6081"
  set[:varnish][:storage_dir] = "/var/lib/varnish"
end
