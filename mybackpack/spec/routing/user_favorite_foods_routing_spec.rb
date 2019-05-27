require "rails_helper"

RSpec.describe UserFavoriteFoodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/user_favorite_foods").to route_to("user_favorite_foods#index")
    end

    it "routes to #new" do
      expect(:get => "/user_favorite_foods/new").to route_to("user_favorite_foods#new")
    end

    it "routes to #show" do
      expect(:get => "/user_favorite_foods/1").to route_to("user_favorite_foods#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_favorite_foods/1/edit").to route_to("user_favorite_foods#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_favorite_foods").to route_to("user_favorite_foods#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_favorite_foods/1").to route_to("user_favorite_foods#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_favorite_foods/1").to route_to("user_favorite_foods#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_favorite_foods/1").to route_to("user_favorite_foods#destroy", :id => "1")
    end
  end
end
