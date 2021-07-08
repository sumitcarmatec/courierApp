json.extract! user, :id, :full_name, :email, :address, :mobile_no, :pin_code, :created_at, :updated_at
json.url user_url(user, format: :json)
