require 'rails_helper'

RSpec.describe "create_settlements/edit", type: :view do
  before(:each) do
    @create_settlement = assign(:create_settlement, CreateSettlement.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit create_settlement form" do
    render

    assert_select "form[action=?][method=?]", create_settlement_path(@create_settlement), "post" do

      assert_select "input[name=?]", "create_settlement[title]"
    end
  end
end
