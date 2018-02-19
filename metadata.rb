name 'etherpad'
maintainer 'mburns'
maintainer_email 'michael@mirwin.net'
license 'Apache-2.0'
description 'Installs etherpad or etherpad-lite'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.1'
issues_url 'https://github.com/mburns/chef-etherpad/issues'
source_url 'https://github.com/mburns/chef-etherpad'
chef_version '>= 12' if respond_to?(:chef_version)
depends 'nodejs'
supports 'ubuntu'
supports 'centos'
