require 'spec_helper'

describe "students/show" do
  
  before(:each) do
    @student = FactoryGirl.create(:student)
  end

  it "displays the student's name" do
    render
    rendered.should match(/#{@student.name}/)
  end
  
  it "displays the student's house" do
    render
    rendered.should match(/#{@student.house.name}/)
  end
  
end
