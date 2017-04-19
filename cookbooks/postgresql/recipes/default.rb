#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'postgresql-server' do
	notifies :run, 'execute[init-postgres]'
end

execute 'init-postgres' do
	command 'postgresql-setup initdb'
	action :nothing
end


service 'postgresql' do
	action [:enable, :start]
end
