class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true, allow_blank: false
  validates :ingredient, presence: true, allow_blank: false
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
