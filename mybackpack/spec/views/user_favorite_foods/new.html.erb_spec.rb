require 'rails_helper'

RSpec.describe "user_favorite_foods/new", type: :view do
  before(:each) do
    assign(:user_favorite_food, UserFavoriteFood.new())
  end

  it "renders new user_favorite_food form" do
    render

    assert_select "form[action=?][method=?]", user_favorite_foods_path, "post" do
    end
  end
end
