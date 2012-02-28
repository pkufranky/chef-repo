#
# Cookbook Name:: webapi
# Recipe:: app
#

web_app "service.wowpad.cn" do
	server_name "service.wowpad.cn"
	server_aliases ["stage.service.wowpad.cn"]
	docroot "/srv/letou/api/api-service"
end
web_app "api.wowpad.cn" do
	server_name "api.wowpad.cn"
	server_aliases ["stage.api.wowpad.cn"]
	docroot "/srv/letou/api/api-facade"
end
web_app "360.wowpad.cn" do
	server_name "360.wowpad.cn"
	server_aliases ["stage.360.wowpad.cn"]
	docroot "/srv/letou/searchapi_360/search"
end
web_app "s.wowpad.cn" do
	server_name "s.wowpad.cn"
	server_aliases ["stage.s.wowpad.cn"]
	docroot "/srv/letou/searchapi_wandoujia/search"
end
web_app "m.ee168.cn" do
	server_name "m.ee168.cn"
	server_aliases ["stage.m.ee168.cn"]
	docroot "/srv/letou/searchapi/search"
end
web_app "api-s.wowpad.cn" do
	server_name "api-s.wowpad.cn"
	server_aliases ["stage.api-s.wowpad.cn"]
	docroot "/srv/letou/api/api-search"
end
web_app "b-s.wowpad.cn" do
	server_name "b-s.wowpad.cn"
	server_aliases ["stage.b-s.wowpad.cn"]
	docroot "/srv/letou/api/backend-search"
end
web_app "b-o.wowpad.cn" do
	server_name "b-o.wowpad.cn"
	server_aliases ["stage.b-o.wowpad.cn"]
	docroot "/srv/letou/api/backend-operation"
end
web_app "a.wowpad.cn" do
	server_name "a.wowpad.cn"
	server_aliases ["stage.a.wowpad.cn"]
	docroot "/srv/letou/api/analytics"
end
