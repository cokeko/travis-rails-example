require 'rails_helper'

RSpec.describe ProductCategory, :type => :model do
  it "returns only active records for .active" do
    active_pc = ProductCategory.create({name: "Sample Active", status: "Active"})
    inactive_pc = ProductCategory.create({name: "Sample Inactive", status: "Inactive"})

    result = ProductCategory.active

    expect(result).to eq [active_pc]
  end
end
