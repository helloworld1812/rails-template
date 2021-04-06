source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'redis', '~> 4.2', '>= 4.2.5'
gem 'connection_pool', '~> 2.2', '>= 2.2.3'
gem 'dalli', '~> 2.7', '>= 2.7.11'

gem 'enumerize'
gem 'mimemagic', '0.3.9'

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

gem 'uri', '~> 0.10.1'
gem 'sidekiq', '~> 6.1', '>= 6.1.3'
# gem 'sidekiq-scheduler', '~> 3.0', '>= 3.0.1'
gem 'sidekiq-cron'

# http client
gem "typhoeus"
gem 'workstream-auth', github: 'helloworld1812/workstream-auth', branch: 'main'

# kafka message consumer
# gem 'google-protobuf', "~> 3.14"
gem 'racecar'
gem 'foreman'
gem 'workstream_protocol', '0.2.2'
gem 'google-protobuf', platforms: [:ruby]

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-performance', require: false
  gem 'rspec', '~> 3.10'
  gem 'rspec-rails', '~> 5.0'
end

group :development do
  gem 'annotate'
  ## squash multiple migration files to one.
  gem 'squasher'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'capistrano', '~> 3.16', require: false
  gem 'capistrano-rails', '~> 1.6', '>= 1.6.1', require: false
  gem 'capistrano3-puma'
  gem 'capistrano-rbenv'
  gem 'capistrano-sidekiq'
  gem 'capistrano-foreman'
end

# gem 'dotenv-rails', groups: [:development, :test]
gem 'config', '~> 3.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
