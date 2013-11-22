#
# Cookbook Name:: sequel
# Resource:: migrate
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#

actions :run
default_action :run

attribute :migrations_path, kind_of: String, name_attribute: true, required: true
attribute :version, kind_of: String, default: nil
attribute :scheme, kind_of: String, required: true
attribute :username, kind_of: String, required: true
attribute :password, kind_of: String, required: true
attribute :host, kind_of: String, required: true
attribute :port, kind_of: Fixnum, required: true
attribute :database, kind_of: String, required: true

def connection_string
  "#{scheme}://#{username}:#{password}@#{host}:#{port}/#{database}"
end
