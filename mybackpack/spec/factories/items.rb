FactoryBot.define do
  factory :item do
    title { "MyString" }
    weight { 1.5 }
    volume { 1.5 }
    description { "MyText" }
    source { "MyString" }
    individualy { false }
    object_category_id { "" }
    object_importance_id { "" }
    season_id { "" }
    producer_id { "" }
  end
end
