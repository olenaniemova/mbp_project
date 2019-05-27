require 'rails_helper'

RSpec.describe "route_menus/new", type: :view do
  before(:each) do
    assign(:route_menu, RouteMenu.new(
      :count => 1
    ))
  end

  it "renders new route_menu form" do
    render

    assert_select "form[action=?][method=?]", route_menus_path, "post" do

      assert_select "input[name=?]", "route_menu[count]"
    end
  end
end
