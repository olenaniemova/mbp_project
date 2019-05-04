require 'rails_helper'

RSpec.describe "routes/edit", type: :view do
  before(:each) do
    @route = assign(:route, Route.create!(
      :title => "MyString",
      :description => "MyText",
      :duration => 1,
      :chain_id => "",
      :user_id => "",
      :complexity_id => "",
      :publication => false,
      :settlement_dep => "",
      :settlement_arr => ""
    ))
  end

  it "renders the edit route form" do
    render

    assert_select "form[action=?][method=?]", route_path(@route), "post" do

      assert_select "input[name=?]", "route[title]"

      assert_select "textarea[name=?]", "route[description]"

      assert_select "input[name=?]", "route[duration]"

      assert_select "input[name=?]", "route[chain_id]"

      assert_select "input[name=?]", "route[user_id]"

      assert_select "input[name=?]", "route[complexity_id]"

      assert_select "input[name=?]", "route[publication]"

      assert_select "input[name=?]", "route[settlement_dep]"

      assert_select "input[name=?]", "route[settlement_arr]"
    end
  end
end
