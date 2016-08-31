require 'rails_helper'

RSpec.describe City, type: :model do
  it 'can have many restaurants' do
    restaurant_count = 2
    # Note: same as
    # city = FactoryGirl.create(:city, :with_restaurants, restaurant_count: restaurant_count)
    #
    # If you take a look at spec/support/factory_girl, that's where we get this
    # nice syntatic sugar from.
    city = create(:city, :with_restaurants, restaurant_count: restaurant_count)
    expect(city.restaurants).not_to be_nil
    expect(city.restaurants.count).to eq(restaurant_count)

  end

  it "has a valid factory" do
    # Using the shortened version of FactoryGirl syntax.
    # Add:  "config.include FactoryGirl::Syntax::Methods" (no quotes) to your spec_helper.rb
    expect(build(:city, name: "fakeCity")).to be_valid
  end

  it "has many restaurants" do
    assc = described_class.reflect_on_association(:restaurants)
    expect(assc.macro).to eq :has_many
  end

  it "is not valid without a name" do
    expect(City.new(name: nil)).to_not be_valid
  end

  # Redundant
  # it "is valid with valid attributes (name)" do
  #   expect(City.new(name: 'Anything')).to be_valid
  # end
end
