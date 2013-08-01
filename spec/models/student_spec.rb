require 'spec_helper'

describe Student do

  context "with house unassigned" do
    
    before(:each) do
      @student = FactoryGirl.create(:student, house: nil)
    end
    
    it "returns nil for the house association" do
      @student.house.should be_nil
    end
    
  end
  
  context "with house assigned" do
    
    before(:each) do
      @house   = FactoryGirl.create(:house)
      @student = FactoryGirl.create(:student, house: @house)
    end
    
    it "is associated with its house" do
      @student.house.should be(@house)
    end
    
  end

end
