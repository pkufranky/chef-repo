package "python-twisted"
package "python-libxml2"
package "python-sqlalchemy"
package "python-mysqldb"

include_recipe "python"
%w{simplejson}.each do |pip|
	python_pip pip do
		action :install
	end
end
