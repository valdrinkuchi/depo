class Brand < ApplicationRecord
  belongs_to :productcategory
  belongs_to :supplier
  has_many :products
  belongs_to :user
end
