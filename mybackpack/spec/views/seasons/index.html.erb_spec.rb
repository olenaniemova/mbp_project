require 'rails_helper'

RSpec.describe "seasons/index", type: :view do
  before(:each) do
    assign(:seasons, [
      Season.create!(
        :title => "Title"
      ),
      Season.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of seasons" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
