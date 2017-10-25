Rails.application.routes.draw do
  get 'users/:id', to: 'users#show'

  get 'users', to: 'users#index'

  post 'users', to: 'users#create'

  patch 'users/:id/', to: 'users#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
