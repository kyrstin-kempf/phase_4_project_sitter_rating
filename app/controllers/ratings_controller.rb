class RatingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: render_unprocessable_entity_response

    # GET /ratings
    def index 
        ratings = Rating.all 
        render json: ratings
    end

    # GET /ratings/:id
    def show 
        rating = find_rating
        render json: rating
    end

    # POST /ratings
    def create 
        rating = Rating.create(rating_params)
        render json: rating, status: :created 
    end

    # PATCH /ratings/:id
    def update 
        rating = find_rating
        rating.update(rating_params) 
        render json: rating
    end

    # DELETE /ratings/:id
    def destroy 
        rating = find_rating
        rating.destroy 
        head :no_content 
    end

    private 
    
    def find_rating 
        Rating.find(params[:id])
    end
    
    def rating_params
        params.permit(:rating, :sitter_id, :client_id)
    end
    
    def render_not_found_response
        render json: { error: "Rating not found" }, status: :not_found 
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
