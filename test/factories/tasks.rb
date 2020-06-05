FactoryBot.define do
  factory :task do
    name { 'MyString' }
    description { 'MyText' }
    author
    assignee
    state { 'MyString' }
    expired_at { '2020-06-05' }
  end
end
