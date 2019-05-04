require 'rails_helper'

RSpec.describe "route_statuses/show", type: :view do
  before(:each) do
    @route_status = assign(:route_status, RouteStatus.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
