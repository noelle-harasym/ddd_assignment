class FavoriteResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :venue_id, :integer
  attribute :dish_id, :integer
  attribute :notes, :string
  attribute :user_id, :integer

  # Direct associations

  belongs_to :user

  belongs_to :dish

  belongs_to :venue

  # Indirect associations

  has_one    :cuisine

  filter :cuisine_id, :integer do
    eq do |scope, value|
      scope.eager_load(:cuisine).where(dishes: { cuisine_id: value })
    end
  end
end
