FactoryBot.define do
  factory :task do
    name { generate :string }
    description { generate :string }
    author
    assignee
  end
end
