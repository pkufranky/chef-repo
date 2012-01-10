#
# Cookbook Name:: webapi
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "redis-client::predis"
template "/etc/php5/conf.d/mongo.ini" do
	source "mongo.ini.erb"
	owner "root"
	group "root"
	mode "0644"
	action :create
end
