require "rails_helper"

RSpec.describe HousephotosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/housephotos").to route_to("housephotos#index")
    end

    it "routes to #new" do
      expect(:get => "/housephotos/new").to route_to("housephotos#new")
    end

    it "routes to #show" do
      expect(:get => "/housephotos/1").to route_to("housephotos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/housephotos/1/edit").to route_to("housephotos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/housephotos").to route_to("housephotos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/housephotos/1").to route_to("housephotos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/housephotos/1").to route_to("housephotos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/housephotos/1").to route_to("housephotos#destroy", :id => "1")
    end

  end
end
