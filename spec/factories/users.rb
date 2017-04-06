FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "johnsmith#{n}@gmail.com" }
    sequence(:username) { |n| "johnsmith#{n}" }
    sequence(:contact_number, (0..9).cycle) { |n| "215-111-111#{n}" }
    password 'password'
    password_confirmation 'password'
  end
end
