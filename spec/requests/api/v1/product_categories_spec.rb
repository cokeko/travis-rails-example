require "rails_helper"

RSpec.describe "Product Categories API" do
  let(:url) { "http://api.domain.com" }
  let(:valid_session) { {} }

  it 'retrieves a list of product categories' do
    syrup = FactoryGirl.create :syrup
    water = FactoryGirl.create :water

    get "#{url}/product_categories", {}, valid_session

    expect(response).to be_success
    json = JSON.parse(response.body)
#     expect(json.length).to eq(2)
  end
end
