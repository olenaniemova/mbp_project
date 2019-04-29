require 'rails_helper'

RSpec.describe "create_settlements/show", type: :view do
  before(:each) do
    @create_settlement = assign(:create_settlement, CreateSettlement.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
