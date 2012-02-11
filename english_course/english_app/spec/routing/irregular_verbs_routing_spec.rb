require "spec_helper"

describe IrregularVerbsController do
  describe "routing" do

    it "routes to #index" do
      get("/irregular_verbs").should route_to("irregular_verbs#index")
    end

    it "routes to #new" do
      get("/irregular_verbs/new").should route_to("irregular_verbs#new")
    end

    it "routes to #show" do
      get("/irregular_verbs/1").should route_to("irregular_verbs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/irregular_verbs/1/edit").should route_to("irregular_verbs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/irregular_verbs").should route_to("irregular_verbs#create")
    end

    it "routes to #update" do
      put("/irregular_verbs/1").should route_to("irregular_verbs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/irregular_verbs/1").should route_to("irregular_verbs#destroy", :id => "1")
    end

  end
end
