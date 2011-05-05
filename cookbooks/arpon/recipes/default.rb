#
# Cookbook Name:: arpon
# Recipe:: default
#
# Copyright 2011, Letou, Inc.
#

package "arpon"

template "/etc/default/arpon" do
  source "arpon.erb"
  mode 0644
  notifies :restart, "service[arpon]"
end

service "arpon" do
	action [:enable, :start]
end
