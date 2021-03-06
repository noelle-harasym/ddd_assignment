class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :username, :string
  attribute :password, :string

  # Direct associations

  has_many :favorites

  # Indirect associations
end
