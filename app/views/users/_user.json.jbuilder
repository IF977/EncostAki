json.extract! user, :id, :Fname, :Mname, :username, :senha, :created_at, :updated_at
json.url user_url(user, format: :json)
