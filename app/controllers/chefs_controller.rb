class ChefsController < ApplicationController
  def index
    @chefs = Chef.order(created_at: :desc)
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
