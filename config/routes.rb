require 'sidekiq/web'
require 'sidekiq/cron/web'
# require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  resource :metadata, only: :show, default: { format: :json }
  resources :translations, only: :show, param: :code



  # Sidekiq Stuff
  Sidekiq::Web.set :session_secret, Rails.application.secrets[:secret_key_base]
  mount Sidekiq::Web => "/sidekiq"
  Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
    [user, password] == ['tech@workstream.is', 'K5N@T^2MVX$q^&KBxfCR']
  end
end
