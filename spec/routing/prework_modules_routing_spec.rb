require "spec_helper"

describe PreworkModulesController do
  describe "routing" do

    it "routes to #index" do
      get("/prework_modules").should route_to("prework_modules#index")
    end

    it "routes to #new" do
      get("/prework_modules/new").should route_to("prework_modules#new")
    end

    it "routes to #show" do
      get("/prework_modules/1").should route_to("prework_modules#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prework_modules/1/edit").should route_to("prework_modules#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prework_modules").should route_to("prework_modules#create")
    end

    it "routes to #update" do
      put("/prework_modules/1").should route_to("prework_modules#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prework_modules/1").should route_to("prework_modules#destroy", :id => "1")
    end

  end
end
