require "spec_helper"

describe CalendarItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/calendar_items").should route_to("calendar_items#index")
    end

    it "routes to #new" do
      get("/calendar_items/new").should route_to("calendar_items#new")
    end

    it "routes to #show" do
      get("/calendar_items/1").should route_to("calendar_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/calendar_items/1/edit").should route_to("calendar_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/calendar_items").should route_to("calendar_items#create")
    end

    it "routes to #update" do
      put("/calendar_items/1").should route_to("calendar_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/calendar_items/1").should route_to("calendar_items#destroy", :id => "1")
    end

  end
end
