Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :articles do
        mount_devise_token_auth_for 'User', at: 'auth'
        resource :likes, only: [:create]
      end
    end
  end
end
