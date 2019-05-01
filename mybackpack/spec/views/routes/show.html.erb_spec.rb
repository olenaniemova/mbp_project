require 'rails_helper'

RSpec.describe "routes/show", type: :view do
  before(:each) do
    @route = assign(:route, Route.create!(
      :title => "Title",
      :description => "MyText",
      :duration => 2,
      :chain_id => "",
      :user_id => "",
      :complexity_id => "",
      :publication => false,
      :settlement_dep => "",
      :settlement_arr => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
