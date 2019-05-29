require 'rails_helper'

RSpec.describe "item_types/new", type: :view do
  before(:each) do
    assign(:item_type, ItemType.new(
      :title => "MyString"
    ))
  end

  it "renders new item_type form" do
    render

    assert_select "form[action=?][method=?]", item_types_path, "post" do

      assert_select "input[name=?]", "item_type[title]"
    end
  end
end
