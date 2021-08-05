Rails.application.routes.draw do
  
  
  get "signup" => 'users#new'
  get "login" => 'sessions#new'
  get "logout" => 'sessions#destroy'
  
  get'/auth/:provider/callback', to: 'authentications#create'
  
  resources :users
  resources :sessions
  resources :guestbooks do
    resources :comments
  end
  
  
  
  root to: 'home#index'
  get "about" => 'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
