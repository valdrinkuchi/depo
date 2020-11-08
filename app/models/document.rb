class Document < ApplicationRecord
  belongs_to :incominginvoice
  has_many_attachments :documents
  belongs_to :user
end
