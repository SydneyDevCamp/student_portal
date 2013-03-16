require "spec_helper"

describe PreworkAnswersController do
  describe "routing" do

    it "routes to #index" do
      get("/prework_answers").should route_to("prework_answers#index")
    end

    it "routes to #new" do
      get("/prework_answers/new").should route_to("prework_answers#new")
    end

    it "routes to #show" do
      get("/prework_answers/1").should route_to("prework_answers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prework_answers/1/edit").should route_to("prework_answers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prework_answers").should route_to("prework_answers#create")
    end

    it "routes to #update" do
      put("/prework_answers/1").should route_to("prework_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prework_answers/1").should route_to("prework_answers#destroy", :id => "1")
    end

  end
end
