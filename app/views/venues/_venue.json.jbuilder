json.extract! venue, :id, :name, :address, :neighborhood_id, :coordinates,
              :created_at, :updated_at
json.url venue_url(venue, format: :json)
