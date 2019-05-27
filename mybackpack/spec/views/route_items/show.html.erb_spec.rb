require 'rails_helper'

RSpec.describe "route_items/show", type: :view do
  before(:each) do
    @route_item = assign(:route_item, RouteItem.create!(
      :count => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
