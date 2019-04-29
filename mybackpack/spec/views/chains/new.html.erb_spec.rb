require 'rails_helper'

RSpec.describe "chains/new", type: :view do
  before(:each) do
    assign(:chain, Chain.new())
  end

  it "renders new chain form" do
    render

    assert_select "form[action=?][method=?]", chains_path, "post" do
    end
  end
end
