require 'staggered'

class TagFetcher
  REPOS = ["emberjs/ember.js"]

  def fetch
    REPOS.each do |repo|
      Staggered.new(repo).releases.each do |release|
        begin
          TaggedRelease.create!(release)
        rescue ActiveRecord::RecordNotUnique => e
        end
      end
    end
  end
end
