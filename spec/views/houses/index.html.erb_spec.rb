require 'spec_helper'

describe "houses/index" do
  
  include_context "houses with students"

  it "renders a list of houses" do
    render
    assert_select 'ul.house-list' do |elements|
      elements.each_with_index { |element, i| assert_select 'li.house-list-item', text: CGI.escapeHTML(@houses[i].name) }
    end
  end
  
end
