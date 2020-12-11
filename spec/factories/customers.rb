FactoryBot.define do
  factory :customer do
    sequence(:email) { |n| "member#{n}@example.jp" }
    family_name { "福留" }
    given_name { "孝介" }
    family_name_kana { "フクドメ" }
    given_name_kana { "コウスケ" }
    password { "pw" }
    birthday { Date.new(1977, 4, 26) }
    gender { "male" }
    association :home_address, strategy: :build
    association :work_address, strategy: :build
  end
end