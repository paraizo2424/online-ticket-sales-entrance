json.extract! user, :id, :name, :email, :tel, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
