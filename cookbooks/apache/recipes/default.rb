#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd' do
        package_name 'httpd'
        action install

end


service 'httpd' do
        service_name 'httpd'
        action [:start, :enable]

end

