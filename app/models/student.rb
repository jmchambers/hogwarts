class Student < ActiveRecord::Base
  attr_accessible :name
  belongs_to :house, inverse_of: :students
end