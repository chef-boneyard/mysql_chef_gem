name 'mysql_chef_gem'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Provides the mysql_chef_gem resource'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.0.0'

%w(ubuntu debian redhat centos scientific oracle amazon).each do |os|
  supports os
end

depends 'build-essential'
depends 'mysql'
depends 'mariadb'

source_url 'https://github.com/chef-cookbooks/mysql_chef_gem' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/mysql_chef_gem/issues' if respond_to?(:issues_url)
