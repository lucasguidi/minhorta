require "rails_helper"

RSpec.describe Product, type: :model do
#   describe "associations" do
#     it{ is_expected.to have_many(:comments) }
#   end
  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
  end
  describe "category" do
    it{ is_expected.to belong_to :category }
  end
end