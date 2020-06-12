FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password] do |n|
    "string#{n}"
  end

  sequence(:email) { |n| "string#{n}@gmail.com" }
end
