shared_context "houses with students" do
  include_context "houses without students"
  before(:each) do
    @student_lists = []
    @students      = []
    @houses.each do |house|
      @student_lists[house.id] = FactoryGirl.create_list(:student, 4, house: house)
      @students += @student_lists[house.id]
    end
  end
end
