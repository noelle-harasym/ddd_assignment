require "rails_helper"

RSpec.describe Cuisine, type: :model do
  describe "Direct Associations" do
    it { should have_many(:dishes) }
  end

  describe "InDirect Associations" do
    it { should have_many(:favorites) }
  end

  describe "Validations" do
  end
end
