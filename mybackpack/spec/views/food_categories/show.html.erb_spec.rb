require 'rails_helper'

RSpec.describe "food_categories/show", type: :view do
  before(:each) do
    @food_category = assign(:food_category, FoodCategory.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
