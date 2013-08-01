require "spec_helper"

describe HousesController do
  describe "routing" do

    it "routes to #index" do
      get("/houses").should route_to("houses#index")
    end

    it "routes to #show" do
      get("/houses/1").should route_to("houses#show", :id => "1")
    end

  end
end
