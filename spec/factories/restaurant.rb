FactoryGirl.define do
  factory :restaurant do
    # assoc needed because belongs to a city (that must have a name)
    association :city, name: "fakeCityName"

    # use faker gem to generate a fake name
    sequence :name do |n|
      "#{Faker::Book.title}-#{n}"
    end
  end
end
