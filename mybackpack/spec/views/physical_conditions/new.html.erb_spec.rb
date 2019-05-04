require 'rails_helper'

RSpec.describe "physical_conditions/new", type: :view do
  before(:each) do
    assign(:physical_condition, PhysicalCondition.new(
      :title => "MyString"
    ))
  end

  it "renders new physical_condition form" do
    render

    assert_select "form[action=?][method=?]", physical_conditions_path, "post" do

      assert_select "input[name=?]", "physical_condition[title]"
    end
  end
end
