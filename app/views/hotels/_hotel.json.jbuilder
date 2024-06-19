json.extract! hotel, :id, :name, :address, :phone, :stars, :check_in_time, :check_out_time, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
