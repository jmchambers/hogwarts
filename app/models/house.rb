class House < ActiveRecord::Base
  
  include NameNormalization
  
  attr_accessible :name, :desc
  has_many :students, order: "name ASC", inverse_of: :house
  validates :name, presence: true, uniqueness: true
  
end