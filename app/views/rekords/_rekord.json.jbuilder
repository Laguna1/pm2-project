json.extract! rekord, :id, :name, :description, :user_id, :created_at, :updated_at
json.url rekord_url(rekord, format: :json)
