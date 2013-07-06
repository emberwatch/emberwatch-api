# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :podcast do
    title "Tom Dale"
    url "http://emberhotseat.com/2013/05/22/ember-hot-seat-episode-001.html"
    episode 1
    publisher
    published_at "2013-07-06 20:54:18"
    duration 2346
  end
end
