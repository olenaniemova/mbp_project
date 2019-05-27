require 'rails_helper'

RSpec.describe "user_available_items/edit", type: :view do
  before(:each) do
    @user_available_item = assign(:user_available_item, UserAvailableItem.create!())
  end

  it "renders the edit user_available_item form" do
    render

    assert_select "form[action=?][method=?]", user_available_item_path(@user_available_item), "post" do
    end
  end
end
