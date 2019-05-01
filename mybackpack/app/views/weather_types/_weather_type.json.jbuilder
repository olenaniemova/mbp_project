json.extract! weather_type, :id, :title, :created_at, :updated_at
json.url weather_type_url(weather_type, format: :json)
