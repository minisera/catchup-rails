FactoryBot.define do
  factory :book do
    title { "MyBook" }
    author { "hogetaro" }
    trait :with_variations do
      after(:create) do |book|
        book.variations.create!(kind: "paper book")
      end
    end
  end
end
