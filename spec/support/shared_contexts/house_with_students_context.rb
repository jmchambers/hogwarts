shared_context "house with students" do
  include_context "house without students"
  before(:each) do
    @students = FactoryGirl.create_list(:student, 4, house: @house)
    @house.reload
  end
end
