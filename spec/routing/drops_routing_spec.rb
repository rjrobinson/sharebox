require "rails_helper"

RSpec.describe DropsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/drops").to route_to("drops#index")
    end

    it "routes to #new" do
      expect(:get => "/drops/new").to route_to("drops#new")
    end

    it "routes to #show" do
      expect(:get => "/drops/1").to route_to("drops#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/drops/1/edit").to route_to("drops#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/drops").to route_to("drops#create")
    end

    it "routes to #update" do
      expect(:put => "/drops/1").to route_to("drops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/drops/1").to route_to("drops#destroy", :id => "1")
    end

  end
end
