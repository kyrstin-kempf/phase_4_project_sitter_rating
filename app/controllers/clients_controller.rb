class ClientsController < ApplicationController

    def index 
        clients = Client.all
        render json: clients
    end

    def show 
        client = Client.find(params[:id])
        render json: client
    end

    def create 
        client = Client.create(client_params)
        render json: client, status: :created
    end

    def update 
        client = Client.find_by(id: params[:id])
        if client 
            client.update(client_params) 
            render json: client
        else 
            render json: { error: "Client not found" }, status: :not_found 
        end
    end

    private 

    def client_params
        params.permit(:name, :number_of_children )
    end

end
