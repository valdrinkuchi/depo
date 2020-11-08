class Customer < ApplicationRecord
  belongs_to :customercategory
  has_many :incoming_invoices
  belongs_to :user
end
