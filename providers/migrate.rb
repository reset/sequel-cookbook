#
# Cookbook Name:: sequel
# Provider:: migrate
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#

action :run do
  run_context.include_recipe "sequel::default"
  require 'sequel'
  Sequel.extension(:migration, :core_extensions)
  Chef::Log.info "sequel_migrate[#{new_resource.name}] running migrations"
  conn = Sequel.connect(new_resource.connection_string)
  Sequel::Migrator.apply(conn, new_resource.migrations_path, new_resource.version)

  new_resource.updated_by_last_action(true)
end
