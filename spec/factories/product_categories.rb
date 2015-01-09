FactoryGirl.define do
  factory :syrup, class: ProductCategory do
    name "Fountain Drink Syrup"
    status "Active"
  end
  factory :water, class: ProductCategory do
    name "Water-like Drink"
    status "Active"
  end
end
