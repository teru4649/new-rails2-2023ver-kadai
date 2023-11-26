class Category < ApplicationRecord
  has_many :products

  extend DisplayList, dependent: :destroy
  scope :major_categories, -> { pluck(:major_category_name).uniq }
  scope :request_category, -> (category) { find(category.to_i) }
end
