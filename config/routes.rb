Rails.application.routes.draw do
  root to: 'livraria#index'
  resources :livraria 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
