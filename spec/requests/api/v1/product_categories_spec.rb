describe "Product Categories API" do
  it 'retrieves a list of product categories' do
    syrup = FactoryGirl.create :syrup
    water = FactoryGirl.create :water

    get '/api/v1/product_categories'

    expect(response).to be_success            # test for the 200 status-code
    json = JSON.parse(response.body)
    expect(json['product_categories'].length).to eq(2)
  end
end
