require 'rails_helper'

RSpec.describe "food_categories/new", type: :view do
  before(:each) do
    assign(:food_category, FoodCategory.new(
      :title => "MyString"
    ))
  end

  it "renders new food_category form" do
    render

    assert_select "form[action=?][method=?]", food_categories_path, "post" do

      assert_select "input[name=?]", "food_category[title]"
    end
  end
end
