namespace :v1 do
  resources :configurations
  namespace :core do
    resources :tasks
  end
  resource :metadata, only: :show, default: { format: :json }
  resources :translations, only: :show, param: :code

  resources :tasks, only: :show, param: :task_name
end
