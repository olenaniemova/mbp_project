require 'rails_helper'

RSpec.describe "food_categories/index", type: :view do
  before(:each) do
    assign(:food_categories, [
      FoodCategory.create!(
        :title => "Title"
      ),
      FoodCategory.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of food_categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
