require 'rails_helper'

RSpec.describe "object_categories/index", type: :view do
  before(:each) do
    assign(:object_categories, [
      ObjectCategory.create!(
        :title => "Title"
      ),
      ObjectCategory.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of object_categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
