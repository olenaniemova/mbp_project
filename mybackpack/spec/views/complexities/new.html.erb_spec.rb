require 'rails_helper'

RSpec.describe "complexities/new", type: :view do
  before(:each) do
    assign(:complexity, Complexity.new(
      :title => "MyString",
      :description => "MyText",
      :value => 1
    ))
  end

  it "renders new complexity form" do
    render

    assert_select "form[action=?][method=?]", complexities_path, "post" do

      assert_select "input[name=?]", "complexity[title]"

      assert_select "textarea[name=?]", "complexity[description]"

      assert_select "input[name=?]", "complexity[value]"
    end
  end
end
