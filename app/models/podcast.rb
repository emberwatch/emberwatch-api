class Podcast < ActiveRecord::Base
  belongs_to :publisher
  has_and_belongs_to_many :people
end
