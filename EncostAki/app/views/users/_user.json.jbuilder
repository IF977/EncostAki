json.extract! user, :id, :name, :cpf, :username, :cep, :complement, :house_number, :created_at, :updated_at
json.url user_url(user, format: :json)
