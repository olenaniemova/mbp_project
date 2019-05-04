require 'rails_helper'

RSpec.describe "physical_conditions/show", type: :view do
  before(:each) do
    @physical_condition = assign(:physical_condition, PhysicalCondition.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
