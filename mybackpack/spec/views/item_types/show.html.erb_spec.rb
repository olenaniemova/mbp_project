require 'rails_helper'

RSpec.describe "item_types/show", type: :view do
  before(:each) do
    @item_type = assign(:item_type, ItemType.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
