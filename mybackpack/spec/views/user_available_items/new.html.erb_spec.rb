require 'rails_helper'

RSpec.describe "user_available_items/new", type: :view do
  before(:each) do
    assign(:user_available_item, UserAvailableItem.new())
  end

  it "renders new user_available_item form" do
    render

    assert_select "form[action=?][method=?]", user_available_items_path, "post" do
    end
  end
end
