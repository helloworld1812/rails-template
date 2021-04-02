server '54.218.116.221', user: 'ec2-user', roles: %w(app db web)

set :rails_env, 'sandbox'
set :branch, 'main'
set :deploy_to, '/home/ec2-user/rails/connector'

set :sidekiq_service_unit_user, :system
set :service_unit_path, "/usr/lib/systemd/system"

append :linked_files, 'config/database.yml', 'config/credentials/sandbox.key', 'config/settings/sandbox.yml'
