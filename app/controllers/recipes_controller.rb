class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path, notice: 'Recipe was successfully created!'
    else
      render :new
    end
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
    def recipe_params
      params.require(:recipe).permit(:ingredients, :steps, :chef_id)
    end
end
