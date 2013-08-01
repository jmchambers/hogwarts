FactoryGirl.define do
  
  # This will guess the User class
  FactoryGirl.define do
    factory :house do
      sequence(:name) {|n| "House #{n}" }
    end
  
    # This will use the User class (Admin would have been guessed)
    factory :student do
      sequence(:name) {|n| "Student #{n}" }
      house
    end
  end

end