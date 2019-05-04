require 'rails_helper'

RSpec.describe "routes/index", type: :view do
  before(:each) do
    assign(:routes, [
      Route.create!(
        :title => "Title",
        :description => "MyText",
        :duration => 2,
        :chain_id => "",
        :user_id => "",
        :complexity_id => "",
        :publication => false,
        :settlement_dep => "",
        :settlement_arr => ""
      ),
      Route.create!(
        :title => "Title",
        :description => "MyText",
        :duration => 2,
        :chain_id => "",
        :user_id => "",
        :complexity_id => "",
        :publication => false,
        :settlement_dep => "",
        :settlement_arr => ""
      )
    ])
  end

  it "renders a list of routes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
