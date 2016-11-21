json.extract! user_infom, :id, :name, :address, :phone_number, :email, :created_at, :updated_at
json.url user_infom_url(user_infom, format: :json)