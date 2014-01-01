#
# Cookbook Name:: jently
# Recipe:: default
#
# Copyright 2013, Paydici
#
# Licensed under the MIT license
#

include_recipe 'git'

server_dir = node['jently']['install_dir']

user 'jently' do
  home server_dir
end

directory server_dir do
  recursive true
  owner 'jently'
  group 'jently'
end

git server_dir do
  repository node['jently']['repo']
  reference node['jently']['revision']
  user 'jently'
  group 'jently'
  action :sync
end

execute 'Bundle install application dependencies' do
  cwd server_dir
  command 'bundle install'
end

template "#{server_dir}/config/config.yaml.erb" do
  source 'config/sample-config.yaml.erb'
  owner 'jently'
  group 'jently'
  variables(
    github: node['jently']['github'],
    jenkins: node['jently']['jenkins'],
  )
end

template '/etc/init/jently.conf' do
  source 'upstart/jently.conf.erb'
  variables(
    server_dir: server_dir
  )
end

service 'jently' do
  provider Chef::Provider::Service::Upstart
  action [:enable, :start]
end
