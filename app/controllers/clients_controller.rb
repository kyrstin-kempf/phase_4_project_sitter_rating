class ClientsController < ApplicationController
    # resources :clients, only: [:index, :show]

    def index 
        clients = Client.all
        render json: clients
    end

    def show 
        client = Client.find(params[:id])
        render json: client
    end

end
