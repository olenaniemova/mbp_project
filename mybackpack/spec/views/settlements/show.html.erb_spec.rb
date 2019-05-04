require 'rails_helper'

RSpec.describe "settlements/show", type: :view do
  before(:each) do
    @settlement = assign(:settlement, Settlement.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
