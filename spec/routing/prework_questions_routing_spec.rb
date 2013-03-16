require "spec_helper"

describe PreworkQuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/prework_questions").should route_to("prework_questions#index")
    end

    it "routes to #new" do
      get("/prework_questions/new").should route_to("prework_questions#new")
    end

    it "routes to #show" do
      get("/prework_questions/1").should route_to("prework_questions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prework_questions/1/edit").should route_to("prework_questions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prework_questions").should route_to("prework_questions#create")
    end

    it "routes to #update" do
      put("/prework_questions/1").should route_to("prework_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prework_questions/1").should route_to("prework_questions#destroy", :id => "1")
    end

  end
end
