require 'spec_helper'

describe "students/show" do
  
  before(:each) do
    @student = FactoryGirl.create(:student)
  end

  it "displays the student's name" do
    render
    rendered.should match(/#{CGI.escapeHTML @student.name}/)
  end
  
end
