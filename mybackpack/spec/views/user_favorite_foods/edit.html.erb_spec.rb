require 'rails_helper'

RSpec.describe "user_favorite_foods/edit", type: :view do
  before(:each) do
    @user_favorite_food = assign(:user_favorite_food, UserFavoriteFood.create!())
  end

  it "renders the edit user_favorite_food form" do
    render

    assert_select "form[action=?][method=?]", user_favorite_food_path(@user_favorite_food), "post" do
    end
  end
end
