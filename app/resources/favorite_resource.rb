class FavoriteResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :venue_id, :integer
  attribute :dish_id, :integer
  attribute :notes, :string
  attribute :user_id, :integer

  # Direct associations

  # Indirect associations

end
