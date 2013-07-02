class Person < ActiveRecord::Base
  has_many :talks
  has_many :books
end
