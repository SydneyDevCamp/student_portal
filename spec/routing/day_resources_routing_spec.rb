require "spec_helper"

describe DayResourcesController do
  describe "routing" do

    it "routes to #index" do
      get("/day_resources").should route_to("day_resources#index")
    end

    it "routes to #new" do
      get("/day_resources/new").should route_to("day_resources#new")
    end

    it "routes to #show" do
      get("/day_resources/1").should route_to("day_resources#show", :id => "1")
    end

    it "routes to #edit" do
      get("/day_resources/1/edit").should route_to("day_resources#edit", :id => "1")
    end

    it "routes to #create" do
      post("/day_resources").should route_to("day_resources#create")
    end

    it "routes to #update" do
      put("/day_resources/1").should route_to("day_resources#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/day_resources/1").should route_to("day_resources#destroy", :id => "1")
    end

  end
end
