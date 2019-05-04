require 'rails_helper'

RSpec.describe "foods/index", type: :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        :title => "Title"
      ),
      Food.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of foods" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
