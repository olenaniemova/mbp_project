require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :gender => "",
      :phone => "MyString",
      :about_me => "MyText",
      :hiking_count => 1,
      :weight => 1.5,
      :height => 1.5,
      :bpws => 1.5,
      :bpvs => 1.5,
      :bpww => 1.5,
      :bpvw => 1.5
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[gender]"

      assert_select "input[name=?]", "profile[phone]"

      assert_select "textarea[name=?]", "profile[about_me]"

      assert_select "input[name=?]", "profile[hiking_count]"

      assert_select "input[name=?]", "profile[weight]"

      assert_select "input[name=?]", "profile[height]"

      assert_select "input[name=?]", "profile[bpws]"

      assert_select "input[name=?]", "profile[bpvs]"

      assert_select "input[name=?]", "profile[bpww]"

      assert_select "input[name=?]", "profile[bpvw]"
    end
  end
end
