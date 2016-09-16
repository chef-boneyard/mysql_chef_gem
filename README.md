# mysql Chef Gem Installer Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/mysql_chef_gem.svg?branch=master)](http://travis-ci.org/chef-cookbooks/mysql_chef_gem) [![Cookbook Version](https://img.shields.io/cookbook/v/mysql_chef_gem.svg)](https://supermarket.chef.io/cookbooks/mysql_chef_gem)

mysql_chef_gem is a library cookbook that provides an LWRP for use in recipes. It provides a wrapper around `chef_gem` called `mysql_chef_gem` that eases the installation process, collecting the prerequisites and side-stepping the compilation phase arms race.

## Scope

This cookbook is concerned with the installation of the `mysql` Rubygem into Chef's gem path. Installation into other Ruby environments, or installation of related gems such as `mysql2` are outside the scope of this cookbook. For installing the mysql2 gem see <https://supermarket.chef.io/cookbooks/mysql2_chef_gem>

## Requirements

### Platforms

The following platforms have been tested with Test Kitchen and are known to work.

```
|--------------------------------------+-----+-----+-----+-----+-----+---------|
|                                      | 5.0 | 5.1 | 5.5 | 5.6 | 5.7 | MariaDB |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / centos-5       |  X  |     |     |  X  |  X  |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / centos-6       |     |  X  |  X  |  X  |  X  |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / centos-7       |     |     |  X  |  X  |  X  |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / debian-7       |     |     |  X  |     |     |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / debian-8       |     |     |  X  |     |     |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / fedora-22      |     |     |     |  X  |  X  |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / fedora-23      |     |     |     |  X  |  X  |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / ubuntu-12.04   |     |     |  X  |     |     |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mysql / ubuntu-14.04   |     |     |  X  |  X  |     |         |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mariadb / fedora-22    |     |     |     |     |     |    X    |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mariadb / fedora-23    |     |     |     |     |     |    X    |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
| MysqlChefGem::Mariadb / ubuntu-14.04 |     |     |     |     |     |    X    |
|--------------------------------------+-----+-----+-----+-----+-----+---------|
```

### Chef

- Chef 12.1+

### Cookbooks

- build-essential
- mysql 6.0+
- mariadb

## Usage

Place a dependency on the mysql_chef_gem cookbook in your cookbook's metadata.rb

```ruby
depends 'mysql_chef_gem', '~> 3.0'
```

Then, in a recipe:

```ruby
mysql_chef_gem 'default' do
  action :install
end
```

## Resources Overview

### mysql_chef_gem

The `mysql_chef_gem` resource the build dependencies and installation of the `mysql` rubygem into Chef's Ruby environment

#### Example

```ruby
mysql_chef_gem 'default' do
  gem_version '2.9.1'
  action :install
end
```

#### Parameters

- `gem_version` - The version of the `mysql` Rubygem to install into the Chef environment. Defaults to '2.9.1'
- `connectors_url` - URL of a tarball containing pre-compiled MySQL connector libraries
- `connectors_checksum` - sha256sum of the `connectors_url` tarball

#### Actions

- `:install` - Build and install the gem into the Chef environment
- `:remove` - Delete the gem from the Chef environment

#### Providers

Chef selects a default provider based on platform and version, but you can specify one if your platform support it.

```ruby
mysql_chef_gem 'default' do
  provider Chef::Provider::mysqlChefGem::Mariadb
  Action :install
end
```

## License & Authors

**Author:** Cookbook Engineering Team ([cookbooks@chef.io](mailto:cookbooks@chef.io))

**Copyright:** 2014-2016, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
