#
# Cookbook:: nginx-helloworld
# Recipe:: default
#
# Copyright:: 2018, Zander Hamidi, All Rights Reserved.

docker_service 'default' do
	action [:create, :start]

docker_image 'ngnix' do
	action :pull
end

docker_container 'nginx-helloworld' do
	repo 'nginx'
	port '80:80'
	#volumes "/tmp/nginx/default.conf:/etc/nginx/conf.d/default.conf"
	#volumes "/tmp/html:/usr/share/nginx/html"
end

#template '/tmp/nginx/default.conf' do
#	source 'default.conf.erb'
#	action :create
#end

#template '/tmp/html/index.html' do
#	source 'index.html.erb'
#	action :create
#end
