FactoryBot.define do
  factory :user do
    first_name
    last_name
    password
    email
    avatar { generate :string }
    type { '' }
  end

  factory :developer, parent: :user, aliases: [:assignee] do
    type { 'Developer' }
  end

  factory :manager, parent: :user, aliases: [:author] do
    type { 'Manager' }
  end

  factory :admin, parent: :user do
    type { 'Admin' }
  end
end
