FactoryBot.define do
  factory :task do
    name { generate :string }
    description { generate :string }
    author
    assignee
    expired_at { '2020-06-05' }
  end
end
