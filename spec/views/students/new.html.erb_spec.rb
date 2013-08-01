require 'spec_helper'

describe "students/new" do
  
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
