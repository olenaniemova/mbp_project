require 'rails_helper'

RSpec.describe "routes/new", type: :view do
  before(:each) do
    assign(:route, Route.new(
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

  it "renders new route form" do
    render

    assert_select "form[action=?][method=?]", routes_path, "post" do

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
