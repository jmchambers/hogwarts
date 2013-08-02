require 'spec_helper'

describe "houses/index" do
  
  include_context "houses with students"

  it "renders a list of houses sorted by name" do
    render
    sorted_houses = @houses.sort_by(&:name)
    assert_select 'ul.house-list' do |elements|
      elements.each_with_index { |element, i| assert_select element, 'li.house-list-item', text: /#{sorted_houses[i].name}/ }
    end
  end
  
  it "renders correctly pluralized student counts" do
    @houses[0].students.each(&:delete)        #=> 0 students
    @houses[1].students[1..-1].each(&:delete) #=> 1 student
    @houses[0..1].each(&:reload)
    render
    rendered.should match(/0 students/)
    rendered.should match(/1 student/)
    rendered.should match(/#{@houses[2].students.size} students/)
  end
  
end
