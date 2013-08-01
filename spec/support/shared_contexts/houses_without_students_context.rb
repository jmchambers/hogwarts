shared_context "houses without students" do
  before(:each) do
    @houses = FactoryGirl.create_list(:house, 4)
  end
end
