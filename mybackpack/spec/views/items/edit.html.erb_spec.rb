require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "MyString",
      :weight => 1.5,
      :volume => 1.5,
      :description => "MyText",
      :source => "MyString",
      :individualy => false,
      :object_category_id => "",
      :object_importance_id => "",
      :season_id => "",
      :producer_id => ""
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[weight]"

      assert_select "input[name=?]", "item[volume]"

      assert_select "textarea[name=?]", "item[description]"

      assert_select "input[name=?]", "item[source]"

      assert_select "input[name=?]", "item[individualy]"

      assert_select "input[name=?]", "item[object_category_id]"

      assert_select "input[name=?]", "item[object_importance_id]"

      assert_select "input[name=?]", "item[season_id]"

      assert_select "input[name=?]", "item[producer_id]"
    end
  end
end
