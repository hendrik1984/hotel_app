json.extract! user_role, :id, :user_id, :role_id, :access_add, :access_edit, :access_update, :access_delete, :created_at, :updated_at
json.url user_role_url(user_role, format: :json)
