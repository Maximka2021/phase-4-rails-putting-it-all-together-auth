class RecipesController < ApplicationController

    def show
        render json: Recipe.all
    end

    def create

    end

    private

end
