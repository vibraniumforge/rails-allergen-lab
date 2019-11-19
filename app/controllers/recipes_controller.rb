class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def sorted
    @recipes = Recipe.get_sorted
  end

  def show
  end

  def new
    @recipe = Recipe.new
    @users = User.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      puts @recipe.errors.full_messages
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
    byebug
    params.require(:recipe).permit(:name, :user_id)
  end
end