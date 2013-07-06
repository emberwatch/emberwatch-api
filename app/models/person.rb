class Person < ActiveRecord::Base
  has_many :talks
  has_many :books
  has_many :screencasts
  has_and_belongs_to_many :podcasts
end
