#
# Cookbook Name:: redis-client
# Recipe:: predis
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe "php"
#
#nrkc = php_pear_channel 'pear.nrk.io' do
#  action :discover
#end
#php_pear 'Predis' do
#	channel nrkc.channel_name
#	action :install
#end
#
unless File.exists?("/usr/share/php/Predis/Autoloader.php")
	remote_file "predis" do
		path "/tmp/predis.tar.gz"
		source "https://github.com/nrk/predis/tarball/v#{node[:predis][:version]}"
	end

	bash "install-predis" do
		user "root"
		cwd "/tmp"
		code <<-EOH
		rm -rf nrk-predis-* &&
		tar xzvf predis.tar.gz &&
		mv nrk-predis-*/lib/Predis /usr/share/php/ &&
		rm -rf nrk-predis-*
		EOH
	end
end
