FactoryBot.define do
  factory :book do
    user
    title              {"テスト"}
    author             {"テスト 太郎"}
    publisher          {"テスト出版"}
    status             {"0"}
    buy_date           {"2020-01-22"}
    category           {"小説"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end