FactoryGirl.define do
  
  # This will guess the User class
  FactoryGirl.define do
    factory :house do
      name { Faker::Company.name }
    end
  
    # This will use the User class (Admin would have been guessed)
    factory :student do
      name { Faker::Name.name }
      house
    end
  end

end