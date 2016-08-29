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
end
