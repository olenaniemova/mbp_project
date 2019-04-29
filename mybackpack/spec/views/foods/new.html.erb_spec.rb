require 'rails_helper'

RSpec.describe "foods/new", type: :view do
  before(:each) do
    assign(:food, Food.new(
      :title => "MyString"
    ))
  end

  it "renders new food form" do
    render

    assert_select "form[action=?][method=?]", foods_path, "post" do

      assert_select "input[name=?]", "food[title]"
    end
  end
end
