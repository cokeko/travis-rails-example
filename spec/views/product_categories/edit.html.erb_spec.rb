require 'rails_helper'

RSpec.describe "product_categories/edit", :type => :view do
  let(:url) { "http://api.domain.com" }
  let(:valid_session) { {} }

  before(:each) do
    @product_category = assign(:product_category, ProductCategory.create!(
      :name => "MyString",
      :status => "MyString"
    ))
  end

  pending "renders the edit product_category form" do
     render
# 
#     assert_select "form[action=?][method=?]", edit_api_product_category(@product_category), "post" do
# 
#       assert_select "input#product_category_name[name=?]", "product_category[name]"
# 
#       assert_select "input#product_category_status[name=?]", "product_category[status]"
#     end
  end
end
