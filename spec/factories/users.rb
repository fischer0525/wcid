FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "johnsmith#{n}@gmail.com" }
    sequence(:username) { |n| "johnsmith#{n}" }
    password 'password'
    password_confirmation 'password'
  end
end
