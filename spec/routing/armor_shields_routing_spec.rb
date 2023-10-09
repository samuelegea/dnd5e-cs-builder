require "rails_helper"

RSpec.describe ArmorShieldsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/01_armor_shields.rb").to route_to("01_armor_shields.rb#index")
    end

    it "routes to #new" do
      expect(get: "/01_armor_shields.rb/new").to route_to("01_armor_shields.rb#new")
    end

    it "routes to #show" do
      expect(get: "/01_armor_shields.rb/1").to route_to("01_armor_shields.rb#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/01_armor_shields.rb/1/edit").to route_to("01_armor_shields.rb#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/01_armor_shields.rb").to route_to("01_armor_shields.rb#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/01_armor_shields.rb/1").to route_to("01_armor_shields.rb#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/01_armor_shields.rb/1").to route_to("01_armor_shields.rb#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/01_armor_shields.rb/1").to route_to("01_armor_shields.rb#destroy", id: "1")
    end
  end
end
