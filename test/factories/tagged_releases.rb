FactoryGirl.define do
  factory :tagged_release do
    sequence(:title) {|n| "1.0.0 Release Candidate #{n}" }
    project "emberjs/ember.js"
    sequence(:tag) {|n| "v1.0.0-rc.#{n}" }
    sequence(:build) {|n| "http://builds.emberjs.com.s3.amazonaws.com/ember-1.0.0-rc.#{n}.js" }
    sequence(:announcement) {|n| "http://emberjs.com/blog/2013/06/01/ember-1-0-rc#{n}.html" }
    tagged_at { Time.parse("2012/06/01") }
    active true
  end
end
