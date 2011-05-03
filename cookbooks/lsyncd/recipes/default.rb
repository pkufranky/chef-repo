#
# Cookbook Name:: lsyncd
# Recipe:: default
#
# Copyright 2011, Letou, Inc.
#


package "lua5.1"
package "liblua5.1-0-dev"

unless FileTest.exists?("/usr/local/bin/lsyncd")
	remote_file "lsyncd" do
		path "/tmp/lsyncd.tar.gz"
		source "http://lsyncd.googlecode.com/files/lsyncd-#{node[:lsyncd][:version]}.tar.gz"
	end

	bash "install-lsyncd" do
		user "root"
		cwd "/tmp"
		code <<-EOH
		rm -rf lsyncd-#{node[:lsyncd][:version]}
		tar xzvf lsyncd.tar.gz &&
		cd lsyncd-#{node[:lsyncd][:version]} &&
		./configure
		make
		make install
		EOH
	end
end
