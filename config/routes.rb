Rails.application.routes.draw do
  root 'work#index'
  match 'work/index', to: 'work#index', via: 'get'
  match 'work', to: 'work#index', via: 'get'

  match 'work/choose_theme', to: 'work#choose_theme', via: :get, :as=>'choose_theme'

  match 'work/display_theme', to: 'work#display_theme', via: :post

  resources :themes
  resources :values
  resources :images
  resources :users
  root 'main#index'
  get 'main/index'

  match 'main/help', to: 'main#help', via: 'get'

  get 'main/contacts'

  get 'main/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
