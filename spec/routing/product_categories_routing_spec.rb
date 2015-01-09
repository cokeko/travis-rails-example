require "rails_helper"

RSpec.describe API::V1::ProductCategoriesController, :type => :routing do
  describe "routing" do
    let(:url) { "http://api.domain.com" }

    it "routes to #index" do
      expect(:get => "#{url}/product_categories").to route_to(
        {format: :json, subdomain: "api", action: "index", controller: "api/v1/product_categories"})
    end

    it "routes to #new" do
      expect(:get => "#{url}/product_categories/new").to route_to(
        {"format"=>:json, subdomain: "api", action: "new", controller: "api/v1/product_categories"})
    end

    it "routes to #show" do
      expect(:get => "#{url}/product_categories/1").to route_to(
        {"format"=>:json, subdomain: "api", action: "show", controller: "api/v1/product_categories", id: "1"})
    end

    it "routes to #edit" do
      expect(:get => "#{url}/product_categories/1/edit").to route_to(
        {"format"=>:json, subdomain: "api", action: "edit", controller: "api/v1/product_categories", id: "1"})
    end

    it "routes to #create" do
      expect(:post => "#{url}/product_categories").to route_to(
        {"format"=>:json, subdomain: "api", action: "create", controller: "api/v1/product_categories"})
    end

    it "routes to #update" do
      expect(:put => "#{url}/product_categories/1").to route_to(
        {"format"=>:json, subdomain: "api", action: "update", controller: "api/v1/product_categories", id: "1"})
    end

    it "routes to #destroy" do
      expect(:delete => "#{url}/product_categories/1").to route_to(
        {"format"=>:json, subdomain: "api", action: "destroy", controller: "api/v1/product_categories", id: "1"})
    end

  end
end
