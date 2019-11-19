class IngredientsController < ApplicationController

  def index
    # @ingredients = Ingredient.all.sort_by do |ingredient|
    #   ingredient.users.count
    # end.reverse
    @ingredients = Ingredient.left_joins(:users).group(:id).order('COUNT(users.id) DESC')
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end