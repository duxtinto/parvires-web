require "spec_helper"

describe PresController do
  describe "routing" do

    it "routes to #index" do
      get("/pres").should route_to("pres#index")
    end

    it "routes to #new" do
      get("/pres/new").should route_to("pres#new")
    end

    it "routes to #show" do
      get("/pres/1").should route_to("pres#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pres/1/edit").should route_to("pres#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pres").should route_to("pres#create")
    end

    it "routes to #update" do
      put("/pres/1").should route_to("pres#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pres/1").should route_to("pres#destroy", :id => "1")
    end

  end
end
