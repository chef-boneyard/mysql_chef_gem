# comments!

mysql_chef_gem 'default' do
  client_version node['mysql_chef_gem']['client_version'] if node['mysql_chef_gem']
  provider Chef::Provider::MysqlChefGem::Mysql if node['mysql_chef_gem']['provider'] == 'mysql'
  provider Chef::Provider::MysqlChefGem::Mariadb if node['mysql_chef_gem']['provider'] == 'mariadb'
  action :install
end
