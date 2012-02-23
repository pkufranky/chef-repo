include_recipe "nodejs"
include_recipe "nodejs::npm"


execute "install-coffee" do
	command "npm install -g coffee-script"
	creates "/usr/bin/coffee"
	action :run
end
