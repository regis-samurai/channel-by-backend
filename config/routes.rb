Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :channels
    end
  end
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
