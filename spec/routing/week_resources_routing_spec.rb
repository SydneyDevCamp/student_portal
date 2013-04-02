require "spec_helper"

describe WeekResourcesController do
  describe "routing" do

    it "routes to #index" do
      get("/week_resources").should route_to("week_resources#index")
    end

    it "routes to #new" do
      get("/week_resources/new").should route_to("week_resources#new")
    end

    it "routes to #show" do
      get("/week_resources/1").should route_to("week_resources#show", :id => "1")
    end

    it "routes to #edit" do
      get("/week_resources/1/edit").should route_to("week_resources#edit", :id => "1")
    end

    it "routes to #create" do
      post("/week_resources").should route_to("week_resources#create")
    end

    it "routes to #update" do
      put("/week_resources/1").should route_to("week_resources#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/week_resources/1").should route_to("week_resources#destroy", :id => "1")
    end

  end
end
