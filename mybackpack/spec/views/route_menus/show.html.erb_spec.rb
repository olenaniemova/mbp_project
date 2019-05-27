require 'rails_helper'

RSpec.describe "route_menus/show", type: :view do
  before(:each) do
    @route_menu = assign(:route_menu, RouteMenu.create!(
      :count => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
