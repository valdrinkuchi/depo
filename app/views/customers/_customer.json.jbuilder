json.extract! customer, :id, :name, :email, :tel, :address, :customercategory_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
