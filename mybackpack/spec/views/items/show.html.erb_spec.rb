require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "Title",
      :weight => 2.5,
      :volume => 3.5,
      :description => "MyText",
      :source => "Source",
      :individualy => false,
      :object_category_id => "",
      :object_importance_id => "",
      :season_id => "",
      :producer_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
