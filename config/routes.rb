Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  # resources :clients, only: [:index, :show]
  # resources :sitteres, only: [:index, :show]


  get 'sitters', to: 'sitters#index'
  get 'sitters/:id', to: 'sitters#show'
  get 'sitters/new', to: 'sitters#create'

  get 'clients', to: 'clients#index'
  get 'clients/:id', to: 'clients#show'
  get 'clients/new', to: 'clients#create'

end
