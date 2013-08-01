require 'spec_helper'

describe "houses/show" do
  
  include_context "house with students"

  it "renders house name in <h1>" do
    render
    assert_select "h1", text: "#{@house.name} House"
  end
  
  it "renders name sorted student list in <ul>" do
    render
    sorted_students = @students.sort_by!(&:name)
    assert_select 'ul.student-list' do |elements|
      elements.each_with_index { |element, i| assert_select 'li.student-list-item', text: CGI.escapeHTML(sorted_students[i].name) }
    end
  end
  
end
