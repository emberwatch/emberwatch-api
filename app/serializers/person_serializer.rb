class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :github, :twitter, :url, :talk_ids, :book_ids
end
