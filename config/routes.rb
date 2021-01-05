Rails.application.routes.draw do
  namespace :api , defaults: { format: :json } do
    namespace :v1 do
      resources :todos  
      resources :tags
      resources :users
      resources :tokens, only: [:create]
    end
  end
end