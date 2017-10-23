Rails.application.routes.draw do
  resources :contatos
  get 'contact' => 'contatos#new'

  get 'queries' => 'queries#index'

  get 'team' => 'team#index'

  get 'information' => 'information#index'
  
  get 'home' => 'home#index'
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
