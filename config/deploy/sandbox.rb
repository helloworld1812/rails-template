server '54.218.116.221', user: 'ec2-user', roles: %w(app db web)

set :rails_env, 'sandbox'
set :branch, 'main'
set :deploy_to, '/home/ec2-user/rails/connector'

set :sidekiq_service_unit_user, :system
set :service_unit_path, "/usr/lib/systemd/system"

# set :foreman_use_sudo, :rbenv
set :foreman_roles, :all
set :foreman_init_system, 'systemd'
set :foreman_export_path, ->{ File.join(Dir.home, '.init') }
set :foreman_app, -> { fetch(:application, 'workstream-connector-example') }
set :foreman_app_name_systemd, -> { "#{ fetch(:foreman_app) }.target" }
set :foreman_options, -> {
  { log: File.join(shared_path, 'log') }
}

append :linked_files, 'config/database.yml', 'config/credentials/sandbox.key', 'config/settings/sandbox.yml'
