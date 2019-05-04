require 'rails_helper'

RSpec.describe "chains/index", type: :view do
  before(:each) do
    assign(:chains, [
      Chain.create!(),
      Chain.create!()
    ])
  end

  it "renders a list of chains" do
    render
  end
end
