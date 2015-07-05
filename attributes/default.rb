#
# Cookbook Name:: etherpad
# Attribute:: default
#

case node['platform_family']
when 'debian'
  default['etherpad']['packages'] = %w(gzip git-core curl python libssl-dev pkg-config build-essential)
when 'rhel'
  default['etherpad']['packages'] = %w(gzip git-core curl python openssl-devel)
end

default['etherpad']['version'] = '1.5.6'
default['etherpad']['user'] = 'etherpad-user'
default['etherpad']['user_home'] = '/etherpad'
default['etherpad']['port'] = 9001
