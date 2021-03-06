Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  get 'edit', to: 'users#edit'
  patch 'edit/:id', to: 'users#update'
  resources 'users', except: [:new, :edit]


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete  'logout', to: 'sessions#destroy'

  get 'ingredients', to: 'ingredients#ingredients'
  
end
