class ClientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /cients
    def index 
        clients = Client.all
        render json: clients
    end

    # GET /clients/:id
    def show 
        client = find_client
        render json: client
    end

    # POST /clients
    def create 
        client = Client.create(client_params)
        render json: client, status: :created
    end

    # PATCH /clients/:id
    def update 
        client = find_client
        client.update(client_params) 
        render json: client
    end

    private 

    def find_client 
        Client.find_by(id: params[:id])
    end
    
    def client_params
        params.permit(:name, :number_of_children )
    end

    def render_not_found_response
        render json: { error: "Sitter not found" }, status: :not_found 
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
