require 'spec_helper'

describe Student do

  it "requires a name" do
    FactoryGirl.build(:student, name: "").should_not be_valid
  end
  
  it "normalizes the supplied name" do
    FactoryGirl.create(:student, name: "foo bar").name.should == "Foo Bar"
  end

  describe ".put_on_the_sorting_hat!" do
    
    before(:each) do
      @houses  = FactoryGirl.create_list(:house, 4)
      @student = FactoryGirl.build(:student, house: nil)
    end
  
    it "associates the student with a randomly selected house if house is nil at creation time" do
      #TODO figure out best way to test for proper random assignment
      @student.send(:put_on_the_sorting_hat!)
      @student.house.should be_an_instance_of(House)
    end
    
    it "doesn't change the student's house if already set" do
      @student.send(:put_on_the_sorting_hat!)
      old_house = @student.house
      @student.house.delete
      @student.send(:put_on_the_sorting_hat!)
      @student.house.should be(old_house)
    end
    
  end

end
