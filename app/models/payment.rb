class Payment < ApplicationRecord
  belongs_to :paymenttype
  belongs_to :incominginvoice
  belongs_to :user
end
