require 'rails_helper'

RSpec.describe "route_menus/index", type: :view do
  before(:each) do
    assign(:route_menus, [
      RouteMenu.create!(
        :count => 2
      ),
      RouteMenu.create!(
        :count => 2
      )
    ])
  end

  it "renders a list of route_menus" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
