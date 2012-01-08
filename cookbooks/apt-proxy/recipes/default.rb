#
# Cookbook Name:: apt-proxy
# Recipe:: default
#
# Copyright 2012, Letou, Inc
#
# All rights reserved - Do Not Redistribute
#

package "apt-proxy"

service "apt-proxy" do
  service_name "apt-proxy"
  restart_command "restart apt-proxy"
  stop_command "stop apt-proxy"
  start_command "start apt-proxy"
  supports :status => true, :restart => true, :reload => true
  action :nothing
end

directory "#{node['apt-proxy']['cache_dir']}" do
  owner "aptproxy"
  group "root"
  mode 0755
  recursive true
end

template "/etc/apt-proxy/apt-proxy.conf" do
  source "apt-proxy.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, resources(:service => "apt-proxy"), :immediately
end
