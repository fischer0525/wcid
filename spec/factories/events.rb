FactoryGirl.define do
  factory :event do
    sequence(:event_name) { |n| "bar#{n}" }
    event_date "01/01/11"
    event_time "12:00PM"
    sequence(:address) { |n| "#{n} street" }
    city 'Philadelphia'
    state 'PA'
    zip '19147'
    description "This is a fantastic event."
  end
end
