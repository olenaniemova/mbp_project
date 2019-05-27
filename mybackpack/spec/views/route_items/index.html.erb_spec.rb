require 'rails_helper'

RSpec.describe "route_items/index", type: :view do
  before(:each) do
    assign(:route_items, [
      RouteItem.create!(
        :count => 2
      ),
      RouteItem.create!(
        :count => 2
      )
    ])
  end

  it "renders a list of route_items" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
