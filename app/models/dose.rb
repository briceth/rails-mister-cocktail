class Dose < ApplicationRecord
  validates :description, :ingredient, :cocktail, presence: true
  validates :cocktail, :ingredient, uniqueness: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

  belongs_to :cocktail
  belongs_to :ingredient
end
