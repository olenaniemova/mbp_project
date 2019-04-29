require 'rails_helper'

RSpec.describe "settlement_types/new", type: :view do
  before(:each) do
    assign(:settlement_type, SettlementType.new(
      :title => "MyString"
    ))
  end

  it "renders new settlement_type form" do
    render

    assert_select "form[action=?][method=?]", settlement_types_path, "post" do

      assert_select "input[name=?]", "settlement_type[title]"
    end
  end
end
