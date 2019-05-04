require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :title => "Title",
        :weight => 2.5,
        :volume => 3.5,
        :description => "MyText",
        :source => "Source",
        :individualy => false,
        :object_category_id => "",
        :object_importance_id => "",
        :season_id => "",
        :producer_id => ""
      ),
      Item.create!(
        :title => "Title",
        :weight => 2.5,
        :volume => 3.5,
        :description => "MyText",
        :source => "Source",
        :individualy => false,
        :object_category_id => "",
        :object_importance_id => "",
        :season_id => "",
        :producer_id => ""
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
