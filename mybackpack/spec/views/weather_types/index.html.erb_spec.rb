require 'rails_helper'

RSpec.describe "weather_types/index", type: :view do
  before(:each) do
    assign(:weather_types, [
      WeatherType.create!(
        :title => "Title"
      ),
      WeatherType.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of weather_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
