require 'rails_helper'

RSpec.describe "route_menus/edit", type: :view do
  before(:each) do
    @route_menu = assign(:route_menu, RouteMenu.create!(
      :count => 1
    ))
  end

  it "renders the edit route_menu form" do
    render

    assert_select "form[action=?][method=?]", route_menu_path(@route_menu), "post" do

      assert_select "input[name=?]", "route_menu[count]"
    end
  end
end
