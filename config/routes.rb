require 'sidekiq/web'
require 'sidekiq/cron/web'
# require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"
end
