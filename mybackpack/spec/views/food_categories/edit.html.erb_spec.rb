require 'rails_helper'

RSpec.describe "food_categories/edit", type: :view do
  before(:each) do
    @food_category = assign(:food_category, FoodCategory.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit food_category form" do
    render

    assert_select "form[action=?][method=?]", food_category_path(@food_category), "post" do

      assert_select "input[name=?]", "food_category[title]"
    end
  end
end
