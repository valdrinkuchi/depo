class Incominginvoice < ApplicationRecord
  belongs_to :supplier
  has_many :documents
  belongs_to :user
end
