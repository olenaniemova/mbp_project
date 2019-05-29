require 'rails_helper'

RSpec.describe "item_types/index", type: :view do
  before(:each) do
    assign(:item_types, [
      ItemType.create!(
        :title => "Title"
      ),
      ItemType.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of item_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
