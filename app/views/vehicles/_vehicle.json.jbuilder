json.extract! vehicle, :id, :customer_id, :brand, :model, :year, :plate, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
