class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :destroy

  # Indirect associations

  has_many   :favorites,
             :through => :dishes,
             :source => :favorites

  # Validations

  # Scopes

  def to_s
    name
  end

end
