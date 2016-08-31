FactoryGirl.define do
  factory :city do
    trait :with_restaurants do

      sequence :name do |n|
        "#{Faker::Book.title}-#{n}"
      end

      transient do
        restaurant_count 1 # default restaurant count
      end

      after :create do |city, evaluator|
        create_list(:restaurant, evaluator.restaurant_count, city: city)
      end
    end
  end
end
