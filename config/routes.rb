Rails.application.routes.draw do
  root 'application#hello'
  get '/secrets', to: 'secrets#show'
  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  # ALT: resources :sessions, only: [:new, :create, :destroy]

end