#
# Cookbook Name:: webapi
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node[:kernel][:machine] =~ /x86_64/
	package "ia32-libs"
end
include_recipe "redis-client::predis"
template "/etc/php5/conf.d/mongo.ini" do
	source "mongo.ini.erb"
	owner "root"
	group "root"
	mode "0644"
	action :create
end
