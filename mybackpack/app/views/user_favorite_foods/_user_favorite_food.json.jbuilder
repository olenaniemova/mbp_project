json.extract! user_favorite_food, :id, :created_at, :updated_at
json.url user_favorite_food_url(user_favorite_food, format: :json)
