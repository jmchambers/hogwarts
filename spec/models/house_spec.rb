require 'spec_helper'

describe House do

  context "with no students" do
    
    include_context "house without students"
    
    it "has an empty student list" do
      @house.students.should be_empty
    end
    
  end
  
  context "with students" do
    
    include_context "house with students"
    
    it "has a populated student list" do
      @house.students.should =~ @students
    end
    
  end
  
end
