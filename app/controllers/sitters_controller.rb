class SittersController < ApplicationController

    def index 
        # byebug
        sitters = Sitter.all 
        render json: sitters
    end

    def show 
        sitter = Sitter.find(params[:id])
        render json: sitter
    end

    def create 
        sitter = Sitter.create(sitter_params)
        render json: sitter, status: :created 
    end

    def update 
        sitter = Sitter.find_by(id: params[:id])
        if sitter 
            sitter.update(sitter_params) 
            render json: sitter
        else 
            render json: { error: "Sitter not found" }, status: :not_found 
        end
    end

    private 

    def sitter_params
        params.permit(:name, :years_of_experience, :hourly_rate)
    end

end
