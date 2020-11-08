class Supplier < ApplicationRecord
  has_many :incoming_invoices
  belongs_to :user
end
