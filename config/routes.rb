Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  # resources :clients, only: [:index, :show]
  # resources :sitteres, only: [:index, :show]

  post '/login', to: 'sessions#create'
  get '/me', to: 'user#show'
  delete '/logout', to: 'sessions#destroy'

  get '/sitters', to: 'sitters#index'
  get '/sitters/:id', to: 'sitters#show'
  post '/sitters', to: 'sitters#create'
  patch '/sitters/:id', to: 'sitters#update'

  get '/clients', to: 'clients#index'
  get '/clients/:id', to: 'clients#show'
  post '/clients', to: 'clients#create'
  patch '/clients/:id', to: 'clients#update'

  get '/ratings', to: 'ratings#index'
  get '/ratings/:id', to: 'ratings#show'
  post '/ratings', to: 'ratings#create'
  patch '/ratings/:id', to: 'ratings#update'
  delete '/ratings/:id', to: 'ratings#destroy'

end
