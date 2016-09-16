#
# Cookbook Name:: common-packages
# Recipe:: default
#

if node[:platform] == 'centos'
  if node[:platform_version].to_i == 6
    package 'epel-release'
  else
    package 'python-hashlib'
    package 'epel-release' do
      action :install
      version '5-4'
    end
  end
end
