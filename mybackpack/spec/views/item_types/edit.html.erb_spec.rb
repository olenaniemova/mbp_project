require 'rails_helper'

RSpec.describe "item_types/edit", type: :view do
  before(:each) do
    @item_type = assign(:item_type, ItemType.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit item_type form" do
    render

    assert_select "form[action=?][method=?]", item_type_path(@item_type), "post" do

      assert_select "input[name=?]", "item_type[title]"
    end
  end
end
