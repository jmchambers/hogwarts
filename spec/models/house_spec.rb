require 'spec_helper'

describe House do
  
  it "requires a name" do
    FactoryGirl.build(:house, name: "").should_not be_valid
  end
  
  it "requires a unique name" do
    FactoryGirl.create(:house, name: "Foo")
    FactoryGirl.build(:house, name: "Foo").should_not be_valid
  end
  
  it "normalizes supplied name" do
    FactoryGirl.create(:house, name: "foo bar").name.should == "Foo Bar"
  end

  context "with no students" do
    
    include_context "house without students"
    
    it "has an empty student list" do
      @house.students.should be_empty
    end
    
  end
  
  context "with students" do
    
    include_context "house with students"
    
    it "has a list of students sorted by name" do
      @house.students.should == @students.sort_by(&:name)
    end
    
  end
  
end
