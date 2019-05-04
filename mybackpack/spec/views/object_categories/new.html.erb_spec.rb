require 'rails_helper'

RSpec.describe "object_categories/new", type: :view do
  before(:each) do
    assign(:object_category, ObjectCategory.new(
      :title => "MyString"
    ))
  end

  it "renders new object_category form" do
    render

    assert_select "form[action=?][method=?]", object_categories_path, "post" do

      assert_select "input[name=?]", "object_category[title]"
    end
  end
end
