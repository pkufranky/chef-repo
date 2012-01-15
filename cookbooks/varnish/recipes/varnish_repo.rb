# Sets up the repositories for latest stable packages:

case node['platform']
when "debian", "ubuntu"
  # Adds the repo: https://www.varnish-cache.org/installation/ubuntu 
  execute "apt-get update" do
    action :nothing
  end

  apt_repository "varnish" do
    uri "http://repo.varnish-cache.org/ubuntu/"
    distribution "lucid"
    components ["varnish-3.0"]
    key "http://repo.varnish-cache.org/debian/GPG-key.txt"
    action :add
    notifies :run, "execute[apt-get update]", :immediately
  end

  package "varnish"

  template "#{node[:varnish][:dir]}/default.vcl" do
    source "default.vcl.erb"
    owner "root"
    group "root"
    mode 0644
  end
  
  template "#{node[:varnish][:default]}" do
    source "ubuntu-default.erb"
    owner "root"
    group "root"
    mode 0644
  end

  directory "#{node[:varnish][:storage_dir]}/#{node[:varnish][:instance]}" do
    mode 0755
	owner "varnish"
	group "varnish"
	recursive true
    action :create
  end
else
    Chef::Log.warn("Adding the #{node['platform']} varnish repository is not yet not supported by this cookbook")
end

