require 'rails_helper'

RSpec.describe "route_items/new", type: :view do
  before(:each) do
    assign(:route_item, RouteItem.new(
      :count => 1
    ))
  end

  it "renders new route_item form" do
    render

    assert_select "form[action=?][method=?]", route_items_path, "post" do

      assert_select "input[name=?]", "route_item[count]"
    end
  end
end
