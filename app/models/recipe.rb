class Recipe < ApplicationRecord
  belongs_to :user
  
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :name, presence: true
  validates :directions, presence: true
  validates :user_id, presence: true
end
