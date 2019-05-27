require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :gender => "",
      :phone => "Phone",
      :about_me => "MyText",
      :hiking_count => 2,
      :weight => 3.5,
      :height => 4.5,
      :bpws => 5.5,
      :bpvs => 6.5,
      :bpww => 7.5,
      :bpvw => 8.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/8.5/)
  end
end
