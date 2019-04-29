require 'rails_helper'

RSpec.describe "create_settlements/index", type: :view do
  before(:each) do
    assign(:create_settlements, [
      CreateSettlement.create!(
        :title => "Title"
      ),
      CreateSettlement.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of create_settlements" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
