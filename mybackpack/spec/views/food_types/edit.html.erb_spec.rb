require 'rails_helper'

RSpec.describe "food_types/edit", type: :view do
  before(:each) do
    @food_type = assign(:food_type, FoodType.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit food_type form" do
    render

    assert_select "form[action=?][method=?]", food_type_path(@food_type), "post" do

      assert_select "input[name=?]", "food_type[title]"
    end
  end
end
