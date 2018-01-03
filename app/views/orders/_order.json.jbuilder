json.extract! order, :id, :address, :city, :county, :postcode, :country, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
