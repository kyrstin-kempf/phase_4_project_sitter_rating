class SittersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /sitters
    def index 
        # byebug
        sitters = Sitter.all 
        render json: sitters
    end

    # GET /sitters/:id
    def show 
        sitter = find_sitter
        render json: sitter
    end

    # POST /sitters
    def create 
        sitter = Sitter.create(sitter_params)
        render json: sitter, status: :created 
    end

    # PATCH /sitters/:id
    def update 
        sitter = find_sitter
        sitter.update(sitter_params) 
        render json: sitter
    end

    private 

    def find_sitter 
        Sitter.find_by(id: params[:id])
    end
    
    def sitter_params
        params.permit(:name, :years_of_experience, :hourly_rate)
    end

    def render_not_found_response
        render json: { error: "Sitter not found" }, status: :not_found 
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
