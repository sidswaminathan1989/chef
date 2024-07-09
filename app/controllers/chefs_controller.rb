class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def recipes
    @chef = Chef.find(params[:id])
    @recipes = @chef.recipes

    return @recipes
  end
end
