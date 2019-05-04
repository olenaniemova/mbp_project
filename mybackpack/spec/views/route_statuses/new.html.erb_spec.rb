require 'rails_helper'

RSpec.describe "route_statuses/new", type: :view do
  before(:each) do
    assign(:route_status, RouteStatus.new(
      :title => "MyString"
    ))
  end

  it "renders new route_status form" do
    render

    assert_select "form[action=?][method=?]", route_statuses_path, "post" do

      assert_select "input[name=?]", "route_status[title]"
    end
  end
end
