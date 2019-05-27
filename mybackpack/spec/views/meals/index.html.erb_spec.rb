require 'rails_helper'

RSpec.describe "meals/index", type: :view do
  before(:each) do
    assign(:meals, [
      Meal.create!(
        :title => ""
      ),
      Meal.create!(
        :title => ""
      )
    ])
  end

  it "renders a list of meals" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
