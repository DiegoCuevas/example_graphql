class Pizza < ApplicationRecord
  has_many :ingredients, class_name: "ingredient", foreign_key: "reference_id"
end
