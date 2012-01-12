#
# Cookbook Name:: webapi
# Recipe:: app
#

web_app "service.wowpad.cn" do
	server_name "service.wowpad.cn"
	docroot "/srv/letou/api/api-service"
end
web_app "api.wowpad.cn" do
	server_name "api.wowpad.cn"
	docroot "/srv/letou/api/api-facade"
end
web_app "s.wowpad.cn" do
	server_name "s.wowpad.cn"
	docroot "/srv/letou/searchapi_wandoujia"
end
web_app "api-s.wowpad.cn" do
	server_name "api-s.wowpad.cn"
	docroot "/srv/letou/api/api-search"
end
web_app "b-s.wowpad.cn" do
	server_name "b-s.wowpad.cn"
	docroot "/srv/letou/api/backend-search"
end
web_app "b-o.wowpad.cn" do
	server_name "b-o.wowpad.cn"
	docroot "/srv/letou/api/backend-operation"
end
web_app "a.wowpad.cn" do
	server_name "a.wowpad.cn"
	docroot "/srv/letou/api/analytics"
end
