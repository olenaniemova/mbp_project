require 'rails_helper'

RSpec.describe "article_categories/new", type: :view do
  before(:each) do
    assign(:article_category, ArticleCategory.new(
      :title => "MyString"
    ))
  end

  it "renders new article_category form" do
    render

    assert_select "form[action=?][method=?]", article_categories_path, "post" do

      assert_select "input[name=?]", "article_category[title]"
    end
  end
end
