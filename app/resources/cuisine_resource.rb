class CuisineResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string

  # Direct associations

  has_many   :dishes

  # Indirect associations

  has_many :favorites do
    assign_each do |cuisine, favorites|
      favorites.select do |f|
        f.id.in?(cuisine.favorites.map(&:id))
      end
    end
  end

end
