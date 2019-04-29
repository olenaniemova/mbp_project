require 'rails_helper'

RSpec.describe "chains/edit", type: :view do
  before(:each) do
    @chain = assign(:chain, Chain.create!())
  end

  it "renders the edit chain form" do
    render

    assert_select "form[action=?][method=?]", chain_path(@chain), "post" do
    end
  end
end
