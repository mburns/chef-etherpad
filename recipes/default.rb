#
# Cookbook Name:: etherpad
# Recipe:: default
#
# Copyright 2013, computerlyrik
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node['etherpad']['packages'].each do |p|
  package p
end

include_recipe 'nodejs'

user node['etherpad']['user'] do
  home node['etherpad']['user_home']
  manage_home true
  system true
end

ark 'etherpad-lite' do
  url "https://github.com/ether/etherpad-lite/archive/#{node['etherpad']['version']}.tar.gz"
  path "#{node['etherpad']['user_home']}/etherpad-lite"
  owner node['etherpad']['user']
  action :put
end

template "#{node['etherpad']['user_home']}/etherpad-lite/settings.json" do
  owner node['etherpad']['user']
end

service 'etherpad-lite' do
  start_command "#{node['etherpad']['user_home']}/etherpad-lite/bin/run.sh"
  action :start
  subscribes :restart, "#{node['etherpad']['user_home']}/etherpad-lite"
end
