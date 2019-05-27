require 'rails_helper'

RSpec.describe "user_available_items/index", type: :view do
  before(:each) do
    assign(:user_available_items, [
      UserAvailableItem.create!(),
      UserAvailableItem.create!()
    ])
  end

  it "renders a list of user_available_items" do
    render
  end
end
