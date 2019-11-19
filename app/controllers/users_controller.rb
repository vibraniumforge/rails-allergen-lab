class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    find_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def edit
  end

  def update
  end

  def destroy
    find_user
    @user.recipes.each do |recipe|
      recipe.recipe_ingredients.each do |ri|
        ri.destroy
      end
      recipe.destroy
    end
    @user.destroy
    redirect_to users_path
  end
  
  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end
end