class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :address, :string
  attribute :neighborhood_id, :integer
  attribute :coordinates, :string

  # Direct associations

  belongs_to :neighborhood

  has_many   :favorites

  # Indirect associations
end
