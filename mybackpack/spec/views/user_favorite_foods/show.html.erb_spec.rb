require 'rails_helper'

RSpec.describe "user_favorite_foods/show", type: :view do
  before(:each) do
    @user_favorite_food = assign(:user_favorite_food, UserFavoriteFood.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
