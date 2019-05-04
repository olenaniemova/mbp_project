require 'rails_helper'

RSpec.describe "settlement_types/show", type: :view do
  before(:each) do
    @settlement_type = assign(:settlement_type, SettlementType.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
