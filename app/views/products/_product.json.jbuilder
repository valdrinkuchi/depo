json.extract! product, :id, :name, :description, :unit, :unit_price, :count, :retail_price, :dimensions, :created_at, :updated_at
json.url product_url(product, format: :json)
