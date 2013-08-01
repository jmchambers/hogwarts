class House < ActiveRecord::Base
  attr_accessible :name
  has_many :students, order: "name ASC", inverse_of: :house
end