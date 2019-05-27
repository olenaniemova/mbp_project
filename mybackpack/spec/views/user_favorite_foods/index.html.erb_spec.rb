require 'rails_helper'

RSpec.describe "user_favorite_foods/index", type: :view do
  before(:each) do
    assign(:user_favorite_foods, [
      UserFavoriteFood.create!(),
      UserFavoriteFood.create!()
    ])
  end

  it "renders a list of user_favorite_foods" do
    render
  end
end
