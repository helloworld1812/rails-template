require 'sidekiq/web'
require 'sidekiq/cron/web'
# require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  resources :configurations
  namespace :core do
    resources :tasks
  end
  resource :metadata, only: :show, default: { format: :json }
  resources :translations, only: :show, param: :code

  resources :tasks, only: :show, param: :task_name



  # Sidekiq Stuff
  Sidekiq::Web.set :session_secret, Rails.application.secrets[:secret_key_base]
  mount Sidekiq::Web => "/sidekiq"
  Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
    [user, password] == ['tech@workstream.is', 'K5N@T^2MVX$q^&KBxfCR']
  end
end
