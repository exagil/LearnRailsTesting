require "rails_helper"

RSpec.describe ZombiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/zombies").to route_to("zombies#index")
    end

    it "routes to #new" do
      expect(:get => "/zombies/new").to route_to("zombies#new")
    end

    it "routes to #show" do
      expect(:get => "/zombies/1").to route_to("zombies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/zombies/1/edit").to route_to("zombies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/zombies").to route_to("zombies#create")
    end

    it "routes to #update" do
      expect(:put => "/zombies/1").to route_to("zombies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/zombies/1").to route_to("zombies#destroy", :id => "1")
    end

  end
end
