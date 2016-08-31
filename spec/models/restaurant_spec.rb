require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "has a valid factory" do
    expect(build(:restaurant)).to be_valid
  end

  it "belongs to a city" do
    assc = described_class.reflect_on_association(:city)
    expect(assc.macro).to eq :belongs_to
  end

  it "is not valid without a name" do
    expect(Restaurant.new(name: nil)).to_not be_valid
  end
end
