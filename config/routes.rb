require 'sidekiq/web'
require 'sidekiq/cron/web'
# require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  draw :v1

  # Sidekiq Stuff
  mount Sidekiq::Web => "/sidekiq"
  Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
    [user, password] == ['tech@workstream.is', 'K5N@T^2MVX$q^&KBxfCR']
  end
end
