#
# Cookbook:: postresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postresql-server' do
	notifies :run, 'execute[postresql-init]'
end

execute 'postresql-init' do
	command 'postresql-setup initdb'
	action :nothing
end

service 'postresql' do
	action [:enable, :start]
end
