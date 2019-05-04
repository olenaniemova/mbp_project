require 'rails_helper'

RSpec.describe "producers/new", type: :view do
  before(:each) do
    assign(:producer, Producer.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new producer form" do
    render

    assert_select "form[action=?][method=?]", producers_path, "post" do

      assert_select "input[name=?]", "producer[title]"

      assert_select "textarea[name=?]", "producer[description]"
    end
  end
end
