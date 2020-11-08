json.extract! supplier, :id, :name, :email, :tel, :address, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
