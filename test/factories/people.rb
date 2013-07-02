# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "Philip Poots"
    github "pootsbook"
    twitter "pootsbook"
    url "http://crossingtheruby.com"
  end
end
