require 'spec_helper'

describe "students/new" do

  context "when rendered with a valid model" do
  
    before(:each) do
      assign(:student, FactoryGirl.build(:student))
    end
  
    it "renders new student form" do
      render
      assert_select "form[action=?][method=?]", students_path, "post" do
        assert_select "input#student_name[name=?]", "student[name]"
      end
    end
    
  end
  
  context "when redirected to because name was missing" do
    
    before(:each) do
      student = FactoryGirl.build(:student, name: "")
      student.valid?
      assign(:student, student)
    end
    
    it "renders a warning about the name" do
      render
      rendered.should match(/name can.*t be blank/i)
    end
    
  end
  
end
