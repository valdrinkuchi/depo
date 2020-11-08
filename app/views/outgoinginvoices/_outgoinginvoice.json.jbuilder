json.extract! outgoinginvoice, :id, :number, :date, :customer_id, :created_at, :updated_at
json.url outgoinginvoice_url(outgoinginvoice, format: :json)
