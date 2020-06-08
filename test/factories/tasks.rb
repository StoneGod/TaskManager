FactoryBot.define do
  factory :task do
    name { 'MyString' }
    description { 'MyText' }
    author
    assignee
    expired_at { '2020-06-05' }
  end
end
