require 'spec_helper'

describe "students/index" do
  
  include_context "house with students"

  it "renders a list of students sorted by name" do
    render
    sorted_students = @students.sort_by(&:name)
    assert_select 'ul.student-list' do |elements|
      elements.each_with_index { |element, i| assert_select element, 'li.student-list-item', text: /#{CGI.escapeHTML sorted_students[i].name}/ }
    end
  end
  
end
