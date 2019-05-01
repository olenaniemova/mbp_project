FactoryBot.define do
  factory :route do
    title { "MyString" }
    description { "MyText" }
    start_date { "2019-05-01 14:12:14" }
    end_date { "2019-05-01 14:12:14" }
    duration { 1 }
    chain_id { "" }
    user_id { "" }
    complexity_id { "" }
    publication { false }
    settlement_dep { "" }
    settlement_arr { "" }
  end
end
