require 'rails_helper'

RSpec.describe "create_settlements/new", type: :view do
  before(:each) do
    assign(:create_settlement, CreateSettlement.new(
      :title => "MyString"
    ))
  end

  it "renders new create_settlement form" do
    render

    assert_select "form[action=?][method=?]", create_settlements_path, "post" do

      assert_select "input[name=?]", "create_settlement[title]"
    end
  end
end
