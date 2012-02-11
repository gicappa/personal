require "spec_helper"

describe VerbTestsController do
  describe "routing" do

    it "routes to #index" do
      get("/verb_tests").should route_to("verb_tests#index")
    end

    it "routes to #new" do
      get("/verb_tests/new").should route_to("verb_tests#new")
    end

    it "routes to #show" do
      get("/verb_tests/1").should route_to("verb_tests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/verb_tests/1/edit").should route_to("verb_tests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/verb_tests").should route_to("verb_tests#create")
    end

    it "routes to #update" do
      put("/verb_tests/1").should route_to("verb_tests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/verb_tests/1").should route_to("verb_tests#destroy", :id => "1")
    end

  end
end
