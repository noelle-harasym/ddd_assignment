class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :dish

  belongs_to :venue

  # Indirect associations

  has_one    :cuisine,
             :through => :dish,
             :source => :cuisine

  # Validations

  # Scopes

  def to_s
    venue.to_s
  end

end
