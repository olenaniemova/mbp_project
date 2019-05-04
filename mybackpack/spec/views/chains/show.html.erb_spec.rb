require 'rails_helper'

RSpec.describe "chains/show", type: :view do
  before(:each) do
    @chain = assign(:chain, Chain.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
