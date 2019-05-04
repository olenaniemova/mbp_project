require 'rails_helper'

RSpec.describe "object_importances/index", type: :view do
  before(:each) do
    assign(:object_importances, [
      ObjectImportance.create!(
        :title => "Title",
        :value => 2
      ),
      ObjectImportance.create!(
        :title => "Title",
        :value => 2
      )
    ])
  end

  it "renders a list of object_importances" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
