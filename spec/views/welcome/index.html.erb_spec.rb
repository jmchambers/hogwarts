require 'spec_helper'

describe "welcome/index" do

  it "welcomes the user" do
    render
    rendered.should match(/welcome to hogwarts/i)
  end

  it "has a link to view houses" do
    render
    assert_select 'a', text: /view houses/i
  end
  
  it "has a link to enroll" do
    render
    assert_select 'a', text: /enroll/i
  end
  
end
