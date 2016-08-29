FactoryGirl.define do
  factory :restaurant do
    sequence :name do |n|
      "#{Faker::Book.title}-#{n}"
    end
  end
end
