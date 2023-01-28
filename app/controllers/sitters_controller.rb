class SittersController < ApplicationController

    def index 
        # byebug
        sitters = Sitter.all 
        render json: sitters
    end

end
