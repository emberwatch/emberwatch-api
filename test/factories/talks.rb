# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :talk do
    title "Debugging Ember"
    subtitle "Tips and tricks for bug assassination"
    person
    delivered_at "2013-07-02 20:55:25"
    video_url "http://vimeo.com/37539737"
    details_url "http://www.meetup.com/Ember-SF/events/50058382/"
    slides_url "https://speakerdeck.com/u/tomdale/p/debugging-emberjs"
    meet
  end
end
