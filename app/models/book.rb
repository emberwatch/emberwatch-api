class Book < ActiveRecord::Base
  belongs_to :person
  belongs_to :publisher
end
