class Talk < ActiveRecord::Base
  belongs_to :person
  belongs_to :meet
end
