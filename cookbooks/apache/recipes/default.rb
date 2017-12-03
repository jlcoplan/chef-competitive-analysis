#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
	package  = "httpd"

elsif node['platform_family'] == "debian"
	package = "apache2"

end

package 'httpd' do
        package_name package

package 'httpd' do
        package_name 'httpd'
        action install

end


service 'httpd' do
        service_name 'httpd'
        action [:start, :enable]
   end

end
