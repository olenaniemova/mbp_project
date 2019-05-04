require 'rails_helper'

RSpec.describe "route_statuses/edit", type: :view do
  before(:each) do
    @route_status = assign(:route_status, RouteStatus.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit route_status form" do
    render

    assert_select "form[action=?][method=?]", route_status_path(@route_status), "post" do

      assert_select "input[name=?]", "route_status[title]"
    end
  end
end
