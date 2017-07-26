Rails.application.routes.draw do
  
  root 'home#index'
  # resources :home, only: [:index]  

  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'

  get '/obstacles', to: 'obstacles#index'
  get '/obstacles/new', to: 'obstacles#new'
  post '/obstacles', to: 'obstacles#create'

  get '/signup', to: 'people#new'

  resources :people, only: [:new, :create]

  get '/profile', to: 'people#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
