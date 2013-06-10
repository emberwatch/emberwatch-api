class TaggedRelease < ActiveRecord::Base

  scope :active, -> { where(active: true) }
  scope :recent, -> { order("tagged_at DESC") }
end
