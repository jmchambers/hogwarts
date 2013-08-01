class HousesController < ApplicationController
  
  def index
    @houses = House.order(:name).all
  end

end