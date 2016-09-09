Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'registrations' }
  resources :destinations do
    resources :comments, :reviews
  end
  resources :reviews do
    resources :comments
  end
  
  resources :tips
  get 'welcome/index'
  root 'welcome#index'

 
end
