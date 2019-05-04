require 'rails_helper'

RSpec.describe "food_types/new", type: :view do
  before(:each) do
    assign(:food_type, FoodType.new(
      :title => "MyString"
    ))
  end

  it "renders new food_type form" do
    render

    assert_select "form[action=?][method=?]", food_types_path, "post" do

      assert_select "input[name=?]", "food_type[title]"
    end
  end
end
