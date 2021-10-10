json.extract! user, :id, :username, :reaction, :comment, :created_at, :updated_at
json.url user_url(user, format: :json)
