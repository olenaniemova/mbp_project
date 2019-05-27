FactoryBot.define do
  factory :profile do
    first_name { "MyString" }
    last_name { "MyString" }
    birthday { "2019-05-11 12:57:08" }
    gender { "" }
    phone { "MyString" }
    about_me { "MyText" }
    hiking_count { 1 }
    weight { 1.5 }
    height { 1.5 }
    bpws { 1.5 }
    bpvs { 1.5 }
    bpww { 1.5 }
    bpvw { 1.5 }
  end
end
