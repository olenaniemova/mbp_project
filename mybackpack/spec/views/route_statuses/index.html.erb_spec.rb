require 'rails_helper'

RSpec.describe "route_statuses/index", type: :view do
  before(:each) do
    assign(:route_statuses, [
      RouteStatus.create!(
        :title => "Title"
      ),
      RouteStatus.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of route_statuses" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
