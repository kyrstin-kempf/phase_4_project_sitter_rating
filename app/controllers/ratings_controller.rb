class RatingsController < ApplicationController

    def index 
        ratings = Rating.all 
        render json: ratings
    end

    def show 
        rating = find_rating
        if rating
            render json: rating
        else 
            render_not_found_response
        end
    end

    def create 
        rating = Rating.create(rating_params)
        render json: rating, status: :created 
    end

    def update 
        rating = Rating.find_by(id: params[:id])
        if rating 
            rating.update(rating_params) 
            render json: rating
        else 
            render json: { error: "Rating not found" }, status: :not_found 
        end
    end

    def destroy 
        rating = Rating.find_by(id: params[:id])
        if rating 
            rating.destroy 
            head :no_content 
        else 
            render json: { error: "Rating not found" }, status: :not_found 
        end
    end

    private 

    def render_not_found_response
        render json: { error: "Rating not found" }, status: :not_found 
    end

    def find_rating 
        Rating.find_by(id: params[:id])
    end

    def rating_params
        params.permit(:rating, :sitter_id, :client_id)
    end

end
