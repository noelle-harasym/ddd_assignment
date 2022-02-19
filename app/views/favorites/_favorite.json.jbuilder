json.extract! favorite, :id, :venue_id, :dish_id, :notes, :user_id, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)
