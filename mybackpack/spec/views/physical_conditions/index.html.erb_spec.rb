require 'rails_helper'

RSpec.describe "physical_conditions/index", type: :view do
  before(:each) do
    assign(:physical_conditions, [
      PhysicalCondition.create!(
        :title => "Title"
      ),
      PhysicalCondition.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of physical_conditions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
