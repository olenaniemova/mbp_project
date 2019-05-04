require 'rails_helper'

RSpec.describe "object_importances/new", type: :view do
  before(:each) do
    assign(:object_importance, ObjectImportance.new(
      :title => "MyString",
      :value => 1
    ))
  end

  it "renders new object_importance form" do
    render

    assert_select "form[action=?][method=?]", object_importances_path, "post" do

      assert_select "input[name=?]", "object_importance[title]"

      assert_select "input[name=?]", "object_importance[value]"
    end
  end
end
