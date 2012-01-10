#
# Cookbook Name:: redis-client
# Recipe:: predis
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "php"

nrkc = php_pear_channel 'pear.nrk.io' do
  action :discover
end
php_pear 'Predis' do
	channel nrkc.channel_name
	action :install
end
