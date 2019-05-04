require 'rails_helper'

RSpec.describe "complexities/edit", type: :view do
  before(:each) do
    @complexity = assign(:complexity, Complexity.create!(
      :title => "MyString",
      :description => "MyText",
      :value => 1
    ))
  end

  it "renders the edit complexity form" do
    render

    assert_select "form[action=?][method=?]", complexity_path(@complexity), "post" do

      assert_select "input[name=?]", "complexity[title]"

      assert_select "textarea[name=?]", "complexity[description]"

      assert_select "input[name=?]", "complexity[value]"
    end
  end
end
