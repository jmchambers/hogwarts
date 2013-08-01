class Student < ActiveRecord::Base
  
  attr_accessible :name
  belongs_to :house, inverse_of: :students
  before_create :put_on_the_sorting_hat!
  
  private
  
  def put_on_the_sorting_hat!
    self.house = House.order("RANDOM()").first
  end
  
end