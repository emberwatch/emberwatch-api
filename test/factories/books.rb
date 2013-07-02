# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "Ember.js in Action"
    person
    publisher
    price 3599
    url "http://manning.com/skeie/"
  end
end
