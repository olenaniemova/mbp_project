require 'rails_helper'

RSpec.describe "producers/index", type: :view do
  before(:each) do
    assign(:producers, [
      Producer.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Producer.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of producers" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
