require 'rails_helper'

RSpec.describe "settlements/index", type: :view do
  before(:each) do
    assign(:settlements, [
      Settlement.create!(
        :title => "Title"
      ),
      Settlement.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of settlements" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
