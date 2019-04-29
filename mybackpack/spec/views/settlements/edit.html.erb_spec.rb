require 'rails_helper'

RSpec.describe "settlements/edit", type: :view do
  before(:each) do
    @settlement = assign(:settlement, Settlement.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit settlement form" do
    render

    assert_select "form[action=?][method=?]", settlement_path(@settlement), "post" do

      assert_select "input[name=?]", "settlement[title]"
    end
  end
end
