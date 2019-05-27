require 'rails_helper'

RSpec.describe "route_items/edit", type: :view do
  before(:each) do
    @route_item = assign(:route_item, RouteItem.create!(
      :count => 1
    ))
  end

  it "renders the edit route_item form" do
    render

    assert_select "form[action=?][method=?]", route_item_path(@route_item), "post" do

      assert_select "input[name=?]", "route_item[count]"
    end
  end
end
