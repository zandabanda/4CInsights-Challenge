#
# Cookbook:: nginx-helloworld
# Recipe:: default
#
# Copyright:: 2018, Zander Hamidi, All Rights Reserved.

docker_service 'default' do
	action [:create, :start]
end

docker_image 'nginx' do
	action :pull
end

docker_container 'nginx-helloworld' do
	repo 'nginx'
	port '80:80'
	volumes "/home/docker/default.conf:/etc/nginx/conf.d/default.conf"
	volumes "/home/docker/html:/usr/share/nginx/html"
end

template '/home/docker/default.conf' do
	source 'default.conf.erb'
	#action :create
end

template '/home/docker/html/index.html' do
	source 'index.html.erb'
	#action :create
end


