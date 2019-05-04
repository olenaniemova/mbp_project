require 'rails_helper'

RSpec.describe "weather_types/new", type: :view do
  before(:each) do
    assign(:weather_type, WeatherType.new(
      :title => "MyString"
    ))
  end

  it "renders new weather_type form" do
    render

    assert_select "form[action=?][method=?]", weather_types_path, "post" do

      assert_select "input[name=?]", "weather_type[title]"
    end
  end
end
