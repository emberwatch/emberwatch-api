# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :screencast do
    person
    publisher
    title "Fire Up Ember.js"
    published_at "2013-07-06 20:03:02"
    url "https://peepcode.com/products/emberjs"
    video_url "https://peepcode.com/products/emberjs"
  end
end
