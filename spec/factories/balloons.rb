FactoryGirl.define do
  factory :balloon do
    name { Faker::Name.first_name }
    color 'blue'
    altitude 20000
    location '92.1627,-37.2983'
  end
end
