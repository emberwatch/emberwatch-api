# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meet do
    name "Ember.js NYC"
    kind "meetup"
    url "http://www.meetup.com/EmberJS-NYC/"
    meetup_id 1756051
  end
end
