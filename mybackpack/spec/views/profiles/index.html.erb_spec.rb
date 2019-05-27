require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
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
      ),
      Profile.create!(
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
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.5.to_s, :count => 2
    assert_select "tr>td", :text => 8.5.to_s, :count => 2
  end
end
