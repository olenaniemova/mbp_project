require 'rails_helper'

RSpec.describe "weather_types/edit", type: :view do
  before(:each) do
    @weather_type = assign(:weather_type, WeatherType.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit weather_type form" do
    render

    assert_select "form[action=?][method=?]", weather_type_path(@weather_type), "post" do

      assert_select "input[name=?]", "weather_type[title]"
    end
  end
end
