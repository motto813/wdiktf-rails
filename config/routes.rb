Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'shows#index'

  resources :actors, only: [:index]

  get 'actors/search', to: 'actors#search'
  get 'shows/search', to: 'shows#search'
end
