json.extract! profile, :id, :first_name, :last_name, :role, :gender, :country, :phone_no, :identity_no, :image, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
