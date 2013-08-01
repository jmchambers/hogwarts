require 'spec_helper'

describe Student do

  before(:each) do
    @houses  = FactoryGirl.create_list(:house, 4)
    @student = Student.new(name: "Harry Potter")
  end
  
  describe ".put_on_the_sorting_hat!" do
  
    it "associates the student with a randomly selected house" do
      #TODO figure out best way to test for proper random assignment
      @student.send(:put_on_the_sorting_hat!)
      @student.house.should be_an_instance_of(House)
    end
    
  end
  
  it "is associated with a house automatically on creation" do
    @student.save
    @student.house.should be_an_instance_of(House)
  end

end
