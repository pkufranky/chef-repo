# Cookbook Name:: analytics
# Recipe:: default

include_recipe "python"
%w{pymongo}.each do |pip|
	python_pip pip do
		action :install
	end
end
