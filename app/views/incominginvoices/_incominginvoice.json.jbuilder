json.extract! incominginvoice, :id, :number, :date, :supplier_id, :amount, :created_at, :updated_at
json.url incominginvoice_url(incominginvoice, format: :json)
