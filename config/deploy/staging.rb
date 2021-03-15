server '54.71.108.32', user: 'ec2-user', roles: %w(app db web)

set :rails_env, 'staging'
set :branch, 'deploy'
set :deploy_to, '/home/ec2-user/rails/connector'

append :linked_files, 'config/database.yml', 'config/credentials/staging.key'
