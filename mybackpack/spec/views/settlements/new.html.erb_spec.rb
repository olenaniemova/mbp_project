require 'rails_helper'

RSpec.describe "settlements/new", type: :view do
  before(:each) do
    assign(:settlement, Settlement.new(
      :title => "MyString"
    ))
  end

  it "renders new settlement form" do
    render

    assert_select "form[action=?][method=?]", settlements_path, "post" do

      assert_select "input[name=?]", "settlement[title]"
    end
  end
end
