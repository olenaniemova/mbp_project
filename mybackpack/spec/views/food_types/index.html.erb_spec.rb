require 'rails_helper'

RSpec.describe "food_types/index", type: :view do
  before(:each) do
    assign(:food_types, [
      FoodType.create!(
        :title => "Title"
      ),
      FoodType.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of food_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
