require 'rails_helper'

RSpec.describe "food_types/show", type: :view do
  before(:each) do
    @food_type = assign(:food_type, FoodType.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
