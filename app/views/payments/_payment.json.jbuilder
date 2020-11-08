json.extract! payment, :id, :amount, :description, :paymenttype_id, :incominginvoice_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
