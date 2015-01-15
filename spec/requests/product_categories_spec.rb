require 'rails_helper'

RSpec.describe "ProductCategories", :type => :request do
  describe "GET /product_categories" do
    let(:url) { "http://api.domain.com" }
    let(:valid_session) { {} }

    it "works! (now write some real specs)" do
      get "#{url}/product_categories", {}, valid_session
      expect(response).to have_http_status(200)
    end
  end
end
