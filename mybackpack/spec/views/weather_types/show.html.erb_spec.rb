require 'rails_helper'

RSpec.describe "weather_types/show", type: :view do
  before(:each) do
    @weather_type = assign(:weather_type, WeatherType.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
