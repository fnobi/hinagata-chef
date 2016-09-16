#
# Cookbook Name:: nginx
# Recipe:: default
#

package "nginx" do
  action :install
end

service "nginx" do
  action [ :enable, :start ]
  supports status: true, restart: true, reload: true
end

template "nginx.conf" do
  path "/etc/nginx/nginx.conf"
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode 0644
end

directory '/etc/nginx/vhost.d' do
  owner 'root'
  group 'root'
  mode 0755
end
