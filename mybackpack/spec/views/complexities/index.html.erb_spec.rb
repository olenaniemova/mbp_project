require 'rails_helper'

RSpec.describe "complexities/index", type: :view do
  before(:each) do
    assign(:complexities, [
      Complexity.create!(
        :title => "Title",
        :description => "MyText",
        :value => 2
      ),
      Complexity.create!(
        :title => "Title",
        :description => "MyText",
        :value => 2
      )
    ])
  end

  it "renders a list of complexities" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
