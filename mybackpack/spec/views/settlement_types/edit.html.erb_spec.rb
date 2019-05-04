require 'rails_helper'

RSpec.describe "settlement_types/edit", type: :view do
  before(:each) do
    @settlement_type = assign(:settlement_type, SettlementType.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit settlement_type form" do
    render

    assert_select "form[action=?][method=?]", settlement_type_path(@settlement_type), "post" do

      assert_select "input[name=?]", "settlement_type[title]"
    end
  end
end
