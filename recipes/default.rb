#
# Cookbook Name:: sequel
# Recipe:: default
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#

chef_gem "sequel" do
  version node[:sequel][:version]
end
