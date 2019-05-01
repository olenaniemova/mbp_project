require 'rails_helper'

RSpec.describe "object_importances/show", type: :view do
  before(:each) do
    @object_importance = assign(:object_importance, ObjectImportance.create!(
      :title => "Title",
      :value => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
