require 'rails_helper'

RSpec.describe "physical_conditions/edit", type: :view do
  before(:each) do
    @physical_condition = assign(:physical_condition, PhysicalCondition.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit physical_condition form" do
    render

    assert_select "form[action=?][method=?]", physical_condition_path(@physical_condition), "post" do

      assert_select "input[name=?]", "physical_condition[title]"
    end
  end
end
