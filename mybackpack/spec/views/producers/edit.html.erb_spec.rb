require 'rails_helper'

RSpec.describe "producers/edit", type: :view do
  before(:each) do
    @producer = assign(:producer, Producer.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit producer form" do
    render

    assert_select "form[action=?][method=?]", producer_path(@producer), "post" do

      assert_select "input[name=?]", "producer[title]"

      assert_select "textarea[name=?]", "producer[description]"
    end
  end
end
