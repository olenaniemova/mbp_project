require 'rails_helper'

RSpec.describe "object_categories/edit", type: :view do
  before(:each) do
    @object_category = assign(:object_category, ObjectCategory.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit object_category form" do
    render

    assert_select "form[action=?][method=?]", object_category_path(@object_category), "post" do

      assert_select "input[name=?]", "object_category[title]"
    end
  end
end
