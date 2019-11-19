class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def self.get_sorted
    Recipe.all.order(count: :desc)
  end

end
