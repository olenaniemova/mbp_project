require 'rails_helper'

RSpec.describe "object_importances/edit", type: :view do
  before(:each) do
    @object_importance = assign(:object_importance, ObjectImportance.create!(
      :title => "MyString",
      :value => 1
    ))
  end

  it "renders the edit object_importance form" do
    render

    assert_select "form[action=?][method=?]", object_importance_path(@object_importance), "post" do

      assert_select "input[name=?]", "object_importance[title]"

      assert_select "input[name=?]", "object_importance[value]"
    end
  end
end
