require 'rails_helper'

RSpec.describe "complexities/show", type: :view do
  before(:each) do
    @complexity = assign(:complexity, Complexity.create!(
      :title => "Title",
      :description => "MyText",
      :value => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
