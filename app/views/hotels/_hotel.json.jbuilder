json.extract! hotel, :id, :name, :address, :phone, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
