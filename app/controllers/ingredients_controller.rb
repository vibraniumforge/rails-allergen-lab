class IngredientsController < ApplicationController

  def index
    # @ingredients = Ingredient.order(users: :desc)
    # @ingredients = Ingredient.joins(:uesrs).order('count(users.*)desc')
    @ingredients = Ingredient.all.sort_by do |ingredient|
      ingredient.users.count
    end.reverse
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