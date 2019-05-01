require 'rails_helper'

RSpec.describe "object_categories/show", type: :view do
  before(:each) do
    @object_category = assign(:object_category, ObjectCategory.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
