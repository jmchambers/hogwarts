require 'spec_helper'

describe HousesController do

  let(:valid_attributes) { { "name" => "Gryffindor" } }
  let(:valid_session)    { {} }

  describe "GET index" do
    it "assigns all houses as @houses" do
      house = House.create! valid_attributes
      get :index, {}, valid_session
      assigns(:houses).should eq([house])
    end
  end

  describe "GET show" do
    it "assigns the requested house as @house" do
      house = House.create! valid_attributes
      get :show, {:id => house.to_param}, valid_session
      assigns(:house).should eq(house)
    end
  end

end
