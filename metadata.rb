name 'mysql_chef_gem'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Provides the mysql_chef_gem resource'

version '2.0.2'

supports 'amazon'
supports 'redhat'
supports 'centos'
supports 'scientific'
supports 'fedora'
supports 'debian'
supports 'ubuntu'

depends 'build-essential'
depends 'mysql'
depends 'mariadb'
