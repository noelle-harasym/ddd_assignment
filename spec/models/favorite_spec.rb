require "rails_helper"

RSpec.describe Favorite, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user) }

    it { should belong_to(:dish) }

    it { should belong_to(:venue) }
  end

  describe "InDirect Associations" do
    it { should have_one(:cuisine) }
  end

  describe "Validations" do
  end
end
