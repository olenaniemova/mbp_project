require 'rails_helper'

RSpec.describe "user_available_items/show", type: :view do
  before(:each) do
    @user_available_item = assign(:user_available_item, UserAvailableItem.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
