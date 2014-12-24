require 'serverspec'

set :backend, :exec

describe command('/opt/chef/embedded/bin/gem list mysql | grep mysql') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match("mysql (2.9.1)\n") }
end
