class Student < ActiveRecord::Base
  
  include NameNormalization
  
  attr_accessible :name
  belongs_to :house, inverse_of: :students
  validates :name, presence: true
  before_create :put_on_the_sorting_hat!
  
  private
  
  def put_on_the_sorting_hat!
    self.house ||= House.order("RANDOM()").first
  end
  
end