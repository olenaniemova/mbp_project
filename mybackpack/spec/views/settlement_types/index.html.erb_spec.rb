require 'rails_helper'

RSpec.describe "settlement_types/index", type: :view do
  before(:each) do
    assign(:settlement_types, [
      SettlementType.create!(
        :title => "Title"
      ),
      SettlementType.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of settlement_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
