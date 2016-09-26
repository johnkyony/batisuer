json.extract! parent, :id, :name, :surname, :phone_number, :created_at, :updated_at
json.url parent_url(parent, format: :json)