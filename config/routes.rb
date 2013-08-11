Whoru::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :whos, :searches
  root :to => 'whos#index'
  get 'search', to: 'searches#index'
end
