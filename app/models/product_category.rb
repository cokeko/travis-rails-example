class ProductCategory < ActiveRecord::Base
  scope :active, -> {where(status: "Active")}
end
